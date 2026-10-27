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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
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
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A026100: a(n) = number of the column of A026098 that contains n.

The programs for A026100, there is no canonical definition to state claims against.
-/

/-! ## A026100.P10907129669837762301

`A002260(A070264(n+1))`
-/

namespace A026100.P10907129669837762301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A070264 (n + 1)).toNat

end

end A026100.P10907129669837762301

/-! ## A026100.P5124433367934040187

`A002262(A070264(n+1)-1)+1`
-/

namespace A026100.P5124433367934040187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A070264 (n + 1) - 1).toNat + 1

end

end A026100.P5124433367934040187

/-! ## A026100.P5174835504118543243

`abs(A140756(A070264(n+1)%A297190(n+1)))`
-/

namespace A026100.P5174835504118543243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (Int.tmod (A070264 (n + 1)) (A297190 (n + 1))).toNat|

end

end A026100.P5174835504118543243

/-! ## A026100.P5843067567107476845

`A002262(A070264(n+1)+A026099(n+1))`
-/

namespace A026100.P5843067567107476845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A070264 (n + 1) + A026099 (n + 1)).toNat

end

end A026100.P5843067567107476845

/-! ## A026100.P5479215168305448893

`A349520(2*A070264(n+1)-1)`
-/

namespace A026100.P5479215168305448893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * A070264 (n + 1) - 1).toNat

end

end A026100.P5479215168305448893

/-! ## A026100.P1530713822187661120

`A349520(A070264(n+1)+A070264(n+1)-1)`
-/

namespace A026100.P1530713822187661120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A070264 (n + 1) + (A070264 (n + 1) - 1)).toNat

end

end A026100.P1530713822187661120

/-!
# A026101: T(n,1) + T(n,2) + ... T(n,n), where T is the array in A026098.

The programs for A026101, there is no canonical definition to state claims against.
-/

/-! ## A026101.P12678916982242524838

`A188427(n)-A231204(A204446(n+1))`
-/

namespace A026101.P12678916982242524838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188427 n - A231204 (A204446 (n + 1)).toNat

end

end A026101.P12678916982242524838

/-! ## A026101.P2149042462147859804

`A357864(A005448(n+1))+n`
-/

namespace A026101.P2149042462147859804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (A005448 (n + 1)).toNat + (n : ℤ)

end

end A026101.P2149042462147859804

/-!
# A026102: a(n) = T(2n-1,n), where T is the array in A026098.

The programs for A026102, there is no canonical definition to state claims against.
-/

/-! ## A026102.P14209332520972904665

`A026098(A001844(n))`
-/

namespace A026102.P14209332520972904665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (A001844 n).toNat

end

end A026102.P14209332520972904665

/-! ## A026102.P8744201334009435768

`A026098(∑[4*n]+1)`
-/

namespace A026102.P8744201334009435768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026102.P8744201334009435768

/-! ## A026102.P14136052452217302291

`gcd(floor(1/(n+1)), A026098(n²+(n+1)²))`
-/

namespace A026102.P14136052452217302291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A026098 (n ^ 2 + (n + 1) ^ 2))

end

end A026102.P14136052452217302291

/-! ## A026102.P10532236302830045577

`record[A026098(A147685(n+1))]`
-/

namespace A026102.P10532236302830045577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (A147685 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026102.P10532236302830045577

/-! ## A026102.P6059782981819028340

`record[gcd(A003987(n), A026098(n+1))]`
-/

namespace A026102.P6059782981819028340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A026098 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026102.P6059782981819028340

/-!
# A026104: a(n) = greatest number in row n of A026098 that is not a positive power of 2.

The programs for A026104, there is no canonical definition to state claims against.
-/

/-! ## A026104.P16831126373654766031

`∑[∑[A050305(A152799(n))]]`
-/

namespace A026104.P16831126373654766031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050305 (A152799 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026104.P16831126373654766031

/-! ## A026104.P13603689794853474690

`A336358(A308699(n)+1+n)`
-/

namespace A026104.P13603689794853474690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A308699 n + 1 + (n : ℤ)).toNat

end

end A026104.P13603689794853474690

/-! ## A026104.P12205949645107352643

`A270642(A054343(n+2))+A054347(n)`
-/

namespace A026104.P12205949645107352643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270642 (A054343 (n + 2)).toNat + A054347 n

end

end A026104.P12205949645107352643

/-! ## A026104.P2292797420961585061

`A059426(A197431(3*n+2))+A054347(n)`
-/

namespace A026104.P2292797420961585061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 (A197431 (3 * n + 2)).toNat + A054347 n

end

end A026104.P2292797420961585061

/-! ## A026104.P2094812050113973284

`∑[∑[A008975(A002740(n))]]`
-/

namespace A026104.P2094812050113973284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008975 (A002740 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026104.P2094812050113973284

/-!
# A026105: Triangle T read by rows: differences of Motzkin triangle (A026300).

The programs for A026105, there is no canonical definition to state claims against.
-/

/-! ## A026105.P5193372669335899296

`A235402(A193593(n))`
-/

namespace A026105.P5193372669335899296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A193593 n).toNat

end

end A026105.P5193372669335899296

/-!
# A026106: Number of polyhexes of class PF2 (with one catafusene annealated to pyrene).

The programs for A026106, there is no canonical definition to state claims against.
-/

/-! ## A026106.P3563393931663076321

`∑[A045868(n)+Δ[A044045(n)]]`
-/

namespace A026106.P3563393931663076321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026106.P3563393931663076321

/-! ## A026106.P8649156118149637106

`A044045(n+1)+∑[A045868(n)]`
-/

namespace A026106.P8649156118149637106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026106.P8649156118149637106

/-! ## A026106.P12622164034414092793

`A007317(n+2)+∑[A044046(n)]`
-/

namespace A026106.P12622164034414092793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026106.P12622164034414092793

/-! ## A026106.P4023737705936395543

`A181768(n+2)+∑[A044046(n)]`
-/

namespace A026106.P4023737705936395543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026106.P4023737705936395543

/-! ## A026106.P9664689137461115767

`∑[2*A045868(n)-A045908(n)]`
-/

namespace A026106.P9664689137461115767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045868 n - A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026106.P9664689137461115767

/-! ## A026106.P14904335541890596474

`A044045(n+1)+A002212(n+1)`
-/

namespace A026106.P14904335541890596474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + A002212 (n + 1)

end

end A026106.P14904335541890596474

/-! ## A026106.P4388647128651591483

`A038392(n+2)+A002212(n+1)`
-/

namespace A026106.P4388647128651591483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + A002212 (n + 1)

end

end A026106.P4388647128651591483

/-! ## A026106.P2932850782461975208

`A044045(n+1)+A025238(n+2)`
-/

namespace A026106.P2932850782461975208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + A025238 (n + 2)

end

end A026106.P2932850782461975208

/-! ## A026106.P13246167858385932403

`A038392(n+2)+A025238(n+2)`
-/

namespace A026106.P13246167858385932403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + A025238 (n + 2)

end

end A026106.P13246167858385932403

/-! ## A026106.P7254560546256624487

`A044045(n+2)-A044046(n+1)`
-/

namespace A026106.P7254560546256624487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 2) - A044046 (n + 1)

end

end A026106.P7254560546256624487

/-! ## A026106.P4160871696436388738

`A038392(n+3)-A044046(n+1)`
-/

namespace A026106.P4160871696436388738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 3) - A044046 (n + 1)

end

end A026106.P4160871696436388738

/-! ## A026106.P5772075516620807117

`A002212(n+2)-A030520(n+3)`
-/

namespace A026106.P5772075516620807117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 2) - A030520 (n + 3)

end

end A026106.P5772075516620807117

/-! ## A026106.P17524449813610260322

`A044045(n+1)+Δ[A181768(n+1)]`
-/

namespace A026106.P17524449813610260322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026106.P17524449813610260322

/-! ## A026106.P9556084834585192398

`A038392(n+2)+Δ[A181768(n+1)]`
-/

namespace A026106.P9556084834585192398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + (f1 (n + 1) - f1 n)

end

end A026106.P9556084834585192398

/-! ## A026106.P15043260540140542655

`A030529(n+3)+2*A044045(n+1)`
-/

namespace A026106.P15043260540140542655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 3) + 2 * A044045 (n + 1)

end

end A026106.P15043260540140542655

/-! ## A026106.P9751466334163197887

`2*A002212(n+1)-A030529(n+3)`
-/

namespace A026106.P9751466334163197887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002212 (n + 1) - A030529 (n + 3)

end

end A026106.P9751466334163197887

/-! ## A026106.P189952951605840728

`A030529(n+3)+2*A038392(n+2)`
-/

namespace A026106.P189952951605840728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 3) + 2 * A038392 (n + 2)

end

end A026106.P189952951605840728

/-! ## A026106.P6002187141452311864

`A342570(2*n+3)-A342570(2*(n+1))`
-/

namespace A026106.P6002187141452311864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342570 (2 * n + 3) - A342570 (2 * (n + 1))

end

end A026106.P6002187141452311864

/-! ## A026106.P3901332497419378618

`A044045(n+1)+A007317(n+2)-A007317(n+1)`
-/

namespace A026106.P3901332497419378618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + (A007317 (n + 2) - A007317 (n + 1))

end

end A026106.P3901332497419378618

/-! ## A026106.P4047216776325110270

`A002212(n+1)+A046697(n+2)-A044046(n+1)`
-/

namespace A026106.P4047216776325110270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A046697 (n + 2) - A044046 (n + 1))

end

end A026106.P4047216776325110270

/-!
# A026107: Second differences of Motzkin numbers (A001006).

The programs for A026107, the canonical program `A026107.P8700625693626820289` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026107 has offset 2).

The definition of A026107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026107.P8700625693626820289

`A001006(n+3)-2*A001006(n+2)+A001006(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026107

/-- `A001006(n+3)-2*A001006(n+2)+A001006(n+1)` -/
def P8700625693626820289.Spec : Prop :=
  ∀ n, P8700625693626820289.a n = A026107 (n + 2)

theorem P8700625693626820289.correct : P8700625693626820289.Spec := by
  intro n
  simp only [A026107, Nat.add_sub_cancel]

end A026107

/-! ## A026107.P9303155513426361165

`A026122(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A026107.P9303155513426361165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026122 (n + 1) + a (n - 1)

end

end A026107.P9303155513426361165

namespace A026107

/-- `A026122(n+1)+a(n-1)` -/
def P9303155513426361165.Spec : Prop :=
  ∀ n, P9303155513426361165.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P18391271351248916506

`A026269(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A026107.P18391271351248916506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026269 (n + 3) - a (n - 1)

end

end A026107.P18391271351248916506

namespace A026107

/-- `A026269(n+3)-a(n-1)` -/
def P18391271351248916506.Spec : Prop :=
  ∀ n, P18391271351248916506.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P17089111926247855210

`A284778(n+2)-A284778(n)`
-/

namespace A026107.P17089111926247855210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 (n + 2) - A284778 n

end

end A026107.P17089111926247855210

namespace A026107

/-- `A284778(n+2)-A284778(n)` -/
def P17089111926247855210.Spec : Prop :=
  ∀ n, P17089111926247855210.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P14802439481726391032

`Δ[A275207(n)]+Δ[A275208(n)]`
-/

namespace A026107.P14802439481726391032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A026107.P14802439481726391032

namespace A026107

/-- `Δ[A275207(n)]+Δ[A275208(n)]` -/
def P14802439481726391032.Spec : Prop :=
  ∀ n, P14802439481726391032.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P12093237338468570707

`Δ[record[A105695(n)]]`
-/

namespace A026107.P12093237338468570707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P12093237338468570707

namespace A026107

/-- `Δ[record[A105695(n)]]` -/
def P12093237338468570707.Spec : Prop :=
  ∀ n, P12093237338468570707.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P6090094468835595155

`Δ[A002026(n+1)]`
-/

namespace A026107.P6090094468835595155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P6090094468835595155

namespace A026107

/-- `Δ[A002026(n+1)]` -/
def P6090094468835595155.Spec : Prop :=
  ∀ n, P6090094468835595155.a n = A026107 (n + 2)

theorem P6090094468835595155.correct : P6090094468835595155.Spec := by
  intro n
  simp only [A026107, Nat.add_sub_cancel, A026107.P6090094468835595155.f1, A026107.P6090094468835595155.a, A026107.P8700625693626820289.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026107

/-! ## A026107.P8934416437878827902

`Δ[A244884(n+2)]`
-/

namespace A026107.P8934416437878827902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P8934416437878827902

namespace A026107

/-- `Δ[A244884(n+2)]` -/
def P8934416437878827902.Spec : Prop :=
  ∀ n, P8934416437878827902.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P2438723278994256918

`Δ[A105695(n+3)]`
-/

namespace A026107.P2438723278994256918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P2438723278994256918

namespace A026107

/-- `Δ[A105695(n+3)]` -/
def P2438723278994256918.Spec : Prop :=
  ∀ n, P2438723278994256918.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P6770201760227487736

`Δ[record[Δ[A086246(n)]]]`
-/

namespace A026107.P6770201760227487736
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P6770201760227487736

namespace A026107

/-- `Δ[record[Δ[A086246(n)]]]` -/
def P6770201760227487736.Spec : Prop :=
  ∀ n, P6770201760227487736.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P12772361779309165145

`Δ[Δ[A001006(n+1)]]`
-/

namespace A026107.P12772361779309165145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P12772361779309165145

namespace A026107

/-- `Δ[Δ[A001006(n+1)]]` -/
def P12772361779309165145.Spec : Prop :=
  ∀ n, P12772361779309165145.a n = A026107 (n + 2)

theorem P12772361779309165145.correct : P12772361779309165145.Spec := by
  intro n
  simp only [A026107, Nat.add_sub_cancel, A026107.P12772361779309165145.f2, A026107.P12772361779309165145.f1, A026107.P12772361779309165145.a, A026107.P8700625693626820289.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026107

/-! ## A026107.P10732782048431087744

`Δ[Δ[A086246(n+3)]]`
-/

namespace A026107.P10732782048431087744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P10732782048431087744

namespace A026107

/-- `Δ[Δ[A086246(n+3)]]` -/
def P10732782048431087744.Spec : Prop :=
  ∀ n, P10732782048431087744.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P15801074736632943358

`Δ[Δ[A168049(n+3)]]`
-/

namespace A026107.P15801074736632943358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P15801074736632943358

namespace A026107

/-- `Δ[Δ[A168049(n+3)]]` -/
def P15801074736632943358.Spec : Prop :=
  ∀ n, P15801074736632943358.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P6224165464348759502

`Δ[A275208(n)+A275207(n)]`
-/

namespace A026107.P6224165464348759502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 n + A275207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P6224165464348759502

namespace A026107

/-- `Δ[A275208(n)+A275207(n)]` -/
def P6224165464348759502.Spec : Prop :=
  ∀ n, P6224165464348759502.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P16935524909500425138

`Δ[A284778(n+1)+A284778(n)]`
-/

namespace A026107.P16935524909500425138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 (n + 1) + A284778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P16935524909500425138

namespace A026107

/-- `Δ[A284778(n+1)+A284778(n)]` -/
def P16935524909500425138.Spec : Prop :=
  ∀ n, P16935524909500425138.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P12663028320430065494

`Δ[A187306(n+2)-A187306(n)]`
-/

namespace A026107.P12663028320430065494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187306 (n + 2) - A187306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P12663028320430065494

namespace A026107

/-- `Δ[A187306(n+2)-A187306(n)]` -/
def P12663028320430065494.Spec : Prop :=
  ∀ n, P12663028320430065494.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P11683639279889497729

`A002026(n+2)-A002026(n+1)`
-/

namespace A026107.P11683639279889497729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 2) - A002026 (n + 1)

end

end A026107.P11683639279889497729

namespace A026107

/-- `A002026(n+2)-A002026(n+1)` -/
def P11683639279889497729.Spec : Prop :=
  ∀ n, P11683639279889497729.a n = A026107 (n + 2)

theorem P11683639279889497729.correct : P11683639279889497729.Spec := by
  intro n
  simp only [A026107, Nat.add_sub_cancel, A026107.P11683639279889497729.a, A026107.P8700625693626820289.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026107

/-! ## A026107.P7606783002928875395

`A244884(n+3)-A244884(n+2)`
-/

namespace A026107.P7606783002928875395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 3) - A244884 (n + 2)

end

end A026107.P7606783002928875395

namespace A026107

/-- `A244884(n+3)-A244884(n+2)` -/
def P7606783002928875395.Spec : Prop :=
  ∀ n, P7606783002928875395.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P12556075746161818089

`Δ[Δ[A343386(n+1)+A107587(n+1)]]`
-/

namespace A026107.P12556075746161818089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 (n + 1) + A107587 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P12556075746161818089

namespace A026107

/-- `Δ[Δ[A343386(n+1)+A107587(n+1)]]` -/
def P12556075746161818089.Spec : Prop :=
  ∀ n, P12556075746161818089.a n = A026107 (n + 2)

end A026107

/-! ## A026107.P11472699184382659231

`Δ[Δ[A307573(n+1)+A307564(n+1)]]`
-/

namespace A026107.P11472699184382659231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 (n + 1) + A307564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026107.P11472699184382659231

namespace A026107

/-- `Δ[Δ[A307573(n+1)+A307564(n+1)]]` -/
def P11472699184382659231.Spec : Prop :=
  ∀ n, P11472699184382659231.a n = A026107 (n + 2)

end A026107

/-!
# A026108: Expansion of 1/((1-2*x)*(1-5*x)*(1-9*x)*(1-12*x)).

The programs for A026108, there is no canonical definition to state claims against.
-/

/-! ## A026108.P3439168117032743151

`a(n-1)+A020566(n)+a(n-1)` with `a(0)=1`
-/

namespace A026108.P3439168117032743151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020566 n + a (n - 1))

end

end A026108.P3439168117032743151

/-! ## A026108.P2010771653664899378

`2*A021304(n)-A021164(n)`
-/

namespace A026108.P2010771653664899378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021304 n - A021164 n

end

end A026108.P2010771653664899378

/-! ## A026108.P4366113761623828338

`2*A025991(n)-A025988(n)`
-/

namespace A026108.P4366113761623828338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025991 n - A025988 n

end

end A026108.P4366113761623828338

/-! ## A026108.P10930398194006330257

`∑[2*A016324(n)-A016302(n)]`
-/

namespace A026108.P10930398194006330257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016324 n - A016302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026108.P10930398194006330257

/-! ## A026108.P824001579104101564

`Δ[(A021304(n)-A021134(n))/7]`
-/

namespace A026108.P824001579104101564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021304 n - A021134 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026108.P824001579104101564

/-!
# A026109: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 3, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array defined in A026105.

The programs for A026109, the canonical program `A026109.P346914583229573815` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026109 has offset 3).

The definition of A026109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026109.P1962849684023644024

`∑[A026124(n+2)]`
-/

namespace A026109.P1962849684023644024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026109.P1962849684023644024

namespace A026109

/-- `∑[A026124(n+2)]` -/
def P1962849684023644024.Spec : Prop :=
  ∀ n, P1962849684023644024.a n = A026109 (n + 3)

end A026109

/-! ## A026109.P2456595306927904274

`A026325(n+2)-A001006(n+2)`
-/

namespace A026109.P2456595306927904274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (n + 2) - A001006 (n + 2)

end

end A026109.P2456595306927904274

namespace A026109

/-- `A026325(n+2)-A001006(n+2)` -/
def P2456595306927904274.Spec : Prop :=
  ∀ n, P2456595306927904274.a n = A026109 (n + 3)

end A026109

/-! ## A026109.P12926403970428710127

`A026123(n+3)-A026107(n+3)`
-/

namespace A026109.P12926403970428710127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 3) - A026107 (n + 3)

end

end A026109.P12926403970428710127

namespace A026109

/-- `A026123(n+3)-A026107(n+3)` -/
def P12926403970428710127.Spec : Prop :=
  ∀ n, P12926403970428710127.a n = A026109 (n + 3)

theorem P12926403970428710127.correct : P12926403970428710127.Spec := by
  intro n
  simp only [A026109, Nat.add_sub_cancel, A026109.P12926403970428710127.a, A026109.P346914583229573815.f1, A026109.P346914583229573815.a, A026107, A026107.P8700625693626820289.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026109

/-! ## A026109.P11921157385384826171

`A026123(n+2)+A026123(n+3)-A026122(n+3)`
-/

namespace A026109.P11921157385384826171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2) + (A026123 (n + 3) - A026122 (n + 3))

end

end A026109.P11921157385384826171

namespace A026109

/-- `A026123(n+2)+A026123(n+3)-A026122(n+3)` -/
def P11921157385384826171.Spec : Prop :=
  ∀ n, P11921157385384826171.a n = A026109 (n + 3)

theorem P11921157385384826171.correct : P11921157385384826171.Spec := by
  intro n
  simp only [A026109, Nat.add_sub_cancel, A026109.P11921157385384826171.a, A026109.P346914583229573815.f1, A026109.P346914583229573815.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026109

/-! ## A026109.P17781073061892545933

`A026122(n+4)-A026269(n+5)`
-/

namespace A026109.P17781073061892545933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 4) - A026269 (n + 5)

end

end A026109.P17781073061892545933

namespace A026109

/-- `A026122(n+4)-A026269(n+5)` -/
def P17781073061892545933.Spec : Prop :=
  ∀ n, P17781073061892545933.a n = A026109 (n + 3)

end A026109

/-! ## A026109.P346914583229573815

`Δ[A026134(n+2)]-A026107(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026109

/-- `Δ[A026134(n+2)]-A026107(n+3)` -/
def P346914583229573815.Spec : Prop :=
  ∀ n, P346914583229573815.a n = A026109 (n + 3)

theorem P346914583229573815.correct : P346914583229573815.Spec := by
  intro n
  simp only [A026109, Nat.add_sub_cancel]

end A026109

/-! ## A026109.P6352784596946629841

`A005323(n+4)-(A026124(n+3)+A005323(n+3))`
-/

namespace A026109.P6352784596946629841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005323 (n + 4) - (A026124 (n + 3) + A005323 (n + 3))

end

end A026109.P6352784596946629841

namespace A026109

/-- `A005323(n+4)-(A026124(n+3)+A005323(n+3))` -/
def P6352784596946629841.Spec : Prop :=
  ∀ n, P6352784596946629841.a n = A026109 (n + 3)

end A026109

/-! ## A026109.P145741852107497181

`A026105(∑[n+3]+n+3)`
-/

namespace A026109.P145741852107497181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A026109.P145741852107497181

namespace A026109

/-- `A026105(∑[n+3]+n+3)` -/
def P145741852107497181.Spec : Prop :=
  ∀ n, P145741852107497181.a n = A026109 (n + 3)

end A026109

/-! ## A026109.P1915617433835306260

`record[A026105(abs(1-n))/A026105(n+3)]`
-/

namespace A026109.P1915617433835306260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026105 |1 - (n : ℤ)|.toNat : ℚ) / (A026105 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026109.P1915617433835306260

namespace A026109

/-- `record[A026105(abs(1-n))/A026105(n+3)]` -/
def P1915617433835306260.Spec : Prop :=
  ∀ n, P1915617433835306260.a n = (A026109 (n + 3) : ℚ)

end A026109

/-! ## A026109.P1065006231622792886

`Δ[A020474(A167614(n+4)+n+1)]`
-/

namespace A026109.P1065006231622792886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020474 (A167614 (n + 4) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026109.P1065006231622792886

namespace A026109

/-- `Δ[A020474(A167614(n+4)+n+1)]` -/
def P1065006231622792886.Spec : Prop :=
  ∀ n, P1065006231622792886.a n = A026109 (n + 3)

end A026109

/-!
# A026110: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, s(n) = 4, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-4), where T is the array defined in A026105.

The programs for A026110, the canonical program `A026110.P4365438227712076799` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026110 has offset 4).

The definition of A026110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026110.P4365438227712076799

`∑[A026125(n+3)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026110

/-- `∑[A026125(n+3)]` -/
def P4365438227712076799.Spec : Prop :=
  ∀ n, P4365438227712076799.a n = A026110 (n + 4)

theorem P4365438227712076799.correct : P4365438227712076799.Spec := by
  intro n
  simp only [A026110, Nat.add_sub_cancel]

end A026110

/-! ## A026110.P8151392777346222845

`∑[A026290(n+4)-a(n-1)]` with `a(0)=1`
-/

namespace A026110.P8151392777346222845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026290 (n + 4) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026110.P8151392777346222845

namespace A026110

/-- `∑[A026290(n+4)-a(n-1)]` -/
def P8151392777346222845.Spec : Prop :=
  ∀ n, P8151392777346222845.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P18219130040343232132

`A026153(n+2)+2*a(n-1)` with `a(0)=1`
-/

namespace A026110.P18219130040343232132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026153 (n + 2) + 2 * a (n - 1)

end

end A026110.P18219130040343232132

namespace A026110

/-- `A026153(n+2)+2*a(n-1)` -/
def P18219130040343232132.Spec : Prop :=
  ∀ n, P18219130040343232132.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P1494747759155053114

`A026124(n+4)-A026134(n+3)`
-/

namespace A026110.P1494747759155053114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 4) - A026134 (n + 3)

end

end A026110.P1494747759155053114

namespace A026110

/-- `A026124(n+4)-A026134(n+3)` -/
def P1494747759155053114.Spec : Prop :=
  ∀ n, P1494747759155053114.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P1281295533196130733

`a(n-1)+A026125(n+3)%A026126(n+4)` with `a(0)=1`
-/

namespace A026110.P1281295533196130733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A026125 (n + 3)) (A026126 (n + 4))

end

end A026110.P1281295533196130733

namespace A026110

/-- `a(n-1)+A026125(n+3)%A026126(n+4)` -/
def P1281295533196130733.Spec : Prop :=
  ∀ n, P1281295533196130733.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P7960668547315471061

`A005324(n+5)-(A026125(n+4)+A005324(n+4))`
-/

namespace A026110.P7960668547315471061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005324 (n + 5) - (A026125 (n + 4) + A005324 (n + 4))

end

end A026110.P7960668547315471061

namespace A026110

/-- `A005324(n+5)-(A026125(n+4)+A005324(n+4))` -/
def P7960668547315471061.Spec : Prop :=
  ∀ n, P7960668547315471061.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P12939906690245158536

`A026105(∑[n+5]+5)`
-/

namespace A026110.P12939906690245158536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A026110.P12939906690245158536

namespace A026110

/-- `A026105(∑[n+5]+5)` -/
def P12939906690245158536.Spec : Prop :=
  ∀ n, P12939906690245158536.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P2058661224097477834

`record[Δ[A026300(A052905(n))]]`
-/

namespace A026110.P2058661224097477834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A052905 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026110.P2058661224097477834

namespace A026110

/-- `record[Δ[A026300(A052905(n))]]` -/
def P2058661224097477834.Spec : Prop :=
  ∀ n, P2058661224097477834.a n = A026110 (n + 4)

end A026110

/-! ## A026110.P6996944176953689817

`record[A026105(n)/A026105(n+5)]`
-/

namespace A026110.P6996944176953689817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026105 n : ℚ) / (A026105 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026110.P6996944176953689817

namespace A026110

/-- `record[A026105(n)/A026105(n+5)]` -/
def P6996944176953689817.Spec : Prop :=
  ∀ n, P6996944176953689817.a n = (A026110 (n + 4) : ℚ)

end A026110

/-! ## A026110.P17671364825485553492

`lcm(A026105(A052905(n+2)), A165326(n))`
-/

namespace A026110.P17671364825485553492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026105 (A052905 (n + 2)).toNat) (A165326 n)

end

end A026110.P17671364825485553492

namespace A026110

/-- `lcm(A026105(A052905(n+2)), A165326(n))` -/
def P17671364825485553492.Spec : Prop :=
  ∀ n, (P17671364825485553492.a n : ℤ) = A026110 (n + 4)

end A026110

/-!
# A026111: a(n) = T(2n-1,n), where T is the array defined in A026105.

The programs for A026111, there is no canonical definition to state claims against.
-/

/-! ## A026111.P16106476337339998268

`A026132(n+1)+A026112(n+1)`
-/

namespace A026111.P16106476337339998268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026132 (n + 1) + A026112 (n + 1)

end

end A026111.P16106476337339998268

/-! ## A026111.P15345724541570957838

`A026306(n+1)+A026305(n+1)`
-/

namespace A026111.P15345724541570957838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026306 (n + 1) + A026305 (n + 1)

end

end A026111.P15345724541570957838

/-! ## A026111.P7563270512657432811

`A026132(n+1)+A026117(A103517(n))`
-/

namespace A026111.P7563270512657432811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026132 (n + 1) + A026117 (A103517 n).toNat

end

end A026111.P7563270512657432811

/-! ## A026111.P2537993840567819143

`A026112(n+1)+A026116(n+1)+A026115(n+1)`
-/

namespace A026111.P2537993840567819143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026112 (n + 1) + (A026116 (n + 1) + A026115 (n + 1))

end

end A026111.P2537993840567819143

/-! ## A026111.P8466468728434507886

`A344396(n+1)-A026302(n+1)`
-/

namespace A026111.P8466468728434507886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344396 (n + 1) - A026302 (n + 1)

end

end A026111.P8466468728434507886

/-! ## A026111.P6741466181238734240

`A026105(2*(n+2)²)`
-/

namespace A026111.P6741466181238734240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (2 * (n + 2) ^ 2)

end

end A026111.P6741466181238734240

/-!
# A026112: a(n) = T(2n,n), where T is the array defined in A026105.

The programs for A026112, the canonical program `A026112.P727766938938311538` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026112 has offset 0).

The definition of A026112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026112.P6665681965821565775

`A026117(2*n)`
-/

namespace A026112.P6665681965821565775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (2 * n)

end

end A026112.P6665681965821565775

namespace A026112

/-- `A026117(2*n)` -/
def P6665681965821565775.Spec : Prop :=
  ∀ n, P6665681965821565775.a n = A026112 n

end A026112

/-! ## A026112.P727766938938311538

`A026302(A028310(n))-A327871(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026112

/-- `A026302(A028310(n))-A327871(n)` -/
def P727766938938311538.Spec : Prop :=
  ∀ n, P727766938938311538.a n = A026112 n

theorem P727766938938311538.correct : P727766938938311538.Spec := by
  intro n
  simp only [A026112]

end A026112

/-! ## A026112.P6287119963230150636

`gcd(A000038(n), A026117(A004277(n)))`
-/

namespace A026112.P6287119963230150636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026117 (A004277 n).toNat)

end

end A026112.P6287119963230150636

namespace A026112

/-- `gcd(A000038(n), A026117(A004277(n)))` -/
def P6287119963230150636.Spec : Prop :=
  ∀ n, (P6287119963230150636.a n : ℤ) = A026112 n

end A026112

/-! ## A026112.P3644738797785677727

`A026117(A005843(n))+A000038(n+1)`
-/

namespace A026112.P3644738797785677727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (A005843 n).toNat + A000038 (n + 1)

end

end A026112.P3644738797785677727

namespace A026112

/-- `A026117(A005843(n))+A000038(n+1)` -/
def P3644738797785677727.Spec : Prop :=
  ∀ n, P3644738797785677727.a n = A026112 n

end A026112

/-! ## A026112.P16050339638822200873

`A026117(A004277(n))-char[A033581(n+7)]`
-/

namespace A026112.P16050339638822200873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (A004277 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A026112.P16050339638822200873

namespace A026112

/-- `A026117(A004277(n))-char[A033581(n+7)]` -/
def P16050339638822200873.Spec : Prop :=
  ∀ n, P16050339638822200873.a n = A026112 n

end A026112

/-! ## A026112.P7891997445504516107

`A026117(A004277(n))+val(A038888(n+1), 2)`
-/

namespace A026112.P7891997445504516107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (A004277 n).toNat + (SequenceMachineLib.valuation (A038888 (n + 1)).toNat 2 : ℤ)

end

end A026112.P7891997445504516107

namespace A026112

/-- `A026117(A004277(n))+val(A038888(n+1), 2)` -/
def P7891997445504516107.Spec : Prop :=
  ∀ n, P7891997445504516107.a n = A026112 n

end A026112

/-! ## A026112.P6415674436554536848

`A026117(A004277(n))%A026111(n+2)`
-/

namespace A026112.P6415674436554536848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026117 (A004277 n).toNat) (A026111 (n + 2))

end

end A026112.P6415674436554536848

namespace A026112

/-- `A026117(A004277(n))%A026111(n+2)` -/
def P6415674436554536848.Spec : Prop :=
  ∀ n, P6415674436554536848.a n = A026112 n

end A026112

/-! ## A026112.P7509344347269322143

`A026117(A005843(n))%A026111(n+2)`
-/

namespace A026112.P7509344347269322143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026117 (A005843 n).toNat) (A026111 (n + 2))

end

end A026112.P7509344347269322143

namespace A026112

/-- `A026117(A005843(n))%A026111(n+2)` -/
def P7509344347269322143.Spec : Prop :=
  ∀ n, P7509344347269322143.a n = A026112 n

end A026112

/-! ## A026112.P15344389229240453058

`A026117(A005843(n))/A000120(A059268(n))`
-/

namespace A026112.P15344389229240453058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026117 (A005843 n).toNat : ℚ) / (A000120 (A059268 n).toNat : ℚ)

end

end A026112.P15344389229240453058

namespace A026112

/-- `A026117(A005843(n))/A000120(A059268(n))` -/
def P15344389229240453058.Spec : Prop :=
  ∀ n, P15344389229240453058.a n = (A026112 n : ℚ)

end A026112

/-! ## A026112.P3221334070948710238

`A026117(A005843(n))%Δ[A001018(n)]`
-/

namespace A026112.P3221334070948710238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026117 (A005843 n).toNat) (f1 (n + 1) - f1 n)

end

end A026112.P3221334070948710238

namespace A026112

/-- `A026117(A005843(n))%Δ[A001018(n)]` -/
def P3221334070948710238.Spec : Prop :=
  ∀ n, P3221334070948710238.a n = A026112 n

end A026112

/-!
# A026113: T(3n,n), where T is the array defined in A026105.

The programs for A026113, there is no canonical definition to state claims against.
-/

/-! ## A026113.P1505432425305751702

`A026105(A062725(n))`
-/

namespace A026113.P1505432425305751702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (A062725 n).toNat

end

end A026113.P1505432425305751702

/-! ## A026113.P14980560153433111116

`A026105(A064225(n)-1)`
-/

namespace A026113.P14980560153433111116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (A064225 n - 1).toNat

end

end A026113.P14980560153433111116

/-! ## A026113.P3701931344313718531

`A026105(eq[1, A120987(n)])`
-/

namespace A026113.P3701931344313718531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026113.P3701931344313718531

/-! ## A026113.P6532473623217836523

`A026105(eq[A002262(n), A114327(n)])`
-/

namespace A026113.P6532473623217836523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026113.P6532473623217836523

/-! ## A026113.P15362359696124612335

`A026105(eq[A038722(n+1), A132118(n+1)])`
-/

namespace A026113.P15362359696124612335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026113.P15362359696124612335

/-!
# A026114: T(4n,n), where T is the array defined in A026105.

The programs for A026114, there is no canonical definition to state claims against.
-/

/-! ## A026114.P11336879199327809730

`A026105(A139276(n))`
-/

namespace A026114.P11336879199327809730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (A139276 n).toNat

end

end A026114.P11336879199327809730

/-! ## A026114.P3779148495165867889

`A026105(n*A017101(n))`
-/

namespace A026114.P3779148495165867889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 ((n : ℤ) * A017101 n).toNat

end

end A026114.P3779148495165867889

/-! ## A026114.P11865951808472706476

`A026105(A033954(2*n)/2)`
-/

namespace A026114.P11865951808472706476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (SequenceMachineLib.roundAway ((A033954 (2 * n) : ℚ) / 2)).toNat

end

end A026114.P11865951808472706476

/-! ## A026114.P4632279135455205214

`A026105(2*A007742(n)+n)`
-/

namespace A026114.P4632279135455205214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (2 * A007742 n + (n : ℤ)).toNat

end

end A026114.P4632279135455205214

/-! ## A026114.P1381049053296506124

`A026105(2*A002943(n)-n)`
-/

namespace A026114.P1381049053296506124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (2 * A002943 n - (n : ℤ)).toNat

end

end A026114.P1381049053296506124

/-!
# A026115: a(n) = T(2n,n-1), where T is the array defined in A026105.

The programs for A026115, there is no canonical definition to state claims against.
-/

/-! ## A026115.P15607443683712112915

`A026132(n+1)-A026116(n+1)`
-/

namespace A026115.P15607443683712112915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026132 (n + 1) - A026116 (n + 1)

end

end A026115.P15607443683712112915

/-! ## A026115.P2618216218415574334

`(A026332(n)+A026305(n+1))/2`
-/

namespace A026115.P2618216218415574334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026332 n + A026305 (n + 1) : ℚ) / 2

end

end A026115.P2618216218415574334

/-! ## A026115.P17208713202914747658

`A026117(2*n+3)-A026133(2*(n+1))`
-/

namespace A026115.P17208713202914747658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (2 * n + 3) - A026133 (2 * (n + 1))

end

end A026115.P17208713202914747658

/-! ## A026115.P9961032179886409260

`A026105((n+3)*2*n+3)`
-/

namespace A026115.P9961032179886409260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 ((n + 3) * (2 * n) + 3)

end

end A026115.P9961032179886409260

/-! ## A026115.P16777397552792761470

`record[A026105(gcd(n, A114327(n+1)))]`
-/

namespace A026115.P16777397552792761470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (Int.gcd (n : ℤ) (A114327 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026115.P16777397552792761470

/-! ## A026115.P1165182494660008395

`record[gcd(2-A114327(n), A026105(n))]`
-/

namespace A026115.P1165182494660008395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A114327 n) (A026105 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026115.P1165182494660008395

/-!
# A026116: T(2n,n+1), where T is the array defined in A026105.

The programs for A026116, there is no canonical definition to state claims against.
-/

/-! ## A026116.P13645740191908472008

`A025188(n+1)-A025187(n+1)`
-/

namespace A026116.P13645740191908472008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025188 (n + 1) - A025187 (n + 1)

end

end A026116.P13645740191908472008

/-! ## A026116.P2588477276214605802

`A026132(n+1)-A026115(n+1)`
-/

namespace A026116.P2588477276214605802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026132 (n + 1) - A026115 (n + 1)

end

end A026116.P2588477276214605802

/-! ## A026116.P2719079160222309810

`A026161(n+1)-A026131(n+1)`
-/

namespace A026116.P2719079160222309810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026161 (n + 1) - A026131 (n + 1)

end

end A026116.P2719079160222309810

/-! ## A026116.P36487539167961394

`A026105((n+1)²+(n+2)²)`
-/

namespace A026116.P36487539167961394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026116.P36487539167961394

/-! ## A026116.P15034722126680137272

`record[gcd(A026105(2*n+1), A114327(2*n))]`
-/

namespace A026116.P15034722126680137272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026105 (2 * n + 1)) (A114327 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026116.P15034722126680137272

/-!
# A026117: T(n,[ n/2 ]), where T is the array defined in A026105.

The programs for A026117, there is no canonical definition to state claims against.
-/

/-! ## A026117.P14244559325227430569

`A026105(floor(n²/2)+n)`
-/

namespace A026117.P14244559325227430569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A026117.P14244559325227430569

/-! ## A026117.P6595723445281081183

`A026105(A004526(n²)+n)%A026096(n)`
-/

namespace A026117.P6595723445281081183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026105 (A004526 (n ^ 2) + (n : ℤ)).toNat) (A026096 n)

end

end A026117.P6595723445281081183

/-! ## A026117.P10345927508100958972

`gcd(A000038(n), A026105(A004526(n²)+n))`
-/

namespace A026117.P10345927508100958972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026105 (A004526 (n ^ 2) + (n : ℤ)).toNat)

end

end A026117.P10345927508100958972

/-! ## A026117.P12095761425103862791

`or(A000007(n), A026105(A004526(n²)+n))`
-/

namespace A026117.P12095761425103862791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026105 (A004526 (n ^ 2) + (n : ℤ)).toNat)

end

end A026117.P12095761425103862791

/-! ## A026117.P8586563011778183405

`A026105(A004526(n*(n+2)))%A026096(n)`
-/

namespace A026117.P8586563011778183405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026105 (A004526 (n * (n + 2))).toNat) (A026096 n)

end

end A026117.P8586563011778183405

/-! ## A026117.P5937085362391722676

`or(A000007(n), A026105(A004526(n*(n+2))))`
-/

namespace A026117.P5937085362391722676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026105 (A004526 (n * (n + 2))).toNat)

end

end A026117.P5937085362391722676

/-! ## A026117.P15350624769994753328

`A026105(A004526(n*(n+2)))+A001489(n)+n`
-/

namespace A026117.P15350624769994753328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (A004526 (n * (n + 2))).toNat + (A001489 n + (n : ℤ))

end

end A026117.P15350624769994753328

/-! ## A026117.P6951036191927292652

`A008836(n+1)²*A026105(A004526(n*(n+2)))`
-/

namespace A026117.P6951036191927292652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A026105 (A004526 (n * (n + 2))).toNat

end

end A026117.P6951036191927292652

/-! ## A026117.P2635399251125415751

`A014963(6*(n+1))*A026105(A004526(n*(n+2)))`
-/

namespace A026117.P2635399251125415751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A026105 (A004526 (n * (n + 2))).toNat

end

end A026117.P2635399251125415751

/-! ## A026117.P5976957172282643440

`A026105(A004526(n²)+n)+A000010(n+2)%-1`
-/

namespace A026117.P5976957172282643440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (A004526 (n ^ 2) + (n : ℤ)).toNat + Int.tmod (A000010 (n + 2)) (-1)

end

end A026117.P5976957172282643440

/-! ## A026117.P12217646052239375231

`A112952(A031195(n))+A026105(A004526(n*(n+2)))`
-/

namespace A026117.P12217646052239375231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112952 (A031195 n).toNat + A026105 (A004526 (n * (n + 2))).toNat

end

end A026117.P12217646052239375231

/-! ## A026117.P4066396714709211312

`A208451(2*A053575(n+1))+A026105(A004526(n²)+n)`
-/

namespace A026117.P4066396714709211312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208451 (2 * A053575 (n + 1)).toNat + A026105 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A026117.P4066396714709211312

/-! ## A026117.P4349135390482352520

`A208451(2*A053575(n+1))+A026105(A004526(n*(n+2)))`
-/

namespace A026117.P4349135390482352520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208451 (2 * A053575 (n + 1)).toNat + A026105 (A004526 (n * (n + 2))).toNat

end

end A026117.P4349135390482352520

/-!
# A026118: Number of polyhexes of class PF2 (with two catafusenes annealated to pyrene).

The programs for A026118, there is no canonical definition to state claims against.
-/

/-! ## A026118.P11242059830166298556

`A073571(A011782(2*n+3)-A359215(n))`
-/

namespace A026118.P11242059830166298556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (A011782 (2 * n + 3) - A359215 n).toNat

end

end A026118.P11242059830166298556

/-!
# A026119: Bisection of A000016 (also of A000013).

The programs for A026119, the canonical program `A026119.P9134211509856780869` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026119 has offset 0).

The definition of A026119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026119.P2279816614339652853

`A000013(Δ[n²])`
-/

namespace A026119.P2279816614339652853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026119.P2279816614339652853

namespace A026119

/-- `A000013(Δ[n²])` -/
def P2279816614339652853.Spec : Prop :=
  ∀ n, P2279816614339652853.a n = A026119 n

end A026119

/-! ## A026119.P9134211509856780869

`A000016(Δ[n²])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A026119

/-- `A000016(Δ[n²])` -/
def P9134211509856780869.Spec : Prop :=
  ∀ n, P9134211509856780869.a n = A026119 n

theorem P9134211509856780869.correct : P9134211509856780869.Spec := by
  intro n
  simp only [A026119]

end A026119

/-! ## A026119.P10453568584994281568

`A053656(Δ[n²])`
-/

namespace A026119.P10453568584994281568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026119.P10453568584994281568

namespace A026119

/-- `A053656(Δ[n²])` -/
def P10453568584994281568.Spec : Prop :=
  ∀ n, P10453568584994281568.a n = A026119 n

end A026119

/-! ## A026119.P12763693653365027795

`A300190(Δ[n²])`
-/

namespace A026119.P12763693653365027795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026119.P12763693653365027795

namespace A026119

/-- `A300190(Δ[n²])` -/
def P12763693653365027795.Spec : Prop :=
  ∀ n, P12763693653365027795.a n = A026119 n

end A026119

/-! ## A026119.P10031787667764584559

`A300218(Δ[n²])`
-/

namespace A026119.P10031787667764584559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026119.P10031787667764584559

namespace A026119

/-- `A300218(Δ[n²])` -/
def P10031787667764584559.Spec : Prop :=
  ∀ n, P10031787667764584559.a n = A026119 n

end A026119

/-! ## A026119.P15036635504786690639

`A056295(Δ[n²])+1`
-/

namespace A026119.P15036635504786690639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A026119.P15036635504786690639

namespace A026119

/-- `A056295(Δ[n²])+1` -/
def P15036635504786690639.Spec : Prop :=
  ∀ n, P15036635504786690639.a n = A026119 n

end A026119

/-! ## A026119.P1027492576134180403

`A330632(Δ[n²])+1`
-/

namespace A026119.P1027492576134180403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A026119.P1027492576134180403

namespace A026119

/-- `A330632(Δ[n²])+1` -/
def P1027492576134180403.Spec : Prop :=
  ∀ n, P1027492576134180403.a n = A026119 n

end A026119

/-! ## A026119.P9135329892409174786

`A096010(Δ[n²])-1`
-/

namespace A026119.P9135329892409174786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A026119.P9135329892409174786

namespace A026119

/-- `A096010(Δ[n²])-1` -/
def P9135329892409174786.Spec : Prop :=
  ∀ n, P9135329892409174786.a n = A026119 n

end A026119

/-! ## A026119.P15734398589171282433

`∑{d}[2*n+1, A000048(#)]`
-/

namespace A026119.P15734398589171282433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000048 d

end

end A026119.P15734398589171282433

namespace A026119

/-- `∑{d}[2*n+1, A000048(#)]` -/
def P15734398589171282433.Spec : Prop :=
  ∀ n, P15734398589171282433.a n = A026119 n

end A026119

/-! ## A026119.P262741807220764689

`∑{d}[2*n+1, A051841(#)]`
-/

namespace A026119.P262741807220764689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051841 d

end

end A026119.P262741807220764689

namespace A026119

/-- `∑{d}[2*n+1, A051841(#)]` -/
def P262741807220764689.Spec : Prop :=
  ∀ n, P262741807220764689.a n = A026119 n

end A026119

/-! ## A026119.P9104571549412834680

`∑{d}[2*n+1, A060172(#)]`
-/

namespace A026119.P9104571549412834680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060172 d

end

end A026119.P9104571549412834680

namespace A026119

/-- `∑{d}[2*n+1, A060172(#)]` -/
def P9104571549412834680.Spec : Prop :=
  ∀ n, P9104571549412834680.a n = A026119 n

end A026119

/-! ## A026119.P18086178254679546185

`∑{d}[2*n+1, A060481(#)]`
-/

namespace A026119.P18086178254679546185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060481 d

end

end A026119.P18086178254679546185

namespace A026119

/-- `∑{d}[2*n+1, A060481(#)]` -/
def P18086178254679546185.Spec : Prop :=
  ∀ n, P18086178254679546185.a n = A026119 n

end A026119

/-! ## A026119.P9196677387451872882

`∑{d}[2*n+1, A066313(#)]`
-/

namespace A026119.P9196677387451872882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066313 d

end

end A026119.P9196677387451872882

namespace A026119

/-- `∑{d}[2*n+1, A066313(#)]` -/
def P9196677387451872882.Spec : Prop :=
  ∀ n, P9196677387451872882.a n = A026119 n

end A026119

/-! ## A026119.P17987098149015483846

`∑{d}[2*n+1, A066314(#)]`
-/

namespace A026119.P17987098149015483846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066314 d

end

end A026119.P17987098149015483846

namespace A026119

/-- `∑{d}[2*n+1, A066314(#)]` -/
def P17987098149015483846.Spec : Prop :=
  ∀ n, P17987098149015483846.a n = A026119 n

end A026119

/-! ## A026119.P2239831543967661998

`record[A000016(A000265(n+1))]`
-/

namespace A026119.P2239831543967661998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026119.P2239831543967661998

namespace A026119

/-- `record[A000016(A000265(n+1))]` -/
def P2239831543967661998.Spec : Prop :=
  ∀ n, P2239831543967661998.a n = A026119 n

end A026119

/-! ## A026119.P7656437844618594343

`record[A000016(A182469(n+1))]`
-/

namespace A026119.P7656437844618594343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (A182469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026119.P7656437844618594343

namespace A026119

/-- `record[A000016(A182469(n+1))]` -/
def P7656437844618594343.Spec : Prop :=
  ∀ n, P7656437844618594343.a n = A026119 n

end A026119

/-! ## A026119.P7845804649721519407

`record[A000013(n+1)/A000034(n)]`
-/

namespace A026119.P7845804649721519407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026119.P7845804649721519407

namespace A026119

/-- `record[A000013(n+1)/A000034(n)]` -/
def P7845804649721519407.Spec : Prop :=
  ∀ n, P7845804649721519407.a n = (A026119 n : ℚ)

end A026119

/-! ## A026119.P15616067105208715898

`A045677(2*n+1)+A000079(n)`
-/

namespace A026119.P15616067105208715898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045677 (2 * n + 1) + A000079 n

end

end A026119.P15616067105208715898

namespace A026119

/-- `A045677(2*n+1)+A000079(n)` -/
def P15616067105208715898.Spec : Prop :=
  ∀ n, P15616067105208715898.a n = A026119 n

end A026119

/-! ## A026119.P14486828306685537741

`A059076(2*n+1)+A000079(n)`
-/

namespace A026119.P14486828306685537741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (2 * n + 1) + A000079 n

end

end A026119.P14486828306685537741

namespace A026119

/-- `A059076(2*n+1)+A000079(n)` -/
def P14486828306685537741.Spec : Prop :=
  ∀ n, P14486828306685537741.a n = A026119 n

end A026119

/-! ## A026119.P17517310275621333113

`A092668(n)+A059053(2*n+1)`
-/

namespace A026119.P17517310275621333113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092668 n + A059053 (2 * n + 1)

end

end A026119.P17517310275621333113

namespace A026119

/-- `A092668(n)+A059053(2*n+1)` -/
def P17517310275621333113.Spec : Prop :=
  ∀ n, P17517310275621333113.a n = A026119 n

end A026119

/-!
# A026120: Triangle T by rows: second differences of Motzkin triangle (A026300), (i >= -1, -1<=j<=i).

The programs for A026120, there is no canonical definition to state claims against.
-/

/-! ## A026120.P15690626352128940299

`A103502(or(4, A092821(n)))`
-/

namespace A026120.P15690626352128940299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103502 (Int.lor 4 (A092821 n)).toNat

end

end A026120.P15690626352128940299

/-! ## A026120.P2455678547454037335

`A108746(A055645(n)+floor(acot(n))-1)`
-/

namespace A026120.P2455678547454037335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108746 (A055645 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A026120.P2455678547454037335

/-! ## A026120.P10135331960184939900

`A108746(A055646(floor(sqrt(n²+1))-1))`
-/

namespace A026120.P10135331960184939900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108746 (A055646 (Nat.sqrt (n ^ 2 + 1) - 1)).toNat

end

end A026120.P10135331960184939900

/-! ## A026120.P6382161133928803938

`A108746(A057428(n)+A055645(n))`
-/

namespace A026120.P6382161133928803938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108746 (A057428 n + A055645 n).toNat

end

end A026120.P6382161133928803938

/-! ## A026120.P1612839834190997524

`A108746(A055645(n)-A057428(n)²)`
-/

namespace A026120.P1612839834190997524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108746 (A055645 n - A057428 n ^ 2).toNat

end

end A026120.P1612839834190997524

/-!
# A026121: a(n) = 3^n*(3^n-1)/2.

The programs for A026121, the canonical program `A026121.P4315507442617543935` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026121 has offset 0).

The definition of A026121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(3^n-1)/2` (program `A026121.P13664646614261595592`, by `A026121.P13664646614261595592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026121.P6265280287683007182

`C(3^n, 2)`
-/

namespace A026121.P6265280287683007182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ n) 2

end

end A026121.P6265280287683007182

namespace A026121

/-- `C(3^n, 2)` -/
def P6265280287683007182.Spec : Prop :=
  ∀ n, (P6265280287683007182.a n : ℤ) = A026121 n

end A026121

/-! ## A026121.P13664646614261595592

`3^n*(3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A026121.P13664646614261595592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * ((3 ^ n : ℤ) - 1) : ℚ) / 2

end

end A026121.P13664646614261595592

namespace A026121

/-- `3^n*(3^n-1)/2` -/
def P13664646614261595592.Spec : Prop :=
  ∀ n, P13664646614261595592.a n = (A026121 n : ℚ)

theorem P13664646614261595592.correct : P13664646614261595592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A026121, Nat.add_sub_cancel, A026121.P13664646614261595592.a, A026121.P4315507442617543935.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A026121, Nat.add_sub_cancel, A026121.P13664646614261595592.a, A026121.P4315507442617543935.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A026121

/-! ## A026121.P4315507442617543935

`12*a(n-1)-27*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026121

/-- `12*a(n-1)-27*a(n-2)` -/
def P4315507442617543935.Spec : Prop :=
  ∀ n, P4315507442617543935.a n = A026121 n

theorem P4315507442617543935.correct : P4315507442617543935.Spec := by
  intro n
  simp only [A026121]

end A026121

/-! ## A026121.P4475808620739055721

`lcm(∑[3^n]-1, 3^n)`
-/

namespace A026121.P4475808620739055721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (3 ^ n : ℤ)

end

end A026121.P4475808620739055721

namespace A026121

/-- `lcm(∑[3^n]-1, 3^n)` -/
def P4475808620739055721.Spec : Prop :=
  ∀ n, (P4475808620739055721.a n : ℤ) = A026121 n

end A026121

/-! ## A026121.P10829192100460695569

`3^n+9*a(n-1)` with `a(0)=0`
-/

namespace A026121.P10829192100460695569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ n + 9 * a (n - 1)

end

end A026121.P10829192100460695569

namespace A026121

/-- `3^n+9*a(n-1)` -/
def P10829192100460695569.Spec : Prop :=
  ∀ n, (P10829192100460695569.a n : ℤ) = A026121 n

end A026121

/-! ## A026121.P7032137938189986913

`A167993(Δ[n²])`
-/

namespace A026121.P7032137938189986913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026121.P7032137938189986913

namespace A026121

/-- `A167993(Δ[n²])` -/
def P7032137938189986913.Spec : Prop :=
  ∀ n, P7032137938189986913.a n = A026121 n

end A026121

/-! ## A026121.P8278443343645540792

`3*A167993(2*n)`
-/

namespace A026121.P8278443343645540792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A167993 (2 * n)

end

end A026121.P8278443343645540792

namespace A026121

/-- `3*A167993(2*n)` -/
def P8278443343645540792.Spec : Prop :=
  ∀ n, P8278443343645540792.a n = A026121 n

end A026121

/-! ## A026121.P10092120537977654666

`3/2*A219205(n)`
-/

namespace A026121.P10092120537977654666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A219205 n : ℚ)

end

end A026121.P10092120537977654666

namespace A026121

/-- `3/2*A219205(n)` -/
def P10092120537977654666.Spec : Prop :=
  ∀ n, P10092120537977654666.a n = (A026121 n : ℚ)

end A026121

/-! ## A026121.P2880110686996262026

`A025551(n)-3^n`
-/

namespace A026121.P2880110686996262026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 n - (3 ^ n : ℤ)

end

end A026121.P2880110686996262026

namespace A026121

/-- `A025551(n)-3^n` -/
def P2880110686996262026.Spec : Prop :=
  ∀ n, P2880110686996262026.a n = A026121 n

end A026121

/-! ## A026121.P16880462562206935793

`3^n*A003462(n)`
-/

namespace A026121.P16880462562206935793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A003462 n

end

end A026121.P16880462562206935793

namespace A026121

/-- `3^n*A003462(n)` -/
def P16880462562206935793.Spec : Prop :=
  ∀ n, P16880462562206935793.a n = A026121 n

end A026121

/-! ## A026121.P9927617442151606286

`record[A076040(n)]-∑[floor(3^(n-1))]`
-/

namespace A026121.P9927617442151606286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026121.P9927617442151606286

namespace A026121

/-- `record[A076040(n)]-∑[floor(3^(n-1))]` -/
def P9927617442151606286.Spec : Prop :=
  ∀ n, P9927617442151606286.a n = A026121 n

end A026121

/-! ## A026121.P12566805619596429705

`A083884(n)-A007051(n)`
-/

namespace A026121.P12566805619596429705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 n - A007051 n

end

end A026121.P12566805619596429705

namespace A026121

/-- `A083884(n)-A007051(n)` -/
def P12566805619596429705.Spec : Prop :=
  ∀ n, P12566805619596429705.a n = A026121 n

end A026121

/-! ## A026121.P13623465494581214161

`A191681(n)-A003462(n)`
-/

namespace A026121.P13623465494581214161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n - A003462 n

end

end A026121.P13623465494581214161

namespace A026121

/-- `A191681(n)-A003462(n)` -/
def P13623465494581214161.Spec : Prop :=
  ∀ n, P13623465494581214161.a n = A026121 n

end A026121

/-! ## A026121.P15330275183749205483

`A123109(n)*A140429(n)`
-/

namespace A026121.P15330275183749205483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 n * A140429 n

end

end A026121.P15330275183749205483

namespace A026121

/-- `A123109(n)*A140429(n)` -/
def P15330275183749205483.Spec : Prop :=
  ∀ n, P15330275183749205483.a n = A026121 n

end A026121

/-! ## A026121.P17636233587197458980

`A076040(n)*A352779(n)`
-/

namespace A026121.P17636233587197458980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n * A352779 n

end

end A026121.P17636233587197458980

namespace A026121

/-- `A076040(n)*A352779(n)` -/
def P17636233587197458980.Spec : Prop :=
  ∀ n, P17636233587197458980.a n = A026121 n

end A026121

/-! ## A026121.P15880957128055198902

`record[A076040(n)-A232801(n)]`
-/

namespace A026121.P15880957128055198902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n - A232801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026121.P15880957128055198902

namespace A026121

/-- `record[A076040(n)-A232801(n)]` -/
def P15880957128055198902.Spec : Prop :=
  ∀ n, P15880957128055198902.a n = A026121 n

end A026121

/-! ## A026121.P7844208333521492

`A191681(n)+1-A007051(n)`
-/

namespace A026121.P7844208333521492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + (1 - A007051 n)

end

end A026121.P7844208333521492

namespace A026121

/-- `A191681(n)+1-A007051(n)` -/
def P7844208333521492.Spec : Prop :=
  ∀ n, P7844208333521492.a n = A026121 n

end A026121

/-! ## A026121.P17347049924700916445

`A003462(n)*A133494(n+1)`
-/

namespace A026121.P17347049924700916445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A133494 (n + 1)

end

end A026121.P17347049924700916445

namespace A026121

/-- `A003462(n)*A133494(n+1)` -/
def P17347049924700916445.Spec : Prop :=
  ∀ n, P17347049924700916445.a n = A026121 n

end A026121

/-! ## A026121.P7605406180448979097

`A029858(n+1)*A133494(n)`
-/

namespace A026121.P7605406180448979097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A133494 n

end

end A026121.P7605406180448979097

namespace A026121

/-- `A029858(n+1)*A133494(n)` -/
def P7605406180448979097.Spec : Prop :=
  ∀ n, P7605406180448979097.a n = A026121 n

end A026121

/-! ## A026121.P268853456098034602

`A029858(n+1)*A140429(n)`
-/

namespace A026121.P268853456098034602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A140429 n

end

end A026121.P268853456098034602

namespace A026121

/-- `A029858(n+1)*A140429(n)` -/
def P268853456098034602.Spec : Prop :=
  ∀ n, P268853456098034602.a n = A026121 n

end A026121

/-!
# A026122: a(n) is the number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 1, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n), where T is the array in A026120.

The programs for A026122, the canonical program `A026122.P10047697498519479443` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026122 has offset 2).

The definition of A026122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026122.P10047697498519479443

`Δ[A026107(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026122

/-- `Δ[A026107(n+2)]` -/
def P10047697498519479443.Spec : Prop :=
  ∀ n, P10047697498519479443.a n = A026122 (n + 2)

theorem P10047697498519479443.correct : P10047697498519479443.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel]

end A026122

/-! ## A026122.P8497100345248320126

`A026270(n+3)-a(n-1)` with `a(0)=2`
-/

namespace A026122.P8497100345248320126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A026270 (n + 3) - a (n - 1)

end

end A026122.P8497100345248320126

namespace A026122

/-- `A026270(n+3)-a(n-1)` -/
def P8497100345248320126.Spec : Prop :=
  ∀ n, P8497100345248320126.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P9804876457067645081

`A026134(n+1)+A002026(n+1)`
-/

namespace A026122.P9804876457067645081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1) + A002026 (n + 1)

end

end A026122.P9804876457067645081

namespace A026122

/-- `A026134(n+1)+A002026(n+1)` -/
def P9804876457067645081.Spec : Prop :=
  ∀ n, P9804876457067645081.a n = A026122 (n + 2)

theorem P9804876457067645081.correct : P9804876457067645081.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P9804876457067645081.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A002026, A002026.P17776616079043433200.a, A026107, A026107.P8700625693626820289.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026122

/-! ## A026122.P4583202187083165520

`A026107(n+3)-A026107(n+2)`
-/

namespace A026122.P4583202187083165520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 3) - A026107 (n + 2)

end

end A026122.P4583202187083165520

namespace A026122

/-- `A026107(n+3)-A026107(n+2)` -/
def P4583202187083165520.Spec : Prop :=
  ∀ n, P4583202187083165520.a n = A026122 (n + 2)

theorem P4583202187083165520.correct : P4583202187083165520.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P4583202187083165520.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, SequenceMachineLib.memo_apply]

end A026122

/-! ## A026122.P3142534204905800322

`Δ[A284778(n+2)-(A284778(n)+1)]`
-/

namespace A026122.P3142534204905800322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 (n + 2) - (A284778 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P3142534204905800322

namespace A026122

/-- `Δ[A284778(n+2)-(A284778(n)+1)]` -/
def P3142534204905800322.Spec : Prop :=
  ∀ n, P3142534204905800322.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P17458787975498300248

`Δ[Δ[record[A105695(n)]]]`
-/

namespace A026122.P17458787975498300248
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P17458787975498300248

namespace A026122

/-- `Δ[Δ[record[A105695(n)]]]` -/
def P17458787975498300248.Spec : Prop :=
  ∀ n, P17458787975498300248.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P11928613761601249220

`Δ[Δ[A002026(n+1)]]`
-/

namespace A026122.P11928613761601249220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P11928613761601249220

namespace A026122

/-- `Δ[Δ[A002026(n+1)]]` -/
def P11928613761601249220.Spec : Prop :=
  ∀ n, P11928613761601249220.a n = A026122 (n + 2)

theorem P11928613761601249220.correct : P11928613761601249220.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P11928613761601249220.f2, A026122.P11928613761601249220.f1, A026122.P11928613761601249220.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A002026, A002026.P17776616079043433200.a, A026107, A026107.P8700625693626820289.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026122

/-! ## A026122.P16604553902261283398

`Δ[Δ[A244884(n+2)]]`
-/

namespace A026122.P16604553902261283398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P16604553902261283398

namespace A026122

/-- `Δ[Δ[A244884(n+2)]]` -/
def P16604553902261283398.Spec : Prop :=
  ∀ n, P16604553902261283398.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P11457533442441764306

`Δ[Δ[A105695(n+3)]]`
-/

namespace A026122.P11457533442441764306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P11457533442441764306

namespace A026122

/-- `Δ[Δ[A105695(n+3)]]` -/
def P11457533442441764306.Spec : Prop :=
  ∀ n, P11457533442441764306.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P17557294303279611803

`Δ[Δ[Δ[A001006(n+1)]]]`
-/

namespace A026122.P17557294303279611803
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P17557294303279611803

namespace A026122

/-- `Δ[Δ[Δ[A001006(n+1)]]]` -/
def P17557294303279611803.Spec : Prop :=
  ∀ n, P17557294303279611803.a n = A026122 (n + 2)

theorem P17557294303279611803.correct : P17557294303279611803.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P17557294303279611803.f3, A026122.P17557294303279611803.f2, A026122.P17557294303279611803.f1, A026122.P17557294303279611803.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A001006, A001006.P11199602840237397285.a, A026107, A026107.P8700625693626820289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026122

/-! ## A026122.P5194895058650070528

`Δ[Δ[Δ[A086246(n+3)]]]`
-/

namespace A026122.P5194895058650070528
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P5194895058650070528

namespace A026122

/-- `Δ[Δ[Δ[A086246(n+3)]]]` -/
def P5194895058650070528.Spec : Prop :=
  ∀ n, P5194895058650070528.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P3414212422932745916

`Δ[Δ[A275208(n)+A275207(n)]]`
-/

namespace A026122.P3414212422932745916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 n + A275207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P3414212422932745916

namespace A026122

/-- `Δ[Δ[A275208(n)+A275207(n)]]` -/
def P3414212422932745916.Spec : Prop :=
  ∀ n, P3414212422932745916.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P11408118910738871677

`Δ[A026123(n+2)]-A026124(n+2)`
-/

namespace A026122.P11408118910738871677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026124 (n + 2)

end

end A026122.P11408118910738871677

namespace A026122

/-- `Δ[A026123(n+2)]-A026124(n+2)` -/
def P11408118910738871677.Spec : Prop :=
  ∀ n, P11408118910738871677.a n = A026122 (n + 2)

theorem P11408118910738871677.correct : P11408118910738871677.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P11408118910738871677.f1, A026122.P11408118910738871677.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026107, A026107.P8700625693626820289.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026124, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A001006, A001006.P11199602840237397285.a, A026134, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026122

/-! ## A026122.P17690044499739164802

`A026123(n+3)-(A026124(n+2)+A026123(n+2))`
-/

namespace A026122.P17690044499739164802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 3) - (A026124 (n + 2) + A026123 (n + 2))

end

end A026122.P17690044499739164802

namespace A026122

/-- `A026123(n+3)-(A026124(n+2)+A026123(n+2))` -/
def P17690044499739164802.Spec : Prop :=
  ∀ n, P17690044499739164802.a n = A026122 (n + 2)

theorem P17690044499739164802.correct : P17690044499739164802.Spec := by
  intro n
  simp only [A026122, Nat.add_sub_cancel, A026122.P17690044499739164802.a, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026107, A026107.P8700625693626820289.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026124, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A001006, A001006.P11199602840237397285.a, A026134, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026122

/-! ## A026122.P11494738733770291861

`A024998(n+3)-A026070(n+3)`
-/

namespace A026122.P11494738733770291861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 3) - A026070 (n + 3)

end

end A026122.P11494738733770291861

namespace A026122

/-- `A024998(n+3)-A026070(n+3)` -/
def P11494738733770291861.Spec : Prop :=
  ∀ n, P11494738733770291861.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P12022966401709907826

`A026083(n+4)-A026085(n+4)`
-/

namespace A026122.P12022966401709907826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026083 (n + 4) - A026085 (n + 4)

end

end A026122.P12022966401709907826

namespace A026122

/-- `A026083(n+4)-A026085(n+4)` -/
def P12022966401709907826.Spec : Prop :=
  ∀ n, P12022966401709907826.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P12096428697949013396

`Δ[A024997(n+3)-A026069(n+3)]`
-/

namespace A026122.P12096428697949013396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 3) - A026069 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026122.P12096428697949013396

namespace A026122

/-- `Δ[A024997(n+3)-A026069(n+3)]` -/
def P12096428697949013396.Spec : Prop :=
  ∀ n, P12096428697949013396.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P12331080532005567502

`Δ[A024997(n+3)]-A026085(n+4)`
-/

namespace A026122.P12331080532005567502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026085 (n + 4)

end

end A026122.P12331080532005567502

namespace A026122

/-- `Δ[A024997(n+3)]-A026085(n+4)` -/
def P12331080532005567502.Spec : Prop :=
  ∀ n, P12331080532005567502.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P3995311822736130488

`A026069(n+3)+A026083(n+4)-A026069(n+4)`
-/

namespace A026122.P3995311822736130488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3) + (A026083 (n + 4) - A026069 (n + 4))

end

end A026122.P3995311822736130488

namespace A026122

/-- `A026069(n+3)+A026083(n+4)-A026069(n+4)` -/
def P3995311822736130488.Spec : Prop :=
  ∀ n, P3995311822736130488.a n = A026122 (n + 2)

end A026122

/-! ## A026122.P1400166166944019231

`Δ[A026084(n+4)]-2*A026085(n+4)`
-/

namespace A026122.P1400166166944019231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026084 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A026085 (n + 4)

end

end A026122.P1400166166944019231

namespace A026122

/-- `Δ[A026084(n+4)]-2*A026085(n+4)` -/
def P1400166166944019231.Spec : Prop :=
  ∀ n, P1400166166944019231.a n = A026122 (n + 2)

end A026122

/-!
# A026123: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-1), where T is the array in A026120; a(n) = U(n,n+1), where U is the array in A026148.

The programs for A026123, the canonical program `A026123.P266507043467753679` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026123 has offset 2).

The definition of A026123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026123.P17492099267170984488

`A026288(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A026123.P17492099267170984488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026288 (n + 3) - a (n - 1)

end

end A026123.P17492099267170984488

namespace A026123

/-- `A026288(n+3)-a(n-1)` -/
def P17492099267170984488.Spec : Prop :=
  ∀ n, P17492099267170984488.a n = A026123 (n + 2)

end A026123

/-! ## A026123.P6373389758293733868

`A026134(n+1)+A026325(n+1)-A026325(n)`
-/

namespace A026123.P6373389758293733868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1) + (A026325 (n + 1) - A026325 n)

end

end A026123.P6373389758293733868

namespace A026123

/-- `A026134(n+1)+A026325(n+1)-A026325(n)` -/
def P6373389758293733868.Spec : Prop :=
  ∀ n, P6373389758293733868.a n = A026123 (n + 2)

end A026123

/-! ## A026123.P266507043467753679

`Δ[A026134(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026123

/-- `Δ[A026134(n+1)]` -/
def P266507043467753679.Spec : Prop :=
  ∀ n, P266507043467753679.a n = A026123 (n + 2)

theorem P266507043467753679.correct : P266507043467753679.Spec := by
  intro n
  simp only [A026123, Nat.add_sub_cancel]

end A026123

/-! ## A026123.P7249617836264676320

`A026134(n+2)-A026134(n+1)`
-/

namespace A026123.P7249617836264676320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 2) - A026134 (n + 1)

end

end A026123.P7249617836264676320

namespace A026123

/-- `A026134(n+2)-A026134(n+1)` -/
def P7249617836264676320.Spec : Prop :=
  ∀ n, P7249617836264676320.a n = A026123 (n + 2)

theorem P7249617836264676320.correct : P7249617836264676320.Spec := by
  intro n
  simp only [A026123, Nat.add_sub_cancel, A026123.P7249617836264676320.a, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, SequenceMachineLib.memo_apply]

end A026123

/-! ## A026123.P11381268157248788768

`A026122(n+3)-A026107(n+3)`
-/

namespace A026123.P11381268157248788768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 3) - A026107 (n + 3)

end

end A026123.P11381268157248788768

namespace A026123

/-- `A026122(n+3)-A026107(n+3)` -/
def P11381268157248788768.Spec : Prop :=
  ∀ n, P11381268157248788768.a n = A026123 (n + 2)

theorem P11381268157248788768.correct : P11381268157248788768.Spec := by
  intro n
  simp only [A026123, Nat.add_sub_cancel, A026123.P11381268157248788768.a, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026123

/-! ## A026123.P12402162419744208417

`A026069(n+3)+A026087(n+4)-A026071(n+4)`
-/

namespace A026123.P12402162419744208417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026069 (n + 3) + (A026087 (n + 4) - A026071 (n + 4))

end

end A026123.P12402162419744208417

namespace A026123

/-- `A026069(n+3)+A026087(n+4)-A026071(n+4)` -/
def P12402162419744208417.Spec : Prop :=
  ∀ n, P12402162419744208417.a n = A026123 (n + 2)

end A026123

/-! ## A026123.P1203135058135644967

`Δ[A026105(∑[n+3])]`
-/

namespace A026123.P1203135058135644967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026123.P1203135058135644967

namespace A026123

/-- `Δ[A026105(∑[n+3])]` -/
def P1203135058135644967.Spec : Prop :=
  ∀ n, P1203135058135644967.a n = A026123 (n + 2)

end A026123

/-! ## A026123.P1436180701659126678

`A026148(∑[n+5]+2)`
-/

namespace A026123.P1436180701659126678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A026123.P1436180701659126678

namespace A026123

/-- `A026148(∑[n+5]+2)` -/
def P1436180701659126678.Spec : Prop :=
  ∀ n, P1436180701659126678.a n = A026123 (n + 2)

end A026123

/-! ## A026123.P15207118942980406366

`Δ[Δ[A020474(A000096(n+3))]]`
-/

namespace A026123.P15207118942980406366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020474 (A000096 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026123.P15207118942980406366

namespace A026123

/-- `Δ[Δ[A020474(A000096(n+3))]]` -/
def P15207118942980406366.Spec : Prop :=
  ∀ n, P15207118942980406366.a n = A026123 (n + 2)

end A026123

/-!
# A026124: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 3, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-2), where T is the array in A026120.

The programs for A026124, the canonical program `A026124.P5705506064951519193` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026124 has offset 2).

The definition of A026124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026124.P16295305102622885134

`A026289(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A026124.P16295305102622885134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026289 (n + 3) - a (n - 1)

end

end A026124.P16295305102622885134

namespace A026124

/-- `A026289(n+3)-a(n-1)` -/
def P16295305102622885134.Spec : Prop :=
  ∀ n, P16295305102622885134.a n = A026124 (n + 2)

end A026124

/-! ## A026124.P5705506064951519193

`Δ[A026123(n+2)-A026107(n+2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026124

/-- `Δ[A026123(n+2)-A026107(n+2)]` -/
def P5705506064951519193.Spec : Prop :=
  ∀ n, P5705506064951519193.a n = A026124 (n + 2)

theorem P5705506064951519193.correct : P5705506064951519193.Spec := by
  intro n
  simp only [A026124, Nat.add_sub_cancel]

end A026124

/-! ## A026124.P12234807770928660184

`Δ[A026123(n+2)]-A026122(n+2)`
-/

namespace A026124.P12234807770928660184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026122 (n + 2)

end

end A026124.P12234807770928660184

namespace A026124

/-- `Δ[A026123(n+2)]-A026122(n+2)` -/
def P12234807770928660184.Spec : Prop :=
  ∀ n, P12234807770928660184.a n = A026124 (n + 2)

theorem P12234807770928660184.correct : P12234807770928660184.Spec := by
  intro n
  simp only [A026124, Nat.add_sub_cancel, A026124.P12234807770928660184.f1, A026124.P12234807770928660184.a, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A001006, A001006.P11199602840237397285.a, A026134, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026124

/-! ## A026124.P8236323208780081321

`A026123(n+3)-(A026123(n+2)+A026122(n+2))`
-/

namespace A026124.P8236323208780081321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 3) - (A026123 (n + 2) + A026122 (n + 2))

end

end A026124.P8236323208780081321

namespace A026124

/-- `A026123(n+3)-(A026123(n+2)+A026122(n+2))` -/
def P8236323208780081321.Spec : Prop :=
  ∀ n, P8236323208780081321.a n = A026124 (n + 2)

theorem P8236323208780081321.correct : P8236323208780081321.Spec := by
  intro n
  simp only [A026124, Nat.add_sub_cancel, A026124.P8236323208780081321.a, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A001006, A001006.P11199602840237397285.a, A026134, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026124

/-! ## A026124.P17746935320173176301

`Δ[Δ[A026134(n+1)]-A026107(n+2)]`
-/

namespace A026124.P17746935320173176301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026124.P17746935320173176301

namespace A026124

/-- `Δ[Δ[A026134(n+1)]-A026107(n+2)]` -/
def P17746935320173176301.Spec : Prop :=
  ∀ n, P17746935320173176301.a n = A026124 (n + 2)

end A026124

/-! ## A026124.P9673369279526492303

`Δ[Δ[A026134(n+1)]]-A026122(n+2)`
-/

namespace A026124.P9673369279526492303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026122 (n + 2)

end

end A026124.P9673369279526492303

namespace A026124

/-- `Δ[Δ[A026134(n+1)]]-A026122(n+2)` -/
def P9673369279526492303.Spec : Prop :=
  ∀ n, P9673369279526492303.a n = A026124 (n + 2)

theorem P9673369279526492303.correct : P9673369279526492303.Spec := by
  intro n
  simp only [A026124, Nat.add_sub_cancel, A026124.P9673369279526492303.f2, A026124.P9673369279526492303.f1, A026124.P9673369279526492303.a, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026124

/-! ## A026124.P7744683561767800940

`A026134(n+1)+A026110(n+4)-A026290(n+4)`
-/

namespace A026124.P7744683561767800940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 1) + (A026110 (n + 4) - A026290 (n + 4))

end

end A026124.P7744683561767800940

namespace A026124

/-- `A026134(n+1)+A026110(n+4)-A026290(n+4)` -/
def P7744683561767800940.Spec : Prop :=
  ∀ n, P7744683561767800940.a n = A026124 (n + 2)

end A026124

/-! ## A026124.P15594679591556323750

`A026109(n+3)+A026289(n+4)-A026109(n+4)`
-/

namespace A026124.P15594679591556323750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026109 (n + 3) + (A026289 (n + 4) - A026109 (n + 4))

end

end A026124.P15594679591556323750

namespace A026124

/-- `A026109(n+3)+A026289(n+4)-A026109(n+4)` -/
def P15594679591556323750.Spec : Prop :=
  ∀ n, P15594679591556323750.a n = A026124 (n + 2)

end A026124

/-! ## A026124.P13528765965500825621

`2*A026070(n+3)-A026087(n+4)`
-/

namespace A026124.P13528765965500825621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026070 (n + 3) - A026087 (n + 4)

end

end A026124.P13528765965500825621

namespace A026124

/-- `2*A026070(n+3)-A026087(n+4)` -/
def P13528765965500825621.Spec : Prop :=
  ∀ n, P13528765965500825621.a n = A026124 (n + 2)

end A026124

/-!
# A026125: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 4, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array in A026120.

The programs for A026125, the canonical program `A026125.P8928138202584515454` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026125 has offset 3).

The definition of A026125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026125.P17090048710397632816

`A026290(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A026125.P17090048710397632816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026290 (n + 4) - a (n - 1)

end

end A026125.P17090048710397632816

namespace A026125

/-- `A026290(n+4)-a(n-1)` -/
def P17090048710397632816.Spec : Prop :=
  ∀ n, P17090048710397632816.a n = A026125 (n + 3)

end A026125

/-! ## A026125.P8928138202584515454

`Δ[A026124(n+3)]-A026123(n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026125

/-- `Δ[A026124(n+3)]-A026123(n+3)` -/
def P8928138202584515454.Spec : Prop :=
  ∀ n, P8928138202584515454.a n = A026125 (n + 3)

theorem P8928138202584515454.correct : P8928138202584515454.Spec := by
  intro n
  simp only [A026125, Nat.add_sub_cancel]

end A026125

/-! ## A026125.P15214063331398615384

`(A026153(n+2)+A026110(n+4))/2`
-/

namespace A026125.P15214063331398615384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026153 (n + 2) + A026110 (n + 4) : ℚ) / 2

end

end A026125.P15214063331398615384

namespace A026125

/-- `(A026153(n+2)+A026110(n+4))/2` -/
def P15214063331398615384.Spec : Prop :=
  ∀ n, P15214063331398615384.a n = (A026125 (n + 3) : ℚ)

theorem P15214063331398615384.correct : P15214063331398615384.Spec := by
  intro n
  simp only [A026125, Nat.add_sub_cancel, A026125.P15214063331398615384.a, A026125.P8928138202584515454.f1, A026125.P8928138202584515454.a, A026110, A026110.P4365438227712076799.f1, A026110.P4365438227712076799.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026124, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A026153, A026153.P12716791351611435440.a, A026107, A026107.P8700625693626820289.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026125

/-! ## A026125.P16721948355538126048

`∑[Δ[A026152(n+2)]-A026122(n+2)]`
-/

namespace A026125.P16721948355538126048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026152 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026125.P16721948355538126048

namespace A026125

/-- `∑[Δ[A026152(n+2)]-A026122(n+2)]` -/
def P16721948355538126048.Spec : Prop :=
  ∀ n, P16721948355538126048.a n = A026125 (n + 3)

end A026125

/-! ## A026125.P1059285366086148579

`A026110(n+4)+A026290(n+5)-A026110(n+5)`
-/

namespace A026125.P1059285366086148579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026110 (n + 4) + (A026290 (n + 5) - A026110 (n + 5))

end

end A026125.P1059285366086148579

namespace A026125

/-- `A026110(n+4)+A026290(n+5)-A026110(n+5)` -/
def P1059285366086148579.Spec : Prop :=
  ∀ n, P1059285366086148579.a n = A026125 (n + 3)

end A026125

/-!
# A026126: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 5, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-4), where T is the array in A026120.

The programs for A026126, the canonical program `A026126.P1694299990526256443` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026126 has offset 4).

The definition of A026126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026126.P11309271438234956572

`A026153(n+4)-A026134(n+3)`
-/

namespace A026126.P11309271438234956572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026153 (n + 4) - A026134 (n + 3)

end

end A026126.P11309271438234956572

namespace A026126

/-- `A026153(n+4)-A026134(n+3)` -/
def P11309271438234956572.Spec : Prop :=
  ∀ n, P11309271438234956572.a n = A026126 (n + 4)

end A026126

/-! ## A026126.P1694299990526256443

`Δ[A026125(n+4)]-A026124(n+4)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026126

/-- `Δ[A026125(n+4)]-A026124(n+4)` -/
def P1694299990526256443.Spec : Prop :=
  ∀ n, P1694299990526256443.a n = A026126 (n + 4)

theorem P1694299990526256443.correct : P1694299990526256443.Spec := by
  intro n
  simp only [A026126, Nat.add_sub_cancel]

end A026126

/-! ## A026126.P16798879521719496623

`Δ[Δ[A026110(n+4)]-A026109(n+4)]`
-/

namespace A026126.P16798879521719496623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026110 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026109 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026126.P16798879521719496623

namespace A026126

/-- `Δ[Δ[A026110(n+4)]-A026109(n+4)]` -/
def P16798879521719496623.Spec : Prop :=
  ∀ n, P16798879521719496623.a n = A026126 (n + 4)

end A026126

/-! ## A026126.P4534860642423078934

`Δ[A026123(n+6)%A026288(n+6)]`
-/

namespace A026126.P4534860642423078934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026123 (n + 6)) (A026288 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026126.P4534860642423078934

namespace A026126

/-- `Δ[A026123(n+6)%A026288(n+6)]` -/
def P4534860642423078934.Spec : Prop :=
  ∀ n, P4534860642423078934.a n = A026126 (n + 4)

end A026126

/-!
# A026127: a(n) = T(2n-1,n-1), where T is the array in A026120.

The programs for A026127, there is no canonical definition to state claims against.
-/

/-! ## A026127.P10180806301201166374

`A026330(n)+A026305(A028310(n))`
-/

namespace A026127.P10180806301201166374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026330 n + A026305 (A028310 n).toNat

end

end A026127.P10180806301201166374

/-! ## A026127.P14405748851731637989

`record[Δ[A026117(n+2)]]`
-/

namespace A026127.P14405748851731637989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026127.P14405748851731637989

/-! ## A026127.P4101492750370373113

`record[Δ[A026117(n)-A057428(n)]]`
-/

namespace A026127.P4101492750370373113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026117 n - A057428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026127.P4101492750370373113

/-! ## A026127.P16177168509152864693

`record[Δ[A026117(n)%A026097(n)]]`
-/

namespace A026127.P16177168509152864693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026117 n) (A026097 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026127.P16177168509152864693

/-! ## A026127.P7246047114633533748

`A026330(n)+A026300(A132209(n))`
-/

namespace A026127.P7246047114633533748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026330 n + A026300 (A132209 n).toNat

end

end A026127.P7246047114633533748

/-!
# A026128: a(n) = T(2n,n), where T is the array in A026120.

The programs for A026128, there is no canonical definition to state claims against.
-/

/-! ## A026128.P13638104390813367796

`A026133(2*n)`
-/

namespace A026128.P13638104390813367796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026133 (2 * n)

end

end A026128.P13638104390813367796

/-! ## A026128.P10825943973095422735

`lcm(A026133(A004277(n)), A033999(n))`
-/

namespace A026128.P10825943973095422735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026133 (A004277 n).toNat) (A033999 n)

end

end A026128.P10825943973095422735

/-! ## A026128.P4461314807352578860

`A026133(A004277(n))%A026111(n+2)`
-/

namespace A026128.P4461314807352578860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026133 (A004277 n).toNat) (A026111 (n + 2))

end

end A026128.P4461314807352578860

/-! ## A026128.P18132152798934695398

`A026133(A005843(n))%A026111(n+2)`
-/

namespace A026128.P18132152798934695398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026133 (A005843 n).toNat) (A026111 (n + 2))

end

end A026128.P18132152798934695398

/-!
# A026131: a(n) = T(2n,n-2), where T is the array in A026120.

The programs for A026131, there is no canonical definition to state claims against.
-/

/-! ## A026131.P17435056820003736381

`A026127(n+2)-(A026132(n+1)+A026128(n+1))`
-/

namespace A026131.P17435056820003736381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026127 (n + 2) - (A026132 (n + 1) + A026128 (n + 1))

end

end A026131.P17435056820003736381

/-!
# A026132: a(n) = A026120(2n,n+1).

The programs for A026132, there is no canonical definition to state claims against.
-/

/-! ## A026132.P11270528839597215917

`A026116(n+1)+A026115(n+1)`
-/

namespace A026132.P11270528839597215917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026116 (n + 1) + A026115 (n + 1)

end

end A026132.P11270528839597215917

/-! ## A026132.P6477276082390710073

`A026111(n+2)-A026112(n+1)`
-/

namespace A026132.P6477276082390710073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026111 (n + 2) - A026112 (n + 1)

end

end A026132.P6477276082390710073

/-! ## A026132.P5191546089499566327

`A026111(n+2)-A026117(2*(n+1))`
-/

namespace A026132.P5191546089499566327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026111 (n + 2) - A026117 (2 * (n + 1))

end

end A026132.P5191546089499566327

/-!
# A026133: a(n) = T(n,[ n/2 ] - 1), where T is the array in A026120.

The programs for A026133, there is no canonical definition to state claims against.
-/

/-! ## A026133.P15099967314717696128

`A026162(n)-A307598(A081123(n))`
-/

namespace A026133.P15099967314717696128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 n - A307598 (A081123 n).toNat

end

end A026133.P15099967314717696128

/-! ## A026133.P7945769601543973464

`xor(A026162(n), A163351(A111429(n)))`
-/

namespace A026133.P7945769601543973464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026162 n) (A163351 (A111429 n).toNat)

end

end A026133.P7945769601543973464

/-! ## A026133.P8276569731947592672

`A026162(n)-A151795(A001405(n))`
-/

namespace A026133.P8276569731947592672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 n - A151795 (A001405 n).toNat

end

end A026133.P8276569731947592672

/-! ## A026133.P12253602106511385827

`A026162(n)-A011738(A149234(n))`
-/

namespace A026133.P12253602106511385827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 n - A011738 (A149234 n).toNat

end

end A026133.P12253602106511385827

/-!
# A026134: a(n) = Sum_{k=1..n} T(k, k-1), where T is the array in A026120.

The programs for A026134, the canonical program `A026134.P2296897511124696960` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026134 has offset 1).

The definition of A026134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026134.P8677983133307458755

`A026123(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A026134.P8677983133307458755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026123 (n + 1) + a (n - 1)

end

end A026134.P8677983133307458755

namespace A026134

/-- `A026123(n+1)+a(n-1)` -/
def P8677983133307458755.Spec : Prop :=
  ∀ n, P8677983133307458755.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P2296897511124696960

`A026122(n+2)-A002026(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026134

/-- `A026122(n+2)-A002026(n+1)` -/
def P2296897511124696960.Spec : Prop :=
  ∀ n, P2296897511124696960.a n = A026134 (n + 1)

theorem P2296897511124696960.correct : P2296897511124696960.Spec := by
  intro n
  simp only [A026134, Nat.add_sub_cancel]

end A026134

/-! ## A026134.P2262822705596080357

`A026151(n+2)-A026163(n+1)`
-/

namespace A026134.P2262822705596080357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026151 (n + 2) - A026163 (n + 1)

end

end A026134.P2262822705596080357

namespace A026134

/-- `A026151(n+2)-A026163(n+1)` -/
def P2262822705596080357.Spec : Prop :=
  ∀ n, P2262822705596080357.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P14629690823462579862

`A026122(n+2)-A244884(n+2)`
-/

namespace A026134.P14629690823462579862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A244884 (n + 2)

end

end A026134.P14629690823462579862

namespace A026134

/-- `A026122(n+2)-A244884(n+2)` -/
def P14629690823462579862.Spec : Prop :=
  ∀ n, P14629690823462579862.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P15637929080219949621

`A026107(n+3)-A002026(n+2)`
-/

namespace A026134.P15637929080219949621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 3) - A002026 (n + 2)

end

end A026134.P15637929080219949621

namespace A026134

/-- `A026107(n+3)-A002026(n+2)` -/
def P15637929080219949621.Spec : Prop :=
  ∀ n, P15637929080219949621.a n = A026134 (n + 1)

theorem P15637929080219949621.correct : P15637929080219949621.Spec := by
  intro n
  simp only [A026134, Nat.add_sub_cancel, A026134.P15637929080219949621.a, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, A026107, A026107.P8700625693626820289.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026134

/-! ## A026134.P102330238112169190

`A026107(n+3)-A244884(n+3)`
-/

namespace A026134.P102330238112169190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 3) - A244884 (n + 3)

end

end A026134.P102330238112169190

namespace A026134

/-- `A026107(n+3)-A244884(n+3)` -/
def P102330238112169190.Spec : Prop :=
  ∀ n, P102330238112169190.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P15950480525572493771

`∑[A026122(n+2)-A026107(n+2)]`
-/

namespace A026134.P15950480525572493771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026134.P15950480525572493771

namespace A026134

/-- `∑[A026122(n+2)-A026107(n+2)]` -/
def P15950480525572493771.Spec : Prop :=
  ∀ n, P15950480525572493771.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P1793893775818790555

`record[Δ[A002026(n)-A001006(n)]]`
-/

namespace A026134.P1793893775818790555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n - A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026134.P1793893775818790555

namespace A026134

/-- `record[Δ[A002026(n)-A001006(n)]]` -/
def P1793893775818790555.Spec : Prop :=
  ∀ n, P1793893775818790555.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P1167128747857030011

`Δ[Δ[A002026(n+1)]-A001006(n+1)]`
-/

namespace A026134.P1167128747857030011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026134.P1167128747857030011

namespace A026134

/-- `Δ[Δ[A002026(n+1)]-A001006(n+1)]` -/
def P1167128747857030011.Spec : Prop :=
  ∀ n, P1167128747857030011.a n = A026134 (n + 1)

theorem P1167128747857030011.correct : P1167128747857030011.Spec := by
  intro n
  simp only [A026134, Nat.add_sub_cancel, A026134.P1167128747857030011.f2, A026134.P1167128747857030011.f1, A026134.P1167128747857030011.a, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026107, A026107.P8700625693626820289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026134

/-! ## A026134.P14663304010736907639

`Δ[Δ[A001006(n+2)]-A001006(n+2)]`
-/

namespace A026134.P14663304010736907639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001006 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026134.P14663304010736907639

namespace A026134

/-- `Δ[Δ[A001006(n+2)]-A001006(n+2)]` -/
def P14663304010736907639.Spec : Prop :=
  ∀ n, P14663304010736907639.a n = A026134 (n + 1)

theorem P14663304010736907639.correct : P14663304010736907639.Spec := by
  intro n
  simp only [A026134, Nat.add_sub_cancel, A026134.P14663304010736907639.f2, A026134.P14663304010736907639.f1, A026134.P14663304010736907639.a, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A026107, A026107.P8700625693626820289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026134

/-! ## A026134.P15050764360433904962

`A005322(n+3)-(A026123(n+2)+A005322(n+2))`
-/

namespace A026134.P15050764360433904962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005322 (n + 3) - (A026123 (n + 2) + A005322 (n + 2))

end

end A026134.P15050764360433904962

namespace A026134

/-- `A005322(n+3)-(A026123(n+2)+A005322(n+2))` -/
def P15050764360433904962.Spec : Prop :=
  ∀ n, P15050764360433904962.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P9907591643701285527

`abs(Δ[A064189(∑[n+1]+2)])`
-/

namespace A026134.P9907591643701285527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A026134.P9907591643701285527

namespace A026134

/-- `abs(Δ[A064189(∑[n+1]+2)])` -/
def P9907591643701285527.Spec : Prop :=
  ∀ n, P9907591643701285527.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P14929565376631711968

`record[Δ[A064189(A133263(n))]]`
-/

namespace A026134.P14929565376631711968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A133263 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026134.P14929565376631711968

namespace A026134

/-- `record[Δ[A064189(A133263(n))]]` -/
def P14929565376631711968.Spec : Prop :=
  ∀ n, P14929565376631711968.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P7553354263796536073

`A026105(∑[n+3])`
-/

namespace A026134.P7553354263796536073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026134.P7553354263796536073

namespace A026134

/-- `A026105(∑[n+3])` -/
def P7553354263796536073.Spec : Prop :=
  ∀ n, P7553354263796536073.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P4131442402888988408

`record[A026105(n)/A026105(n+3)]`
-/

namespace A026134.P4131442402888988408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026105 n : ℚ) / (A026105 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026134.P4131442402888988408

namespace A026134

/-- `record[A026105(n)/A026105(n+3)]` -/
def P4131442402888988408.Spec : Prop :=
  ∀ n, P4131442402888988408.a n = (A026134 (n + 1) : ℚ)

end A026134

/-! ## A026134.P16023384222833162214

`A026323(∑[n+3]+n+3)`
-/

namespace A026134.P16023384222833162214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A026134.P16023384222833162214

namespace A026134

/-- `A026323(∑[n+3]+n+3)` -/
def P16023384222833162214.Spec : Prop :=
  ∀ n, P16023384222833162214.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P176946912960533132

`∑[A026148(A155212(n))]`
-/

namespace A026134.P176946912960533132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026134.P176946912960533132

namespace A026134

/-- `∑[A026148(A155212(n))]` -/
def P176946912960533132.Spec : Prop :=
  ∀ n, P176946912960533132.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P5016537907817757573

`∑[A026148(A016825(n)+∑[n])]`
-/

namespace A026134.P5016537907817757573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016825 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026134.P5016537907817757573

namespace A026134

/-- `∑[A026148(A016825(n)+∑[n])]` -/
def P5016537907817757573.Spec : Prop :=
  ∀ n, P5016537907817757573.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P10486171812218264020

`∑[A026148(∑[A074764(n+1)]+2)]`
-/

namespace A026134.P10486171812218264020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026134.P10486171812218264020

namespace A026134

/-- `∑[A026148(∑[A074764(n+1)]+2)]` -/
def P10486171812218264020.Spec : Prop :=
  ∀ n, P10486171812218264020.a n = A026134 (n + 1)

end A026134

/-! ## A026134.P12536463682034069264

`A026148(∑[n+5]+3)`
-/

namespace A026134.P12536463682034069264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A026134.P12536463682034069264

namespace A026134

/-- `A026148(∑[n+5]+3)` -/
def P12536463682034069264.Spec : Prop :=
  ∀ n, P12536463682034069264.a n = A026134 (n + 1)

end A026134

/-!
# A026135: Number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also sum of numbers in row n+1 of the array T defined in A026120.

The programs for A026135, the canonical program `A026135.P2026084311874351281` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026135 has offset 0).

The definition of A026135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026135.P2026084311874351281

`Δ[Δ[A005773(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026135

/-- `Δ[Δ[A005773(n)]]` -/
def P2026084311874351281.Spec : Prop :=
  ∀ n, P2026084311874351281.a n = A026135 n

theorem P2026084311874351281.correct : P2026084311874351281.Spec := by
  intro n
  simp only [A026135]

end A026135

/-! ## A026135.P12269525116917811020

`Δ[Δ[A307789(n+1)]]`
-/

namespace A026135.P12269525116917811020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P12269525116917811020

namespace A026135

/-- `Δ[Δ[A307789(n+1)]]` -/
def P12269525116917811020.Spec : Prop :=
  ∀ n, P12269525116917811020.a n = A026135 n

end A026135

/-! ## A026135.P16850242187944378607

`A026299(n)-a(n-1)` with `a(0)=1`
-/

namespace A026135.P16850242187944378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026299 n - a (n - 1)

end

end A026135.P16850242187944378607

namespace A026135

/-- `A026299(n)-a(n-1)` -/
def P16850242187944378607.Spec : Prop :=
  ∀ n, P16850242187944378607.a n = A026135 n

end A026135

/-! ## A026135.P13038977913318047843

`Δ[A025566(n+1)]+floor(acot(n))`
-/

namespace A026135.P13038977913318047843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A026135.P13038977913318047843

namespace A026135

/-- `Δ[A025566(n+1)]+floor(acot(n))` -/
def P13038977913318047843.Spec : Prop :=
  ∀ n, P13038977913318047843.a n = A026135 n

end A026135

/-! ## A026135.P8626003178372527957

`A005774(n)+A005773(n)`
-/

namespace A026135.P8626003178372527957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n + A005773 n

end

end A026135.P8626003178372527957

namespace A026135

/-- `A005774(n)+A005773(n)` -/
def P8626003178372527957.Spec : Prop :=
  ∀ n, P8626003178372527957.a n = A026135 n

end A026135

/-! ## A026135.P11253969809409419129

`A000007(n)+Δ[A025566(n+1)]`
-/

namespace A026135.P11253969809409419129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A026135.P11253969809409419129

namespace A026135

/-- `A000007(n)+Δ[A025566(n+1)]` -/
def P11253969809409419129.Spec : Prop :=
  ∀ n, P11253969809409419129.a n = A026135 n

end A026135

/-! ## A026135.P10529926814961222391

`Δ[A025565(n+1)-abs(A166587(n))]`
-/

namespace A026135.P10529926814961222391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 1) - |A166587 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P10529926814961222391

namespace A026135

/-- `Δ[A025565(n+1)-abs(A166587(n))]` -/
def P10529926814961222391.Spec : Prop :=
  ∀ n, P10529926814961222391.a n = A026135 n

end A026135

/-! ## A026135.P18040402246471459441

`Δ[A036453(n+1)+A025566(n+1)]`
-/

namespace A026135.P18040402246471459441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P18040402246471459441

namespace A026135

/-- `Δ[A036453(n+1)+A025566(n+1)]` -/
def P18040402246471459441.Spec : Prop :=
  ∀ n, P18040402246471459441.a n = A026135 n

end A026135

/-! ## A026135.P13375562299802854290

`A105696(n+1)+Δ[A292440(n+1)]`
-/

namespace A026135.P13375562299802854290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026135.P13375562299802854290

namespace A026135

/-- `A105696(n+1)+Δ[A292440(n+1)]` -/
def P13375562299802854290.Spec : Prop :=
  ∀ n, P13375562299802854290.a n = A026135 n

end A026135

/-! ## A026135.P436499033057470901

`Δ[A025566(n+1)%A025565(n+1)]`
-/

namespace A026135.P436499033057470901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025566 (n + 1)) (A025565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P436499033057470901

namespace A026135

/-- `Δ[A025566(n+1)%A025565(n+1)]` -/
def P436499033057470901.Spec : Prop :=
  ∀ n, P436499033057470901.a n = A026135 n

end A026135

/-! ## A026135.P10772235655663555792

`2*A025565(n+1)-A005554(n+1)`
-/

namespace A026135.P10772235655663555792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025565 (n + 1) - A005554 (n + 1)

end

end A026135.P10772235655663555792

namespace A026135

/-- `2*A025565(n+1)-A005554(n+1)` -/
def P10772235655663555792.Spec : Prop :=
  ∀ n, P10772235655663555792.a n = A026135 n

end A026135

/-! ## A026135.P4284593412445958744

`∑[2*A024998(n+1)]-A024998(n+1)`
-/

namespace A026135.P4284593412445958744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024998 (n + 1)

end

end A026135.P4284593412445958744

namespace A026135

/-- `∑[2*A024998(n+1)]-A024998(n+1)` -/
def P4284593412445958744.Spec : Prop :=
  ∀ n, P4284593412445958744.a n = A026135 n

end A026135

/-! ## A026135.P5567119695515681369

`A005773(n+1)+A005773(n)-A001006(n)`
-/

namespace A026135.P5567119695515681369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A005773 n - A001006 n)

end

end A026135.P5567119695515681369

namespace A026135

/-- `A005773(n+1)+A005773(n)-A001006(n)` -/
def P5567119695515681369.Spec : Prop :=
  ∀ n, P5567119695515681369.a n = A026135 n

end A026135

/-! ## A026135.P6153207578231445784

`A005717(n+1)+A005773(n)-A002426(n)`
-/

namespace A026135.P6153207578231445784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A005773 n - A002426 n)

end

end A026135.P6153207578231445784

namespace A026135

/-- `A005717(n+1)+A005773(n)-A002426(n)` -/
def P6153207578231445784.Spec : Prop :=
  ∀ n, P6153207578231445784.a n = A026135 n

end A026135

/-! ## A026135.P10944314892743676527

`A025566(n+2)+A000007(n)-A025566(n+1)`
-/

namespace A026135.P10944314892743676527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 2) + (A000007 n - A025566 (n + 1))

end

end A026135.P10944314892743676527

namespace A026135

/-- `A025566(n+2)+A000007(n)-A025566(n+1)` -/
def P10944314892743676527.Spec : Prop :=
  ∀ n, P10944314892743676527.a n = A026135 n

end A026135

/-! ## A026135.P12733056298008335520

`A005774(n)+A025565(n+1)/A036453(n+1)`
-/

namespace A026135.P12733056298008335520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005774 n : ℚ) + (A025565 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A026135.P12733056298008335520

namespace A026135

/-- `A005774(n)+A025565(n+1)/A036453(n+1)` -/
def P12733056298008335520.Spec : Prop :=
  ∀ n, P12733056298008335520.a n = (A026135 n : ℚ)

end A026135

/-! ## A026135.P848178807394136003

`Δ[A225034(n)-A025565(n+1)]`
-/

namespace A026135.P848178807394136003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A025565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P848178807394136003

namespace A026135

/-- `Δ[A225034(n)-A025565(n+1)]` -/
def P848178807394136003.Spec : Prop :=
  ∀ n, P848178807394136003.a n = A026135 n

end A026135

/-! ## A026135.P7057400170429157557

`A000108(n+1)/A000108(n)*A005773(n)`
-/

namespace A026135.P7057400170429157557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000108 n : ℚ) * (A005773 n : ℚ)

end

end A026135.P7057400170429157557

namespace A026135

/-- `A000108(n+1)/A000108(n)*A005773(n)` -/
def P7057400170429157557.Spec : Prop :=
  ∀ n, P7057400170429157557.a n = (A026135 n : ℚ)

end A026135

/-! ## A026135.P15264890838144239414

`A393138(A027379(n))`
-/

namespace A026135.P15264890838144239414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393138 (A027379 n).toNat

end

end A026135.P15264890838144239414

namespace A026135

/-- `A393138(A027379(n))` -/
def P15264890838144239414.Spec : Prop :=
  ∀ n, P15264890838144239414.a n = A026135 n

end A026135

/-!
# A026136: Lexicographically earliest permutation of the positive integers such that |a(n)-n| = [a(n)/2].

The programs for A026136, there is no canonical definition to state claims against.
-/

/-! ## A026136.P18406127403985423109

`A047480(n+1)-A026183(n+1)`
-/

namespace A026136.P18406127403985423109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1) - A026183 (n + 1)

end

end A026136.P18406127403985423109

/-! ## A026136.P14369297216579465321

`A026166(n+2)-1`
-/

namespace A026136.P14369297216579465321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 2) - 1

end

end A026136.P14369297216579465321

/-! ## A026136.P11126037925194208819

`∑[-Δ[-A026166(n+1)]]`
-/

namespace A026136.P11126037925194208819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026136.P11126037925194208819

/-! ## A026136.P14775351141824127578

`∑[Δ[A026166(n+1)]%A016899(n)]`
-/

namespace A026136.P14775351141824127578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A016899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026136.P14775351141824127578

/-! ## A026136.P8461946583312678637

`A118830(2*n+1)+A026166(n+2)`
-/

namespace A026136.P8461946583312678637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A026166 (n + 2)

end

end A026136.P8461946583312678637

/-! ## A026136.P16585533937682765939

`2*A026182(2*n+1)-A026183(2*n+1)`
-/

namespace A026136.P16585533937682765939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026182 (2 * n + 1) - A026183 (2 * n + 1)

end

end A026136.P16585533937682765939

/-! ## A026136.P2418871626402874956

`A023443(A026166(n+2))`
-/

namespace A026136.P2418871626402874956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026166 (n + 2)).toNat

end

end A026136.P2418871626402874956

/-! ## A026136.P3677696241496539361

`A008624(A026166(2*(2*n+1)))`
-/

namespace A026136.P3677696241496539361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A026166 (2 * (2 * n + 1))).toNat

end

end A026136.P3677696241496539361

/-! ## A026136.P16212159913445527166

`A026215(n)+a(A048298(A001106(n+1)))` with `a(0)=1`
-/

namespace A026136.P16212159913445527166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026215 n + a (A048298 (A001106 (n + 1)).toNat).toNat

end

end A026136.P16212159913445527166

/-!
# A026137: a(n) = position of n in A026136.

The programs for A026137, there is no canonical definition to state claims against.
-/

/-! ## A026137.P14303625398668953293

`A026214(n)+a(A000045(C(n-1, n)))` with `a(0)=1`
-/

namespace A026137.P14303625398668953293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026214 n + a (A000045 (Nat.choose ((n : ℤ) - 1).toNat n)).toNat

end

end A026137.P14303625398668953293

/-! ## A026137.P18437027295552855932

`A026167(n+2)-1`
-/

namespace A026137.P18437027295552855932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 2) - 1

end

end A026137.P18437027295552855932

/-! ## A026137.P356004584646156054

`abs(∑[-Δ[A026167(n+1)]])`
-/

namespace A026137.P356004584646156054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A026137.P356004584646156054

/-! ## A026137.P3139295916336063398

`∑[Δ[A026167(n+1)]%A106232(n+1)]`
-/

namespace A026137.P3139295916336063398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A106232 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026137.P3139295916336063398

/-! ## A026137.P16290184466312846154

`A308778(A308778(n+1)²)+A026167(n+2)`
-/

namespace A026137.P16290184466312846154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A308778 (n + 1) ^ 2).toNat + A026167 (n + 2)

end

end A026137.P16290184466312846154

/-! ## A026137.P9977917365674701354

`A023443(A026167(n+2))`
-/

namespace A026137.P9977917365674701354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026167 (n + 2)).toNat

end

end A026137.P9977917365674701354

/-! ## A026137.P14854713135281367096

`A308778(n²)+A026167(n+2)`
-/

namespace A026137.P14854713135281367096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A026167 (n + 2)

end

end A026137.P14854713135281367096

/-!
# A026138: Numbers k such that s(j) < s(k) for all j < k, where s = A026136.

The programs for A026138, the canonical program `A026138.P14895961469128642459` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026138 has offset 1).

The definition of A026138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026138.P14895961469128642459

`A026140(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026138

/-- `A026140(n+1)+1` -/
def P14895961469128642459.Spec : Prop :=
  ∀ n, P14895961469128642459.a n = A026138 (n + 1)

theorem P14895961469128642459.correct : P14895961469128642459.Spec := by
  intro n
  simp only [A026138, Nat.add_sub_cancel]

end A026138

/-! ## A026138.P9867939795234165674

`ceil(A026139(n+1)/2)`
-/

namespace A026138.P9867939795234165674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026139 (n + 1) : ℚ) / 2⌉

end

end A026138.P9867939795234165674

namespace A026138

/-- `ceil(A026139(n+1)/2)` -/
def P9867939795234165674.Spec : Prop :=
  ∀ n, P9867939795234165674.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P4540393550576751875

`ceil(A026224(n+1)/3)`
-/

namespace A026138.P4540393550576751875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026224 (n + 1) : ℚ) / 3⌉

end

end A026138.P4540393550576751875

namespace A026138

/-- `ceil(A026224(n+1)/3)` -/
def P4540393550576751875.Spec : Prop :=
  ∀ n, P4540393550576751875.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P868242915916946870

`(A026228(n+1)+1)/3`
-/

namespace A026138.P868242915916946870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026228 (n + 1) + 1 : ℚ) / 3

end

end A026138.P868242915916946870

namespace A026138

/-- `(A026228(n+1)+1)/3` -/
def P868242915916946870.Spec : Prop :=
  ∀ n, P868242915916946870.a n = (A026138 (n + 1) : ℚ)

theorem P868242915916946870.correct : P868242915916946870.Spec := by
  intro n
  simp only [A026138, Nat.add_sub_cancel, A026138.P868242915916946870.a, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026228, A026228.P11632030350600125361.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026138

/-! ## A026138.P12669602846705103639

`comp[A026232(n+1)-1]+1`
-/

namespace A026138.P12669602846705103639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026138.P12669602846705103639

namespace A026138

/-- `comp[A026232(n+1)-1]+1` -/
def P12669602846705103639.Spec : Prop :=
  ∀ n, (P12669602846705103639.a n : ℤ) = A026138 (n + 1)

end A026138

/-! ## A026138.P646268220057721108

`∪[A026225(n+1), n²]+1`
-/

namespace A026138.P646268220057721108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A026138.P646268220057721108

namespace A026138

/-- `∪[A026225(n+1), n²]+1` -/
def P646268220057721108.Spec : Prop :=
  ∀ n, (P646268220057721108.a n : ℤ) = A026138 (n + 1)

end A026138

/-! ## A026138.P15694726017404653258

`A026141(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A026138.P15694726017404653258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026141 (n + 1) + a (n - 1)

end

end A026138.P15694726017404653258

namespace A026138

/-- `A026141(n+1)+a(n-1)` -/
def P15694726017404653258.Spec : Prop :=
  ∀ n, P15694726017404653258.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P9207950425614533573

`A026228(n+1)-A026139(n+1)`
-/

namespace A026138.P9207950425614533573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - A026139 (n + 1)

end

end A026138.P9207950425614533573

namespace A026138

/-- `A026228(n+1)-A026139(n+1)` -/
def P9207950425614533573.Spec : Prop :=
  ∀ n, P9207950425614533573.a n = A026138 (n + 1)

theorem P9207950425614533573.correct : P9207950425614533573.Spec := by
  intro n
  simp only [A026138, Nat.add_sub_cancel, A026138.P9207950425614533573.a, A026138.P14895961469128642459.a, A026139, A026139.P8785309321780490600.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026228, A026228.P11632030350600125361.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026138

/-! ## A026138.P1979865322489486540

`A026225(n+1)+1-A026141(n+2)`
-/

namespace A026138.P1979865322489486540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) + (1 - A026141 (n + 2))

end

end A026138.P1979865322489486540

namespace A026138

/-- `A026225(n+1)+1-A026141(n+2)` -/
def P1979865322489486540.Spec : Prop :=
  ∀ n, P1979865322489486540.a n = A026138 (n + 1)

theorem P1979865322489486540.correct : P1979865322489486540.Spec := by
  intro n
  simp only [A026138, Nat.add_sub_cancel, A026138.P1979865322489486540.a, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026141, A026141.P6698721252845057780.a, A026225, A026225.P18152359124507789956.f1, A026225.P18152359124507789956.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026138

/-! ## A026138.P5418212696126523390

`A026168(n+2)-1`
-/

namespace A026138.P5418212696126523390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 2) - 1

end

end A026138.P5418212696126523390

namespace A026138

/-- `A026168(n+2)-1` -/
def P5418212696126523390.Spec : Prop :=
  ∀ n, P5418212696126523390.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P2877697127327657615

`A026169(n+2)/2`
-/

namespace A026138.P2877697127327657615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026169 (n + 2) : ℚ) / 2

end

end A026138.P2877697127327657615

namespace A026138

/-- `A026169(n+2)/2` -/
def P2877697127327657615.Spec : Prop :=
  ∀ n, P2877697127327657615.a n = (A026138 (n + 1) : ℚ)

end A026138

/-! ## A026138.P1185138741540883569

`∑[abs(Δ[A026168(n+1)])]`
-/

namespace A026138.P1185138741540883569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026138.P1185138741540883569

namespace A026138

/-- `∑[abs(Δ[A026168(n+1)])]` -/
def P1185138741540883569.Spec : Prop :=
  ∀ n, P1185138741540883569.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P4358075103153755735

`∑[A026168(Δ[A026168(n+1)])]`
-/

namespace A026138.P4358075103153755735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026138.P4358075103153755735

namespace A026138

/-- `∑[A026168(Δ[A026168(n+1)])]` -/
def P4358075103153755735.Spec : Prop :=
  ∀ n, P4358075103153755735.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P15828716544554657949

`record[A026182(n+1)]`
-/

namespace A026138.P15828716544554657949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026138.P15828716544554657949

namespace A026138

/-- `record[A026182(n+1)]` -/
def P15828716544554657949.Spec : Prop :=
  ∀ n, P15828716544554657949.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P5917299757012305075

`A004482(A026140(n+1))`
-/

namespace A026138.P5917299757012305075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A026140 (n + 1)).toNat

end

end A026138.P5917299757012305075

namespace A026138

/-- `A004482(A026140(n+1))` -/
def P5917299757012305075.Spec : Prop :=
  ∀ n, P5917299757012305075.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P16598759527405100259

`record[A026136(n+1)-n]`
-/

namespace A026138.P16598759527405100259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026138.P16598759527405100259

namespace A026138

/-- `record[A026136(n+1)-n]` -/
def P16598759527405100259.Spec : Prop :=
  ∀ n, P16598759527405100259.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P14901521376052454789

`lt[A189640(n+1), 1]+1`
-/

namespace A026138.P14901521376052454789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026138.P14901521376052454789

namespace A026138

/-- `lt[A189640(n+1), 1]+1` -/
def P14901521376052454789.Spec : Prop :=
  ∀ n, (P14901521376052454789.a n : ℤ) = A026138 (n + 1)

end A026138

/-! ## A026138.P10091134153927889804

`A014682(record[A026136(n+1)+1])`
-/

namespace A026138.P10091134153927889804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026138.P10091134153927889804

namespace A026138

/-- `A014682(record[A026136(n+1)+1])` -/
def P10091134153927889804.Spec : Prop :=
  ∀ n, P10091134153927889804.a n = A026138 (n + 1)

end A026138

/-! ## A026138.P14170873230497204692

`lt[Δ[A327252(n)²], 1]`
-/

namespace A026138.P14170873230497204692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A026138.P14170873230497204692

namespace A026138

/-- `lt[Δ[A327252(n)²], 1]` -/
def P14170873230497204692.Spec : Prop :=
  ∀ n, (P14170873230497204692.a n : ℤ) = A026138 (n + 1)

end A026138

/-!
# A026139: a(n) = s(k), where k is the n-th number such that s(j) < s(k) for all j < k, where s = A026136. Also a(n) = 2*t(n) - 1, where t = A026138.

The programs for A026139, the canonical program `A026139.P8785309321780490600` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026139 has offset 1).

The definition of A026139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026139.P8785309321780490600

`2*A026140(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026139

/-- `2*A026140(n+1)+1` -/
def P8785309321780490600.Spec : Prop :=
  ∀ n, P8785309321780490600.a n = A026139 (n + 1)

theorem P8785309321780490600.correct : P8785309321780490600.Spec := by
  intro n
  simp only [A026139, Nat.add_sub_cancel]

end A026139

/-! ## A026139.P6535796330575657027

`2*A026138(n+1)-1`
-/

namespace A026139.P6535796330575657027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026138 (n + 1) - 1

end

end A026139.P6535796330575657027

namespace A026139

/-- `2*A026138(n+1)-1` -/
def P6535796330575657027.Spec : Prop :=
  ∀ n, P6535796330575657027.a n = A026139 (n + 1)

theorem P6535796330575657027.correct : P6535796330575657027.Spec := by
  intro n
  simp only [A026139, Nat.add_sub_cancel, A026139.P6535796330575657027.a, A026139.P8785309321780490600.a, A026138, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026139

/-! ## A026139.P874519131448992643

`A026140(n+1)+A026138(n+1)`
-/

namespace A026139.P874519131448992643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1) + A026138 (n + 1)

end

end A026139.P874519131448992643

namespace A026139

/-- `A026140(n+1)+A026138(n+1)` -/
def P874519131448992643.Spec : Prop :=
  ∀ n, P874519131448992643.a n = A026139 (n + 1)

theorem P874519131448992643.correct : P874519131448992643.Spec := by
  intro n
  simp only [A026139, Nat.add_sub_cancel, A026139.P874519131448992643.a, A026139.P8785309321780490600.a, A026138, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026139

/-! ## A026139.P11633095660851239358

`A026228(n+1)-A026138(n+1)`
-/

namespace A026139.P11633095660851239358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - A026138 (n + 1)

end

end A026139.P11633095660851239358

namespace A026139

/-- `A026228(n+1)-A026138(n+1)` -/
def P11633095660851239358.Spec : Prop :=
  ∀ n, P11633095660851239358.a n = A026139 (n + 1)

theorem P11633095660851239358.correct : P11633095660851239358.Spec := by
  intro n
  simp only [A026139, Nat.add_sub_cancel, A026139.P11633095660851239358.a, A026139.P8785309321780490600.a, A026138, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026228, A026228.P11632030350600125361.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026139

/-! ## A026139.P3040768416644704794

`A026169(n+2)-1`
-/

namespace A026139.P3040768416644704794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026169 (n + 2) - 1

end

end A026139.P3040768416644704794

namespace A026139

/-- `A026169(n+2)-1` -/
def P3040768416644704794.Spec : Prop :=
  ∀ n, P3040768416644704794.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P459876740956737952

`∑[abs(Δ[A026169(n+1)])]`
-/

namespace A026139.P459876740956737952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026139.P459876740956737952

namespace A026139

/-- `∑[abs(Δ[A026169(n+1)])]` -/
def P459876740956737952.Spec : Prop :=
  ∀ n, P459876740956737952.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P18192148811438937979

`2*A026168(n+2)-3`
-/

namespace A026139.P18192148811438937979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026168 (n + 2) - 3

end

end A026139.P18192148811438937979

namespace A026139

/-- `2*A026168(n+2)-3` -/
def P18192148811438937979.Spec : Prop :=
  ∀ n, P18192148811438937979.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P15080921789062492796

`∑[A347400(Δ[A026169(n+1)])]`
-/

namespace A026139.P15080921789062492796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026139.P15080921789062492796

namespace A026139

/-- `∑[A347400(Δ[A026169(n+1)])]` -/
def P15080921789062492796.Spec : Prop :=
  ∀ n, P15080921789062492796.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P13912650054829554776

`record[2*A026182(n+1)-1]`
-/

namespace A026139.P13912650054829554776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026182 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026139.P13912650054829554776

namespace A026139

/-- `record[2*A026182(n+1)-1]` -/
def P13912650054829554776.Spec : Prop :=
  ∀ n, P13912650054829554776.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P9273723226466610171

`∩[2*n+1, A026227(n+1)]`
-/

namespace A026139.P9273723226466610171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026139.P9273723226466610171

namespace A026139

/-- `∩[2*n+1, A026227(n+1)]` -/
def P9273723226466610171.Spec : Prop :=
  ∀ n, (P9273723226466610171.a n : ℤ) = A026139 (n + 1)

end A026139

/-! ## A026139.P9510513870850930500

`∩[A026227(n+1), A047241(n+1)]`
-/

namespace A026139.P9510513870850930500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026139.P9510513870850930500

namespace A026139

/-- `∩[A026227(n+1), A047241(n+1)]` -/
def P9510513870850930500.Spec : Prop :=
  ∀ n, (P9510513870850930500.a n : ℤ) = A026139 (n + 1)

end A026139

/-! ## A026139.P16910270196593481039

`record[A026136(n+1)]`
-/

namespace A026139.P16910270196593481039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026139.P16910270196593481039

namespace A026139

/-- `record[A026136(n+1)]` -/
def P16910270196593481039.Spec : Prop :=
  ∀ n, P16910270196593481039.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P8355041684667203914

`A004273(A026138(n+1))`
-/

namespace A026139.P8355041684667203914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026138 (n + 1)).toNat

end

end A026139.P8355041684667203914

namespace A026139

/-- `A004273(A026138(n+1))` -/
def P8355041684667203914.Spec : Prop :=
  ∀ n, P8355041684667203914.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P1565691862155163528

`A026136(A026140(n+1)+1)`
-/

namespace A026139.P1565691862155163528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A026140 (n + 1) + 1).toNat

end

end A026139.P1565691862155163528

namespace A026139

/-- `A026136(A026140(n+1)+1)` -/
def P1565691862155163528.Spec : Prop :=
  ∀ n, P1565691862155163528.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P10473061439258350922

`A026136(A026168(n+2)-1)`
-/

namespace A026139.P10473061439258350922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A026168 (n + 2) - 1).toNat

end

end A026139.P10473061439258350922

namespace A026139

/-- `A026136(A026168(n+2)-1)` -/
def P10473061439258350922.Spec : Prop :=
  ∀ n, P10473061439258350922.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P8565282484655219747

`A026136(A026169(n+2)/2)`
-/

namespace A026139.P8565282484655219747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (SequenceMachineLib.roundAway ((A026169 (n + 2) : ℚ) / 2)).toNat

end

end A026139.P8565282484655219747

namespace A026139

/-- `A026136(A026169(n+2)/2)` -/
def P8565282484655219747.Spec : Prop :=
  ∀ n, P8565282484655219747.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P4604609397021469063

`A026136(lt[n, A026136(n+1)]+1)`
-/

namespace A026139.P4604609397021469063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A026139.P4604609397021469063

namespace A026139

/-- `A026136(lt[n, A026136(n+1)]+1)` -/
def P4604609397021469063.Spec : Prop :=
  ∀ n, P4604609397021469063.a n = A026139 (n + 1)

end A026139

/-! ## A026139.P5064592211618994975

`∩[A026227(n+1), A047245(n+1)]`
-/

namespace A026139.P5064592211618994975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026139.P5064592211618994975

namespace A026139

/-- `∩[A026227(n+1), A047245(n+1)]` -/
def P5064592211618994975.Spec : Prop :=
  ∀ n, (P5064592211618994975.a n : ℤ) = A026139 (n + 1)

end A026139

/-!
# A026140: a(n) = (1/2)*(s(n) - 1), where s = A026139.

The programs for A026140, the canonical program `A026140.P6842947642768268072` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026140 has offset 1).

The definition of A026140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026140.P15955421269899942327

`A026138(n+1)-1`
-/

namespace A026140.P15955421269899942327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1) - 1

end

end A026140.P15955421269899942327

namespace A026140

/-- `A026138(n+1)-1` -/
def P15955421269899942327.Spec : Prop :=
  ∀ n, P15955421269899942327.a n = A026140 (n + 1)

theorem P15955421269899942327.correct : P15955421269899942327.Spec := by
  intro n
  simp only [A026140, Nat.add_sub_cancel, A026140.P15955421269899942327.a, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026138, A026138.P14895961469128642459.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026140

/-! ## A026140.P8887420695339989427

`floor(A026139(n+1)/2)`
-/

namespace A026140.P8887420695339989427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026139 (n + 1) : ℚ) / 2⌋

end

end A026140.P8887420695339989427

namespace A026140

/-- `floor(A026139(n+1)/2)` -/
def P8887420695339989427.Spec : Prop :=
  ∀ n, P8887420695339989427.a n = A026140 (n + 1)

end A026140

/-! ## A026140.P7685724466291746807

`floor(A026224(n+1)/3)`
-/

namespace A026140.P7685724466291746807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026224 (n + 1) : ℚ) / 3⌋

end

end A026140.P7685724466291746807

namespace A026140

/-- `floor(A026224(n+1)/3)` -/
def P7685724466291746807.Spec : Prop :=
  ∀ n, P7685724466291746807.a n = A026140 (n + 1)

end A026140

/-! ## A026140.P258645122416962958

`comp[A026232(n+1)-1]`
-/

namespace A026140.P258645122416962958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026140.P258645122416962958

namespace A026140

/-- `comp[A026232(n+1)-1]` -/
def P258645122416962958.Spec : Prop :=
  ∀ n, (P258645122416962958.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P6842947642768268072

`comp[A026227(n+2)-1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026140

/-- `comp[A026227(n+2)-1]` -/
def P6842947642768268072.Spec : Prop :=
  ∀ n, (P6842947642768268072.a n : ℤ) = A026140 (n + 1)

theorem P6842947642768268072.correct : P6842947642768268072.Spec := by
  intro n
  simp only [A026140, Nat.add_sub_cancel]

end A026140

/-! ## A026140.P14808953079083173972

`∪[A026225(n+1), n²]`
-/

namespace A026140.P14808953079083173972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A026140.P14808953079083173972

namespace A026140

/-- `∪[A026225(n+1), n²]` -/
def P14808953079083173972.Spec : Prop :=
  ∀ n, (P14808953079083173972.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P4460270799260123416

`(A026228(n+1)-2)/3`
-/

namespace A026140.P4460270799260123416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026228 (n + 1) - 2 : ℚ) / 3

end

end A026140.P4460270799260123416

namespace A026140

/-- `(A026228(n+1)-2)/3` -/
def P4460270799260123416.Spec : Prop :=
  ∀ n, P4460270799260123416.a n = (A026140 (n + 1) : ℚ)

theorem P4460270799260123416.correct : P4460270799260123416.Spec := by
  intro n
  simp only [A026140, Nat.add_sub_cancel, A026140.P4460270799260123416.a, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026228, A026228.P11632030350600125361.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026140

/-! ## A026140.P15037247344312159268

`∪[A000290(n), A026225(n+1)]`
-/

namespace A026140.P15037247344312159268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P15037247344312159268

namespace A026140

/-- `∪[A000290(n), A026225(n+1)]` -/
def P15037247344312159268.Spec : Prop :=
  ∀ n, (P15037247344312159268.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P12935821216112215116

`∪[A000537(n), A026225(n+1)]`
-/

namespace A026140.P12935821216112215116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P12935821216112215116

namespace A026140

/-- `∪[A000537(n), A026225(n+1)]` -/
def P12935821216112215116.Spec : Prop :=
  ∀ n, (P12935821216112215116.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P16017095689283079708

`∪[A000541(n), A026225(n+1)]`
-/

namespace A026140.P16017095689283079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P16017095689283079708

namespace A026140

/-- `∪[A000541(n), A026225(n+1)]` -/
def P16017095689283079708.Spec : Prop :=
  ∀ n, (P16017095689283079708.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P14326722787551403982

`∪[A000583(n), A026225(n+1)]`
-/

namespace A026140.P14326722787551403982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P14326722787551403982

namespace A026140

/-- `∪[A000583(n), A026225(n+1)]` -/
def P14326722787551403982.Spec : Prop :=
  ∀ n, (P14326722787551403982.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P4639730185695512394

`∪[A001014(n), A026225(n+1)]`
-/

namespace A026140.P4639730185695512394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P4639730185695512394

namespace A026140

/-- `∪[A001014(n), A026225(n+1)]` -/
def P4639730185695512394.Spec : Prop :=
  ∀ n, (P4639730185695512394.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P12476413451676796083

`∪[A001016(n), A026225(n+1)]`
-/

namespace A026140.P12476413451676796083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P12476413451676796083

namespace A026140

/-- `∪[A001016(n), A026225(n+1)]` -/
def P12476413451676796083.Spec : Prop :=
  ∀ n, (P12476413451676796083.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P11189203167377627919

`∪[A001298(n), A026225(n+1)]`
-/

namespace A026140.P11189203167377627919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P11189203167377627919

namespace A026140

/-- `∪[A001298(n), A026225(n+1)]` -/
def P11189203167377627919.Spec : Prop :=
  ∀ n, (P11189203167377627919.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P15421692726882403795

`∪[A002485(n), A026225(n+1)]`
-/

namespace A026140.P15421692726882403795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P15421692726882403795

namespace A026140

/-- `∪[A002485(n), A026225(n+1)]` -/
def P15421692726882403795.Spec : Prop :=
  ∀ n, (P15421692726882403795.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P9056227664389476143

`∪[A003462(n), A026225(n+1)]`
-/

namespace A026140.P9056227664389476143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P9056227664389476143

namespace A026140

/-- `∪[A003462(n), A026225(n+1)]` -/
def P9056227664389476143.Spec : Prop :=
  ∀ n, (P9056227664389476143.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P214043236261402822

`∪[A016744(n), A026225(n+1)]`
-/

namespace A026140.P214043236261402822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P214043236261402822

namespace A026140

/-- `∪[A016744(n), A026225(n+1)]` -/
def P214043236261402822.Spec : Prop :=
  ∀ n, (P214043236261402822.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P8197613776336822064

`∪[A017270(n), A026225(n+1)]`
-/

namespace A026140.P8197613776336822064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P8197613776336822064

namespace A026140

/-- `∪[A017270(n), A026225(n+1)]` -/
def P8197613776336822064.Spec : Prop :=
  ∀ n, (P8197613776336822064.a n : ℤ) = A026140 (n + 1)

end A026140

/-! ## A026140.P12791320476501524357

`∪[A065733(n), A026225(n+1)]`
-/

namespace A026140.P12791320476501524357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026140.P12791320476501524357

namespace A026140

/-- `∪[A065733(n), A026225(n+1)]` -/
def P12791320476501524357.Spec : Prop :=
  ∀ n, (P12791320476501524357.a n : ℤ) = A026140 (n + 1)

end A026140

/-!
# A026141: a(n) = (s(n)-s(n-1))/2, where s = A026139.

The programs for A026141, the canonical program `A026141.P6698721252845057780` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026141 has offset 2).

The definition of A026141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026141.P6698721252845057780

`A026225(n+1)-A026140(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026141

/-- `A026225(n+1)-A026140(n+1)` -/
def P6698721252845057780.Spec : Prop :=
  ∀ n, P6698721252845057780.a n = A026141 (n + 2)

theorem P6698721252845057780.correct : P6698721252845057780.Spec := by
  intro n
  simp only [A026141, Nat.add_sub_cancel]

end A026141

/-! ## A026141.P6780150543446406493

`A026225(n+1)+1-A026138(n+1)`
-/

namespace A026141.P6780150543446406493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) + (1 - A026138 (n + 1))

end

end A026141.P6780150543446406493

namespace A026141

/-- `A026225(n+1)+1-A026138(n+1)` -/
def P6780150543446406493.Spec : Prop :=
  ∀ n, P6780150543446406493.a n = A026141 (n + 2)

theorem P6780150543446406493.correct : P6780150543446406493.Spec := by
  intro n
  simp only [A026141, Nat.add_sub_cancel, A026141.P6780150543446406493.a, A026141.P6698721252845057780.a, A026138, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026225, A026225.P18152359124507789956.f1, A026225.P18152359124507789956.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026141

/-! ## A026141.P1173795910328889029

`A026225(n+1)-∪[A026225(n+1), A016744(n)]`
-/

namespace A026141.P1173795910328889029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016744 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A026141.P1173795910328889029

namespace A026141

/-- `A026225(n+1)-∪[A026225(n+1), A016744(n)]` -/
def P1173795910328889029.Spec : Prop :=
  ∀ n, P1173795910328889029.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P1779884490893317313

`A026225(n+1)-∪[A026225(n+1), A017270(n)]`
-/

namespace A026141.P1779884490893317313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017270 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A026141.P1779884490893317313

namespace A026141

/-- `A026225(n+1)-∪[A026225(n+1), A017270(n)]` -/
def P1779884490893317313.Spec : Prop :=
  ∀ n, P1779884490893317313.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P15172266450046630693

`Δ[A026138(n+1)]`
-/

namespace A026141.P15172266450046630693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P15172266450046630693

namespace A026141

/-- `Δ[A026138(n+1)]` -/
def P15172266450046630693.Spec : Prop :=
  ∀ n, P15172266450046630693.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P7674266784610387071

`Δ[A026140(n+1)]`
-/

namespace A026141.P7674266784610387071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P7674266784610387071

namespace A026141

/-- `Δ[A026140(n+1)]` -/
def P7674266784610387071.Spec : Prop :=
  ∀ n, P7674266784610387071.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P12454716056059817514

`Δ[A026139(n+1)/2]`
-/

namespace A026141.P12454716056059817514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026139 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P12454716056059817514

namespace A026141

/-- `Δ[A026139(n+1)/2]` -/
def P12454716056059817514.Spec : Prop :=
  ∀ n, P12454716056059817514.a n = (A026141 (n + 2) : ℚ)

end A026141

/-! ## A026141.P17707657749591941398

`Δ[A026228(n+1)/3]`
-/

namespace A026141.P17707657749591941398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026228 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P17707657749591941398

namespace A026141

/-- `Δ[A026228(n+1)/3]` -/
def P17707657749591941398.Spec : Prop :=
  ∀ n, P17707657749591941398.a n = (A026141 (n + 2) : ℚ)

end A026141

/-! ## A026141.P4560368645176614934

`floor(sqrt(Δ[A026224(n+1)]))`
-/

namespace A026141.P4560368645176614934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A026141.P4560368645176614934

namespace A026141

/-- `floor(sqrt(Δ[A026224(n+1)]))` -/
def P4560368645176614934.Spec : Prop :=
  ∀ n, P4560368645176614934.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P9347208187248826749

`A026138(n+2)-A026138(n+1)`
-/

namespace A026141.P9347208187248826749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 2) - A026138 (n + 1)

end

end A026141.P9347208187248826749

namespace A026141

/-- `A026138(n+2)-A026138(n+1)` -/
def P9347208187248826749.Spec : Prop :=
  ∀ n, P9347208187248826749.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P10912329052676050417

`A026140(n+2)-A026140(n+1)`
-/

namespace A026141.P10912329052676050417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2) - A026140 (n + 1)

end

end A026141.P10912329052676050417

namespace A026141

/-- `A026140(n+2)-A026140(n+1)` -/
def P10912329052676050417.Spec : Prop :=
  ∀ n, P10912329052676050417.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P9480852313639057706

`Δ[A026168(n+2)]`
-/

namespace A026141.P9480852313639057706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P9480852313639057706

namespace A026141

/-- `Δ[A026168(n+2)]` -/
def P9480852313639057706.Spec : Prop :=
  ∀ n, P9480852313639057706.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P17354362900804413781

`Δ[A026169(n+2)/2]`
-/

namespace A026141.P17354362900804413781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026169 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P17354362900804413781

namespace A026141

/-- `Δ[A026169(n+2)/2]` -/
def P17354362900804413781.Spec : Prop :=
  ∀ n, P17354362900804413781.a n = (A026141 (n + 2) : ℚ)

end A026141

/-! ## A026141.P13704416326852907725

`A026168(n+3)-A026168(n+2)`
-/

namespace A026141.P13704416326852907725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 3) - A026168 (n + 2)

end

end A026141.P13704416326852907725

namespace A026141

/-- `A026168(n+3)-A026168(n+2)` -/
def P13704416326852907725.Spec : Prop :=
  ∀ n, P13704416326852907725.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P9511748229018198451

`Δ[lt[0, A327252(n)+1]]`
-/

namespace A026141.P9511748229018198451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026141.P9511748229018198451

namespace A026141

/-- `Δ[lt[0, A327252(n)+1]]` -/
def P9511748229018198451.Spec : Prop :=
  ∀ n, P9511748229018198451.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P3097868502810179096

`Δ[record[A026182(n+1)]]`
-/

namespace A026141.P3097868502810179096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026141.P3097868502810179096

namespace A026141

/-- `Δ[record[A026182(n+1)]]` -/
def P3097868502810179096.Spec : Prop :=
  ∀ n, P3097868502810179096.a n = A026141 (n + 2)

end A026141

/-! ## A026141.P10722094401457905198

`Δ[lt[0, A134028(n)+1]]`
-/

namespace A026141.P10722094401457905198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026141.P10722094401457905198

namespace A026141

/-- `Δ[lt[0, A134028(n)+1]]` -/
def P10722094401457905198.Spec : Prop :=
  ∀ n, P10722094401457905198.a n = A026141 (n + 2)

end A026141

/-!
# A026142: Lexicographically earliest permutation of the positive integers such that for n >= 2, |a(n)-n| = [(a(n)+1)/2].

The programs for A026142, there is no canonical definition to state claims against.
-/

/-! ## A026142.P15312405187481444987

`A026177(n+1)+A026215(n+1)-A026191(n+1)`
-/

namespace A026142.P15312405187481444987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (n + 1) + (A026215 (n + 1) - A026191 (n + 1))

end

end A026142.P15312405187481444987

/-! ## A026142.P15301019697908352396

`Δ[A008577(n)]-A026191(n+1)`
-/

namespace A026142.P15301019697908352396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026191 (n + 1)

end

end A026142.P15301019697908352396

/-! ## A026142.P9057961483361786748

`A008576(n+1)-A026191(n+1)`
-/

namespace A026142.P9057961483361786748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) - A026191 (n + 1)

end

end A026142.P9057961483361786748

/-! ## A026142.P16525938371108039112

`A004396(A026190(2*(n+1)))`
-/

namespace A026142.P16525938371108039112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026190 (2 * (n + 1))).toNat

end

end A026142.P16525938371108039112

/-! ## A026142.P13541066933790214924

`A002264(A004768(n))-A026191(n+1)`
-/

namespace A026142.P13541066933790214924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004768 n).toNat - A026191 (n + 1)

end

end A026142.P13541066933790214924

/-!
# A026143: a(n) = position of n in A026142.

The programs for A026143, there is no canonical definition to state claims against.
-/

/-! ## A026143.P7137449363455249628

`lcm(2, n+1)+n+1-A026190(n+1)`
-/

namespace A026143.P7137449363455249628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) + ((n + 1 : ℤ) - A026190 (n + 1))

end

end A026143.P7137449363455249628

/-! ## A026143.P5052782261890723696

`A106833(n+1)-A026190(n+1)`
-/

namespace A026143.P5052782261890723696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) - A026190 (n + 1)

end

end A026143.P5052782261890723696

/-! ## A026143.P5360356426408888050

`A026178(n+1)+A026214(n+1)-A026190(n+1)`
-/

namespace A026143.P5360356426408888050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 1) + (A026214 (n + 1) - A026190 (n + 1))

end

end A026143.P5360356426408888050

/-! ## A026143.P16293370826054454707

`A026191(A114119(n))/2`
-/

namespace A026143.P16293370826054454707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026191 (A114119 n).toNat : ℚ) / 2

end

end A026143.P16293370826054454707

/-! ## A026143.P5060953019592047127

`A032742(A026191(∑[gcd(2, n)]))`
-/

namespace A026143.P5060953019592047127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A026191 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026143.P5060953019592047127

/-!
# A026144: Numbers k such that s(j) < s(k) for all j < k, where s = A026142.

The programs for A026144, there is no canonical definition to state claims against.
-/

/-! ## A026144.P13457888924591875987

`ceil(A026145(n+1)/2)`
-/

namespace A026144.P13457888924591875987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026145 (n + 1) : ℚ) / 2⌉

end

end A026144.P13457888924591875987

/-! ## A026144.P384731614965315706

`ceil(A026229(n+1)/3)`
-/

namespace A026144.P384731614965315706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026229 (n + 1) : ℚ) / 3⌉

end

end A026144.P384731614965315706

/-! ## A026144.P3306573081240697625

`A026146(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026144.P3306573081240697625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026146 (n + 1) + a (n - 1)

end

end A026144.P3306573081240697625

/-! ## A026144.P17488321857335723108

`∪[A000302(n), A026230(n+1)]`
-/

namespace A026144.P17488321857335723108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P17488321857335723108

/-! ## A026144.P18018215699010669290

`∪[A026230(n+1), A001249(n)]`
-/

namespace A026144.P18018215699010669290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P18018215699010669290

/-! ## A026144.P16560721099876961029

`∪[A001998(n), A026230(n+1)]`
-/

namespace A026144.P16560721099876961029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P16560721099876961029

/-! ## A026144.P8912322359161816301

`∪[A026230(n+1), A003215(n)]`
-/

namespace A026144.P8912322359161816301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P8912322359161816301

/-! ## A026144.P3522595977446320125

`∪[A026230(n+1), A005892(n)]`
-/

namespace A026144.P3522595977446320125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P3522595977446320125

/-! ## A026144.P10176540763496294697

`∪[A026230(n+1), A006001(n)]`
-/

namespace A026144.P10176540763496294697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P10176540763496294697

/-! ## A026144.P12523076363572575075

`∪[A026230(n+1), A007204(n)]`
-/

namespace A026144.P12523076363572575075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P12523076363572575075

/-! ## A026144.P1273791825969354966

`∪[A026230(n+1), A008349(n)]`
-/

namespace A026144.P1273791825969354966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P1273791825969354966

/-! ## A026144.P2776880065934346739

`∪[A026230(n+1), A008376(n)]`
-/

namespace A026144.P2776880065934346739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P2776880065934346739

/-! ## A026144.P12551791102392402812

`∪[A026230(n+1), A008419(n)]`
-/

namespace A026144.P12551791102392402812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P12551791102392402812

/-! ## A026144.P2925269927615150569

`∪[A026230(n+1), A014795(n)]`
-/

namespace A026144.P2925269927615150569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026144.P2925269927615150569

/-! ## A026144.P3643488160256801000

`A026229(n+1)-A026145(n+1)`
-/

namespace A026144.P3643488160256801000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A026145 (n + 1)

end

end A026144.P3643488160256801000

/-! ## A026144.P788758886814807763

`A026229(n+1)/A157532(n+1)`
-/

namespace A026144.P788758886814807763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026229 (n + 1) : ℚ) / (A157532 (n + 1) : ℚ)

end

end A026144.P788758886814807763

/-! ## A026144.P1410230478470347995

`A026145(n+1)-comp[A026223(n+1)]`
-/

namespace A026144.P1410230478470347995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026145 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A026144.P1410230478470347995

/-! ## A026144.P15337862742106384200

`lt[n, A026142(n+1)]+1`
-/

namespace A026144.P15337862742106384200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026144.P15337862742106384200

/-! ## A026144.P6455032203506322860

`record[A026142(A080782(n+2))/2]`
-/

namespace A026144.P6455032203506322860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026142 (A080782 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026144.P6455032203506322860

/-!
# A026145: a(n) = s(k), where k is the n-th number such that s(j) < s(k) for all j < k, where s = A026142. Also a(n) = 2*t(n) for n >= 2, where t = A026144.

The programs for A026145, there is no canonical definition to state claims against.
-/

/-! ## A026145.P1224719950570443750

`A026229(n+1)-A026144(n+1)`
-/

namespace A026145.P1224719950570443750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A026144 (n + 1)

end

end A026145.P1224719950570443750

/-! ## A026145.P14864097099417577475

`A026144(n+1)+comp[A026223(n+1)]`
-/

namespace A026145.P14864097099417577475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A026145.P14864097099417577475

/-! ## A026145.P12741675834940633799

`(A157532(n+1)-1)*A026144(n+1)`
-/

namespace A026145.P12741675834940633799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) - 1) * A026144 (n + 1)

end

end A026145.P12741675834940633799

/-! ## A026145.P5756326341850593546

`A014963(A001316(n))*A026144(n+1)`
-/

namespace A026145.P5756326341850593546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A026144 (n + 1)

end

end A026145.P5756326341850593546

/-! ## A026145.P12761633680259489818

`A020639(A004275(n+1))*A026144(n+1)`
-/

namespace A026145.P12761633680259489818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004275 (n + 1)).toNat * A026144 (n + 1)

end

end A026145.P12761633680259489818

/-! ## A026145.P4527265214036415967

`A026229(n+1)-A026229(n+1)/A157532(n+1)`
-/

namespace A026145.P4527265214036415967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026229 (n + 1) : ℚ) - (A026229 (n + 1) : ℚ) / (A157532 (n + 1) : ℚ)

end

end A026145.P4527265214036415967

/-! ## A026145.P15985276552068526712

`record[A026142(n+1)]`
-/

namespace A026145.P15985276552068526712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026145.P15985276552068526712

/-! ## A026145.P17501368867893717917

`A026142(A026144(n+1))`
-/

namespace A026145.P17501368867893717917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A026144 (n + 1)).toNat

end

end A026145.P17501368867893717917

/-! ## A026145.P12789718639230461269

`A026142(lt[n, A026142(n+1)]+1)`
-/

namespace A026145.P12789718639230461269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A026145.P12789718639230461269

/-! ## A026145.P17684549713179648920

`A020639(A000118(n))*A026144(n+1)`
-/

namespace A026145.P17684549713179648920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A026144 (n + 1)

end

end A026145.P17684549713179648920

/-! ## A026145.P15137541645625867649

`A004277(A026144(n+1)+n)-A004277(n)`
-/

namespace A026145.P15137541645625867649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026144 (n + 1) + (n : ℤ)).toNat - A004277 n

end

end A026145.P15137541645625867649

/-! ## A026145.P13370232087109444882

`A026230(A026144(n+1)+n)-A026144(n+1)`
-/

namespace A026145.P13370232087109444882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (A026144 (n + 1) + (n : ℤ)).toNat - A026144 (n + 1)

end

end A026145.P13370232087109444882

/-! ## A026145.P3627352213086471237

`record[2*A026190(n+1)-A106833(n+1)]`
-/

namespace A026145.P3627352213086471237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026190 (n + 1) - A106833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026145.P3627352213086471237

/-! ## A026145.P3277137956079318599

`∩[A026144(n+1), A007494(n)]-A026144(n+1)`
-/

namespace A026145.P3277137956079318599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A026144 (n + 1)

end

end A026145.P3277137956079318599

/-! ## A026145.P1978125819160070884

`∩[A026144(n+1), A049636(n)]-A026144(n+1)`
-/

namespace A026145.P1978125819160070884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A026144 (n + 1)

end

end A026145.P1978125819160070884

/-! ## A026145.P6430719877543107176

`A004396(A026229(n+1))`
-/

namespace A026145.P6430719877543107176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026229 (n + 1)).toNat

end

end A026145.P6430719877543107176

/-! ## A026145.P4871806140177670083

`A003417(A026229(n+1)-1)`
-/

namespace A026145.P4871806140177670083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A026229 (n + 1) - 1).toNat

end

end A026145.P4871806140177670083

/-! ## A026145.P11915038726249854303

`A026183(A026229(n+1)-1)`
-/

namespace A026145.P11915038726249854303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (A026229 (n + 1) - 1).toNat

end

end A026145.P11915038726249854303

/-! ## A026145.P5866072766083348626

`A026195(A026229(n+1)-1)`
-/

namespace A026145.P5866072766083348626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026195 (A026229 (n + 1) - 1).toNat

end

end A026145.P5866072766083348626

/-!
# A026146: a(n) = (1/2)*|s(n) - s(n-1)|, where s = A026145.

The programs for A026146, there is no canonical definition to state claims against.
-/

/-! ## A026146.P2600612758845001669

`Δ[A026230(n+1)]`
-/

namespace A026146.P2600612758845001669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P2600612758845001669

/-! ## A026146.P15134214259639117356

`A026230(n+2)-A026230(n+1)`
-/

namespace A026146.P15134214259639117356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 2) - A026230 (n + 1)

end

end A026146.P15134214259639117356

/-! ## A026146.P1128705067028466363

`Δ[A026144(n+2)]`
-/

namespace A026146.P1128705067028466363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P1128705067028466363

/-! ## A026146.P1349908592503220660

`Δ[A026145(n+2)/2]`
-/

namespace A026146.P1349908592503220660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026145 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P1349908592503220660

/-! ## A026146.P8712695090733563998

`Δ[A026229(n+2)/3]`
-/

namespace A026146.P8712695090733563998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026229 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P8712695090733563998

/-! ## A026146.P10071950078062019309

`A001221(Δ[A026145(n+2)]!)`
-/

namespace A026146.P10071950078062019309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A026146.P10071950078062019309

/-! ## A026146.P12418350106031846521

`A026144(n+3)-A026144(n+2)`
-/

namespace A026146.P12418350106031846521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 3) - A026144 (n + 2)

end

end A026146.P12418350106031846521

/-! ## A026146.P16549277379619184906

`Δ[record[A026190(n+1)]]`
-/

namespace A026146.P16549277379619184906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P16549277379619184906

/-! ## A026146.P1641101638071390071

`Δ[record[A026142(n+2)/2]]`
-/

namespace A026146.P1641101638071390071
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026142 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P1641101638071390071

/-! ## A026146.P17667614071778121158

`Δ[lt[n+1, A026142(n+1)]]`
-/

namespace A026146.P17667614071778121158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026146.P17667614071778121158

/-! ## A026146.P17395282555803366542

`Δ[lt[A026191(n+1), n+1]]`
-/

namespace A026146.P17395282555803366542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026146.P17395282555803366542

/-! ## A026146.P6377342580615352984

`Δ[lt[A002517(n), 2*n]]`
-/

namespace A026146.P6377342580615352984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026146.P6377342580615352984

/-! ## A026146.P2193287496519463726

`Δ[lt[A002517(n)², A005843(n)²]]`
-/

namespace A026146.P2193287496519463726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026146.P2193287496519463726

/-! ## A026146.P4401912922982086065

`Δ[record[A026214(A026142(A026178(n+1)))]]`
-/

namespace A026146.P4401912922982086065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (A026142 (A026178 (n + 1)).toNat).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026146.P4401912922982086065

/-!
# A026147: a(n) = position of n-th 1 in A001285 or A010059 (Thue-Morse sequence).

The programs for A026147, the canonical program `A026147.P16575442085374687038` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026147 has offset 1).

The definition of A026147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026147.P16575442085374687038

`1+A001969(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026147

/-- `1+A001969(n+1)` -/
def P16575442085374687038.Spec : Prop :=
  ∀ n, P16575442085374687038.a n = A026147 (n + 1)

theorem P16575442085374687038.correct : P16575442085374687038.Spec := by
  intro n
  simp only [A026147, Nat.add_sub_cancel]

end A026147

/-! ## A026147.P9999649345907927821

`2*(n+1)+A000120(n)%2-1`
-/

namespace A026147.P9999649345907927821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + Int.tmod (A000120 n) 2 - 1

end

end A026147.P9999649345907927821

namespace A026147

/-- `2*(n+1)+A000120(n)%2-1` -/
def P9999649345907927821.Spec : Prop :=
  ∀ n, P9999649345907927821.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P5582551761947061629

`abs(xor(comp[xor(n, 2*n)], -2))`
-/

namespace A026147.P5582551761947061629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-2)|

end

end A026147.P5582551761947061629

namespace A026147

/-- `abs(xor(comp[xor(n, 2*n)], -2))` -/
def P5582551761947061629.Spec : Prop :=
  ∀ n, P5582551761947061629.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P4525220808590644033

`-xor(comp[xor(n, 2*n)], -2)`
-/

namespace A026147.P4525220808590644033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-2)

end

end A026147.P4525220808590644033

namespace A026147

/-- `-xor(comp[xor(n, 2*n)], -2)` -/
def P4525220808590644033.Spec : Prop :=
  ∀ n, P4525220808590644033.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P1984499804497167761

`comp[xor(n, 2*n+1)]+1`
-/

namespace A026147.P1984499804497167761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A026147.P1984499804497167761

namespace A026147

/-- `comp[xor(n, 2*n+1)]+1` -/
def P1984499804497167761.Spec : Prop :=
  ∀ n, (P1984499804497167761.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P17611998994135078747

`eq[1, -a(and(n, n-1))]+1` with `a(0)=1`
-/

namespace A026147.P17611998994135078747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026147.P17611998994135078747

namespace A026147

/-- `eq[1, -a(and(n, n-1))]+1` -/
def P17611998994135078747.Spec : Prop :=
  ∀ n, (P17611998994135078747.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P7666690037826114160

`2*n+2-char[xor(n, 2*n)]`
-/

namespace A026147.P7666690037826114160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A026147.P7666690037826114160

namespace A026147

/-- `2*n+2-char[xor(n, 2*n)]` -/
def P7666690037826114160.Spec : Prop :=
  ∀ n, P7666690037826114160.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P15191834359293509080

`char[xor(n, 2*n+1)]+2*n+1`
-/

namespace A026147.P15191834359293509080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1)

end

end A026147.P15191834359293509080

namespace A026147

/-- `char[xor(n, 2*n+1)]+2*n+1` -/
def P15191834359293509080.Spec : Prop :=
  ∀ n, (P15191834359293509080.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P6205517532013550356

`and(1, a(and(n, n-1)))+2*n+1` with `a(0)=1`
-/

namespace A026147.P6205517532013550356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + (2 * n + 1)

end

end A026147.P6205517532013550356

namespace A026147

/-- `and(1, a(and(n, n-1)))+2*n+1` -/
def P6205517532013550356.Spec : Prop :=
  ∀ n, (P6205517532013550356.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P14102649769969515366

`∑[A317189(n)]+n`
-/

namespace A026147.P14102649769969515366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026147.P14102649769969515366

namespace A026147

/-- `∑[A317189(n)]+n` -/
def P14102649769969515366.Spec : Prop :=
  ∀ n, P14102649769969515366.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P15178355555026739127

`A140592(n+1)-1`
-/

namespace A026147.P15178355555026739127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - 1

end

end A026147.P15178355555026739127

namespace A026147

/-- `A140592(n+1)-1` -/
def P15178355555026739127.Spec : Prop :=
  ∀ n, P15178355555026739127.a n = A026147 (n + 1)

theorem P15178355555026739127.correct : P15178355555026739127.Spec := by
  intro n
  simp only [A026147, Nat.add_sub_cancel, A026147.P15178355555026739127.a, A026147.P16575442085374687038.a, A001969, A001969.P9139304774861292784.a, A140592, A140592.P9802847602468291615.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026147

/-! ## A026147.P9102289812117780697

`lt[A065620(n), 1]+1`
-/

namespace A026147.P9102289812117780697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026147.P9102289812117780697

namespace A026147

/-- `lt[A065620(n), 1]+1` -/
def P9102289812117780697.Spec : Prop :=
  ∀ n, (P9102289812117780697.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P964090376515339553

`A001285(n)+2*n`
-/

namespace A026147.P964090376515339553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + (2 * n : ℤ)

end

end A026147.P964090376515339553

namespace A026147

/-- `A001285(n)+2*n` -/
def P964090376515339553.Spec : Prop :=
  ∀ n, P964090376515339553.a n = A026147 (n + 1)

theorem P964090376515339553.correct : P964090376515339553.Spec := by
  intro n
  simp only [A026147, Nat.add_sub_cancel, A026147.P964090376515339553.a, A026147.P16575442085374687038.a, A001285, A001285.P11616636227895161122.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026147

/-! ## A026147.P13523205964151178404

`A010060(n)+Δ[n²]`
-/

namespace A026147.P13523205964151178404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026147.P13523205964151178404

namespace A026147

/-- `A010060(n)+Δ[n²]` -/
def P13523205964151178404.Spec : Prop :=
  ∀ n, P13523205964151178404.a n = A026147 (n + 1)

theorem P13523205964151178404.correct : P13523205964151178404.Spec := by
  intro n
  simp only [A026147, Nat.add_sub_cancel, A026147.P13523205964151178404.f1, A026147.P13523205964151178404.a, A026147.P16575442085374687038.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026147

/-! ## A026147.P8206127172847233748

`round(A092246(n+1)/2)`
-/

namespace A026147.P8206127172847233748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092246 (n + 1) : ℚ) / 2)

end

end A026147.P8206127172847233748

namespace A026147

/-- `round(A092246(n+1)/2)` -/
def P8206127172847233748.Spec : Prop :=
  ∀ n, P8206127172847233748.a n = A026147 (n + 1)

end A026147

/-! ## A026147.P12394775871557194135

`comp[A000069(n+1)]+1`
-/

namespace A026147.P12394775871557194135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026147.P12394775871557194135

namespace A026147

/-- `comp[A000069(n+1)]+1` -/
def P12394775871557194135.Spec : Prop :=
  ∀ n, (P12394775871557194135.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P12209280834133723896

`comp[A268669(n+1)]+1`
-/

namespace A026147.P12209280834133723896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026147.P12209280834133723896

namespace A026147

/-- `comp[A268669(n+1)]+1` -/
def P12209280834133723896.Spec : Prop :=
  ∀ n, (P12209280834133723896.a n : ℤ) = A026147 (n + 1)

end A026147

/-! ## A026147.P2649041537334881286

`record[A339451(2*n)+1]`
-/

namespace A026147.P2649041537334881286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026147.P2649041537334881286

namespace A026147

/-- `record[A339451(2*n)+1]` -/
def P2649041537334881286.Spec : Prop :=
  ∀ n, P2649041537334881286.a n = A026147 (n + 1)

end A026147

/-!
# A026149: Expansion of 1/((1-2x)(1-5x)(1-10x)(1-11x)).

The programs for A026149, there is no canonical definition to state claims against.
-/

/-! ## A026149.P2020814588381935919

`A020567(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026149.P2020814588381935919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020567 n + 2 * a (n - 1)

end

end A026149.P2020814588381935919

/-! ## A026149.P5229638124921374037

`Δ[A021154(n)-A021144(n)]`
-/

namespace A026149.P5229638124921374037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n - A021144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026149.P5229638124921374037

/-! ## A026149.P16764993806972173442

`2*A016325(n)-A016301(n)`
-/

namespace A026149.P16764993806972173442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016325 n - A016301 n

end

end A026149.P16764993806972173442

/-! ## A026149.P8983612137640945177

`2*A026028(n)-A026024(n)`
-/

namespace A026149.P8983612137640945177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026028 n - A026024 n

end

end A026149.P8983612137640945177

/-! ## A026149.P9956625486417935783

`Δ[∑[A016301(n)]-A021144(n)]`
-/

namespace A026149.P9956625486417935783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026149.P9956625486417935783

/-! ## A026149.P7586109491433406186

`A016301(n+1)-Δ[A021144(n)]`
-/

namespace A026149.P7586109491433406186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026149.P7586109491433406186

/-!
# A026150: a(0) = a(1) = 1; a(n+2) = 2*a(n+1) + 2*a(n).

The programs for A026150, the canonical program `A026150.P9924932656140297593` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026150 has offset 0).

The definition of A026150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026150.P9924932656140297593

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026150

/-- `2*a(n-1)+2*a(n-2)` -/
def P9924932656140297593.Spec : Prop :=
  ∀ n, (P9924932656140297593.a n : ℤ) = A026150 n

theorem P9924932656140297593.correct : P9924932656140297593.Spec := by
  intro n
  simp only [A026150]

end A026150

/-! ## A026150.P6512117051254309348

`A080040(n)/2`
-/

namespace A026150.P6512117051254309348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 2

end

end A026150.P6512117051254309348

namespace A026150

/-- `A080040(n)/2` -/
def P6512117051254309348.Spec : Prop :=
  ∀ n, P6512117051254309348.a n = (A026150 n : ℚ)

end A026150

/-! ## A026150.P3468757940585206459

`a(n-1)+A083337(n-1)` with `a(0)=1`
-/

namespace A026150.P3468757940585206459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A083337 (n - 1)

end

end A026150.P3468757940585206459

namespace A026150

/-- `a(n-1)+A083337(n-1)` -/
def P3468757940585206459.Spec : Prop :=
  ∀ n, P3468757940585206459.a n = A026150 n

end A026150

/-! ## A026150.P16763532595849339112

`ogf((-1+x)/(-1+2x+2x^2))`
-/

namespace A026150.P16763532595849339112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -2] n

end

end A026150.P16763532595849339112

namespace A026150

/-- `ogf((-1+x)/(-1+2x+2x^2))` -/
def P16763532595849339112.Spec : Prop :=
  ∀ n, P16763532595849339112.a n = A026150 n

end A026150

/-! ## A026150.P1874889423199118921

`round((1+sqrt(3))^n/2)`
-/

namespace A026150.P1874889423199118921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + Real.sqrt (3 : ℝ)) ^ n / 2)

end

end A026150.P1874889423199118921

namespace A026150

/-- `round((1+sqrt(3))^n/2)` -/
def P1874889423199118921.Spec : Prop :=
  ∀ n, P1874889423199118921.a n = A026150 n

end A026150

/-! ## A026150.P10668523926391188891

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A026150.P10668523926391188891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A026150.P10668523926391188891

namespace A026150

/-- `2*(a(n-1)+a(n-2))` -/
def P10668523926391188891.Spec : Prop :=
  ∀ n, (P10668523926391188891.a n : ℤ) = A026150 n

theorem P10668523926391188891.correct : P10668523926391188891.Spec := by
  intro n
  simp only [A026150, Nat.add_sub_cancel, A026150.P10668523926391188891.a, A026150.P9924932656140297593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026150

/-! ## A026150.P15962964797669735129

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A026150.P15962964797669735129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A026150.P15962964797669735129

namespace A026150

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P15962964797669735129.Spec : Prop :=
  ∀ n, P15962964797669735129.a n = A026150 n

end A026150

/-! ## A026150.P6524079369126655865

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A026150.P6524079369126655865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A026150.P6524079369126655865

namespace A026150

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P6524079369126655865.Spec : Prop :=
  ∀ n, P6524079369126655865.a n = A026150 n

end A026150

/-! ## A026150.P6553465749251533274

`2*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A026150.P6553465749251533274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A026150.P6553465749251533274

namespace A026150

/-- `2*(a(n-1)-round(-a(n-2)))` -/
def P6553465749251533274.Spec : Prop :=
  ∀ n, P6553465749251533274.a n = A026150 n

end A026150

/-! ## A026150.P6426112915542559782

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=1, a(1)=1`
-/

namespace A026150.P6426112915542559782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A026150.P6426112915542559782

namespace A026150

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P6426112915542559782.Spec : Prop :=
  ∀ n, P6426112915542559782.a n = (A026150 n : ℚ)

end A026150

/-! ## A026150.P2912998400520038356

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A026150.P2912998400520038356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A026150.P2912998400520038356

namespace A026150

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P2912998400520038356.Spec : Prop :=
  ∀ n, (P2912998400520038356.a n : ℤ) = A026150 n

theorem P2912998400520038356.correct : P2912998400520038356.Spec := by
  intro n
  simp only [A026150, Nat.add_sub_cancel, A026150.P2912998400520038356.a, A026150.P9924932656140297593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026150

/-! ## A026150.P27631098870593329

`Δ[A002605(n)]`
-/

namespace A026150.P27631098870593329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026150.P27631098870593329

namespace A026150

/-- `Δ[A002605(n)]` -/
def P27631098870593329.Spec : Prop :=
  ∀ n, P27631098870593329.a n = A026150 n

end A026150

/-! ## A026150.P10535917895795802410

`A160572(Δ[n²])`
-/

namespace A026150.P10535917895795802410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026150.P10535917895795802410

namespace A026150

/-- `A160572(Δ[n²])` -/
def P10535917895795802410.Spec : Prop :=
  ∀ n, P10535917895795802410.a n = A026150 n

end A026150

/-! ## A026150.P4973080420861894911

`Δ[A160444(Δ[n²])]`
-/

namespace A026150.P4973080420861894911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026150.P4973080420861894911

namespace A026150

/-- `Δ[A160444(Δ[n²])]` -/
def P4973080420861894911.Spec : Prop :=
  ∀ n, P4973080420861894911.a n = A026150 n

end A026150

/-! ## A026150.P6133872943290592246

`A160444(2*(n+1))`
-/

namespace A026150.P6133872943290592246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * (n + 1))

end

end A026150.P6133872943290592246

namespace A026150

/-- `A160444(2*(n+1))` -/
def P6133872943290592246.Spec : Prop :=
  ∀ n, P6133872943290592246.a n = A026150 n

end A026150

/-! ## A026150.P16918526721732174251

`A052945(n)-a(n-1)` with `a(0)=1`
-/

namespace A026150.P16918526721732174251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052945 n - a (n - 1)

end

end A026150.P16918526721732174251

namespace A026150

/-- `A052945(n)-a(n-1)` -/
def P16918526721732174251.Spec : Prop :=
  ∀ n, P16918526721732174251.a n = A026150 n

end A026150

/-! ## A026150.P12910708242595358144

`2^floor(n/2)*A002531(n)`
-/

namespace A026150.P12910708242595358144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A002531 n : ℚ)

end

end A026150.P12910708242595358144

namespace A026150

/-- `2^floor(n/2)*A002531(n)` -/
def P12910708242595358144.Spec : Prop :=
  ∀ n, P12910708242595358144.a n = (A026150 n : ℚ)

end A026150

/-! ## A026150.P5789099390070731254

`A005666(n)-A108898(n)`
-/

namespace A026150.P5789099390070731254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n - A108898 n

end

end A026150.P5789099390070731254

namespace A026150

/-- `A005666(n)-A108898(n)` -/
def P5789099390070731254.Spec : Prop :=
  ∀ n, P5789099390070731254.a n = A026150 n

end A026150

/-! ## A026150.P10693726636089658204

`A002531(n)*A016116(n)`
-/

namespace A026150.P10693726636089658204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n * A016116 n

end

end A026150.P10693726636089658204

namespace A026150

/-- `A002531(n)*A016116(n)` -/
def P10693726636089658204.Spec : Prop :=
  ∀ n, P10693726636089658204.a n = A026150 n

end A026150

/-! ## A026150.P4359690586986961578

`∑[A080040(n)-A052945(n)]`
-/

namespace A026150.P4359690586986961578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n - A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026150.P4359690586986961578

namespace A026150

/-- `∑[A080040(n)-A052945(n)]` -/
def P4359690586986961578.Spec : Prop :=
  ∀ n, P4359690586986961578.a n = A026150 n

end A026150

/-!
# A026151: a(n) = T(n,n), where T is the array in A026148.

The programs for A026151, there is no canonical definition to state claims against.
-/

/-! ## A026151.P16271856053110721528

`A026148(∑[a(n-1)+1])` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A026151.P16271856053110721528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026151.P16271856053110721528

/-! ## A026151.P10042264924858587306

`A026148(abs(3-A055999(n)))`
-/

namespace A026151.P10042264924858587306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 |3 - A055999 n|.toNat

end

end A026151.P10042264924858587306

/-! ## A026151.P1951020131386590782

`A026148(abs(4-A052905(n)))`
-/

namespace A026151.P1951020131386590782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 |4 - A052905 n|.toNat

end

end A026151.P1951020131386590782

/-! ## A026151.P1709835531593392067

`ceil(record[A026148(n+3)/A026148(n+6)])`
-/

namespace A026151.P1709835531593392067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026148 (n + 3) : ℚ) / (A026148 (n + 6) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A026151.P1709835531593392067

/-! ## A026151.P9035708400683848149

`A026148(A351153(∑[n+3]))`
-/

namespace A026151.P9035708400683848149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A351153 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026151.P9035708400683848149

/-!
# A026152: a(n) = T(n,n-1), where T is the array in A026148.

The programs for A026152, the canonical program `A026152.P13028405890907652534` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026152 has offset 2).

The definition of A026152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026152.P17514438604337181258

`Δ[A026163(n+1)]`
-/

namespace A026152.P17514438604337181258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026152.P17514438604337181258

namespace A026152

/-- `Δ[A026163(n+1)]` -/
def P17514438604337181258.Spec : Prop :=
  ∀ n, P17514438604337181258.a n = A026152 (n + 2)

end A026152

/-! ## A026152.P1164676358460829118

`A026163(n+2)-A026163(n+1)`
-/

namespace A026152.P1164676358460829118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026163 (n + 2) - A026163 (n + 1)

end

end A026152.P1164676358460829118

namespace A026152

/-- `A026163(n+2)-A026163(n+1)` -/
def P1164676358460829118.Spec : Prop :=
  ∀ n, P1164676358460829118.a n = A026152 (n + 2)

end A026152

/-! ## A026152.P13028405890907652534

`A026124(n+3)-A026109(n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026152

/-- `A026124(n+3)-A026109(n+3)` -/
def P13028405890907652534.Spec : Prop :=
  ∀ n, P13028405890907652534.a n = A026152 (n + 2)

theorem P13028405890907652534.correct : P13028405890907652534.Spec := by
  intro n
  simp only [A026152, Nat.add_sub_cancel]

end A026152

/-! ## A026152.P12653829194417275911

`A026325(n+1)+A026327(n+2)-A026153(n+2)`
-/

namespace A026152.P12653829194417275911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (n + 1) + (A026327 (n + 2) - A026153 (n + 2))

end

end A026152.P12653829194417275911

namespace A026152

/-- `A026325(n+1)+A026327(n+2)-A026153(n+2)` -/
def P12653829194417275911.Spec : Prop :=
  ∀ n, P12653829194417275911.a n = A026152 (n + 2)

end A026152

/-! ## A026152.P5648919883315654090

`A026107(n+3)+A026124(n+3)-A026123(n+3)`
-/

namespace A026152.P5648919883315654090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 3) + (A026124 (n + 3) - A026123 (n + 3))

end

end A026152.P5648919883315654090

namespace A026152

/-- `A026107(n+3)+A026124(n+3)-A026123(n+3)` -/
def P5648919883315654090.Spec : Prop :=
  ∀ n, P5648919883315654090.a n = A026152 (n + 2)

theorem P5648919883315654090.correct : P5648919883315654090.Spec := by
  intro n
  simp only [A026152, Nat.add_sub_cancel, A026152.P5648919883315654090.a, A026152.P13028405890907652534.a, A026107, A026107.P8700625693626820289.a, A026109, A026109.P346914583229573815.f1, A026109.P346914583229573815.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026124, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A001006, A001006.P11199602840237397285.a, A026134, A026134.P2296897511124696960.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026152

/-! ## A026152.P7522560489318977329

`A026109(n+4)-(A026109(n+3)+A026109(n+3))`
-/

namespace A026152.P7522560489318977329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026109 (n + 4) - (A026109 (n + 3) + A026109 (n + 3))

end

end A026152.P7522560489318977329

namespace A026152

/-- `A026109(n+4)-(A026109(n+3)+A026109(n+3))` -/
def P7522560489318977329.Spec : Prop :=
  ∀ n, P7522560489318977329.a n = A026152 (n + 2)

theorem P7522560489318977329.correct : P7522560489318977329.Spec := by
  intro n
  simp only [A026152, Nat.add_sub_cancel, A026152.P7522560489318977329.a, A026152.P13028405890907652534.a, A026109, A026109.P346914583229573815.f1, A026109.P346914583229573815.a, A026124, A026124.P5705506064951519193.f1, A026124.P5705506064951519193.a, A026107, A026107.P8700625693626820289.a, A026123, A026123.P266507043467753679.f1, A026123.P266507043467753679.a, A026134, A026134.P2296897511124696960.a, A001006, A001006.P11199602840237397285.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026152

/-! ## A026152.P7075009325419198606

`A026148(∑[n+5])`
-/

namespace A026152.P7075009325419198606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026152.P7075009325419198606

namespace A026152

/-- `A026148(∑[n+5])` -/
def P7075009325419198606.Spec : Prop :=
  ∀ n, P7075009325419198606.a n = A026152 (n + 2)

end A026152

/-! ## A026152.P2236392685188460127

`record[A026148(n+1)/A026148(n+5)]`
-/

namespace A026152.P2236392685188460127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026148 (n + 1) : ℚ) / (A026148 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026152.P2236392685188460127

namespace A026152

/-- `record[A026148(n+1)/A026148(n+5)]` -/
def P2236392685188460127.Spec : Prop :=
  ∀ n, P2236392685188460127.a n = (A026152 (n + 2) : ℚ)

end A026152

/-! ## A026152.P121429468979629863

`record[A026148(A056000(A065362(n+1)))]`
-/

namespace A026152.P121429468979629863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A056000 (A065362 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026152.P121429468979629863

namespace A026152

/-- `record[A026148(A056000(A065362(n+1)))]` -/
def P121429468979629863.Spec : Prop :=
  ∀ n, P121429468979629863.a n = A026152 (n + 2)

end A026152

/-! ## A026152.P15645621453931092322

`record[A026148(A056000(A165634(n+1)))]`
-/

namespace A026152.P15645621453931092322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A056000 (A165634 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026152.P15645621453931092322

namespace A026152

/-- `record[A026148(A056000(A165634(n+1)))]` -/
def P15645621453931092322.Spec : Prop :=
  ∀ n, P15645621453931092322.a n = A026152 (n + 2)

end A026152

/-!
# A026153: T(n,n-2), where T is the array in A026148.

The programs for A026153, the canonical program `A026153.P12716791351611435440` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026153 has offset 2).

The definition of A026153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026153.P12716791351611435440

`2*A026125(n+3)-A026110(n+4)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A026153

/-- `2*A026125(n+3)-A026110(n+4)` -/
def P12716791351611435440.Spec : Prop :=
  ∀ n, P12716791351611435440.a n = A026153 (n + 2)

theorem P12716791351611435440.correct : P12716791351611435440.Spec := by
  intro n
  simp only [A026153, Nat.add_sub_cancel]

end A026153

/-! ## A026153.P2694652452782672739

`A026152(n+3)-(A026163(n+2)+A026134(n+1))`
-/

namespace A026153.P2694652452782672739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026152 (n + 3) - (A026163 (n + 2) + A026134 (n + 1))

end

end A026153.P2694652452782672739

namespace A026153

/-- `A026152(n+3)-(A026163(n+2)+A026134(n+1))` -/
def P2694652452782672739.Spec : Prop :=
  ∀ n, P2694652452782672739.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P6148306751861530230

`A026125(n+3)+A026290(n+5)-A026110(n+5)`
-/

namespace A026153.P6148306751861530230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026125 (n + 3) + (A026290 (n + 5) - A026110 (n + 5))

end

end A026153.P6148306751861530230

namespace A026153

/-- `A026125(n+3)+A026290(n+5)-A026110(n+5)` -/
def P6148306751861530230.Spec : Prop :=
  ∀ n, P6148306751861530230.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P15576040643349904685

`A026148(∑[n+5]-1)`
-/

namespace A026153.P15576040643349904685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026153.P15576040643349904685

namespace A026153

/-- `A026148(∑[n+5]-1)` -/
def P15576040643349904685.Spec : Prop :=
  ∀ n, P15576040643349904685.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P1887223345403216943

`or(char[2], A026148(A183905(n+2)))`
-/

namespace A026153.P1887223345403216943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026148 (A183905 (n + 2)).toNat)

end

end A026153.P1887223345403216943

namespace A026153

/-- `or(char[2], A026148(A183905(n+2)))` -/
def P1887223345403216943.Spec : Prop :=
  ∀ n, P1887223345403216943.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P1794562768264569389

`or(char[2], A026148(A155212(n+1)-3))`
-/

namespace A026153.P1794562768264569389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026148 (A155212 (n + 1) - 3).toNat)

end

end A026153.P1794562768264569389

namespace A026153

/-- `or(char[2], A026148(A155212(n+1)-3))` -/
def P1794562768264569389.Spec : Prop :=
  ∀ n, P1794562768264569389.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P12138536447296545775

`and(A026148(A183905(n+2)), A267888(n))`
-/

namespace A026153.P12138536447296545775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026148 (A183905 (n + 2)).toNat) (A267888 n)

end

end A026153.P12138536447296545775

namespace A026153

/-- `and(A026148(A183905(n+2)), A267888(n))` -/
def P12138536447296545775.Spec : Prop :=
  ∀ n, P12138536447296545775.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P87967449813620275

`A026148(A155212(n)+n+2)+A000007(n+1)`
-/

namespace A026153.P87967449813620275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A155212 n + (n + 2 : ℤ)).toNat + A000007 (n + 1)

end

end A026153.P87967449813620275

namespace A026153

/-- `A026148(A155212(n)+n+2)+A000007(n+1)` -/
def P87967449813620275.Spec : Prop :=
  ∀ n, P87967449813620275.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P3410421992422583075

`A026148(A183905(n+2))+A008683(A139609(n))`
-/

namespace A026153.P3410421992422583075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A183905 (n + 2)).toNat + A008683 (A139609 n).toNat

end

end A026153.P3410421992422583075

namespace A026153

/-- `A026148(A183905(n+2))+A008683(A139609(n))` -/
def P3410421992422583075.Spec : Prop :=
  ∀ n, P3410421992422583075.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P153308120622561930

`A026148(A016885(n)+A000124(n))*A057427(n+1)`
-/

namespace A026153.P153308120622561930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016885 n + A000124 n).toNat * A057427 (n + 1)

end

end A026153.P153308120622561930

namespace A026153

/-- `A026148(A016885(n)+A000124(n))*A057427(n+1)` -/
def P153308120622561930.Spec : Prop :=
  ∀ n, P153308120622561930.a n = A026153 (n + 2)

end A026153

/-! ## A026153.P744866135003119027

`A026148(A016897(n)+A000217(n))%A000108(n+2)`
-/

namespace A026153.P744866135003119027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026148 (A016897 n + A000217 n).toNat) (A000108 (n + 2))

end

end A026153.P744866135003119027

namespace A026153

/-- `A026148(A016897(n)+A000217(n))%A000108(n+2)` -/
def P744866135003119027.Spec : Prop :=
  ∀ n, P744866135003119027.a n = A026153 (n + 2)

end A026153

/-!
# A026154: a(n) = T(n,n-3), where T is the array in A026148.

The programs for A026154, the canonical program `A026154.P6977599240601749339` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026154 has offset 3).

The definition of A026154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026154.P6977599240601749339

`2*A026126(n+4)-∑[A026126(n+4)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A026154

/-- `2*A026126(n+4)-∑[A026126(n+4)]` -/
def P6977599240601749339.Spec : Prop :=
  ∀ n, P6977599240601749339.a n = A026154 (n + 3)

theorem P6977599240601749339.correct : P6977599240601749339.Spec := by
  intro n
  simp only [A026154, Nat.add_sub_cancel]

end A026154

/-! ## A026154.P11896737367931941900

`A026148(Δ[A026057(n+2)])`
-/

namespace A026154.P11896737367931941900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (f1 (n + 1) - f1 n).toNat

end

end A026154.P11896737367931941900

namespace A026154

/-- `A026148(Δ[A026057(n+2)])` -/
def P11896737367931941900.Spec : Prop :=
  ∀ n, P11896737367931941900.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P17452435874805357403

`A026148(A055999(n+3)-6)`
-/

namespace A026154.P17452435874805357403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A055999 (n + 3) - 6).toNat

end

end A026154.P17452435874805357403

namespace A026154

/-- `A026148(A055999(n+3)-6)` -/
def P17452435874805357403.Spec : Prop :=
  ∀ n, P17452435874805357403.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P14111399830549786714

`A026148(A052905(n+3)-7)`
-/

namespace A026154.P14111399830549786714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A052905 (n + 3) - 7).toNat

end

end A026154.P14111399830549786714

namespace A026154

/-- `A026148(A052905(n+3)-7)` -/
def P14111399830549786714.Spec : Prop :=
  ∀ n, P14111399830549786714.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P16142935969897605847

`A026148(A055998(n+2)+2*(n+1))`
-/

namespace A026154.P16142935969897605847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A055998 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A026154.P16142935969897605847

namespace A026154

/-- `A026148(A055998(n+2)+2*(n+1))` -/
def P16142935969897605847.Spec : Prop :=
  ∀ n, P16142935969897605847.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P1442898692870899804

`A026148(n-2+A000124(n+4)+n)`
-/

namespace A026154.P1442898692870899804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 ((n : ℤ) - 2 + (A000124 (n + 4) + (n : ℤ))).toNat

end

end A026154.P1442898692870899804

namespace A026154

/-- `A026148(n-2+A000124(n+4)+n)` -/
def P1442898692870899804.Spec : Prop :=
  ∀ n, P1442898692870899804.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P11430043689801279753

`A026148(A155212(n)+A020742(n))`
-/

namespace A026154.P11430043689801279753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A155212 n + A020742 n).toNat

end

end A026154.P11430043689801279753

namespace A026154

/-- `A026148(A155212(n)+A020742(n))` -/
def P11430043689801279753.Spec : Prop :=
  ∀ n, P11430043689801279753.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P12669478944719746597

`A026148(A167499(n)+A016885(n))`
-/

namespace A026154.P12669478944719746597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A167499 n + A016885 n).toNat

end

end A026154.P12669478944719746597

namespace A026154

/-- `A026148(A167499(n)+A016885(n))` -/
def P12669478944719746597.Spec : Prop :=
  ∀ n, P12669478944719746597.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P16458757395946609486

`A026148(A103517(n)+A055998(n+2))`
-/

namespace A026154.P16458757395946609486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A103517 n + A055998 (n + 2)).toNat

end

end A026154.P16458757395946609486

namespace A026154

/-- `A026148(A103517(n)+A055998(n+2))` -/
def P16458757395946609486.Spec : Prop :=
  ∀ n, P16458757395946609486.a n = A026154 (n + 3)

end A026154

/-! ## A026154.P3521230828569603460

`A026148(A074764(n+2)+∑[A074764(n+2)])`
-/

namespace A026154.P3521230828569603460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A074764 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026154.P3521230828569603460

namespace A026154

/-- `A026148(A074764(n+2)+∑[A074764(n+2)])` -/
def P3521230828569603460.Spec : Prop :=
  ∀ n, P3521230828569603460.a n = A026154 (n + 3)

end A026154

/-!
# A026155: T(n,n-4), where T is the array in A026148.

The programs for A026155, there is no canonical definition to state claims against.
-/

/-! ## A026155.P9976490664531902685

`A026148(A055999(n+4)-7)`
-/

namespace A026155.P9976490664531902685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A055999 (n + 4) - 7).toNat

end

end A026155.P9976490664531902685

/-! ## A026155.P12547837379643443339

`A026148(A046691(n+5)-9)`
-/

namespace A026155.P12547837379643443339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A046691 (n + 5) - 9).toNat

end

end A026155.P12547837379643443339

/-! ## A026155.P794029774839462251

`A026148(A055998(n+5)-10)`
-/

namespace A026155.P794029774839462251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A055998 (n + 5) - 10).toNat

end

end A026155.P794029774839462251

/-! ## A026155.P10255929505117303007

`A026148(A000217(n+7)-13)`
-/

namespace A026155.P10255929505117303007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A000217 (n + 7) - 13).toNat

end

end A026155.P10255929505117303007

/-! ## A026155.P7539683424190541792

`A026148(A000124(n+7)-14)`
-/

namespace A026155.P7539683424190541792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A000124 (n + 7) - 14).toNat

end

end A026155.P7539683424190541792

/-!
# A026156: a(n) = T(2n-1,n), where T is the array in A026148.

The programs for A026156, there is no canonical definition to state claims against.
-/

/-! ## A026156.P2807352464365337424

`A026335(A028310(n))+A026330(n)`
-/

namespace A026156.P2807352464365337424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026335 (A028310 n).toNat + A026330 n

end

end A026156.P2807352464365337424

/-! ## A026156.P3433852366963216262

`A026148(A161532(n))`
-/

namespace A026156.P3433852366963216262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A161532 n).toNat

end

end A026156.P3433852366963216262

/-! ## A026156.P8911244374661247860

`A026148(A052905(2*n)+n)`
-/

namespace A026156.P8911244374661247860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A052905 (2 * n) + (n : ℤ)).toNat

end

end A026156.P8911244374661247860

/-! ## A026156.P4607476957646103148

`A026148(n+1+A055999(2*n))`
-/

namespace A026156.P4607476957646103148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 ((n + 1 : ℤ) + A055999 (2 * n)).toNat

end

end A026156.P4607476957646103148

/-! ## A026156.P117517872382005528

`A026148(A090288(n)+A004273(n))`
-/

namespace A026156.P117517872382005528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A090288 n + A004273 n).toNat

end

end A026156.P117517872382005528

/-! ## A026156.P18173238440993869060

`A026148(A164004(n)+A082111(n))`
-/

namespace A026156.P18173238440993869060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A164004 n + A082111 n).toNat

end

end A026156.P18173238440993869060

/-! ## A026156.P12949451387066800615

`record[A026148(A158416(n)+A055999(n))]`
-/

namespace A026156.P12949451387066800615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A158416 n + A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026156.P12949451387066800615

/-!
# A026157: a(n) = T(2n,n), where T is the array in A026148.

The programs for A026157, there is no canonical definition to state claims against.
-/

/-! ## A026157.P1581232716918095926

`A026162(2*n)`
-/

namespace A026157.P1581232716918095926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 (2 * n)

end

end A026157.P1581232716918095926

/-! ## A026157.P8633698427297531783

`or(char[1], A026162(A005843(n)))`
-/

namespace A026157.P8633698427297531783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026162 (A005843 n).toNat)

end

end A026157.P8633698427297531783

/-! ## A026157.P11857474114450419823

`A026162(A005843(n))+A000007(n+1)`
-/

namespace A026157.P11857474114450419823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 (A005843 n).toNat + A000007 (n + 1)

end

end A026157.P11857474114450419823

/-! ## A026157.P3573416361068278218

`A026162(A005843(n))+A000038(n+1)`
-/

namespace A026157.P3573416361068278218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 (A005843 n).toNat + A000038 (n + 1)

end

end A026157.P3573416361068278218

/-! ## A026157.P1456820469063993997

`A026162(A005843(n))+C(A002260(n+1), n+2)`
-/

namespace A026157.P1456820469063993997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026162 (A005843 n).toNat + (Nat.choose (A002260 (n + 1)).toNat (n + 2) : ℤ)

end

end A026157.P1456820469063993997

/-! ## A026157.P7572250590540351779

`A026162(A005843(n))/A130191(A000096(n))`
-/

namespace A026157.P7572250590540351779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026162 (A005843 n).toNat : ℚ) / (A130191 (A000096 n).toNat : ℚ)

end

end A026157.P7572250590540351779

/-! ## A026157.P9123349948644692548

`A026148(A122709(n)+A014107(n))`
-/

namespace A026157.P9123349948644692548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A122709 n + A014107 n).toNat

end

end A026157.P9123349948644692548

/-! ## A026157.P7242379831156419578

`A026148(A132209(n)+A111284(n+1))`
-/

namespace A026157.P7242379831156419578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A132209 n + A111284 (n + 1)).toNat

end

end A026157.P7242379831156419578

/-!
# A026158: a(n) = T(3n,n), where T is the array in A026148.

The programs for A026158, there is no canonical definition to state claims against.
-/

/-! ## A026158.P7627771505204936252

`A025185(n)-A185284(n²+1)`
-/

namespace A026158.P7627771505204936252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025185 n - A185284 (n ^ 2 + 1)

end

end A026158.P7627771505204936252

/-! ## A026158.P11995177880107384172

`A025185(n)-A178798(A000079(n))`
-/

namespace A026158.P11995177880107384172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025185 n - A178798 (A000079 n).toNat

end

end A026158.P11995177880107384172

/-! ## A026158.P10280121771375848748

`A025185(n)-A055641(A154004(n))`
-/

namespace A026158.P10280121771375848748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025185 n - A055641 (A154004 n).toNat

end

end A026158.P10280121771375848748

/-!
# A026159: T(4n,n), where T is the array in A026148.

The programs for A026159, there is no canonical definition to state claims against.
-/

/-! ## A026159.P13380659757621775364

`A025186(n)-A185284(A167936(n))`
-/

namespace A026159.P13380659757621775364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025186 n - A185284 (A167936 n).toNat

end

end A026159.P13380659757621775364

/-!
# A026160: a(n) = T(2n,n-1), where T is the array in A026148.

The programs for A026160, there is no canonical definition to state claims against.
-/

/-! ## A026160.P15111622376949524524

`A026148(A152813(n)+1)`
-/

namespace A026160.P15111622376949524524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A152813 n + 1).toNat

end

end A026160.P15111622376949524524

/-! ## A026160.P10106340590907386346

`A026148(A181510(n+1)-2)`
-/

namespace A026160.P10106340590907386346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A181510 (n + 1) - 2).toNat

end

end A026160.P10106340590907386346

/-! ## A026160.P923711592626025364

`A026148(2*(A082111(n)+1))`
-/

namespace A026160.P923711592626025364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (2 * (A082111 n + 1)).toNat

end

end A026160.P923711592626025364

/-! ## A026160.P3997397956568686548

`A026148(4*A034856(n+1))`
-/

namespace A026160.P3997397956568686548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (4 * A034856 (n + 1)).toNat

end

end A026160.P3997397956568686548

/-! ## A026160.P13415464286438794945

`A026148(A055999(2*n+1)+n)`
-/

namespace A026160.P13415464286438794945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A055999 (2 * n + 1) + (n : ℤ)).toNat

end

end A026160.P13415464286438794945

/-! ## A026160.P10365537569829004309

`A026148(A183905(2*(n+1))-n)`
-/

namespace A026160.P10365537569829004309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A183905 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A026160.P10365537569829004309

/-! ## A026160.P4839790919671318230

`A026148(A090288(n)+A016825(n))`
-/

namespace A026160.P4839790919671318230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A090288 n + A016825 n).toNat

end

end A026160.P4839790919671318230

/-! ## A026160.P10709550557564468035

`A026148(A268581(n)+A004273(n))`
-/

namespace A026160.P10709550557564468035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A268581 n + A004273 n).toNat

end

end A026160.P10709550557564468035

/-! ## A026160.P3713445128361520279

`A026148(A082111(n)+A082111(n)+2)`
-/

namespace A026160.P3713445128361520279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A082111 n + (A082111 n + 2)).toNat

end

end A026160.P3713445128361520279

/-! ## A026160.P13650581033482374816

`A026148(A099776(n+1)+A016813(n)-2)`
-/

namespace A026160.P13650581033482374816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A099776 (n + 1) + (A016813 n - 2)).toNat

end

end A026160.P13650581033482374816

/-!
# A026161: a(n) = T(2n,n+1), where T is the array in A026148.

The programs for A026161, there is no canonical definition to state claims against.
-/

/-! ## A026161.P11322451648176893436

`A026131(n+1)+A026116(n+1)`
-/

namespace A026161.P11322451648176893436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026131 (n + 1) + A026116 (n + 1)

end

end A026161.P11322451648176893436

/-! ## A026161.P4335037512699607635

`A026330(n+1)-A026331(n+1)`
-/

namespace A026161.P4335037512699607635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026330 (n + 1) - A026331 (n + 1)

end

end A026161.P4335037512699607635

/-! ## A026161.P11904491768048656753

`A026148(A181510(n+1))`
-/

namespace A026161.P11904491768048656753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A181510 (n + 1)).toNat

end

end A026161.P11904491768048656753

/-! ## A026161.P2968248436126451657

`A026148(2*(A082111(n)+2))`
-/

namespace A026161.P2968248436126451657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (2 * (A082111 n + 2)).toNat

end

end A026161.P2968248436126451657

/-! ## A026161.P9141735629172988731

`A026148(5*n+2+A000124(2*(n+1)))`
-/

namespace A026161.P9141735629172988731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 ((5 * n + 2 : ℤ) + A000124 (2 * (n + 1))).toNat

end

end A026161.P9141735629172988731

/-! ## A026161.P16762516561192865752

`A026148(A016825(A034856(n+1)))`
-/

namespace A026161.P16762516561192865752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016825 (A034856 (n + 1)).toNat).toNat

end

end A026161.P16762516561192865752

/-! ## A026161.P6610093614781627324

`A026148(A016825(∑[A065475(n+1)]))`
-/

namespace A026161.P6610093614781627324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A026161.P6610093614781627324

/-! ## A026161.P9482254885071615520

`A026148(A099776(n+1)+A016813(n))`
-/

namespace A026161.P9482254885071615520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A099776 (n + 1) + A016813 n).toNat

end

end A026161.P9482254885071615520

/-! ## A026161.P1262022663418384162

`A026148(A268581(n)+A004273(n+1))`
-/

namespace A026161.P1262022663418384162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A268581 n + A004273 (n + 1)).toNat

end

end A026161.P1262022663418384162

/-! ## A026161.P11445603469390187704

`A026148(A016825(n)+A090288(n)+2)`
-/

namespace A026161.P11445603469390187704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A016825 n + (A090288 n + 2)).toNat

end

end A026161.P11445603469390187704

/-!
# A026162: a(n) = T(n,[ n/2 ]), where T is the array in A026148.

The programs for A026162, there is no canonical definition to state claims against.
-/

/-! ## A026162.P6470208368533491800

`A025189(n)-val(A185313(n+1)+1, 10)`
-/

namespace A026162.P6470208368533491800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025189 n - (SequenceMachineLib.valuation (A185313 (n + 1) + 1).toNat 10 : ℤ)

end

end A026162.P6470208368533491800

/-! ## A026162.P16724381075334508650

`A025189(n)-A185284(A249741(n+1))`
-/

namespace A026162.P16724381075334508650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025189 n - A185284 (A249741 (n + 1)).toNat

end

end A026162.P16724381075334508650

/-!
# A026163: Sum{T(k,k-1)}, k = 1,2,...,n, where T is the array in A026148.

The programs for A026163, the canonical program `A026163.P15912496800147311050` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026163 has offset 1).

The definition of A026163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026163.P15912496800147311050

`A026152(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026163

/-- `A026152(n+1)+a(n-1)` -/
def P15912496800147311050.Spec : Prop :=
  ∀ n, P15912496800147311050.a n = A026163 (n + 1)

theorem P15912496800147311050.correct : P15912496800147311050.Spec := by
  intro n
  simp only [A026163, Nat.add_sub_cancel]

end A026163

/-! ## A026163.P14890701391148313368

`∑[A026152(A028310(n)+1)]`
-/

namespace A026163.P14890701391148313368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026152 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026163.P14890701391148313368

namespace A026163

/-- `∑[A026152(A028310(n)+1)]` -/
def P14890701391148313368.Spec : Prop :=
  ∀ n, P14890701391148313368.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P3776908050550732932

`∑[A026152(A233583(n+2))]`
-/

namespace A026163.P3776908050550732932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026152 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026163.P3776908050550732932

namespace A026163

/-- `∑[A026152(A233583(n+2))]` -/
def P3776908050550732932.Spec : Prop :=
  ∀ n, P3776908050550732932.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P5014208638738048595

`A026151(n+2)-A026134(n+1)`
-/

namespace A026163.P5014208638738048595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026151 (n + 2) - A026134 (n + 1)

end

end A026163.P5014208638738048595

namespace A026163

/-- `A026151(n+2)-A026134(n+1)` -/
def P5014208638738048595.Spec : Prop :=
  ∀ n, P5014208638738048595.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P11000609421826069812

`2*A026109(n+3)-A005323(n+3)`
-/

namespace A026163.P11000609421826069812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026109 (n + 3) - A005323 (n + 3)

end

end A026163.P11000609421826069812

namespace A026163

/-- `2*A026109(n+3)-A005323(n+3)` -/
def P11000609421826069812.Spec : Prop :=
  ∀ n, P11000609421826069812.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P13639053620726988965

`∑[A026152(n+2)]+1-A026152(n+2)`
-/

namespace A026163.P13639053620726988965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026152 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A026152 (n + 2))

end

end A026163.P13639053620726988965

namespace A026163

/-- `∑[A026152(n+2)]+1-A026152(n+2)` -/
def P13639053620726988965.Spec : Prop :=
  ∀ n, P13639053620726988965.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P11392946097057963306

`A026123(n+3)-(A026134(n+1)+A026134(n+2))`
-/

namespace A026163.P11392946097057963306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 3) - (A026134 (n + 1) + A026134 (n + 2))

end

end A026163.P11392946097057963306

namespace A026163

/-- `A026123(n+3)-(A026134(n+1)+A026134(n+2))` -/
def P11392946097057963306.Spec : Prop :=
  ∀ n, P11392946097057963306.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P14245071792813055188

`A026323(∑[n+4])`
-/

namespace A026163.P14245071792813055188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026163.P14245071792813055188

namespace A026163

/-- `A026323(∑[n+4])` -/
def P14245071792813055188.Spec : Prop :=
  ∀ n, P14245071792813055188.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P15672710630488430808

`∑[A026148(∑[A074764(n+1)])]`
-/

namespace A026163.P15672710630488430808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026163.P15672710630488430808

namespace A026163

/-- `∑[A026148(∑[A074764(n+1)])]` -/
def P15672710630488430808.Spec : Prop :=
  ∀ n, P15672710630488430808.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P2241462784538932202

`∑[A026148(A183905(n+1)+1)]`
-/

namespace A026163.P2241462784538932202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026148 (A183905 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026163.P2241462784538932202

namespace A026163

/-- `∑[A026148(A183905(n+1)+1)]` -/
def P2241462784538932202.Spec : Prop :=
  ∀ n, P2241462784538932202.a n = A026163 (n + 1)

end A026163

/-! ## A026163.P8965902488558697845

`record[A026323(n+1)/A026148(n+1)]`
-/

namespace A026163.P8965902488558697845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026323 (n + 1) : ℚ) / (A026148 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026163.P8965902488558697845

namespace A026163

/-- `record[A026323(n+1)/A026148(n+1)]` -/
def P8965902488558697845.Spec : Prop :=
  ∀ n, P8965902488558697845.a n = (A026163 (n + 1) : ℚ)

end A026163

/-!
# A026164: a(n) = Sum{T(n,k)}, k = 0,1,...,n, where T is the array in A026148.

The programs for A026164, there is no canonical definition to state claims against.
-/

/-! ## A026164.P15167313898928096519

`Δ[A153152(A270863(n))]`
-/

namespace A026164.P15167313898928096519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A270863 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026164.P15167313898928096519

/-! ## A026164.P522253696822351611

`A000035(A301699(n))+Δ[A270863(n)]`
-/

namespace A026164.P522253696822351611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A301699 n).toNat + (f1 (n + 1) - f1 n)

end

end A026164.P522253696822351611

/-! ## A026164.P14473732878519922911

`Δ[A270863(n)]*A173432(A257979(n))`
-/

namespace A026164.P14473732878519922911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A173432 (A257979 n).toNat

end

end A026164.P14473732878519922911

/-!
# A026165: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 2, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also sum of numbers in row n+1 of the array T in A026148.

The programs for A026165, the canonical program `A026165.P12291563283285133402` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026165 has offset 0).

The definition of A026165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026165.P12291563283285133402

`Δ[A005774(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026165

/-- `Δ[A005774(n)]` -/
def P12291563283285133402.Spec : Prop :=
  ∀ n, P12291563283285133402.a n = A026165 n

theorem P12291563283285133402.correct : P12291563283285133402.Spec := by
  intro n
  simp only [A026165]

end A026165

/-! ## A026165.P314410604497581538

`Δ[n/2*A005554(n+1)]`
-/

namespace A026165.P314410604497581538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A005554 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P314410604497581538

namespace A026165

/-- `Δ[n/2*A005554(n+1)]` -/
def P314410604497581538.Spec : Prop :=
  ∀ n, P314410604497581538.a n = (A026165 n : ℚ)

end A026165

/-! ## A026165.P5979823399350329839

`∑[A026135(n)]-A002026(n)`
-/

namespace A026165.P5979823399350329839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002026 n

end

end A026165.P5979823399350329839

namespace A026165

/-- `∑[A026135(n)]-A002026(n)` -/
def P5979823399350329839.Spec : Prop :=
  ∀ n, P5979823399350329839.a n = A026165 n

end A026165

/-! ## A026165.P16100798157534907816

`A005774(n+1)-A005774(n)`
-/

namespace A026165.P16100798157534907816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) - A005774 n

end

end A026165.P16100798157534907816

namespace A026165

/-- `A005774(n+1)-A005774(n)` -/
def P16100798157534907816.Spec : Prop :=
  ∀ n, P16100798157534907816.a n = A026165 n

theorem P16100798157534907816.correct : P16100798157534907816.Spec := by
  intro n
  simp only [A026165, Nat.add_sub_cancel, A026165.P16100798157534907816.a, A026165.P12291563283285133402.f1, A026165.P12291563283285133402.a, SequenceMachineLib.memo_apply]

end A026165

/-! ## A026165.P11466007441758860378

`A025566(n+2)-A002026(n)`
-/

namespace A026165.P11466007441758860378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 2) - A002026 n

end

end A026165.P11466007441758860378

namespace A026165

/-- `A025566(n+2)-A002026(n)` -/
def P11466007441758860378.Spec : Prop :=
  ∀ n, P11466007441758860378.a n = A026165 n

end A026165

/-! ## A026165.P14051562639370638636

`∑[A026135(n)]-Δ[A001006(n)]`
-/

namespace A026165.P14051562639370638636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A026165.P14051562639370638636

namespace A026165

/-- `∑[A026135(n)]-Δ[A001006(n)]` -/
def P14051562639370638636.Spec : Prop :=
  ∀ n, P14051562639370638636.a n = A026165 n

end A026165

/-! ## A026165.P11924525307462412723

`A025179(n+2)-Δ[A002426(n)]`
-/

namespace A026165.P11924525307462412723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2) - (f1 (n + 1) - f1 n)

end

end A026165.P11924525307462412723

namespace A026165

/-- `A025179(n+2)-Δ[A002426(n)]` -/
def P11924525307462412723.Spec : Prop :=
  ∀ n, P11924525307462412723.a n = A026165 n

end A026165

/-! ## A026165.P3248091471880693495

`A025565(n+2)-A001006(n+1)`
-/

namespace A026165.P3248091471880693495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025565 (n + 2) - A001006 (n + 1)

end

end A026165.P3248091471880693495

namespace A026165

/-- `A025565(n+2)-A001006(n+1)` -/
def P3248091471880693495.Spec : Prop :=
  ∀ n, P3248091471880693495.a n = A026165 n

end A026165

/-! ## A026165.P13553383942833329267

`A025179(n+2)-A025178(n+1)`
-/

namespace A026165.P13553383942833329267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2) - A025178 (n + 1)

end

end A026165.P13553383942833329267

namespace A026165

/-- `A025179(n+2)-A025178(n+1)` -/
def P13553383942833329267.Spec : Prop :=
  ∀ n, P13553383942833329267.a n = A026165 n

end A026165

/-! ## A026165.P12319612904534710506

`2*A005773(n+1)-A001006(n+1)`
-/

namespace A026165.P12319612904534710506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005773 (n + 1) - A001006 (n + 1)

end

end A026165.P12319612904534710506

namespace A026165

/-- `2*A005773(n+1)-A001006(n+1)` -/
def P12319612904534710506.Spec : Prop :=
  ∀ n, P12319612904534710506.a n = A026165 n

end A026165

/-! ## A026165.P7866230461709309816

`Δ[A025178(n+1)-Δ[A082395(n+1)]]`
-/

namespace A026165.P7866230461709309816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P7866230461709309816

namespace A026165

/-- `Δ[A025178(n+1)-Δ[A082395(n+1)]]` -/
def P7866230461709309816.Spec : Prop :=
  ∀ n, P7866230461709309816.a n = A026165 n

end A026165

/-! ## A026165.P5177217351916139962

`A002426(n+1)+A002426(n)-A001006(n+1)`
-/

namespace A026165.P5177217351916139962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (A002426 n - A001006 (n + 1))

end

end A026165.P5177217351916139962

namespace A026165

/-- `A002426(n+1)+A002426(n)-A001006(n+1)` -/
def P5177217351916139962.Spec : Prop :=
  ∀ n, P5177217351916139962.a n = A026165 n

end A026165

/-! ## A026165.P6081560558428103692

`A005717(n+1)+A189912(n)-A001006(n+1)`
-/

namespace A026165.P6081560558428103692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A189912 n - A001006 (n + 1))

end

end A026165.P6081560558428103692

namespace A026165

/-- `A005717(n+1)+A189912(n)-A001006(n+1)` -/
def P6081560558428103692.Spec : Prop :=
  ∀ n, P6081560558428103692.a n = A026165 n

end A026165

/-! ## A026165.P15340057816833107642

`A025179(n+2)+A002426(n)-A002426(n+1)`
-/

namespace A026165.P15340057816833107642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2) + (A002426 n - A002426 (n + 1))

end

end A026165.P15340057816833107642

namespace A026165

/-- `A025179(n+2)+A002426(n)-A002426(n+1)` -/
def P15340057816833107642.Spec : Prop :=
  ∀ n, P15340057816833107642.a n = A026165 n

end A026165

/-! ## A026165.P9381366533851954051

`Δ[A026135(n)-A005773(n)]`
-/

namespace A026165.P9381366533851954051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n - A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P9381366533851954051

namespace A026165

/-- `Δ[A026135(n)-A005773(n)]` -/
def P9381366533851954051.Spec : Prop :=
  ∀ n, P9381366533851954051.a n = A026165 n

end A026165

/-! ## A026165.P8663638335080935053

`A035045(n)-2*A005774(n)`
-/

namespace A026165.P8663638335080935053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035045 n - 2 * A005774 n

end

end A026165.P8663638335080935053

namespace A026165

/-- `A035045(n)-2*A005774(n)` -/
def P8663638335080935053.Spec : Prop :=
  ∀ n, P8663638335080935053.a n = A026165 n

theorem P8663638335080935053.correct : P8663638335080935053.Spec := by
  intro n
  simp only [A026165, Nat.add_sub_cancel, A026165.P8663638335080935053.a, A026165.P12291563283285133402.f1, A026165.P12291563283285133402.a, A005774, A005774.P11674759060284518255.a, A035045, A035045.P17319593329754997436.a, A001006, A001006.P11199602840237397285.a, A005773, A005773.P2300326801340372225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026165

/-! ## A026165.P3679515497743292694

`A026135(n+1)-∑[A026135(n)]`
-/

namespace A026165.P3679515497743292694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026165.P3679515497743292694

namespace A026165

/-- `A026135(n+1)-∑[A026135(n)]` -/
def P3679515497743292694.Spec : Prop :=
  ∀ n, P3679515497743292694.a n = A026165 n

end A026165

/-! ## A026165.P2229580858347902422

`Δ[A005717(n+1)-A002426(n)]`
-/

namespace A026165.P2229580858347902422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) - A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P2229580858347902422

namespace A026165

/-- `Δ[A005717(n+1)-A002426(n)]` -/
def P2229580858347902422.Spec : Prop :=
  ∀ n, P2229580858347902422.a n = A026165 n

end A026165

/-! ## A026165.P16550363941362185490

`A026135(n+1)-A025566(n+2)`
-/

namespace A026165.P16550363941362185490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - A025566 (n + 2)

end

end A026165.P16550363941362185490

namespace A026165

/-- `A026135(n+1)-A025566(n+2)` -/
def P16550363941362185490.Spec : Prop :=
  ∀ n, P16550363941362185490.a n = A026165 n

end A026165

/-! ## A026165.P11562440804332280756

`Δ[Δ[A002426(n)-A082395(n+1)]]`
-/

namespace A026165.P11562440804332280756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A082395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026165.P11562440804332280756

namespace A026165

/-- `Δ[Δ[A002426(n)-A082395(n+1)]]` -/
def P11562440804332280756.Spec : Prop :=
  ∀ n, P11562440804332280756.a n = A026165 n

end A026165

/-!
# A026166: For n >= 2, let h=floor((n-1)/2), L=n-h, R=n+h; then a(L)=n if a(L) not yet defined, otherwise a(R)=n; thus |a(n)-n| = floor((1/2)*(a(n)-1)).

The programs for A026166, there is no canonical definition to state claims against.
-/

/-! ## A026166.P17157087871168037898

`A057427(n)+A026136(A028310(n))`
-/

namespace A026166.P17157087871168037898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026136 (A028310 n).toNat

end

end A026166.P17157087871168037898

/-! ## A026166.P854683530415512048

`A026136(A028310(n))-A057428(n)`
-/

namespace A026166.P854683530415512048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A028310 n).toNat - A057428 n

end

end A026166.P854683530415512048

/-! ## A026166.P8380358934058587271

`A026136(A065033(2*n))+n²%(n+1)`
-/

namespace A026166.P8380358934058587271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A065033 (2 * n)).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A026166.P8380358934058587271

/-! ## A026166.P7726643387439657577

`A057427(n)+A026136(A065033(2*n))`
-/

namespace A026166.P7726643387439657577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026136 (A065033 (2 * n)).toNat

end

end A026166.P7726643387439657577

/-! ## A026166.P3699239237293761083

`A026136(A065033(2*n))-A057428(n)`
-/

namespace A026166.P3699239237293761083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A065033 (2 * n)).toNat - A057428 n

end

end A026166.P3699239237293761083

/-! ## A026166.P3495483864440386275

`A026136(A065033(2*n))+A019431(2*n)`
-/

namespace A026166.P3495483864440386275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A065033 (2 * n)).toNat + A019431 (2 * n)

end

end A026166.P3495483864440386275

/-! ## A026166.P16002626052423103749

`A026136(A065033(2*n))%A017281(n)+1`
-/

namespace A026166.P16002626052423103749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026136 (A065033 (2 * n)).toNat) (A017281 n) + 1

end

end A026166.P16002626052423103749

/-!
# A026167: a(n) is the position of n in A026166.

The programs for A026167, there is no canonical definition to state claims against.
-/

/-! ## A026167.P10477628806672064994

`A057427(n)+A026137(A028310(n))`
-/

namespace A026167.P10477628806672064994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026137 (A028310 n).toNat

end

end A026167.P10477628806672064994

/-! ## A026167.P2193835541459040766

`A026137(A028310(n))-A057428(n)`
-/

namespace A026167.P2193835541459040766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (A028310 n).toNat - A057428 n

end

end A026167.P2193835541459040766

/-! ## A026167.P10807262405079704440

`A057427(n)+A026137(A065033(2*n))`
-/

namespace A026167.P10807262405079704440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026137 (A065033 (2 * n)).toNat

end

end A026167.P10807262405079704440

/-! ## A026167.P17893143263823619558

`A026137(A065033(2*n))+(A080378(n+1)-1)²`
-/

namespace A026167.P17893143263823619558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (A065033 (2 * n)).toNat + (A080378 (n + 1) - 1) ^ 2

end

end A026167.P17893143263823619558

/-! ## A026167.P17406932434552137328

`2*(n+1)-A008619(A026166(A008619(3*n)))`
-/

namespace A026167.P17406932434552137328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A008619 (A026166 (A008619 (3 * n)).toNat).toNat

end

end A026167.P17406932434552137328

/-!
# A026168: Numbers k such that A026166(j) < A026166(k) for all j < k.

The programs for A026168, the canonical program `A026168.P3036345061496687448` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026168 has offset 1).

The definition of A026168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026168.P13159238682338104724

`comp[A026232(n+1)]+1`
-/

namespace A026168.P13159238682338104724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026168.P13159238682338104724

namespace A026168

/-- `comp[A026232(n+1)]+1` -/
def P13159238682338104724.Spec : Prop :=
  ∀ n, (P13159238682338104724.a n : ℤ) = A026168 (n + 1)

end A026168

/-! ## A026168.P3036345061496687448

`comp[A026227(n+2)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026168

/-- `comp[A026227(n+2)]+1` -/
def P3036345061496687448.Spec : Prop :=
  ∀ n, (P3036345061496687448.a n : ℤ) = A026168 (n + 1)

theorem P3036345061496687448.correct : P3036345061496687448.Spec := by
  intro n
  simp only [A026168, Nat.add_sub_cancel]

end A026168

/-! ## A026168.P13638160739569210141

`A026141(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026168.P13638160739569210141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026141 n + a (n - 1)

end

end A026168.P13638160739569210141

namespace A026168

/-- `A026141(n)+a(n-1)` -/
def P13638160739569210141.Spec : Prop :=
  ∀ n, P13638160739569210141.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P14963825757955859871

`∪[A026228(n+1), A008486(n)]`
-/

namespace A026168.P14963825757955859871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026168.P14963825757955859871

namespace A026168

/-- `∪[A026228(n+1), A008486(n)]` -/
def P14963825757955859871.Spec : Prop :=
  ∀ n, (P14963825757955859871.a n : ℤ) = A026168 (n + 1)

end A026168

/-! ## A026168.P18342242042590750130

`A057427(n)+A026138(A028310(n))`
-/

namespace A026168.P18342242042590750130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026138 (A028310 n).toNat

end

end A026168.P18342242042590750130

namespace A026168

/-- `A057427(n)+A026138(A028310(n))` -/
def P18342242042590750130.Spec : Prop :=
  ∀ n, P18342242042590750130.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P11396310984654660336

`comp[comp[A026138(n+1)-1]+1]+1`
-/

namespace A026168.P11396310984654660336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A026168.P11396310984654660336

namespace A026168

/-- `comp[comp[A026138(n+1)-1]+1]+1` -/
def P11396310984654660336.Spec : Prop :=
  ∀ n, (P11396310984654660336.a n : ℤ) = A026168 (n + 1)

end A026168

/-! ## A026168.P9811786974712854730

`lt[n, A026166(n+1)]+1`
-/

namespace A026168.P9811786974712854730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026168.P9811786974712854730

namespace A026168

/-- `lt[n, A026166(n+1)]+1` -/
def P9811786974712854730.Spec : Prop :=
  ∀ n, (P9811786974712854730.a n : ℤ) = A026168 (n + 1)

end A026168

/-! ## A026168.P2511891470344199201

`record[A026167(n+1)%(n+2)]`
-/

namespace A026168.P2511891470344199201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026167 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026168.P2511891470344199201

namespace A026168

/-- `record[A026167(n+1)%(n+2)]` -/
def P2511891470344199201.Spec : Prop :=
  ∀ n, P2511891470344199201.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P1010140879334237932

`A008619(A026169(n+1))`
-/

namespace A026168.P1010140879334237932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026169 (n + 1)).toNat

end

end A026168.P1010140879334237932

namespace A026168

/-- `A008619(A026169(n+1))` -/
def P1010140879334237932.Spec : Prop :=
  ∀ n, P1010140879334237932.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P8567605475702144777

`A008619(record[A026166(n+1)])`
-/

namespace A026168.P8567605475702144777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P8567605475702144777

namespace A026168

/-- `A008619(record[A026166(n+1)])` -/
def P8567605475702144777.Spec : Prop :=
  ∀ n, P8567605475702144777.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P3364691857808048328

`A026167(record[A026166(n+1)])`
-/

namespace A026168.P3364691857808048328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P3364691857808048328

namespace A026168

/-- `A026167(record[A026166(n+1)])` -/
def P3364691857808048328.Spec : Prop :=
  ∀ n, P3364691857808048328.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P16185013090631300271

`A008619(record[A026167(A053438(n))])`
-/

namespace A026168.P16185013090631300271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P16185013090631300271

namespace A026168

/-- `A008619(record[A026167(A053438(n))])` -/
def P16185013090631300271.Spec : Prop :=
  ∀ n, P16185013090631300271.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P9868673586949983594

`A029579(record[A026166(n+1)])`
-/

namespace A026168.P9868673586949983594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P9868673586949983594

namespace A026168

/-- `A029579(record[A026166(n+1)])` -/
def P9868673586949983594.Spec : Prop :=
  ∀ n, P9868673586949983594.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P12980255082925347687

`A026167(record[Δ[A026167(n+1)]])`
-/

namespace A026168.P12980255082925347687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P12980255082925347687

namespace A026168

/-- `A026167(record[Δ[A026167(n+1)]])` -/
def P12980255082925347687.Spec : Prop :=
  ∀ n, P12980255082925347687.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P17870304035114346848

`A046667(A026169(n+1)+2)+1`
-/

namespace A026168.P17870304035114346848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A026169 (n + 1) + 2).toNat + 1

end

end A026168.P17870304035114346848

namespace A026168

/-- `A046667(A026169(n+1)+2)+1` -/
def P17870304035114346848.Spec : Prop :=
  ∀ n, P17870304035114346848.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P13992996272891340668

`A001651(A026169(n+1)+1)-A026169(n+1)`
-/

namespace A026168.P13992996272891340668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A026169 (n + 1) + 1).toNat - A026169 (n + 1)

end

end A026168.P13992996272891340668

namespace A026168

/-- `A001651(A026169(n+1)+1)-A026169(n+1)` -/
def P13992996272891340668.Spec : Prop :=
  ∀ n, P13992996272891340668.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P1551759833160038816

`A008621(record[2*A026166(n+1)])`
-/

namespace A026168.P1551759833160038816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026168.P1551759833160038816

namespace A026168

/-- `A008621(record[2*A026166(n+1)])` -/
def P1551759833160038816.Spec : Prop :=
  ∀ n, P1551759833160038816.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P13946613667287705445

`record[n+2-A026137(A065033(2*n))]`
-/

namespace A026168.P13946613667287705445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A026137 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026168.P13946613667287705445

namespace A026168

/-- `record[n+2-A026137(A065033(2*n))]` -/
def P13946613667287705445.Spec : Prop :=
  ∀ n, P13946613667287705445.a n = A026168 (n + 1)

end A026168

/-! ## A026168.P405392515728453879

`∑[A026141(A233583(n+1))]`
-/

namespace A026168.P405392515728453879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026168.P405392515728453879

namespace A026168

/-- `∑[A026141(A233583(n+1))]` -/
def P405392515728453879.Spec : Prop :=
  ∀ n, P405392515728453879.a n = A026168 (n + 1)

end A026168

/-!
# A026169: a(n) = s(k), where k is the n-th number k such that s(j)<s(k) for all j<k, where s = A026166.

The programs for A026169, the canonical program `A026169.P10383142877277565433` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026169 has offset 1).

The definition of A026169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026169.P10383142877277565433

`(A057427(n)+1)*A026138(A028310(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026169

/-- `(A057427(n)+1)*A026138(A028310(n))` -/
def P10383142877277565433.Spec : Prop :=
  ∀ n, P10383142877277565433.a n = A026169 (n + 1)

theorem P10383142877277565433.correct : P10383142877277565433.Spec := by
  intro n
  simp only [A026169, Nat.add_sub_cancel]

end A026169

/-! ## A026169.P1244172056429014567

`A004277(comp[record[A026137(n+2)]])`
-/

namespace A026169.P1244172056429014567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A026169.P1244172056429014567

namespace A026169

/-- `A004277(comp[record[A026137(n+2)]])` -/
def P1244172056429014567.Spec : Prop :=
  ∀ n, P1244172056429014567.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P15092494303253849762

`record[A026166(n+1)]`
-/

namespace A026169.P15092494303253849762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026169.P15092494303253849762

namespace A026169

/-- `record[A026166(n+1)]` -/
def P15092494303253849762.Spec : Prop :=
  ∀ n, P15092494303253849762.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P4214141210354125329

`A004275(A026168(n+1))`
-/

namespace A026169.P4214141210354125329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A026168 (n + 1)).toNat

end

end A026169.P4214141210354125329

namespace A026169

/-- `A004275(A026168(n+1))` -/
def P4214141210354125329.Spec : Prop :=
  ∀ n, P4214141210354125329.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P1929960467411951751

`A026166(lt[n, A026166(n+1)]+1)`
-/

namespace A026169.P1929960467411951751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A026169.P1929960467411951751

namespace A026169

/-- `A026166(lt[n, A026166(n+1)]+1)` -/
def P1929960467411951751.Spec : Prop :=
  ∀ n, P1929960467411951751.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P12250667467063012535

`A033627(A026168(n+1)+1)-A026168(n+1)`
-/

namespace A026169.P12250667467063012535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A026168 (n + 1) + 1).toNat - A026168 (n + 1)

end

end A026169.P12250667467063012535

namespace A026169

/-- `A033627(A026168(n+1)+1)-A026168(n+1)` -/
def P12250667467063012535.Spec : Prop :=
  ∀ n, P12250667467063012535.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P1630783008789829539

`record[A026167(A053438(n))]`
-/

namespace A026169.P1630783008789829539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026169.P1630783008789829539

namespace A026169

/-- `record[A026167(A053438(n))]` -/
def P1630783008789829539.Spec : Prop :=
  ∀ n, P1630783008789829539.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P17512279877706461705

`record[Δ[A026167(n+1)]]`
-/

namespace A026169.P17512279877706461705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026169.P17512279877706461705

namespace A026169

/-- `record[Δ[A026167(n+1)]]` -/
def P17512279877706461705.Spec : Prop :=
  ∀ n, P17512279877706461705.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P16409415385415715449

`eq[n, A026166(A004526(n)+1)]`
-/

namespace A026169.P16409415385415715449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (A004526 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026169.P16409415385415715449

namespace A026169

/-- `eq[n, A026166(A004526(n)+1)]` -/
def P16409415385415715449.Spec : Prop :=
  ∀ n, (P16409415385415715449.a n : ℤ) = A026169 (n + 1)

end A026169

/-! ## A026169.P14933024184190154792

`record[A026167(n+2)-A026167(n+1)]`
-/

namespace A026169.P14933024184190154792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 2) - A026167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026169.P14933024184190154792

namespace A026169

/-- `record[A026167(n+2)-A026167(n+1)]` -/
def P14933024184190154792.Spec : Prop :=
  ∀ n, P14933024184190154792.a n = A026169 (n + 1)

end A026169

/-! ## A026169.P5562571000174685680

`A026136(A026168(A026168(n+1)+n))`
-/

namespace A026169.P5562571000174685680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A026168 (A026168 (n + 1) + (n : ℤ)).toNat).toNat

end

end A026169.P5562571000174685680

namespace A026169

/-- `A026136(A026168(A026168(n+1)+n))` -/
def P5562571000174685680.Spec : Prop :=
  ∀ n, P5562571000174685680.a n = A026169 (n + 1)

end A026169

/-!
# A026177: For n >= 2, let h=floor(n/2), L=n-h, R=n+h; then a(R)=n if n odd or a(L) already defined, otherwise a(L)=n.

The programs for A026177, there is no canonical definition to state claims against.
-/

/-! ## A026177.P8885651511340930007

`A026183(n+2)-1`
-/

namespace A026177.P8885651511340930007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 2) - 1

end

end A026177.P8885651511340930007

/-! ## A026177.P13436197779225174002

`A008576(n+1)-A026215(n+1)`
-/

namespace A026177.P13436197779225174002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) - A026215 (n + 1)

end

end A026177.P13436197779225174002

/-! ## A026177.P15903125519847173738

`A047480(n+2)-(A026136(n+2)+1)`
-/

namespace A026177.P15903125519847173738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - (A026136 (n + 2) + 1)

end

end A026177.P15903125519847173738

/-! ## A026177.P10360022903393418958

`round(A026215(2*(n+1))/2)`
-/

namespace A026177.P10360022903393418958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026215 (2 * (n + 1)) : ℚ) / 2)

end

end A026177.P10360022903393418958

/-! ## A026177.P7426711820585260840

`abs(A026215(2*(n+1))-A005843(n+1))`
-/

namespace A026177.P7426711820585260840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026215 (2 * (n + 1)) - A005843 (n + 1)|

end

end A026177.P7426711820585260840

/-! ## A026177.P16647109284164981272

`abs(A005843(n+1)-A026215(A005843(n+1)))`
-/

namespace A026177.P16647109284164981272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 (n + 1) - A026215 (A005843 (n + 1)).toNat|

end

end A026177.P16647109284164981272

/-! ## A026177.P239396128901652034

`ceil((A026195(2*(n+1))-1)/2)`
-/

namespace A026177.P239396128901652034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026195 (2 * (n + 1)) - 1 : ℚ) / 2⌉

end

end A026177.P239396128901652034

/-! ## A026177.P6203173401199777018

`floor(A026136(2*n+3)/2)`
-/

namespace A026177.P6203173401199777018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026136 (2 * n + 3) : ℚ) / 2⌋

end

end A026177.P6203173401199777018

/-! ## A026177.P4182961989701419733

`A023443(A026183(n+2))`
-/

namespace A026177.P4182961989701419733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026183 (n + 2)).toNat

end

end A026177.P4182961989701419733

/-! ## A026177.P8432660872511772481

`A004396(A026214(2*(n+1)))`
-/

namespace A026177.P8432660872511772481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026214 (2 * (n + 1))).toNat

end

end A026177.P8432660872511772481

/-! ## A026177.P11479699690098692229

`A253887(lt[A026183(n+2), A026183(n+1)])`
-/

namespace A026177.P11479699690098692229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026177.P11479699690098692229

/-! ## A026177.P3416329568097574544

`A004526(A026136(2*n+3))`
-/

namespace A026177.P3416329568097574544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026136 (2 * n + 3)).toNat

end

end A026177.P3416329568097574544

/-! ## A026177.P13572826950293343172

`A004526(A026215(2*(n+1))+1)`
-/

namespace A026177.P13572826950293343172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026215 (2 * (n + 1)) + 1).toNat

end

end A026177.P13572826950293343172

/-! ## A026177.P15793805929062575140

`A008619(A026215(2*(n+1))-1)`
-/

namespace A026177.P15793805929062575140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026215 (2 * (n + 1)) - 1).toNat

end

end A026177.P15793805929062575140

/-!
# A026178: a(n) is the position of n in A026177.

The programs for A026178, there is no canonical definition to state claims against.
-/

/-! ## A026178.P2228883648140933583

`A106833(n+1)-A026214(n+1)`
-/

namespace A026178.P2228883648140933583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) - A026214 (n + 1)

end

end A026178.P2228883648140933583

/-! ## A026178.P7364246139651609973

`A026182(n+2)-1`
-/

namespace A026178.P7364246139651609973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (n + 2) - 1

end

end A026178.P7364246139651609973

/-! ## A026178.P9285245963470269484

`A026215(∑[A000034(n)])/2`
-/

namespace A026178.P9285245963470269484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A026178.P9285245963470269484

/-! ## A026178.P17257298581608251047

`A026215(A032766(n+1))/2`
-/

namespace A026178.P17257298581608251047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026215 (A032766 (n + 1)).toNat : ℚ) / 2

end

end A026178.P17257298581608251047

/-! ## A026178.P4511177250487155334

`A026215(∑[gcd(2, A016885(n))])/2`
-/

namespace A026178.P4511177250487155334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A016885 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026215 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A026178.P4511177250487155334

/-! ## A026178.P1125820598325806187

`A023443(A026182(n+2))`
-/

namespace A026178.P1125820598325806187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026182 (n + 2)).toNat

end

end A026178.P1125820598325806187

/-! ## A026178.P5168007737880114509

`A004526(A026214(and(1, n)+2*n+1))`
-/

namespace A026178.P5168007737880114509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026214 (Nat.land 1 n + 2 * n + 1)).toNat

end

end A026178.P5168007737880114509

/-! ## A026178.P1769192315725243335

`A004526(A026214(and(1, n)+n+n+1))`
-/

namespace A026178.P1769192315725243335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026214 (Nat.land 1 n + n + n + 1)).toNat

end

end A026178.P1769192315725243335

/-! ## A026178.P12789783927519416376

`A004526(A026136(∑[2/a(n-1)]+1))` with `a(0)=1`
-/

namespace A026178.P12789783927519416376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026136 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat).toNat

end

end A026178.P12789783927519416376

/-! ## A026178.P15237422832144860660

`A004526(A026215(∑[A000034(n)]))`
-/

namespace A026178.P15237422832144860660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A026178.P15237422832144860660

/-! ## A026178.P1570605158155716937

`A004526(A026136(A004526(A189724(n+2))))`
-/

namespace A026178.P1570605158155716937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026136 (A004526 (A189724 (n + 2)).toNat).toNat).toNat

end

end A026178.P1570605158155716937

/-!
# A026179: Numbers k such that A026177(j) < A026177(k) for all j < k.

The programs for A026179, the canonical program `A026179.P13758716021262076600` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026179 has offset 1).

The definition of A026179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026179.P13758716021262076600

`round(record[(n+1)*((n+1)/3^val(n+1, 3))%3]/2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026179

/-- `round(record[(n+1)*((n+1)/3^val(n+1, 3))%3]/2)` -/
def P13758716021262076600.Spec : Prop :=
  ∀ n, P13758716021262076600.a n = A026179 (n + 1)

theorem P13758716021262076600.correct : P13758716021262076600.Spec := by
  intro n
  simp only [A026179, Nat.add_sub_cancel]

end A026179

/-! ## A026179.P11618412522299973156

`ceil(A026180(n+1)/2)`
-/

namespace A026179.P11618412522299973156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026180 (n + 1) : ℚ) / 2⌉

end

end A026179.P11618412522299973156

namespace A026179

/-- `ceil(A026180(n+1)/2)` -/
def P11618412522299973156.Spec : Prop :=
  ∀ n, P11618412522299973156.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P975436517531046188

`A026181(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026179.P975436517531046188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026181 (n + 1) + a (n - 1)

end

end A026179.P975436517531046188

namespace A026179

/-- `A026181(n+1)+a(n-1)` -/
def P975436517531046188.Spec : Prop :=
  ∀ n, P975436517531046188.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P5725183411654474151

`A057428(n)+A026227(n+1)`
-/

namespace A026179.P5725183411654474151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A026227 (n + 1)

end

end A026179.P5725183411654474151

namespace A026179

/-- `A057428(n)+A026227(n+1)` -/
def P5725183411654474151.Spec : Prop :=
  ∀ n, P5725183411654474151.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P3797769160214296553

`A026227(n+1)-A057427(n)`
-/

namespace A026179.P3797769160214296553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1) - A057427 n

end

end A026179.P3797769160214296553

namespace A026179

/-- `A026227(n+1)-A057427(n)` -/
def P3797769160214296553.Spec : Prop :=
  ∀ n, P3797769160214296553.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P2922101088683675662

`A026227(n+1)+A000007(n)-1`
-/

namespace A026179.P2922101088683675662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1) + (A000007 n - 1)

end

end A026179.P2922101088683675662

namespace A026179

/-- `A026227(n+1)+A000007(n)-1` -/
def P2922101088683675662.Spec : Prop :=
  ∀ n, P2922101088683675662.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P5646291885222071969

`record[A026214(A026238(n+3))]`
-/

namespace A026179.P5646291885222071969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (A026238 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026179.P5646291885222071969

namespace A026179

/-- `record[A026214(A026238(n+3))]` -/
def P5646291885222071969.Spec : Prop :=
  ∀ n, P5646291885222071969.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P18048361032991293549

`A026227(n+1)-A189673(A026138(n+1))`
-/

namespace A026179.P18048361032991293549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1) - A189673 (A026138 (n + 1)).toNat

end

end A026179.P18048361032991293549

namespace A026179

/-- `A026227(n+1)-A189673(A026138(n+1))` -/
def P18048361032991293549.Spec : Prop :=
  ∀ n, P18048361032991293549.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P9302085805938098370

`lt[A327252(n), 2*char[1]]`
-/

namespace A026179.P9302085805938098370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026179.P9302085805938098370

namespace A026179

/-- `lt[A327252(n), 2*char[1]]` -/
def P9302085805938098370.Spec : Prop :=
  ∀ n, (P9302085805938098370.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P16347819855294830709

`record[abs(A343785(n+1)-n)]`
-/

namespace A026179.P16347819855294830709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343785 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026179.P16347819855294830709

namespace A026179

/-- `record[abs(A343785(n+1)-n)]` -/
def P16347819855294830709.Spec : Prop :=
  ∀ n, P16347819855294830709.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P12366910397668705656

`record[n+2-A343785(n+3)]`
-/

namespace A026179.P12366910397668705656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A343785 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026179.P12366910397668705656

namespace A026179

/-- `record[n+2-A343785(n+3)]` -/
def P12366910397668705656.Spec : Prop :=
  ∀ n, P12366910397668705656.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P1653826870463102431

`record[gcd(n+1, A026177(n+1))]`
-/

namespace A026179.P1653826870463102431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A026177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026179.P1653826870463102431

namespace A026179

/-- `record[gcd(n+1, A026177(n+1))]` -/
def P1653826870463102431.Spec : Prop :=
  ∀ n, (P1653826870463102431.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P17775678483788395871

`lt[n², n*A026183(n+1)]`
-/

namespace A026179.P17775678483788395871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026179.P17775678483788395871

namespace A026179

/-- `lt[n², n*A026183(n+1)]` -/
def P17775678483788395871.Spec : Prop :=
  ∀ n, (P17775678483788395871.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P6754166875721034585

`lt[(Δ[A062756(n)+n]+1)*(n-1), n+1]+1`
-/

namespace A026179.P6754166875721034585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 1) * ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A026179.P6754166875721034585

namespace A026179

/-- `lt[(Δ[A062756(n)+n]+1)*(n-1), n+1]+1` -/
def P6754166875721034585.Spec : Prop :=
  ∀ n, (P6754166875721034585.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P4799331810665228589

`A055456(A026227(n+1))`
-/

namespace A026179.P4799331810665228589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A026227 (n + 1)).toNat

end

end A026179.P4799331810665228589

namespace A026179

/-- `A055456(A026227(n+1))` -/
def P4799331810665228589.Spec : Prop :=
  ∀ n, P4799331810665228589.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P5882019004261889695

`lt[A113261(n), A113277(n)]`
-/

namespace A026179.P5882019004261889695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026179.P5882019004261889695

namespace A026179

/-- `lt[A113261(n), A113277(n)]` -/
def P5882019004261889695.Spec : Prop :=
  ∀ n, (P5882019004261889695.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P16610187132519107517

`A028310(lt[A189673(n+1), 1])`
-/

namespace A026179.P16610187132519107517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026179.P16610187132519107517

namespace A026179

/-- `A028310(lt[A189673(n+1), 1])` -/
def P16610187132519107517.Spec : Prop :=
  ∀ n, P16610187132519107517.a n = A026179 (n + 1)

end A026179

/-! ## A026179.P6092239061980570206

`eq[A026183(n+1), A130773(n)]`
-/

namespace A026179.P6092239061980570206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026179.P6092239061980570206

namespace A026179

/-- `eq[A026183(n+1), A130773(n)]` -/
def P6092239061980570206.Spec : Prop :=
  ∀ n, (P6092239061980570206.a n : ℤ) = A026179 (n + 1)

end A026179

/-! ## A026179.P1038989355504139537

`eq[A005131(n), A189640(n+1)]`
-/

namespace A026179.P1038989355504139537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026179.P1038989355504139537

namespace A026179

/-- `eq[A005131(n), A189640(n+1)]` -/
def P1038989355504139537.Spec : Prop :=
  ∀ n, (P1038989355504139537.a n : ℤ) = A026179 (n + 1)

end A026179

/-!
# A026180: a(n) = s(k), where k is the n-th number such that s(j)<s(k) for all j<k, where s = A026177.

The programs for A026180, the canonical program `A026180.P967544915775524490` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026180 has offset 1).

The definition of A026180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026180.P2887728133862879218

`A026177(A026179(n+1))`
-/

namespace A026180.P2887728133862879218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (A026179 (n + 1)).toNat

end

end A026180.P2887728133862879218

namespace A026180

/-- `A026177(A026179(n+1))` -/
def P2887728133862879218.Spec : Prop :=
  ∀ n, P2887728133862879218.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P14222168894559605796

`record[(n+1)*((n+1)/3^val(n+1, 3))%3]`
-/

namespace A026180.P14222168894559605796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026180.P14222168894559605796

namespace A026180

/-- `record[(n+1)*((n+1)/3^val(n+1, 3))%3]` -/
def P14222168894559605796.Spec : Prop :=
  ∀ n, P14222168894559605796.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P967544915775524490

`(A057427(n)+1)*A026179(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026180

/-- `(A057427(n)+1)*A026179(n+1)` -/
def P967544915775524490.Spec : Prop :=
  ∀ n, P967544915775524490.a n = A026180 (n + 1)

theorem P967544915775524490.correct : P967544915775524490.Spec := by
  intro n
  simp only [A026180, Nat.add_sub_cancel]

end A026180

/-! ## A026180.P18216346262145285016

`(1-A057428(n))*A026179(n+1)`
-/

namespace A026180.P18216346262145285016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A026179 (n + 1)

end

end A026180.P18216346262145285016

namespace A026180

/-- `(1-A057428(n))*A026179(n+1)` -/
def P18216346262145285016.Spec : Prop :=
  ∀ n, P18216346262145285016.a n = A026180 (n + 1)

theorem P18216346262145285016.correct : P18216346262145285016.Spec := by
  intro n
  simp only [A026180, Nat.add_sub_cancel, A026180.P18216346262145285016.a, A026180.P967544915775524490.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026180

/-! ## A026180.P17908999026538993527

`A026179(n+1)+A026227(n+1)-1`
-/

namespace A026180.P17908999026538993527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1) + (A026227 (n + 1) - 1)

end

end A026180.P17908999026538993527

namespace A026180

/-- `A026179(n+1)+A026227(n+1)-1` -/
def P17908999026538993527.Spec : Prop :=
  ∀ n, P17908999026538993527.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P2398449067479860786

`A000032(C(2, n+2))*A026179(n+1)`
-/

namespace A026180.P2398449067479860786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A026179 (n + 1)

end

end A026180.P2398449067479860786

namespace A026180

/-- `A000032(C(2, n+2))*A026179(n+1)` -/
def P2398449067479860786.Spec : Prop :=
  ∀ n, P2398449067479860786.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P15079843882239828230

`(A065475(n+1)-n)*A026179(n+1)`
-/

namespace A026180.P15079843882239828230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - (n : ℤ)) * A026179 (n + 1)

end

end A026180.P15079843882239828230

namespace A026180

/-- `(A065475(n+1)-n)*A026179(n+1)` -/
def P15079843882239828230.Spec : Prop :=
  ∀ n, P15079843882239828230.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P1845602026135291769

`A020639(a(n-1))*A026179(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A026180.P1845602026135291769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A020639 (a (n - 1)).toNat * A026179 (n + 1)

end

end A026180.P1845602026135291769

namespace A026180

/-- `A020639(a(n-1))*A026179(n+1)` -/
def P1845602026135291769.Spec : Prop :=
  ∀ n, P1845602026135291769.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P13442236761526510012

`A020639(A004277(n))*A026179(n+1)`
-/

namespace A026180.P13442236761526510012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A026179 (n + 1)

end

end A026180.P13442236761526510012

namespace A026180

/-- `A020639(A004277(n))*A026179(n+1)` -/
def P13442236761526510012.Spec : Prop :=
  ∀ n, P13442236761526510012.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P713503335968665746

`A000005(A020639(n+1))*A026179(n+1)`
-/

namespace A026180.P713503335968665746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (n + 1)).toNat * A026179 (n + 1)

end

end A026180.P713503335968665746

namespace A026180

/-- `A000005(A020639(n+1))*A026179(n+1)` -/
def P713503335968665746.Spec : Prop :=
  ∀ n, P713503335968665746.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P17880879041383435019

`A020639(A001223(n+1))*A026179(n+1)`
-/

namespace A026180.P17880879041383435019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A026179 (n + 1)

end

end A026180.P17880879041383435019

namespace A026180

/-- `A020639(A001223(n+1))*A026179(n+1)` -/
def P17880879041383435019.Spec : Prop :=
  ∀ n, P17880879041383435019.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P12927646869963689134

`A020639(A000010(n+2))*A026179(n+1)`
-/

namespace A026180.P12927646869963689134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A026179 (n + 1)

end

end A026180.P12927646869963689134

namespace A026180

/-- `A020639(A000010(n+2))*A026179(n+1)` -/
def P12927646869963689134.Spec : Prop :=
  ∀ n, P12927646869963689134.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P8685912798842495454

`record[A026177(n+1)]`
-/

namespace A026180.P8685912798842495454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026180.P8685912798842495454

namespace A026180

/-- `record[A026177(n+1)]` -/
def P8685912798842495454.Spec : Prop :=
  ∀ n, P8685912798842495454.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P16193736184163758842

`record[A026183(n+2)-1]`
-/

namespace A026180.P16193736184163758842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026180.P16193736184163758842

namespace A026180

/-- `record[A026183(n+2)-1]` -/
def P16193736184163758842.Spec : Prop :=
  ∀ n, P16193736184163758842.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P14509298906672218573

`record[(n+1)*A060236(n+1)]`
-/

namespace A026180.P14509298906672218573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026180.P14509298906672218573

namespace A026180

/-- `record[(n+1)*A060236(n+1)]` -/
def P14509298906672218573.Spec : Prop :=
  ∀ n, P14509298906672218573.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P9198422978155390592

`A004275(A026227(n+1))`
-/

namespace A026180.P9198422978155390592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A026227 (n + 1)).toNat

end

end A026180.P9198422978155390592

namespace A026180

/-- `A004275(A026227(n+1))` -/
def P9198422978155390592.Spec : Prop :=
  ∀ n, P9198422978155390592.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P6086224918457905809

`A004275(record[A026137(n+1)])`
-/

namespace A026180.P6086224918457905809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026180.P6086224918457905809

namespace A026180

/-- `A004275(record[A026137(n+1)])` -/
def P6086224918457905809.Spec : Prop :=
  ∀ n, P6086224918457905809.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P9244403511450162487

`A004277(lt[A189673(n+1), 1])`
-/

namespace A026180.P9244403511450162487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026180.P9244403511450162487

namespace A026180

/-- `A004277(lt[A189673(n+1), 1])` -/
def P9244403511450162487.Spec : Prop :=
  ∀ n, P9244403511450162487.a n = A026180 (n + 1)

end A026180

/-! ## A026180.P12488383944399565862

`∩[A026225(n+1), A004275(n)]`
-/

namespace A026180.P12488383944399565862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026180.P12488383944399565862

namespace A026180

/-- `∩[A026225(n+1), A004275(n)]` -/
def P12488383944399565862.Spec : Prop :=
  ∀ n, (P12488383944399565862.a n : ℤ) = A026180 (n + 1)

end A026180

/-!
# A026181: a(n) = (1/2)*(s(n) - s(n-1)), where s = A026180.

The programs for A026181, the canonical program `A026181.P4658866943006320217` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026181 has offset 3).

The definition of A026181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026181.P4658866943006320217

`a(A049321(n+1))` with `a(0)=3, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026181

/-- `a(A049321(n+1))` -/
def P4658866943006320217.Spec : Prop :=
  ∀ n, (P4658866943006320217.a n : ℤ) = A026181 (n + 3)

theorem P4658866943006320217.correct : P4658866943006320217.Spec := by
  intro n
  simp only [A026181, Nat.add_sub_cancel]

end A026181

/-! ## A026181.P17327216326851687665

`A001222(8-Δ[A049320(n+1)])`
-/

namespace A026181.P17327216326851687665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 - (f1 (n + 1) - f1 n)).toNat

end

end A026181.P17327216326851687665

namespace A026181

/-- `A001222(8-Δ[A049320(n+1)])` -/
def P17327216326851687665.Spec : Prop :=
  ∀ n, P17327216326851687665.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P17595396091682376110

`Δ[A026232(n+1)]`
-/

namespace A026181.P17595396091682376110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P17595396091682376110

namespace A026181

/-- `Δ[A026232(n+1)]` -/
def P17595396091682376110.Spec : Prop :=
  ∀ n, P17595396091682376110.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P10811436169281621620

`Δ[A026231(n+1)/3]`
-/

namespace A026181.P10811436169281621620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026231 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P10811436169281621620

namespace A026181

/-- `Δ[A026231(n+1)/3]` -/
def P10811436169281621620.Spec : Prop :=
  ∀ n, P10811436169281621620.a n = (A026181 (n + 3) : ℚ)

end A026181

/-! ## A026181.P1163847518445786391

`A002265(Δ[A026231(n+1)])+1`
-/

namespace A026181.P1163847518445786391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat + 1

end

end A026181.P1163847518445786391

namespace A026181

/-- `A002265(Δ[A026231(n+1)])+1` -/
def P1163847518445786391.Spec : Prop :=
  ∀ n, P1163847518445786391.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P4285546646209782584

`A026232(n+2)-A026232(n+1)`
-/

namespace A026181.P4285546646209782584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 2) - A026232 (n + 1)

end

end A026181.P4285546646209782584

namespace A026181

/-- `A026232(n+2)-A026232(n+1)` -/
def P4285546646209782584.Spec : Prop :=
  ∀ n, P4285546646209782584.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P10622983106366262043

`Δ[A026179(n+2)]`
-/

namespace A026181.P10622983106366262043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P10622983106366262043

namespace A026181

/-- `Δ[A026179(n+2)]` -/
def P10622983106366262043.Spec : Prop :=
  ∀ n, P10622983106366262043.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P9540419179233443542

`Δ[A026227(n+2)]`
-/

namespace A026181.P9540419179233443542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P9540419179233443542

namespace A026181

/-- `Δ[A026227(n+2)]` -/
def P9540419179233443542.Spec : Prop :=
  ∀ n, P9540419179233443542.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P462974159689912523

`Δ[A026180(n+2)/2]`
-/

namespace A026181.P462974159689912523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026180 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P462974159689912523

namespace A026181

/-- `Δ[A026180(n+2)/2]` -/
def P462974159689912523.Spec : Prop :=
  ∀ n, P462974159689912523.a n = (A026181 (n + 3) : ℚ)

end A026181

/-! ## A026181.P15684882146161630682

`Δ[A026226(n+2)/3]`
-/

namespace A026181.P15684882146161630682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026226 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P15684882146161630682

namespace A026181

/-- `Δ[A026226(n+2)/3]` -/
def P15684882146161630682.Spec : Prop :=
  ∀ n, P15684882146161630682.a n = (A026181 (n + 3) : ℚ)

end A026181

/-! ## A026181.P8667452992000645105

`A026179(n+3)-A026179(n+2)`
-/

namespace A026181.P8667452992000645105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 3) - A026179 (n + 2)

end

end A026181.P8667452992000645105

namespace A026181

/-- `A026179(n+3)-A026179(n+2)` -/
def P8667452992000645105.Spec : Prop :=
  ∀ n, P8667452992000645105.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P16369711395922862907

`A026227(n+3)-A026227(n+2)`
-/

namespace A026181.P16369711395922862907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 3) - A026227 (n + 2)

end

end A026181.P16369711395922862907

namespace A026181

/-- `A026227(n+3)-A026227(n+2)` -/
def P16369711395922862907.Spec : Prop :=
  ∀ n, P16369711395922862907.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P2519917874306638816

`Δ[lt[A327252(n), 0]]`
-/

namespace A026181.P2519917874306638816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A026181.P2519917874306638816

namespace A026181

/-- `Δ[lt[A327252(n), 0]]` -/
def P2519917874306638816.Spec : Prop :=
  ∀ n, P2519917874306638816.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P18202614667946743307

`Δ[record[A026214(n+1)]]`
-/

namespace A026181.P18202614667946743307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P18202614667946743307

namespace A026181

/-- `Δ[record[A026214(n+1)]]` -/
def P18202614667946743307.Spec : Prop :=
  ∀ n, P18202614667946743307.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P4589445643417546769

`Δ[record[A026137(n+2)]]`
-/

namespace A026181.P4589445643417546769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P4589445643417546769

namespace A026181

/-- `Δ[record[A026137(n+2)]]` -/
def P4589445643417546769.Spec : Prop :=
  ∀ n, P4589445643417546769.a n = A026181 (n + 3)

end A026181

/-! ## A026181.P7228398228683638078

`Δ[record[A026167(n+3)]]`
-/

namespace A026181.P7228398228683638078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026181.P7228398228683638078

namespace A026181

/-- `Δ[record[A026167(n+3)]]` -/
def P7228398228683638078.Spec : Prop :=
  ∀ n, P7228398228683638078.a n = A026181 (n + 3)

end A026181

/-!
# A026182: a(n) = (1/2)*(s(n) + 1), where s(n) is the n-th odd number in A026136.

The programs for A026182, there is no canonical definition to state claims against.
-/

/-! ## A026182.P9621197565423728897

`A026178(A028310(n))+1-floor(acot(n))`
-/

namespace A026182.P9621197565423728897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (A028310 n).toNat + (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A026182.P9621197565423728897

/-! ## A026182.P2015577404753833639

`A057427(n)+A026178(A028310(n))`
-/

namespace A026182.P2015577404753833639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026178 (A028310 n).toNat

end

end A026182.P2015577404753833639

/-! ## A026182.P16576922686563750375

`A026178(A028310(n))%A270710(n)+1`
-/

namespace A026182.P16576922686563750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026178 (A028310 n).toNat) (A270710 n) + 1

end

end A026182.P16576922686563750375

/-! ## A026182.P1363343708315235534

`A026166(∑[gcd(2, n)])/2`
-/

namespace A026182.P1363343708315235534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026166 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A026182.P1363343708315235534

/-! ## A026182.P11511407128570017079

`A026166(comp[3*n]+1)/2`
-/

namespace A026182.P11511407128570017079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026166 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A026182.P11511407128570017079

/-! ## A026182.P3188856241333158020

`A026167(A053438(n+1))/2`
-/

namespace A026182.P3188856241333158020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026167 (A053438 (n + 1)).toNat : ℚ) / 2

end

end A026182.P3188856241333158020

/-! ## A026182.P10909289467285090042

`A008619(A026136(floor(n/2)+1+n))`
-/

namespace A026182.P10909289467285090042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026136 (⌊(n : ℚ) / 2⌋ + 1 + (n : ℤ)).toNat).toNat

end

end A026182.P10909289467285090042

/-! ## A026182.P11427213374752071426

`A004525(A026166(Δ[A001859(n)]))`
-/

namespace A026182.P11427213374752071426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026166 (f1 (n + 1) - f1 n).toNat).toNat

end

end A026182.P11427213374752071426

/-! ## A026182.P11127089269052201730

`A026202(A026200(A026183(n+1)))`
-/

namespace A026182.P11127089269052201730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (A026200 (A026183 (n + 1)).toNat).toNat

end

end A026182.P11127089269052201730

/-! ## A026182.P14899517668399191507

`round(A026136(A008619(3*n))/2)`
-/

namespace A026182.P14899517668399191507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026136 (A008619 (3 * n)).toNat : ℚ) / 2)

end

end A026182.P14899517668399191507

/-! ## A026182.P9126116472408989573

`A004526(A026166(∑[gcd(2, n)]))`
-/

namespace A026182.P9126116472408989573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026166 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026182.P9126116472408989573

/-!
# A026183: Position of n in A026182.

The programs for A026183, there is no canonical definition to state claims against.
-/

/-! ## A026183.P8025523179739969715

`A026177(n*a(floor(acot(n))))+1` with `a(0)=1`
-/

namespace A026183.P8025523179739969715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026177 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat + 1

end

end A026183.P8025523179739969715

/-! ## A026183.P14371932672088803625

`A047480(n+1)-A026136(n+1)`
-/

namespace A026183.P14371932672088803625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1) - A026136 (n + 1)

end

end A026183.P14371932672088803625

/-! ## A026183.P590282553133837264

`A008586(n+1)-(A042968(n+2)+A026136(n+1))`
-/

namespace A026183.P590282553133837264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - (A042968 (n + 2) + A026136 (n + 1))

end

end A026183.P590282553133837264

/-! ## A026183.P12751428171717493031

`ceil(A026166(2*(n+1))/2)`
-/

namespace A026183.P12751428171717493031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026166 (2 * (n + 1)) : ℚ) / 2⌉

end

end A026183.P12751428171717493031

/-! ## A026183.P5913989433365762212

`A042968(2*(n+1))-A026136(n+1)`
-/

namespace A026183.P5913989433365762212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (2 * (n + 1)) - A026136 (n + 1)

end

end A026183.P5913989433365762212

/-! ## A026183.P8942672205970545481

`A004396(A026167(2*(n+1)))`
-/

namespace A026183.P8942672205970545481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A026167 (2 * (n + 1))).toNat

end

end A026183.P8942672205970545481

/-! ## A026183.P9422278452874946233

`A026201(A026203(A026182(n+1)))`
-/

namespace A026183.P9422278452874946233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026201 (A026203 (A026182 (n + 1)).toNat).toNat

end

end A026183.P9422278452874946233

/-! ## A026183.P2435301843114793731

`A008619(A026136(2*n+1))`
-/

namespace A026183.P2435301843114793731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026136 (2 * n + 1)).toNat

end

end A026183.P2435301843114793731

/-! ## A026183.P9924352448255898875

`A004524(A026136(Δ[n²])+2)`
-/

namespace A026183.P9924352448255898875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A026136 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2).toNat

end

end A026183.P9924352448255898875

/-! ## A026183.P15561926725863820517

`A004525(A026136(Δ[n²])+2)`
-/

namespace A026183.P15561926725863820517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026136 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2).toNat

end

end A026183.P15561926725863820517

/-! ## A026183.P5120017374614796299

`A004525(A026166(2*(n+1))+1)`
-/

namespace A026183.P5120017374614796299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026166 (2 * (n + 1)) + 1).toNat

end

end A026183.P5120017374614796299

/-! ## A026183.P9928254383518191037

`A004526(A026166(2*(n+1))+1)`
-/

namespace A026183.P9928254383518191037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026166 (2 * (n + 1)) + 1).toNat

end

end A026183.P9928254383518191037

/-! ## A026183.P14853641796520833373

`A065033(A026136(2*n+1)+1)`
-/

namespace A026183.P14853641796520833373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026136 (2 * n + 1) + 1).toNat

end

end A026183.P14853641796520833373

/-! ## A026183.P18216718748651802046

`A008619(A026166(2*(n+1))-1)`
-/

namespace A026183.P18216718748651802046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026166 (2 * (n + 1)) - 1).toNat

end

end A026183.P18216718748651802046

/-! ## A026183.P12156292524447001843

`A008621(2*A026136(2*n+1))`
-/

namespace A026183.P12156292524447001843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A026136 (2 * n + 1)).toNat

end

end A026183.P12156292524447001843

/-! ## A026183.P7063820870115849832

`A002265(2*A026136(2*n+1)+4)`
-/

namespace A026183.P7063820870115849832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A026136 (2 * n + 1) + 4).toNat

end

end A026183.P7063820870115849832

/-!
# A026184: a(n) = (1/3)*s(n), where s(n) is the n-th multiple of 3 in A026136.

The programs for A026184, the canonical program `A026184.P2325993580999172866` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026184 has offset 1).

The definition of A026184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026184.P2325993580999172866

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2, a(4)=7, a(5)=9, a(6)=11, a(7)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026184

/-- `2*a(n-4)-a(n-8)` -/
def P2325993580999172866.Spec : Prop :=
  ∀ n, P2325993580999172866.a n = A026184 (n + 1)

theorem P2325993580999172866.correct : P2325993580999172866.Spec := by
  intro n
  simp only [A026184, Nat.add_sub_cancel]

end A026184

/-! ## A026184.P219007944319121019

`Δ[C(A083219(n), 2)]+n+1`
-/

namespace A026184.P219007944319121019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083219 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A026184.P219007944319121019

namespace A026184

/-- `Δ[C(A083219(n), 2)]+n+1` -/
def P219007944319121019.Spec : Prop :=
  ∀ n, P219007944319121019.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P11229442798334082256

`A026741(n+1)+2*A131728(n)`
-/

namespace A026184.P11229442798334082256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + 2 * A131728 n

end

end A026184.P11229442798334082256

namespace A026184

/-- `A026741(n+1)+2*A131728(n)` -/
def P11229442798334082256.Spec : Prop :=
  ∀ n, P11229442798334082256.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P11324261107019975100

`(n+1)*A000034(A004525(n+1))-A004525(n+1)`
-/

namespace A026184.P11324261107019975100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000034 (A004525 (n + 1)).toNat - A004525 (n + 1)

end

end A026184.P11324261107019975100

namespace A026184

/-- `(n+1)*A000034(A004525(n+1))-A004525(n+1)` -/
def P11324261107019975100.Spec : Prop :=
  ∀ n, P11324261107019975100.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P1368259770492110376

`abs(Δ[C(n, 2)+∑[n]%(2*n+1)])`
-/

namespace A026184.P1368259770492110376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A026184.P1368259770492110376

namespace A026184

/-- `abs(Δ[C(n, 2)+∑[n]%(2*n+1)])` -/
def P1368259770492110376.Spec : Prop :=
  ∀ n, P1368259770492110376.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P1238079928256565011

`A026200(n+2)-1`
-/

namespace A026184.P1238079928256565011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026200 (n + 2) - 1

end

end A026184.P1238079928256565011

namespace A026184

/-- `A026200(n+2)-1` -/
def P1238079928256565011.Spec : Prop :=
  ∀ n, P1238079928256565011.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P11422733240909129781

`A026741(n+1)+2*A077814(n+1)`
-/

namespace A026184.P11422733240909129781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + 2 * A077814 (n + 1)

end

end A026184.P11422733240909129781

namespace A026184

/-- `A026741(n+1)+2*A077814(n+1)` -/
def P11422733240909129781.Spec : Prop :=
  ∀ n, P11422733240909129781.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P6150998358065523895

`Δ[A002378(A002265(n))+A057353(n+1)²]`
-/

namespace A026184.P6150998358065523895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002265 n).toNat + A057353 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026184.P6150998358065523895

namespace A026184

/-- `Δ[A002378(A002265(n))+A057353(n+1)²]` -/
def P6150998358065523895.Spec : Prop :=
  ∀ n, P6150998358065523895.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P10681780249481433527

`A026741(n+1)+A131728(n)+A077814(n+1)`
-/

namespace A026184.P10681780249481433527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + (A131728 n + A077814 (n + 1))

end

end A026184.P10681780249481433527

namespace A026184

/-- `A026741(n+1)+A131728(n)+A077814(n+1)` -/
def P10681780249481433527.Spec : Prop :=
  ∀ n, P10681780249481433527.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P1772790900682266487

`A047273(n+2)/(A047227(n+2)-A047227(n+1))`
-/

namespace A026184.P1772790900682266487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047273 (n + 2) : ℚ) / (A047227 (n + 2) - A047227 (n + 1) : ℚ)

end

end A026184.P1772790900682266487

namespace A026184

/-- `A047273(n+2)/(A047227(n+2)-A047227(n+1))` -/
def P1772790900682266487.Spec : Prop :=
  ∀ n, P1772790900682266487.a n = (A026184 (n + 1) : ℚ)

end A026184

/-! ## A026184.P11379068018665742835

`A047273(n+2)/(A047247(n+2)-A047247(n+1))`
-/

namespace A026184.P11379068018665742835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047273 (n + 2) : ℚ) / (A047247 (n + 2) - A047247 (n + 1) : ℚ)

end

end A026184.P11379068018665742835

namespace A026184

/-- `A047273(n+2)/(A047247(n+2)-A047247(n+1))` -/
def P11379068018665742835.Spec : Prop :=
  ∀ n, P11379068018665742835.a n = (A026184 (n + 1) : ℚ)

end A026184

/-! ## A026184.P9743198319474788930

`∑[A135366(a(n-1)+1)]-A003815(A003815(n+1))` with `a(0)=2`
-/

namespace A026184.P9743198319474788930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A135366 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003815 (A003815 (n + 1)).toNat

end

end A026184.P9743198319474788930

namespace A026184

/-- `∑[A135366(a(n-1)+1)]-A003815(A003815(n+1))` -/
def P9743198319474788930.Spec : Prop :=
  ∀ n, P9743198319474788930.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P6392916886775720265

`A212831(A004525(A216972(n+3))+n)`
-/

namespace A026184.P6392916886775720265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A004525 (A216972 (n + 3)).toNat + (n : ℤ)).toNat

end

end A026184.P6392916886775720265

namespace A026184

/-- `A212831(A004525(A216972(n+3))+n)` -/
def P6392916886775720265.Spec : Prop :=
  ∀ n, P6392916886775720265.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P10628128936781485931

`A023443(A026200(n+2))`
-/

namespace A026184.P10628128936781485931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026200 (n + 2)).toNat

end

end A026184.P10628128936781485931

namespace A026184

/-- `A023443(A026200(n+2))` -/
def P10628128936781485931.Spec : Prop :=
  ∀ n, P10628128936781485931.a n = A026184 (n + 1)

end A026184

/-! ## A026184.P350242995347330209

`A004525(n+1)+A310546(n+1)-A008579(n+1)`
-/

namespace A026184.P350242995347330209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) + (A310546 (n + 1) - A008579 (n + 1))

end

end A026184.P350242995347330209

namespace A026184

/-- `A004525(n+1)+A310546(n+1)-A008579(n+1)` -/
def P350242995347330209.Spec : Prop :=
  ∀ n, P350242995347330209.a n = A026184 (n + 1)

end A026184

/-!
# A026185: If n even, then 2n. If n odd, then nearest integer to 2n/3.

The programs for A026185, the canonical program `A026185.P5155174008740314136` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026185 has offset 0).

The definition of A026185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026185.P5155174008740314136

`round(n/(n%2+1/2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026185

/-- `round(n/(n%2+1/2))` -/
def P5155174008740314136.Spec : Prop :=
  ∀ n, P5155174008740314136.a n = A026185 n

theorem P5155174008740314136.correct : P5155174008740314136.Spec := by
  intro n
  simp only [A026185]

end A026185

/-! ## A026185.P10314863315809069883

`round(2*n/3^and(1, n))`
-/

namespace A026185.P10314863315809069883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (3 ^ Nat.land 1 n : ℚ))

end

end A026185.P10314863315809069883

namespace A026185

/-- `round(2*n/3^and(1, n))` -/
def P10314863315809069883.Spec : Prop :=
  ∀ n, P10314863315809069883.a n = A026185 n

end A026185

/-! ## A026185.P596039654539900587

`round(2*n/C(3, and(1, n)))`
-/

namespace A026185.P596039654539900587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (Nat.choose 3 (Nat.land 1 n) : ℚ))

end

end A026185.P596039654539900587

namespace A026185

/-- `round(2*n/C(3, and(1, n)))` -/
def P596039654539900587.Spec : Prop :=
  ∀ n, P596039654539900587.a n = A026185 n

end A026185

/-! ## A026185.P237548657892420129

`round(2*n/(2-(-1)^n))`
-/

namespace A026185.P237548657892420129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / (2 - (-1) ^ n : ℚ)))

end

end A026185.P237548657892420129

namespace A026185

/-- `round(2*n/(2-(-1)^n))` -/
def P237548657892420129.Spec : Prop :=
  ∀ n, P237548657892420129.a n = A026185 n

end A026185

/-! ## A026185.P8874744879552719342

`a(n-2)+gcd(4, a(n-4))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A026185.P8874744879552719342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 2] fun n a =>
  a (n - 2) + Nat.gcd 4 (a (n - 4))

end

end A026185.P8874744879552719342

namespace A026185

/-- `a(n-2)+gcd(4, a(n-4))` -/
def P8874744879552719342.Spec : Prop :=
  ∀ n, (P8874744879552719342.a n : ℤ) = A026185 n

end A026185

/-! ## A026185.P15991753491240972847

`A026201(n+1)-1`
-/

namespace A026185.P15991753491240972847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026201 (n + 1) - 1

end

end A026185.P15991753491240972847

namespace A026185

/-- `A026201(n+1)-1` -/
def P15991753491240972847.Spec : Prop :=
  ∀ n, P15991753491240972847.a n = A026185 n

end A026185

/-! ## A026185.P939894402964866148

`A382154(n)%A298786(n)`
-/

namespace A026185.P939894402964866148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382154 n) (A298786 n)

end

end A026185.P939894402964866148

namespace A026185

/-- `A382154(n)%A298786(n)` -/
def P939894402964866148.Spec : Prop :=
  ∀ n, P939894402964866148.a n = A026185 n

end A026185

/-! ## A026185.P17300711930386677723

`A047622(n+1)-A338206(n)`
-/

namespace A026185.P17300711930386677723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1) - A338206 n

end

end A026185.P17300711930386677723

namespace A026185

/-- `A047622(n+1)-A338206(n)` -/
def P17300711930386677723.Spec : Prop :=
  ∀ n, P17300711930386677723.a n = A026185 n

end A026185

/-! ## A026185.P2864301474061352582

`A047408(n+1)-(A338206(n)+1)`
-/

namespace A026185.P2864301474061352582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) - (A338206 n + 1)

end

end A026185.P2864301474061352582

namespace A026185

/-- `A047408(n+1)-(A338206(n)+1)` -/
def P2864301474061352582.Spec : Prop :=
  ∀ n, P2864301474061352582.a n = A026185 n

end A026185

/-! ## A026185.P13165174757175922104

`2*n-A042965(A124625(n+2))`
-/

namespace A026185.P13165174757175922104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A042965 (A124625 (n + 2)).toNat

end

end A026185.P13165174757175922104

namespace A026185

/-- `2*n-A042965(A124625(n+2))` -/
def P13165174757175922104.Spec : Prop :=
  ∀ n, P13165174757175922104.a n = A026185 n

end A026185

/-! ## A026185.P3401621402522159860

`A004396(2*A237420(n))+A004396(n)`
-/

namespace A026185.P3401621402522159860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A237420 n).toNat + A004396 n

end

end A026185.P3401621402522159860

namespace A026185

/-- `A004396(2*A237420(n))+A004396(n)` -/
def P3401621402522159860.Spec : Prop :=
  ∀ n, P3401621402522159860.a n = A026185 n

end A026185

/-! ## A026185.P535200024478781434

`A004396(n)+A004396(A038608(n)+n)`
-/

namespace A026185.P535200024478781434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A038608 n + (n : ℤ)).toNat

end

end A026185.P535200024478781434

namespace A026185

/-- `A004396(n)+A004396(A038608(n)+n)` -/
def P535200024478781434.Spec : Prop :=
  ∀ n, P535200024478781434.a n = A026185 n

end A026185

/-! ## A026185.P10179849321437993841

`A023443(A026201(n+1))`
-/

namespace A026185.P10179849321437993841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026201 (n + 1)).toNat

end

end A026185.P10179849321437993841

namespace A026185

/-- `A023443(A026201(n+1))` -/
def P10179849321437993841.Spec : Prop :=
  ∀ n, P10179849321437993841.a n = A026185 n

end A026185

/-! ## A026185.P12727631536953780926

`A080412(A338206(n+1))-1`
-/

namespace A026185.P12727631536953780926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A338206 (n + 1)).toNat - 1

end

end A026185.P12727631536953780926

namespace A026185

/-- `A080412(A338206(n+1))-1` -/
def P12727631536953780926.Spec : Prop :=
  ∀ n, P12727631536953780926.a n = A026185 n

end A026185

/-! ## A026185.P17778013030992745883

`A004396(n*(A033999(n)+2))`
-/

namespace A026185.P17778013030992745883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * (A033999 n + 2)).toNat

end

end A026185.P17778013030992745883

namespace A026185

/-- `A004396(n*(A033999(n)+2))` -/
def P17778013030992745883.Spec : Prop :=
  ∀ n, P17778013030992745883.a n = A026185 n

end A026185

/-! ## A026185.P798368636075290184

`A004396(A038608(n)+2*n)`
-/

namespace A026185.P798368636075290184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A038608 n + (2 * n : ℤ)).toNat

end

end A026185.P798368636075290184

namespace A026185

/-- `A004396(A038608(n)+2*n)` -/
def P798368636075290184.Spec : Prop :=
  ∀ n, P798368636075290184.a n = A026185 n

end A026185

/-! ## A026185.P14962699316457716368

`A004396(2*A237420(n)+n)`
-/

namespace A026185.P14962699316457716368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A237420 n + (n : ℤ)).toNat

end

end A026185.P14962699316457716368

namespace A026185

/-- `A004396(2*A237420(n)+n)` -/
def P14962699316457716368.Spec : Prop :=
  ∀ n, P14962699316457716368.a n = A026185 n

end A026185

/-! ## A026185.P12305155276627238978

`A004396(2*A022998(n)-n)`
-/

namespace A026185.P12305155276627238978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A022998 n - (n : ℤ)).toNat

end

end A026185.P12305155276627238978

namespace A026185

/-- `A004396(2*A022998(n)-n)` -/
def P12305155276627238978.Spec : Prop :=
  ∀ n, P12305155276627238978.a n = A026185 n

end A026185

/-! ## A026185.P9293938066737337907

`A004396(A247555(2*n)-n)`
-/

namespace A026185.P9293938066737337907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A247555 (2 * n) - (n : ℤ)).toNat

end

end A026185.P9293938066737337907

namespace A026185

/-- `A004396(A247555(2*n)-n)` -/
def P9293938066737337907.Spec : Prop :=
  ∀ n, P9293938066737337907.a n = A026185 n

end A026185

/-! ## A026185.P13127051492960141620

`A004396(A038608(n)+n+n)`
-/

namespace A026185.P13127051492960141620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A038608 n + (n : ℤ) + (n : ℤ)).toNat

end

end A026185.P13127051492960141620

namespace A026185

/-- `A004396(A038608(n)+n+n)` -/
def P13127051492960141620.Spec : Prop :=
  ∀ n, P13127051492960141620.a n = A026185 n

end A026185

/-!
# A026190: a(n) = (1/2)*s(n), where s(n) is the n-th even number in A026142.

The programs for A026190, there is no canonical definition to state claims against.
-/

/-! ## A026190.P15071622413184971758

`lcm(2, n+1)+n+1-A026143(n+1)`
-/

namespace A026190.P15071622413184971758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) + ((n + 1 : ℤ) - A026143 (n + 1))

end

end A026190.P15071622413184971758

/-! ## A026190.P5151976773380382026

`A106833(n+1)-A026143(n+1)`
-/

namespace A026190.P5151976773380382026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) - A026143 (n + 1)

end

end A026190.P5151976773380382026

/-! ## A026190.P2863203089085990919

`A026178(n+1)+A026214(n+1)-A026143(n+1)`
-/

namespace A026190.P2863203089085990919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (n + 1) + (A026214 (n + 1) - A026143 (n + 1))

end

end A026190.P2863203089085990919

/-! ## A026190.P10278240587403483194

`A001281(A026142(∑[A000034(n)]))`
-/

namespace A026190.P10278240587403483194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A026190.P10278240587403483194

/-! ## A026190.P10663998151573046681

`A026214(A026142(A026178(n+1)))`
-/

namespace A026190.P10663998151573046681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (A026142 (A026178 (n + 1)).toNat).toNat

end

end A026190.P10663998151573046681

/-! ## A026190.P8934976904459621749

`A001281(A026142(record[A080782(n+1)]))`
-/

namespace A026190.P8934976904459621749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026142 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A026190.P8934976904459621749

/-! ## A026190.P10615195886988879992

`A000720(p?[A073846(A026142(n+1))])`
-/

namespace A026190.P10615195886988879992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A026142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026190.P10615195886988879992

/-!
# A026191: Position of n in A026190.

The programs for A026191, there is no canonical definition to state claims against.
-/

/-! ## A026191.P672523845927790841

`A026177(n+1)+A026215(n+1)-A026142(n+1)`
-/

namespace A026191.P672523845927790841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (n + 1) + (A026215 (n + 1) - A026142 (n + 1))

end

end A026191.P672523845927790841

/-! ## A026191.P16980177143216943344

`Δ[A008577(n)]-A026142(n+1)`
-/

namespace A026191.P16980177143216943344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026142 (n + 1)

end

end A026191.P16980177143216943344

/-! ## A026191.P4662526304160585047

`A008576(n+1)-A026142(n+1)`
-/

namespace A026191.P4662526304160585047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) - A026142 (n + 1)

end

end A026191.P4662526304160585047

/-! ## A026191.P14465305072873296839

`A008620(A017137(n))-A026142(n+1)`
-/

namespace A026191.P14465305072873296839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A017137 n).toNat - A026142 (n + 1)

end

end A026191.P14465305072873296839

/-! ## A026191.P12375458012409792285

`A002264(A004768(n))-A026142(n+1)`
-/

namespace A026191.P12375458012409792285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004768 n).toNat - A026142 (n + 1)

end

end A026191.P12375458012409792285

/-! ## A026191.P10712111597520545892

`Δ[A047480(A000124(n))]-A026142(n+1)`
-/

namespace A026191.P10712111597520545892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026142 (n + 1)

end

end A026191.P10712111597520545892

/-!
# A026194: a(n) = (1/4)*s(n), where s(n) is the n-th multiple of 4 in A026142.

The programs for A026194, there is no canonical definition to state claims against.
-/

/-! ## A026194.P9155766754341844599

`A294732(n+2)/A046556(A187829(n+1))`
-/

namespace A026194.P9155766754341844599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294732 (n + 2) : ℚ) / (A046556 (A187829 (n + 1)).toNat : ℚ)

end

end A026194.P9155766754341844599

/-! ## A026194.P5236567981628219989

`A325837(2^n)+A004183(n)`
-/

namespace A026194.P5236567981628219989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (2 ^ n) + A004183 n

end

end A026194.P5236567981628219989

/-! ## A026194.P850894105181399413

`gcd(A004526(3*n+1), A232112(3*n+1))`
-/

namespace A026194.P850894105181399413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (3 * n + 1)) (A232112 (3 * n + 1))

end

end A026194.P850894105181399413

/-! ## A026194.P16015266289935660780

`round(3/(2*acot(n)))-A185033(A296526(n+2))`
-/

namespace A026194.P16015266289935660780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (2 * SequenceMachineLib.acot (n : ℝ))) - A185033 (A296526 (n + 2)).toNat

end

end A026194.P16015266289935660780

/-! ## A026194.P16819088556249322875

`gcd(record[A010751(3*(n+1))], A115077(3*n+1))`
-/

namespace A026194.P16819088556249322875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A115077 (3 * n + 1))

end

end A026194.P16819088556249322875

/-!
# A026195: a(n) = position of n in A026194.

The programs for A026195, there is no canonical definition to state claims against.
-/

/-! ## A026195.P8610152610852275113

`A026136(n+2)%(2*A026142(n+1))`
-/

namespace A026195.P8610152610852275113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026136 (n + 2)) (2 * A026142 (n + 1))

end

end A026195.P8610152610852275113

/-! ## A026195.P16040070747931923613

`ceil(A026136(n+2)/A014963(3*(n+1)))`
-/

namespace A026195.P16040070747931923613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026136 (n + 2) : ℚ) / (A014963 (3 * (n + 1)) : ℚ)⌉

end

end A026195.P16040070747931923613

/-! ## A026195.P15188292512820237473

`A008619(A026191(2*(n+1)))`
-/

namespace A026195.P15188292512820237473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026191 (2 * (n + 1))).toNat

end

end A026195.P15188292512820237473

/-! ## A026195.P7105206446880292374

`A004525(A026191(2*(n+1))+1)`
-/

namespace A026195.P7105206446880292374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026191 (2 * (n + 1)) + 1).toNat

end

end A026195.P7105206446880292374

/-! ## A026195.P472591866983688274

`A008621(2*A026191(2*(n+1)))`
-/

namespace A026195.P472591866983688274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A026191 (2 * (n + 1))).toNat

end

end A026195.P472591866983688274

