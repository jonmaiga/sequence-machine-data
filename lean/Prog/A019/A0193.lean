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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019300: First n elements of Thue-Morse sequence A010060 read as a binary number.

The programs for A019300, the canonical program `A019300.P12876685790779178674` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019300 has offset 0).

The definition of A019300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019300.P629089035855461779

`char[comp[xor(n, 2*n)]]+2*a(n-1)` with `a(0)=0`
-/

namespace A019300.P629089035855461779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A019300.P629089035855461779

namespace A019300

/-- `char[comp[xor(n, 2*n)]]+2*a(n-1)` -/
def P629089035855461779.Spec : Prop :=
  ∀ n, (P629089035855461779.a n : ℤ) = A019300 n

end A019300

/-! ## A019300.P16159691727916158741

`2*a(n-1)+1-char[xor(n, 2*n)]` with `a(0)=0`
-/

namespace A019300.P16159691727916158741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019300.P16159691727916158741

namespace A019300

/-- `2*a(n-1)+1-char[xor(n, 2*n)]` -/
def P16159691727916158741.Spec : Prop :=
  ∀ n, P16159691727916158741.a n = A019300 n

end A019300

/-! ## A019300.P12876685790779178674

`A010060(n)+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019300

/-- `A010060(n)+2*a(n-1)` -/
def P12876685790779178674.Spec : Prop :=
  ∀ n, P12876685790779178674.a n = A019300 n

theorem P12876685790779178674.correct : P12876685790779178674.Spec := by
  intro n
  simp only [A019300]

end A019300

/-! ## A019300.P14132227933213206686

`1-A010059(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A019300.P14132227933213206686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - A010059 n + 2 * a (n - 1)

end

end A019300.P14132227933213206686

namespace A019300

/-- `1-A010059(n)+2*a(n-1)` -/
def P14132227933213206686.Spec : Prop :=
  ∀ n, P14132227933213206686.a n = A019300 n

theorem P14132227933213206686.correct : P14132227933213206686.Spec := by
  intro n
  simp only [A019300, Nat.add_sub_cancel, A019300.P14132227933213206686.a, A019300.P12876685790779178674.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019300

/-! ## A019300.P11053298209183509073

`A001285(n)-(1-2*a(n-1))` with `a(0)=0`
-/

namespace A019300.P11053298209183509073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001285 n - (1 - 2 * a (n - 1))

end

end A019300.P11053298209183509073

namespace A019300

/-- `A001285(n)-(1-2*a(n-1))` -/
def P11053298209183509073.Spec : Prop :=
  ∀ n, P11053298209183509073.a n = A019300 n

theorem P11053298209183509073.correct : P11053298209183509073.Spec := by
  intro n
  simp only [A019300, Nat.add_sub_cancel, A019300.P11053298209183509073.a, A019300.P12876685790779178674.a, A001285, A001285.P11616636227895161122.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019300

/-! ## A019300.P3144820208310886869

`char[A000069(n+1)]+a(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A019300.P3144820208310886869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (a (n - 1) + a (n - 1))

end

end A019300.P3144820208310886869

namespace A019300

/-- `char[A000069(n+1)]+a(n-1)+a(n-1)` -/
def P3144820208310886869.Spec : Prop :=
  ∀ n, (P3144820208310886869.a n : ℤ) = A019300 n

end A019300

/-! ## A019300.P2846786512956463854

`A088172(n+1)-A010060(n+1)`
-/

namespace A019300.P2846786512956463854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088172 (n + 1) - A010060 (n + 1)

end

end A019300.P2846786512956463854

namespace A019300

/-- `A088172(n+1)-A010060(n+1)` -/
def P2846786512956463854.Spec : Prop :=
  ∀ n, P2846786512956463854.a n = A019300 n

end A019300

/-! ## A019300.P13916443649357489920

`A088172(n+1)-∑[A029883(n+1)]`
-/

namespace A019300.P13916443649357489920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088172 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019300.P13916443649357489920

namespace A019300

/-- `A088172(n+1)-∑[A029883(n+1)]` -/
def P13916443649357489920.Spec : Prop :=
  ∀ n, P13916443649357489920.a n = A019300 n

end A019300

/-! ## A019300.P7311549291335341035

`∑[A010060(n)/A000079(n)]*A000079(n)`
-/

namespace A019300.P7311549291335341035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010060 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A019300.P7311549291335341035

namespace A019300

/-- `∑[A010060(n)/A000079(n)]*A000079(n)` -/
def P7311549291335341035.Spec : Prop :=
  ∀ n, P7311549291335341035.a n = (A019300 n : ℚ)

end A019300

/-! ## A019300.P5228919208040772637

`A126646(n)-A019299(n)`
-/

namespace A019300.P5228919208040772637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A019299 n

end

end A019300.P5228919208040772637

namespace A019300

/-- `A126646(n)-A019299(n)` -/
def P5228919208040772637.Spec : Prop :=
  ∀ n, P5228919208040772637.a n = A019300 n

end A019300

/-! ## A019300.P8286760391681422158

`A000975(n+1)+A000975(n)-A019299(n)`
-/

namespace A019300.P8286760391681422158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A000975 n - A019299 n)

end

end A019300.P8286760391681422158

namespace A019300

/-- `A000975(n+1)+A000975(n)-A019299(n)` -/
def P8286760391681422158.Spec : Prop :=
  ∀ n, P8286760391681422158.a n = A019300 n

end A019300

/-! ## A019300.P18171133600078107956

`floor(A088172(n+4)/8)`
-/

namespace A019300.P18171133600078107956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088172 (n + 4) : ℚ) / 8⌋

end

end A019300.P18171133600078107956

namespace A019300

/-- `floor(A088172(n+4)/8)` -/
def P18171133600078107956.Spec : Prop :=
  ∀ n, P18171133600078107956.a n = A019300 n

end A019300

/-!
# A019301: Binomial transform of Thue-Morse sequence A010059.

The programs for A019301, there is no canonical definition to state claims against.
-/

/-! ## A019301.P12202991287404582398

`2^n-A019302(n)`
-/

namespace A019301.P12202991287404582398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A019302 n

end

end A019301.P12202991287404582398

/-! ## A019301.P6882516444444306299

`abs(A000079(n)-A019302(n))`
-/

namespace A019301.P6882516444444306299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A019302 n|

end

end A019301.P6882516444444306299

/-! ## A019301.P3639534491291639599

`A000051(n)-(A019302(n)+1)`
-/

namespace A019301.P3639534491291639599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A019302 n + 1)

end

end A019301.P3639534491291639599

/-! ## A019301.P6046748993579103749

`A000007(n+1)+A000079(n)-A019302(n)`
-/

namespace A019301.P6046748993579103749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000079 n - A019302 n)

end

end A019301.P6046748993579103749

/-! ## A019301.P14106811559938623534

`(A000079(n)-A019302(n))*A209615(n+1)²`
-/

namespace A019301.P14106811559938623534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A019302 n) * A209615 (n + 1) ^ 2

end

end A019301.P14106811559938623534

/-! ## A019301.P816813213353790813

`2^(n+1)-A029879(n)`
-/

namespace A019301.P816813213353790813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A029879 n

end

end A019301.P816813213353790813

/-! ## A019301.P12468194351191339881

`A151821(n+1)%A029879(A028310(n))`
-/

namespace A019301.P12468194351191339881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151821 (n + 1)) (A029879 (A028310 n).toNat)

end

end A019301.P12468194351191339881

/-! ## A019301.P15085055392748267958

`A000079(n)+A000079(n)-A029879(n)`
-/

namespace A019301.P15085055392748267958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A029879 n)

end

end A019301.P15085055392748267958

/-! ## A019301.P1597809157436546993

`(A000079(n)-A019302(n))*A118235(C(n+4, 2))`
-/

namespace A019301.P1597809157436546993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A019302 n) * A118235 (Nat.choose (n + 4) 2)

end

end A019301.P1597809157436546993

/-! ## A019301.P15857266780430017853

`(A000079(n)-A019302(n))*A130321(A000096(n))`
-/

namespace A019301.P15857266780430017853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A019302 n) * A130321 (A000096 n).toNat

end

end A019301.P15857266780430017853

/-!
# A019302: Binomial transform of Thue-Morse sequence A010060.

The programs for A019302, there is no canonical definition to state claims against.
-/

/-! ## A019302.P6823322443923901106

`2^n-A019301(n)`
-/

namespace A019302.P6823322443923901106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A019301 n

end

end A019302.P6823322443923901106

/-! ## A019302.P13806681536525768882

`and(-A019301(n), A000225(n))`
-/

namespace A019302.P13806681536525768882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A019301 n) (A000225 n)

end

end A019302.P13806681536525768882

/-! ## A019302.P4979935987946132216

`A029879(n)-2^n`
-/

namespace A019302.P4979935987946132216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029879 n - (2 ^ n : ℤ)

end

end A019302.P4979935987946132216

/-! ## A019302.P17651606799478935375

`A029879(n)%A000079(n)`
-/

namespace A019302.P17651606799478935375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029879 n) (A000079 n)

end

end A019302.P17651606799478935375

/-! ## A019302.P689678642937083956

`and(A000225(n), A029879(n))`
-/

namespace A019302.P689678642937083956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A029879 n)

end

end A019302.P689678642937083956

/-! ## A019302.P6011410413680918096

`and(A029879(n), A303611(n+2))`
-/

namespace A019302.P6011410413680918096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A303611 (n + 2))

end

end A019302.P6011410413680918096

/-! ## A019302.P14457320170011158692

`and(A029879(n), A140683(n))`
-/

namespace A019302.P14457320170011158692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A140683 n)

end

end A019302.P14457320170011158692

/-! ## A019302.P5857543822505232352

`and(A029879(n), A153893(n))`
-/

namespace A019302.P5857543822505232352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A153893 n)

end

end A019302.P5857543822505232352

/-! ## A019302.P14311865787747637940

`and(A029879(n), A086224(n))`
-/

namespace A019302.P14311865787747637940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A086224 n)

end

end A019302.P14311865787747637940

/-! ## A019302.P14630097625175099356

`and(A029879(n), A153894(n))`
-/

namespace A019302.P14630097625175099356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A153894 n)

end

end A019302.P14630097625175099356

/-! ## A019302.P4299977431888269606

`and(A029879(n), A086225(n))`
-/

namespace A019302.P4299977431888269606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A086225 n)

end

end A019302.P4299977431888269606

/-! ## A019302.P12968730319720722280

`and(A029879(n), A196305(n))`
-/

namespace A019302.P12968730319720722280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A196305 n)

end

end A019302.P12968730319720722280

/-! ## A019302.P3452824070486913585

`and(A029879(n), A198274(n))`
-/

namespace A019302.P3452824070486913585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A198274 n)

end

end A019302.P3452824070486913585

/-! ## A019302.P3902445117014358760

`and(A029879(n), A198275(n))`
-/

namespace A019302.P3902445117014358760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A198275 n)

end

end A019302.P3902445117014358760

/-! ## A019302.P10356783223882874179

`and(A029879(n), A171389(n))`
-/

namespace A019302.P10356783223882874179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A171389 n)

end

end A019302.P10356783223882874179

/-! ## A019302.P2526320079199864987

`and(A029879(n), A198276(n))`
-/

namespace A019302.P2526320079199864987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A198276 n)

end

end A019302.P2526320079199864987

/-! ## A019302.P17163772480812003866

`and(A029879(n), A291557(n))`
-/

namespace A019302.P17163772480812003866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A291557 n)

end

end A019302.P17163772480812003866

/-! ## A019302.P4766643656766465146

`and(A029879(n), A171390(n+1))`
-/

namespace A019302.P4766643656766465146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A171390 (n + 1))

end

end A019302.P4766643656766465146

/-! ## A019302.P2393148421386872734

`and(A029879(n), A201914(n))`
-/

namespace A019302.P2393148421386872734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A201914 n)

end

end A019302.P2393148421386872734

/-! ## A019302.P591103543591430819

`and(A029879(n), A129868(n))`
-/

namespace A019302.P591103543591430819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029879 n) (A129868 n)

end

end A019302.P591103543591430819

/-!
# A019303: "Pascal sweep" for k=2: draw a horizontal line through the 1 at C(k,0) in Pascal's triangle; rotate this line and record the sum of the numbers on it (excluding the initial 1).

The programs for A019303, the canonical program `A019303.P15300834761509555571` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019303 has offset 0).

The definition of A019303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019303.P6269597587866831131

`((n+7)/2)^(n%2)`
-/

namespace A019303.P6269597587866831131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 7 : ℚ) / 2) ^ (n % 2)

end

end A019303.P6269597587866831131

namespace A019303

/-- `((n+7)/2)^(n%2)` -/
def P6269597587866831131.Spec : Prop :=
  ∀ n, P6269597587866831131.a n = (A019303 n : ℚ)

end A019303

/-! ## A019303.P18266541746611334667

`((n+7)/2)^and(1, n)`
-/

namespace A019303.P18266541746611334667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 7 : ℚ) / 2) ^ Nat.land 1 n

end

end A019303.P18266541746611334667

namespace A019303

/-- `((n+7)/2)^and(1, n)` -/
def P18266541746611334667.Spec : Prop :=
  ∀ n, P18266541746611334667.a n = (A019303 n : ℚ)

end A019303

/-! ## A019303.P15300834761509555571

`C(n+4, 2)%(n+5)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019303

/-- `C(n+4, 2)%(n+5)` -/
def P15300834761509555571.Spec : Prop :=
  ∀ n, (P15300834761509555571.a n : ℤ) = A019303 n

theorem P15300834761509555571.correct : P15300834761509555571.Spec := by
  intro n
  simp only [A019303]

end A019303

/-! ## A019303.P17233119609585450535

`a(n-2)+and(1, n)` with `a(0)=1, a(1)=4`
-/

namespace A019303.P17233119609585450535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.land 1 n

end

end A019303.P17233119609585450535

namespace A019303

/-- `a(n-2)+and(1, n)` -/
def P17233119609585450535.Spec : Prop :=
  ∀ n, (P17233119609585450535.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P16621243883824530588

`(n+4)²%(lcm(2, n)+5)`
-/

namespace A019303.P16621243883824530588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ 2 % (Nat.lcm 2 n + 5)

end

end A019303.P16621243883824530588

namespace A019303

/-- `(n+4)²%(lcm(2, n)+5)` -/
def P16621243883824530588.Spec : Prop :=
  ∀ n, (P16621243883824530588.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P3219962785368063541

`gcd(floor(n/2)+4, n+7)`
-/

namespace A019303.P3219962785368063541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / 2⌋ + 4) (n + 7 : ℤ)

end

end A019303.P3219962785368063541

namespace A019303

/-- `gcd(floor(n/2)+4, n+7)` -/
def P3219962785368063541.Spec : Prop :=
  ∀ n, (P3219962785368063541.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P4365059073132938493

`(∑[n+2]-1)%(n+5)`
-/

namespace A019303.P4365059073132938493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 5 : ℤ)

end

end A019303.P4365059073132938493

namespace A019303

/-- `(∑[n+2]-1)%(n+5)` -/
def P4365059073132938493.Spec : Prop :=
  ∀ n, P4365059073132938493.a n = A019303 n

end A019303

/-! ## A019303.P5155992074953572917

`∑[and(1, n)-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A019303.P5155992074953572917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (Nat.land 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019303.P5155992074953572917

namespace A019303

/-- `∑[and(1, n)-a(n-1)]` -/
def P5155992074953572917.Spec : Prop :=
  ∀ n, P5155992074953572917.a n = A019303 n

end A019303

/-! ## A019303.P2064873514930848000

`ogf((1+4x-x^2-3x^3)/(1-2x^2+x^4))`
-/

namespace A019303.P2064873514930848000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1, -3] [1, 0, -2, 0, 1] n

end

end A019303.P2064873514930848000

namespace A019303

/-- `ogf((1+4x-x^2-3x^3)/(1-2x^2+x^4))` -/
def P2064873514930848000.Spec : Prop :=
  ∀ n, P2064873514930848000.a n = A019303 n

end A019303

/-! ## A019303.P16282077398987481625

`a(n-2)+(n+2)%2` with `a(0)=1, a(1)=4`
-/

namespace A019303.P16282077398987481625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (n + 2) % 2

end

end A019303.P16282077398987481625

namespace A019303

/-- `a(n-2)+(n+2)%2` -/
def P16282077398987481625.Spec : Prop :=
  ∀ n, (P16282077398987481625.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P13102962876868070064

`a(n-2)+2-gcd(2, n)` with `a(0)=1, a(1)=4`
-/

namespace A019303.P13102962876868070064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (2 - (Nat.gcd 2 n : ℤ))

end

end A019303.P13102962876868070064

namespace A019303

/-- `a(n-2)+2-gcd(2, n)` -/
def P13102962876868070064.Spec : Prop :=
  ∀ n, P13102962876868070064.a n = A019303 n

end A019303

/-! ## A019303.P7433476626700882929

`3-floor(n/(a(n-1)-3))` with `a(0)=1`
-/

namespace A019303.P7433476626700882929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - ⌊(n : ℚ) / (a (n - 1) - 3 : ℚ)⌋

end

end A019303.P7433476626700882929

namespace A019303

/-- `3-floor(n/(a(n-1)-3))` -/
def P7433476626700882929.Spec : Prop :=
  ∀ n, P7433476626700882929.a n = A019303 n

end A019303

/-! ## A019303.P14958899485648113379

`∑[a(n-2)-(-1)^n]` with `a(0)=1, a(1)=3, a(2)=-3`
-/

namespace A019303.P14958899485648113379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -3] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019303.P14958899485648113379

namespace A019303

/-- `∑[a(n-2)-(-1)^n]` -/
def P14958899485648113379.Spec : Prop :=
  ∀ n, P14958899485648113379.a n = A019303 n

end A019303

/-! ## A019303.P11379214833122805756

`floor(a(n-2)-(2-n)%2)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A019303.P11379214833122805756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) - Int.tmod (2 - (n : ℤ)) 2

end

end A019303.P11379214833122805756

namespace A019303

/-- `floor(a(n-2)-(2-n)%2)` -/
def P11379214833122805756.Spec : Prop :=
  ∀ n, P11379214833122805756.a n = A019303 n

end A019303

/-! ## A019303.P12201573622266071093

`char[2*n+1]+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A019303.P12201573622266071093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 2)

end

end A019303.P12201573622266071093

namespace A019303

/-- `char[2*n+1]+a(n-2)` -/
def P12201573622266071093.Spec : Prop :=
  ∀ n, (P12201573622266071093.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P15257353521559565751

`C(a(n-2), a(n-1))+1` with `a(0)=1, a(1)=4`
-/

namespace A019303.P15257353521559565751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.choose (a (n - 2)) (a (n - 1)) + 1

end

end A019303.P15257353521559565751

namespace A019303

/-- `C(a(n-2), a(n-1))+1` -/
def P15257353521559565751.Spec : Prop :=
  ∀ n, (P15257353521559565751.a n : ℤ) = A019303 n

end A019303

/-! ## A019303.P13964264346935445179

`1-((n-1)%2-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A019303.P13964264346935445179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 2))

end

end A019303.P13964264346935445179

namespace A019303

/-- `1-((n-1)%2-a(n-2))` -/
def P13964264346935445179.Spec : Prop :=
  ∀ n, P13964264346935445179.a n = A019303 n

end A019303

/-! ## A019303.P2756881099004421815

`ceil((a(n-2)+1)/a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A019303.P2756881099004421815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈(a (n - 2) + 1 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A019303.P2756881099004421815

namespace A019303

/-- `ceil((a(n-2)+1)/a(n-1))` -/
def P2756881099004421815.Spec : Prop :=
  ∀ n, P2756881099004421815.a n = A019303 n

end A019303

/-! ## A019303.P2392015323307476305

`round(a(n-2)+1/a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A019303.P2392015323307476305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + 1 / (a (n - 1) : ℚ))

end

end A019303.P2392015323307476305

namespace A019303

/-- `round(a(n-2)+1/a(n-1))` -/
def P2392015323307476305.Spec : Prop :=
  ∀ n, P2392015323307476305.a n = A019303 n

end A019303

/-! ## A019303.P17757364628767524845

`floor(a(n-2)+a(n-1)^(-1))` with `a(0)=1, a(1)=4`
-/

namespace A019303.P17757364628767524845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) + (a (n - 1) : ℚ) ^ (-1 : ℤ)⌋

end

end A019303.P17757364628767524845

namespace A019303

/-- `floor(a(n-2)+a(n-1)^(-1))` -/
def P17757364628767524845.Spec : Prop :=
  ∀ n, P17757364628767524845.a n = A019303 n

end A019303

/-!
# A019307: First time that the Grundy function G(x) for "subtract-a-Fibonacci-number" takes the value n.

The programs for A019307, there is no canonical definition to state claims against.
-/

/-! ## A019307.P6403243984736493886

`A054494(n!)-(-1)^n*char[∑[n*5^(n%2)]]`
-/

namespace A019307.P6403243984736493886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054494 (Nat.factorial n) - (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019307.P6403243984736493886

/-! ## A019307.P7206120794686532469

`eq[0, A329982(A008805(n))]`
-/

namespace A019307.P7206120794686532469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329982 (A008805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019307.P7206120794686532469

/-! ## A019307.P2427045488248779998

`∑[A172342(A181926(n))]-1`
-/

namespace A019307.P2427045488248779998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172342 (A181926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A019307.P2427045488248779998

/-! ## A019307.P17060192336650464087

`A043316(2*n+1)-A333226(A001523(n+1))`
-/

namespace A019307.P17060192336650464087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043316 (2 * n + 1) - A333226 (A001523 (n + 1)).toNat

end

end A019307.P17060192336650464087

/-!
# A019308: Number of "bifix-free" words of length n over a three-letter alphabet.

The programs for A019308, the canonical program `A019308.P18288552904290711969` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019308 has offset 0).

The definition of A019308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019308.P3573445159310203683

`∑{d}[n+1, A019590(#)*A045694((n+1)/#)]`
-/

namespace A019308.P3573445159310203683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A045694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A019308.P3573445159310203683

namespace A019308

/-- `∑{d}[n+1, A019590(#)*A045694((n+1)/#)]` -/
def P3573445159310203683.Spec : Prop :=
  ∀ n, P3573445159310203683.a n = A019308 n

end A019308

/-! ## A019308.P7970090127197907060

`A045694(n+1)+A094539(n+1)-A094538(n)`
-/

namespace A019308.P7970090127197907060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045694 (n + 1) + (A094539 (n + 1) - A094538 n)

end

end A019308.P7970090127197907060

namespace A019308

/-- `A045694(n+1)+A094539(n+1)-A094538(n)` -/
def P7970090127197907060.Spec : Prop :=
  ∀ n, P7970090127197907060.a n = A019308 n

end A019308

/-! ## A019308.P1066110826708903220

`3^n-A094538(n)`
-/

namespace A019308.P1066110826708903220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A094538 n

end

end A019308.P1066110826708903220

namespace A019308

/-- `3^n-A094538(n)` -/
def P1066110826708903220.Spec : Prop :=
  ∀ n, P1066110826708903220.a n = A019308 n

theorem P1066110826708903220.correct : P1066110826708903220.Spec := by
  intro n
  simp only [A019308, Nat.add_sub_cancel, A019308.P1066110826708903220.a, A019308.P18288552904290711969.f1, A019308.P18288552904290711969.a, A094538, A094538.P4112405845201570244.a, A252696, A252696.P6161401064542124124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019308

/-! ## A019308.P18288552904290711969

`Δ[abs(1-A252696(n))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019308

/-- `Δ[abs(1-A252696(n))]` -/
def P18288552904290711969.Spec : Prop :=
  ∀ n, P18288552904290711969.a n = A019308 n

theorem P18288552904290711969.correct : P18288552904290711969.Spec := by
  intro n
  simp only [A019308]

end A019308

/-! ## A019308.P16167551613494332199

`gcd(A008683(2*(n+1)²), Δ[A252696(n)])`
-/

namespace A019308.P16167551613494332199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (2 * (n + 1) ^ 2)) (f1 (n + 1) - f1 n)

end

end A019308.P16167551613494332199

namespace A019308

/-- `gcd(A008683(2*(n+1)²), Δ[A252696(n)])` -/
def P16167551613494332199.Spec : Prop :=
  ∀ n, (P16167551613494332199.a n : ℤ) = A019308 n

end A019308

/-! ## A019308.P6585266164582769291

`Δ[A252696(n)]%A056236(n)`
-/

namespace A019308.P6585266164582769291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A056236 n)

end

end A019308.P6585266164582769291

namespace A019308

/-- `Δ[A252696(n)]%A056236(n)` -/
def P6585266164582769291.Spec : Prop :=
  ∀ n, P6585266164582769291.a n = A019308 n

end A019308

/-! ## A019308.P9108025653078503593

`A342239(∑[n+2]-1)`
-/

namespace A019308.P9108025653078503593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342239 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A019308.P9108025653078503593

namespace A019308

/-- `A342239(∑[n+2]-1)` -/
def P9108025653078503593.Spec : Prop :=
  ∀ n, P9108025653078503593.a n = A019308 n

end A019308

/-! ## A019308.P17381827371850805249

`A342239(A034856(n+1))^A178334(n)`
-/

namespace A019308.P17381827371850805249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342239 (A034856 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A019308.P17381827371850805249

namespace A019308

/-- `A342239(A034856(n+1))^A178334(n)` -/
def P17381827371850805249.Spec : Prop :=
  ∀ n, P17381827371850805249.a n = (A019308 n : ℚ)

end A019308

/-! ## A019308.P8808524360974168440

`Δ[A342238(A034856(n+1)+A000007(n))]`
-/

namespace A019308.P8808524360974168440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A034856 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019308.P8808524360974168440

namespace A019308

/-- `Δ[A342238(A034856(n+1)+A000007(n))]` -/
def P8808524360974168440.Spec : Prop :=
  ∀ n, P8808524360974168440.a n = A019308 n

end A019308

/-!
# A019309: Number of "bifix-free" words of length n over a four-letter alphabet.

The programs for A019309, there is no canonical definition to state claims against.
-/

/-! ## A019309.P17803172540645273824

`4^n-A094559(n)`
-/

namespace A019309.P17803172540645273824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A094559 n

end

end A019309.P17803172540645273824

/-! ## A019309.P302742681574161503

`abs(A000302(n)-A094559(n))`
-/

namespace A019309.P302742681574161503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A094559 n|

end

end A019309.P302742681574161503

/-! ## A019309.P12713155708004803191

`Δ[A000007(n)+A252697(n)/2]`
-/

namespace A019309.P12713155708004803191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A252697 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019309.P12713155708004803191

/-! ## A019309.P10441393434190020428

`record[A342239(A027379(n))]`
-/

namespace A019309.P10441393434190020428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342239 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019309.P10441393434190020428

/-!
# A019310: Number of words of length n (n >= 1) over a two-letter alphabet having a minimal period of size n-1.

The programs for A019310, the canonical program `A019310.P465714717247442252` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019310 has offset 1).

The definition of A019310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019310.P465714717247442252

`2*a(n-1)+(-1)^(n+1)*a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019310

/-- `2*a(n-1)+(-1)^(n+1)*a(ceil((n+1)/2)-1)` -/
def P465714717247442252.Spec : Prop :=
  ∀ n, P465714717247442252.a n = A019310 (n + 1)

theorem P465714717247442252.correct : P465714717247442252.Spec := by
  intro n
  simp only [A019310, Nat.add_sub_cancel]

end A019310

/-! ## A019310.P10648350757516564592

`2*A045691(n)`
-/

namespace A019310.P10648350757516564592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045691 n

end

end A019310.P10648350757516564592

namespace A019310

/-- `2*A045691(n)` -/
def P10648350757516564592.Spec : Prop :=
  ∀ n, P10648350757516564592.a n = A019310 (n + 1)

end A019310

/-! ## A019310.P12549118395319416723

`lcm(2, A045691(A005843(n)/2))`
-/

namespace A019310.P12549118395319416723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A045691 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat)

end

end A019310.P12549118395319416723

namespace A019310

/-- `lcm(2, A045691(A005843(n)/2))` -/
def P12549118395319416723.Spec : Prop :=
  ∀ n, (P12549118395319416723.a n : ℤ) = A019310 (n + 1)

end A019310

/-! ## A019310.P16657932638566221927

`A045691(abs(A001489(n)))+A045691(n)`
-/

namespace A019310.P16657932638566221927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045691 |A001489 n|.toNat + A045691 n

end

end A019310.P16657932638566221927

namespace A019310

/-- `A045691(abs(A001489(n)))+A045691(n)` -/
def P16657932638566221927.Spec : Prop :=
  ∀ n, P16657932638566221927.a n = A019310 (n + 1)

end A019310

/-! ## A019310.P12731959811674469062

`A045691(A005843(n)/2)+A045691(n)`
-/

namespace A019310.P12731959811674469062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045691 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A045691 n

end

end A019310.P12731959811674469062

namespace A019310

/-- `A045691(A005843(n)/2)+A045691(n)` -/
def P12731959811674469062.Spec : Prop :=
  ∀ n, P12731959811674469062.a n = A019310 (n + 1)

end A019310

/-! ## A019310.P15203276913750327462

`A045691(A005843(n)-n)+A045691(n)`
-/

namespace A019310.P15203276913750327462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045691 (A005843 n - (n : ℤ)).toNat + A045691 n

end

end A019310.P15203276913750327462

namespace A019310

/-- `A045691(A005843(n)-n)+A045691(n)` -/
def P15203276913750327462.Spec : Prop :=
  ∀ n, P15203276913750327462.a n = A019310 (n + 1)

end A019310

/-! ## A019310.P5710430468965310741

`A045691(n)+or(A045691(n), A285139(n+1))`
-/

namespace A019310.P5710430468965310741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045691 n + Int.lor (A045691 n) (A285139 (n + 1))

end

end A019310.P5710430468965310741

namespace A019310

/-- `A045691(n)+or(A045691(n), A285139(n+1))` -/
def P5710430468965310741.Spec : Prop :=
  ∀ n, P5710430468965310741.a n = A019310 (n + 1)

end A019310

/-!
# A019311: Number of words of length n (n >= 1) over a two-letter alphabet having a minimal period of size n-2.

The programs for A019311, there is no canonical definition to state claims against.
-/

/-! ## A019311.P8419560093162061229

`A345530(A133263(n)+1)%(2^n)`
-/

namespace A019311.P8419560093162061229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345530 (A133263 n + 1).toNat) (2 ^ n : ℤ)

end

end A019311.P8419560093162061229

/-! ## A019311.P14250638202773765072

`A345530(A152950(n+1))%(2^n)`
-/

namespace A019311.P14250638202773765072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345530 (A152950 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A019311.P14250638202773765072

/-! ## A019311.P10815847839516281455

`2*(A045693(n+1)+A045692(n+1))`
-/

namespace A019311.P10815847839516281455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045693 (n + 1) + A045692 (n + 1))

end

end A019311.P10815847839516281455

/-! ## A019311.P17469875171958515431

`and(A000225(n), A345530(A152950(n+1)))`
-/

namespace A019311.P17469875171958515431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A345530 (A152950 (n + 1)).toNat)

end

end A019311.P17469875171958515431

/-! ## A019311.P16750838132623727059

`and(A126646(n), A345530(A152950(n+1)))`
-/

namespace A019311.P16750838132623727059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A345530 (A152950 (n + 1)).toNat)

end

end A019311.P16750838132623727059

/-!
# A019316: Expansion of 1/((1-4x)(1-6x)(1-7x)).

The programs for A019316, the canonical program `A019316.P3695255342503388554` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019316 has offset 0).

The definition of A019316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019316.P3695255342503388554

`13*a(n-1)-42*a(n-2)+4^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019316

/-- `13*a(n-1)-42*a(n-2)+4^n` -/
def P3695255342503388554.Spec : Prop :=
  ∀ n, P3695255342503388554.a n = A019316 n

theorem P3695255342503388554.correct : P3695255342503388554.Spec := by
  intro n
  simp only [A019316]

end A019316

/-! ## A019316.P1351309759463922252

`8*4^n/3-18*6^n+49*7^n/3`
-/

namespace A019316.P1351309759463922252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℚ) / 3 - (18 * 6 ^ n : ℚ) + (49 * 7 ^ n : ℚ) / 3

end

end A019316.P1351309759463922252

namespace A019316

/-- `8*4^n/3-18*6^n+49*7^n/3` -/
def P1351309759463922252.Spec : Prop :=
  ∀ n, P1351309759463922252.a n = (A019316 n : ℚ)

theorem P1351309759463922252.correct : P1351309759463922252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019316, Nat.add_sub_cancel, A019316.P1351309759463922252.a, A019316.P3695255342503388554.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019316, Nat.add_sub_cancel, A019316.P1351309759463922252.a, A019316.P3695255342503388554.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019316

/-! ## A019316.P16055182875133070813

`Δ[A016223(n)-A016222(n)]`
-/

namespace A019316.P16055182875133070813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016223 n - A016222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019316.P16055182875133070813

namespace A019316

/-- `Δ[A016223(n)-A016222(n)]` -/
def P16055182875133070813.Spec : Prop :=
  ∀ n, P16055182875133070813.a n = A019316 n

end A019316

/-!
# A019318: Number of inequivalent ways of choosing n squares from an n X n board, considering rotations and reflections to be the same.

The programs for A019318, there is no canonical definition to state claims against.
-/

/-! ## A019318.P9000137886701561066

`A054252(∑[n²+2])`
-/

namespace A019318.P9000137886701561066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019318.P9000137886701561066

/-! ## A019318.P12482764442391779757

`record[A054252(A000330(val(n+1, 2)))]`
-/

namespace A019318.P12482764442391779757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (A000330 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019318.P12482764442391779757

/-!
# A019320: Cyclotomic polynomials at x=2.

The programs for A019320, there is no canonical definition to state claims against.
-/

/-! ## A019320.P647083591209468496

`A253240(∑[n+3])+A000007(n)`
-/

namespace A019320.P647083591209468496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n

end

end A019320.P647083591209468496

/-! ## A019320.P14187622499805416563

`A253240(∑[n+3])+C(2, A055999(n))`
-/

namespace A019320.P14187622499805416563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (A055999 n).toNat : ℤ)

end

end A019320.P14187622499805416563

/-! ## A019320.P699113032864183009

`A253240(∑[n+3])+C(2, A140091(n))`
-/

namespace A019320.P699113032864183009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (A140091 n).toNat : ℤ)

end

end A019320.P699113032864183009

/-! ## A019320.P9926314404475580729

`A028310(n)+A253240(∑[n+3])-n`
-/

namespace A019320.P9926314404475580729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A253240 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ))

end

end A019320.P9926314404475580729

/-! ## A019320.P2982502762015382349

`A253240(∑[n+3])+A010051(lcm(n+1, n+3))`
-/

namespace A019320.P2982502762015382349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + A010051 (Nat.lcm (n + 1) (n + 3))

end

end A019320.P2982502762015382349

/-! ## A019320.P6146514568363836045

`A253240(∑[n+3])+A048993(∑[n])`
-/

namespace A019320.P6146514568363836045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (∑ j ∈ Finset.range (n + 1), f1 j) + A048993 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A019320.P6146514568363836045

/-!
# A019321: Cyclotomic polynomials at x=3.

The programs for A019321, there is no canonical definition to state claims against.
-/

/-! ## A019321.P9461060842942166513

`C(3, C(3, n²))*A253240(A155212(n)+4)`
-/

namespace A019321.P9461060842942166513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 (Nat.choose 3 (n ^ 2)) : ℤ) * A253240 (A155212 n + 4).toNat

end

end A019321.P9461060842942166513

/-! ## A019321.P12757659248699743596

`A253240(A155212(n)+4)+A000038(n)`
-/

namespace A019321.P12757659248699743596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A155212 n + 4).toNat + A000038 n

end

end A019321.P12757659248699743596

/-! ## A019321.P8950368896282617029

`A253240(A155212(n)+4)+1-A158388(n)`
-/

namespace A019321.P8950368896282617029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A155212 n + 4).toNat + (1 - A158388 n)

end

end A019321.P8950368896282617029

/-! ## A019321.P9249609915921207954

`A253240(A155212(n)+4)+2*A000007(n)`
-/

namespace A019321.P9249609915921207954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A155212 n + 4).toNat + 2 * A000007 n

end

end A019321.P9249609915921207954

/-! ## A019321.P2461000385859913292

`A253240(A155212(n)+4)+A000122(n²+1)`
-/

namespace A019321.P2461000385859913292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A155212 n + 4).toNat + A000122 (n ^ 2 + 1)

end

end A019321.P2461000385859913292

/-! ## A019321.P11570064400360400964

`A000041(C(3, n+2))*A253240(A155212(n)+4)`
-/

namespace A019321.P11570064400360400964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 3 (n + 2)) * A253240 (A155212 n + 4).toNat

end

end A019321.P11570064400360400964

/-! ## A019321.P14433474713856651540

`A253240(A155212(n)+4)+A069517(A061802(n))`
-/

namespace A019321.P14433474713856651540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A155212 n + 4).toNat + A069517 (A061802 n).toNat

end

end A019321.P14433474713856651540

/-!
# A019322: Cyclotomic polynomials at x=4.

The programs for A019322, there is no canonical definition to state claims against.
-/

/-! ## A019322.P4048578318763161998

`gcd(A010673(n+1), A019320(n))*A019320(2*n)`
-/

namespace A019322.P4048578318763161998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A010673 (n + 1)) (A019320 n) : ℤ) * A019320 (2 * n)

end

end A019322.P4048578318763161998

/-! ## A019322.P2301371076265725842

`A006288(A019321(n))`
-/

namespace A019322.P2301371076265725842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A019321 n).toNat

end

end A019322.P2301371076265725842

/-!
# A019328: Cyclotomic polynomials at x=10.

The programs for A019328, there is no canonical definition to state claims against.
-/

/-! ## A019328.P11532947303849266689

`A063697(n+1)-A063699(n+1)`
-/

namespace A019328.P11532947303849266689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063697 (n + 1) - A063699 (n + 1)

end

end A019328.P11532947303849266689

/-! ## A019328.P9651686678266965818

`2*A063697(n+1)-A063671(n+1)`
-/

namespace A019328.P9651686678266965818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063697 (n + 1) - A063671 (n + 1)

end

end A019328.P9651686678266965818

/-! ## A019328.P14309113363174719951

`A063671(n+1)-2*A063699(n+1)`
-/

namespace A019328.P14309113363174719951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 (n + 1) - 2 * A063699 (n + 1)

end

end A019328.P14309113363174719951

/-! ## A019328.P5256994147634521579

`A253240(A161680(n+12)+n+1)`
-/

namespace A019328.P5256994147634521579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A161680 (n + 12) + (n : ℤ) + 1).toNat

end

end A019328.P5256994147634521579

/-! ## A019328.P18379827405192052620

`A253240(A167614(n+10)+n-2)`
-/

namespace A019328.P18379827405192052620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (A167614 (n + 10) + ((n : ℤ) - 2)).toNat

end

end A019328.P18379827405192052620

/-!
# A019329: Cyclotomic polynomials at x=11.

The programs for A019329, there is no canonical definition to state claims against.
-/

/-! ## A019329.P5312047725403258521

`A028904(A019330(n))`
-/

namespace A019329.P5312047725403258521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A019330 n).toNat

end

end A019329.P5312047725403258521

/-!
# A019330: Cyclotomic polynomials at x=12.

The programs for A019330, there is no canonical definition to state claims against.
-/

/-! ## A019330.P4455652445707456489

`A007095(A019329(n))`
-/

namespace A019330.P4455652445707456489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A019329 n).toNat

end

end A019330.P4455652445707456489

/-!
# A019331: Cyclotomic polynomials at x=13.

The programs for A019331, there is no canonical definition to state claims against.
-/

/-! ## A019331.P16841128695175462833

`A171397(A019330(n))`
-/

namespace A019331.P16841128695175462833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A019330 n).toNat

end

end A019331.P16841128695175462833

/-!
# A019332: Lengths of quantum cellular automata that cycle through all possible values of the QCA vector.

The programs for A019332, there is no canonical definition to state claims against.
-/

/-! ## A019332.P6373379193676796306

`2*A123399(n+1)`
-/

namespace A019332.P6373379193676796306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123399 (n + 1)

end

end A019332.P6373379193676796306

/-! ## A019332.P10976484520025901325

`p?[A072797(n)+3+n]-1`
-/

namespace A019332.P10976484520025901325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 n + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A019332.P10976484520025901325

/-! ## A019332.P6753923093381571059

`p?[A179538(comp[(3*n)²])]-1`
-/

namespace A019332.P6753923093381571059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A019332.P6753923093381571059

/-! ## A019332.P15296547082636214521

`A004277(A123399(n+1))`
-/

namespace A019332.P15296547082636214521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A123399 (n + 1)).toNat

end

end A019332.P15296547082636214521

/-! ## A019332.P6585632096933469096

`record[A037225(A089856(n)+1)]`
-/

namespace A019332.P6585632096933469096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A089856 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019332.P6585632096933469096

/-!
# A019333: Expansion of g.f. 1/((1-4*x)*(1-6*x)*(1-8*x)).

The programs for A019333, the canonical program `A019333.P16700433820639439913` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019333 has offset 0).

The definition of A019333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019333.P16700433820639439913

`2*4^n-9*6^n+8*8^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019333

/-- `2*4^n-9*6^n+8*8^n` -/
def P16700433820639439913.Spec : Prop :=
  ∀ n, P16700433820639439913.a n = A019333 n

theorem P16700433820639439913.correct : P16700433820639439913.Spec := by
  intro n
  simp only [A019333]

end A019333

/-! ## A019333.P9521649608098911055

`2^n*A016269(n)`
-/

namespace A019333.P9521649608098911055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016269 n

end

end A019333.P9521649608098911055

namespace A019333

/-- `2^n*A016269(n)` -/
def P9521649608098911055.Spec : Prop :=
  ∀ n, P9521649608098911055.a n = A019333 n

end A019333

/-! ## A019333.P9402285442078089610

`2^n*∑[A027650(n)]`
-/

namespace A019333.P9402285442078089610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019333.P9402285442078089610

namespace A019333

/-- `2^n*∑[A027650(n)]` -/
def P9402285442078089610.Spec : Prop :=
  ∀ n, P9402285442078089610.a n = A019333 n

end A019333

/-! ## A019333.P10169525811289588683

`2^(n-1)*A038721(n+1)`
-/

namespace A019333.P10169525811289588683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A038721 (n + 1) : ℚ)

end

end A019333.P10169525811289588683

namespace A019333

/-- `2^(n-1)*A038721(n+1)` -/
def P10169525811289588683.Spec : Prop :=
  ∀ n, P10169525811289588683.a n = (A019333 n : ℚ)

end A019333

/-! ## A019333.P14100441197952576582

`2^n*Δ[A056473(2*(n+3))]`
-/

namespace A019333.P14100441197952576582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A019333.P14100441197952576582

namespace A019333

/-- `2^n*Δ[A056473(2*(n+3))]` -/
def P14100441197952576582.Spec : Prop :=
  ∀ n, P14100441197952576582.a n = A019333 n

end A019333

/-! ## A019333.P4733818072429531835

`lcm(A000079(n), A016269(n))`
-/

namespace A019333.P4733818072429531835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016269 n)

end

end A019333.P4733818072429531835

namespace A019333

/-- `lcm(A000079(n), A016269(n))` -/
def P4733818072429531835.Spec : Prop :=
  ∀ n, (P4733818072429531835.a n : ℤ) = A019333 n

end A019333

/-! ## A019333.P8200903414237292335

`∑[A027650(n)]*A000079(n)`
-/

namespace A019333.P8200903414237292335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A019333.P8200903414237292335

namespace A019333

/-- `∑[A027650(n)]*A000079(n)` -/
def P8200903414237292335.Spec : Prop :=
  ∀ n, P8200903414237292335.a n = A019333 n

end A019333

/-! ## A019333.P8286129614568754692

`A016269(n)*A077957(2*n)`
-/

namespace A019333.P8286129614568754692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n * A077957 (2 * n)

end

end A019333.P8286129614568754692

namespace A019333

/-- `A016269(n)*A077957(2*n)` -/
def P8286129614568754692.Spec : Prop :=
  ∀ n, P8286129614568754692.a n = A019333 n

end A019333

/-! ## A019333.P8886126131212875718

`A038721(n+1)/2*A000079(n)`
-/

namespace A019333.P8886126131212875718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A019333.P8886126131212875718

namespace A019333

/-- `A038721(n+1)/2*A000079(n)` -/
def P8886126131212875718.Spec : Prop :=
  ∀ n, P8886126131212875718.a n = (A019333 n : ℚ)

end A019333

/-! ## A019333.P3809682264846342821

`(A085350(n+1)-A027649(n+1))*A000079(n)`
-/

namespace A019333.P3809682264846342821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085350 (n + 1) - A027649 (n + 1)) * A000079 n

end

end A019333.P3809682264846342821

namespace A019333

/-- `(A085350(n+1)-A027649(n+1))*A000079(n)` -/
def P3809682264846342821.Spec : Prop :=
  ∀ n, P3809682264846342821.a n = A019333 n

end A019333

/-! ## A019333.P7697758576372576260

`(A126718(n+1)-A126643(n+1))*A000079(n)`
-/

namespace A019333.P7697758576372576260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126718 (n + 1) - A126643 (n + 1)) * A000079 n

end

end A019333.P7697758576372576260

namespace A019333

/-- `(A126718(n+1)-A126643(n+1))*A000079(n)` -/
def P7697758576372576260.Spec : Prop :=
  ∀ n, P7697758576372576260.a n = A019333 n

end A019333

/-!
# A019334: Primes with primitive root 3.

The programs for A019334, there is no canonical definition to state claims against.
-/

/-! ## A019334.P17246227512735551865

`∪[A019353(n+1), A323594(n+1)]`
-/

namespace A019334.P17246227512735551865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P17246227512735551865

/-! ## A019334.P17247026857196140153

`p?[A167792(n+1)]`
-/

namespace A019334.P17247026857196140153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019334.P17247026857196140153

/-! ## A019334.P16205780163277123113

`∩[A015919(n+1), A167792(n+1)]`
-/

namespace A019334.P16205780163277123113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P16205780163277123113

/-! ## A019334.P4763082771299786235

`∩[A038875(n+1), A167792(n+1)]`
-/

namespace A019334.P4763082771299786235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P4763082771299786235

/-! ## A019334.P15952839345252368049

`∩[A073485(n+1), A167792(n+1)]`
-/

namespace A019334.P15952839345252368049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P15952839345252368049

/-! ## A019334.P4534803580570324346

`∩[A167135(n+1), A167792(n+1)]`
-/

namespace A019334.P4534803580570324346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P4534803580570324346

/-! ## A019334.P9864425558317040203

`∩[A045344(n+1), A167792(n+1)]`
-/

namespace A019334.P9864425558317040203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P9864425558317040203

/-! ## A019334.P13810776247994363812

`record[A062117(n+1)+1]`
-/

namespace A019334.P13810776247994363812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019334.P13810776247994363812

/-! ## A019334.P5455201218939778627

`∩[A000040(n+1), A167792(n+1)]`
-/

namespace A019334.P5455201218939778627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P5455201218939778627

/-! ## A019334.P10198384386994579325

`∩[A008578(n+1), A167792(n+1)]`
-/

namespace A019334.P10198384386994579325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P10198384386994579325

/-! ## A019334.P9981649721084657990

`A000040(eq[A062117(n+1)+1, A000040(n+1)]+1)`
-/

namespace A019334.P9981649721084657990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A019334.P9981649721084657990

/-! ## A019334.P15716067391106312057

`∩[A033946(n+1), A167792(n+1)]`
-/

namespace A019334.P15716067391106312057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P15716067391106312057

/-! ## A019334.P17418424893452084475

`∩[A053813(n+1), A167792(n+1)]`
-/

namespace A019334.P17418424893452084475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P17418424893452084475

/-! ## A019334.P12931862500507433956

`∩[A167792(n+1), A182140(n+1)]`
-/

namespace A019334.P12931862500507433956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P12931862500507433956

/-! ## A019334.P12749852653365411558

`∩[A167792(n+1), A189710(n+1)]`
-/

namespace A019334.P12749852653365411558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P12749852653365411558

/-! ## A019334.P16485586469343250475

`∩[A097605(n+1), A167792(n+1)]`
-/

namespace A019334.P16485586469343250475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P16485586469343250475

/-! ## A019334.P11075501297672441576

`∩[A070159(n+1), A167792(n+1)]`
-/

namespace A019334.P11075501297672441576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P11075501297672441576

/-! ## A019334.P13989310204928585095

`∩[A340076(n+1), A167792(n+1)]`
-/

namespace A019334.P13989310204928585095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P13989310204928585095

/-! ## A019334.P1169041345301784234

`∩[A167792(n+1), A260442(n)]`
-/

namespace A019334.P1169041345301784234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P1169041345301784234

/-! ## A019334.P7523205056793757373

`∩[A143578(n+1), A167792(n+1)]`
-/

namespace A019334.P7523205056793757373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019334.P7523205056793757373

/-!
# A019335: Primes with primitive root 5.

The programs for A019335, there is no canonical definition to state claims against.
-/

/-! ## A019335.P6139176386204021179

`A071522(n+1)+1`
-/

namespace A019335.P6139176386204021179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071522 (n + 1) + 1

end

end A019335.P6139176386204021179

/-! ## A019335.P4658738803581039756

`p?[A167793(n+1)]`
-/

namespace A019335.P4658738803581039756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019335.P4658738803581039756

/-! ## A019335.P11786727113922021885

`∩[A003631(n+1), A167793(n+1)]`
-/

namespace A019335.P11786727113922021885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P11786727113922021885

/-! ## A019335.P4422068714585646704

`∩[A015919(n+1), A167793(n+1)]`
-/

namespace A019335.P4422068714585646704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P4422068714585646704

/-! ## A019335.P17577799656376268262

`∩[A042993(n+1), A167793(n+1)]`
-/

namespace A019335.P17577799656376268262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P17577799656376268262

/-! ## A019335.P8141399681653665899

`∩[A045321(n+1), A167793(n+1)]`
-/

namespace A019335.P8141399681653665899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P8141399681653665899

/-! ## A019335.P4777852499833929071

`∩[A042986(n+1), A167793(n+1)]`
-/

namespace A019335.P4777852499833929071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P4777852499833929071

/-! ## A019335.P14420432397009594830

`∩[A040179(n+1), A167793(n+1)]`
-/

namespace A019335.P14420432397009594830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P14420432397009594830

/-! ## A019335.P15980649428723118925

`∩[A040990(n+1), A167793(n+1)]`
-/

namespace A019335.P15980649428723118925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P15980649428723118925

/-! ## A019335.P12173279982914821421

`∩[A040970(n+1), A167793(n+1)]`
-/

namespace A019335.P12173279982914821421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P12173279982914821421

/-! ## A019335.P16500745566288100154

`∩[A040972(n+1), A167793(n+1)]`
-/

namespace A019335.P16500745566288100154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P16500745566288100154

/-! ## A019335.P17051890054652224985

`∩[A040161(n+1), A167793(n+1)]`
-/

namespace A019335.P17051890054652224985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P17051890054652224985

/-! ## A019335.P4669809441109551197

`∩[A040169(n+1), A167793(n+1)]`
-/

namespace A019335.P4669809441109551197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P4669809441109551197

/-! ## A019335.P15266761164837998721

`∩[A040159(n+1), A167793(n+1)]`
-/

namespace A019335.P15266761164837998721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P15266761164837998721

/-! ## A019335.P11886055664898379815

`∩[A040980(n+1), A167793(n+1)]`
-/

namespace A019335.P11886055664898379815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P11886055664898379815

/-! ## A019335.P7326925628125476337

`∩[A040982(n+1), A167793(n+1)]`
-/

namespace A019335.P7326925628125476337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P7326925628125476337

/-! ## A019335.P9515738762684041758

`∩[A040171(n+1), A167793(n+1)]`
-/

namespace A019335.P9515738762684041758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P9515738762684041758

/-! ## A019335.P6183654868201794562

`∩[A040165(n+1), A167793(n+1)]`
-/

namespace A019335.P6183654868201794562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P6183654868201794562

/-! ## A019335.P6958288247418210559

`∩[A040978(n+1), A167793(n+1)]`
-/

namespace A019335.P6958288247418210559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P6958288247418210559

/-! ## A019335.P4974396520352861067

`∩[A040184(n+1), A167793(n+1)]`
-/

namespace A019335.P4974396520352861067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019335.P4974396520352861067

/-!
# A019336: Primes with primitive root 6.

The programs for A019336, there is no canonical definition to state claims against.
-/

/-! ## A019336.P13077648718151986242

`p?[A167794(n+1)]`
-/

namespace A019336.P13077648718151986242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019336.P13077648718151986242

/-! ## A019336.P13693536287453659980

`∩[A038877(n+1), A167794(n+1)]`
-/

namespace A019336.P13693536287453659980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P13693536287453659980

/-! ## A019336.P15335462110800273011

`∩[A015919(n+1), A167794(n+1)]`
-/

namespace A019336.P15335462110800273011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P15335462110800273011

/-! ## A019336.P1439739308165857950

`∩[A040108(n+1), A167794(n+1)]`
-/

namespace A019336.P1439739308165857950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P1439739308165857950

/-! ## A019336.P16247855054153691386

`∩[A004139(n+1), A167794(n+1)]`
-/

namespace A019336.P16247855054153691386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P16247855054153691386

/-! ## A019336.P11358162258445040047

`∩[A045319(n+1), A167794(n+1)]`
-/

namespace A019336.P11358162258445040047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P11358162258445040047

/-! ## A019336.P9613061477289064296

`∩[A045344(n+1), A167794(n+1)]`
-/

namespace A019336.P9613061477289064296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P9613061477289064296

/-! ## A019336.P13633940261578633937

`∩[A000040(n+1), A167794(n+1)]`
-/

namespace A019336.P13633940261578633937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P13633940261578633937

/-! ## A019336.P17810844888327160723

`∩[A006005(n+1), A167794(n+1)]`
-/

namespace A019336.P17810844888327160723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P17810844888327160723

/-! ## A019336.P205307193103587325

`∩[A008578(n+1), A167794(n+1)]`
-/

namespace A019336.P205307193103587325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P205307193103587325

/-! ## A019336.P1722999913354628872

`∩[A093515(n+1), A167794(n+1)]`
-/

namespace A019336.P1722999913354628872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P1722999913354628872

/-! ## A019336.P16786498485579712156

`A000040(eq[A211242(n+1)+1, A000040(n+1)]+1)`
-/

namespace A019336.P16786498485579712156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A019336.P16786498485579712156

/-! ## A019336.P8841029324931292625

`∩[A046022(n+1), A167794(n+1)]`
-/

namespace A019336.P8841029324931292625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P8841029324931292625

/-! ## A019336.P7004740314009005651

`∩[A053813(n+1), A167794(n+1)]`
-/

namespace A019336.P7004740314009005651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P7004740314009005651

/-! ## A019336.P10978279401201558433

`∩[A066050(n+1), A167794(n+1)]`
-/

namespace A019336.P10978279401201558433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P10978279401201558433

/-! ## A019336.P13183636849846258186

`∩[A067126(n+1), A167794(n+1)]`
-/

namespace A019336.P13183636849846258186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P13183636849846258186

/-! ## A019336.P14814342882558900488

`∩[A055977(n+1), A167794(n+1)]`
-/

namespace A019336.P14814342882558900488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P14814342882558900488

/-! ## A019336.P12662382527112853724

`∩[A053577(n+1), A167794(n+1)]`
-/

namespace A019336.P12662382527112853724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P12662382527112853724

/-! ## A019336.P16855734244790803635

`∩[A167794(n+1), A260442(n)]`
-/

namespace A019336.P16855734244790803635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019336.P16855734244790803635

/-! ## A019336.P15528386989594539047

`filter[A167794(n+1), A008966(#)]`
-/

namespace A019336.P15528386989594539047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A019336.P15528386989594539047

/-!
# A019337: Primes with primitive root 7.

The programs for A019337, there is no canonical definition to state claims against.
-/

/-! ## A019337.P11324331974513419982

`p?[A167795(n+1)]`
-/

namespace A019337.P11324331974513419982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019337.P11324331974513419982

/-! ## A019337.P7341750720420491600

`∩[A015919(n+1), A167795(n+1)]`
-/

namespace A019337.P7341750720420491600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P7341750720420491600

/-! ## A019337.P9469464208009105176

`∩[A073485(n+1), A167795(n+1)]`
-/

namespace A019337.P9469464208009105176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P9469464208009105176

/-! ## A019337.P468650703339155123

`∩[A045344(n+1), A167795(n+1)]`
-/

namespace A019337.P468650703339155123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P468650703339155123

/-! ## A019337.P14683062817132240986

`record[A211243(n+1)+1]`
-/

namespace A019337.P14683062817132240986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211243 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019337.P14683062817132240986

/-! ## A019337.P2638781015923567385

`∩[A000040(n+1), A167795(n+1)]`
-/

namespace A019337.P2638781015923567385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P2638781015923567385

/-! ## A019337.P7650908743944008432

`∩[A008578(n+1), A167795(n+1)]`
-/

namespace A019337.P7650908743944008432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P7650908743944008432

/-! ## A019337.P16158514073450395112

`∩[A053813(n+1), A167795(n+1)]`
-/

namespace A019337.P16158514073450395112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P16158514073450395112

/-! ## A019337.P17158429445868614341

`∩[A167795(n+1), A182986(n+1)]`
-/

namespace A019337.P17158429445868614341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P17158429445868614341

/-! ## A019337.P13785690546154447691

`A000040(eq[A211243(n+1)+1, A000040(n+1)]+1)`
-/

namespace A019337.P13785690546154447691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211243 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A019337.P13785690546154447691

/-! ## A019337.P13660568944281602896

`∩[A167795(n+1), A189710(n+1)]`
-/

namespace A019337.P13660568944281602896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P13660568944281602896

/-! ## A019337.P17892463326628973163

`∩[A167795(n+1), A182140(n+1)]`
-/

namespace A019337.P17892463326628973163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P17892463326628973163

/-! ## A019337.P2284587450826526274

`∩[A097605(n+1), A167795(n+1)]`
-/

namespace A019337.P2284587450826526274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P2284587450826526274

/-! ## A019337.P7868867287618122545

`∩[A070159(n+1), A167795(n+1)]`
-/

namespace A019337.P7868867287618122545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P7868867287618122545

/-! ## A019337.P4228792227549266280

`∩[A167795(n+1), A260442(n)]`
-/

namespace A019337.P4228792227549266280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P4228792227549266280

/-! ## A019337.P13111905204251415953

`∩[A143578(n+1), A167795(n+1)]`
-/

namespace A019337.P13111905204251415953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019337.P13111905204251415953

/-! ## A019337.P7653840648869591603

`record[A006530(A167795(n+2))]`
-/

namespace A019337.P7653840648869591603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167795 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019337.P7653840648869591603

/-! ## A019337.P10137169840783893904

`filter[A167795(n+1), A010051(#)]`
-/

namespace A019337.P10137169840783893904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019337.P10137169840783893904

/-! ## A019337.P2231403578005527739

`filter[A167795(n+1), A359158(#)]`
-/

namespace A019337.P2231403578005527739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A019337.P2231403578005527739

/-! ## A019337.P9386685070577220571

`filter[A167795(n+1), A374130(#)]`
-/

namespace A019337.P9386685070577220571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A019337.P9386685070577220571

/-!
# A019338: Primes with primitive root 8.

The programs for A019338, there is no canonical definition to state claims against.
-/

/-! ## A019338.P4174200473267851606

`∩[A001122(n+1), A084865(n+1)]`
-/

namespace A019338.P4174200473267851606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P4174200473267851606

/-! ## A019338.P2333244977377267911

`p?[A167796(n+1)]`
-/

namespace A019338.P2333244977377267911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019338.P2333244977377267911

/-! ## A019338.P6097762080301391356

`record[∏{p}[A167796(A004396(n+1)), #]]`
-/

namespace A019338.P6097762080301391356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (A004396 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019338.P6097762080301391356

/-! ## A019338.P3194274978765004948

`∩[A001122(n+1), A167796(n+1)]`
-/

namespace A019338.P3194274978765004948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P3194274978765004948

/-! ## A019338.P13618679209485108664

`∩[A050229(n+1), A167796(n+1)]`
-/

namespace A019338.P13618679209485108664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P13618679209485108664

/-! ## A019338.P10238633937961115558

`∩[A001122(n+1), A045309(n+1)]`
-/

namespace A019338.P10238633937961115558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P10238633937961115558

/-! ## A019338.P15332761558066020535

`∩[A001122(n+1), A045410(n+1)]`
-/

namespace A019338.P15332761558066020535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P15332761558066020535

/-! ## A019338.P12089660707637881663

`∩[A045410(n+1), A050229(n+1)]`
-/

namespace A019338.P12089660707637881663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P12089660707637881663

/-! ## A019338.P16360106485194789488

`∩[A045309(n+1), A139099(n+1)]`
-/

namespace A019338.P16360106485194789488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P16360106485194789488

/-! ## A019338.P15259488342306682162

`∩[A045410(n+1), A139099(n+1)]`
-/

namespace A019338.P15259488342306682162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P15259488342306682162

/-! ## A019338.P11073043616367450550

`∩[A003629(n+1), A167796(n+1)]`
-/

namespace A019338.P11073043616367450550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P11073043616367450550

/-! ## A019338.P18008938308094149388

`∩[A015919(n+1), A167796(n+1)]`
-/

namespace A019338.P18008938308094149388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P18008938308094149388

/-! ## A019338.P18259218461219430483

`∩[A007885(n+1), A167796(n+1)]`
-/

namespace A019338.P18259218461219430483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P18259218461219430483

/-! ## A019338.P1289748616478231504

`∩[A001122(n+1), A049596(n+1)]`
-/

namespace A019338.P1289748616478231504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P1289748616478231504

/-! ## A019338.P99556976316324959

`∩[A049596(n+1), A139099(n+1)]`
-/

namespace A019338.P99556976316324959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P99556976316324959

/-! ## A019338.P234637377756460046

`∩[A167796(n+1), A380468(n+1)]`
-/

namespace A019338.P234637377756460046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P234637377756460046

/-! ## A019338.P12831674997088370335

`∩[A001122(n+1), A040028(n+1)]`
-/

namespace A019338.P12831674997088370335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P12831674997088370335

/-! ## A019338.P15290974055999065886

`∩[A040028(n+1), A139099(n+1)]`
-/

namespace A019338.P15290974055999065886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P15290974055999065886

/-! ## A019338.P9645549584135740947

`∩[A040028(n+1), A167791(n+1)]`
-/

namespace A019338.P9645549584135740947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019338.P9645549584135740947

/-!
# A019339: Primes with primitive root 11.

The programs for A019339, there is no canonical definition to state claims against.
-/

/-! ## A019339.P10140334223512528215

`p?[A240028(n+1)]`
-/

namespace A019339.P10140334223512528215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019339.P10140334223512528215

/-! ## A019339.P2202069326822821426

`∩[A015919(n+1), A240028(n+1)]`
-/

namespace A019339.P2202069326822821426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P2202069326822821426

/-! ## A019339.P9832988183398385028

`∩[A038882(n+1), A240028(n+1)]`
-/

namespace A019339.P9832988183398385028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P9832988183398385028

/-! ## A019339.P9384257636357820183

`A240028(eq[1, ∑{e}[A240028(n+1), #]]+1)`
-/

namespace A019339.P9384257636357820183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A019339.P9384257636357820183

/-! ## A019339.P2729602255633009545

`∩[A045319(n+1), A240028(n+1)]`
-/

namespace A019339.P2729602255633009545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P2729602255633009545

/-! ## A019339.P3913777613096879539

`∩[A000040(n+1), A240028(n+1)]`
-/

namespace A019339.P3913777613096879539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P3913777613096879539

/-! ## A019339.P2309632855948463403

`∩[A008578(n+1), A240028(n+1)]`
-/

namespace A019339.P2309632855948463403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P2309632855948463403

/-! ## A019339.P9817450136659669034

`∩[A182986(n+1), A240028(n+1)]`
-/

namespace A019339.P9817450136659669034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P9817450136659669034

/-! ## A019339.P16364851559585667317

`∩[A158611(n+1), A240028(n+1)]`
-/

namespace A019339.P16364851559585667317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P16364851559585667317

/-! ## A019339.P3477931746017978845

`∩[A326715(n+1), A240028(n+1)]`
-/

namespace A019339.P3477931746017978845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P3477931746017978845

/-! ## A019339.P4310502711004478483

`∩[A182140(n+1), A240028(n+1)]`
-/

namespace A019339.P4310502711004478483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P4310502711004478483

/-! ## A019339.P17564864908576096787

`∩[A097605(n+1), A240028(n+1)]`
-/

namespace A019339.P17564864908576096787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P17564864908576096787

/-! ## A019339.P10088350231286069666

`∩[A070159(n+1), A240028(n+1)]`
-/

namespace A019339.P10088350231286069666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P10088350231286069666

/-! ## A019339.P12556111554704056639

`∩[A187711(n+1), A240028(n+1)]`
-/

namespace A019339.P12556111554704056639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P12556111554704056639

/-! ## A019339.P14985588967090366391

`∩[A143578(n+1), A240028(n+1)]`
-/

namespace A019339.P14985588967090366391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P14985588967090366391

/-! ## A019339.P3092942881963130362

`∩[A117288(n+1), A240028(n+1)]`
-/

namespace A019339.P3092942881963130362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P3092942881963130362

/-! ## A019339.P18097467473083282543

`∩[A117286(n+1), A240028(n+1)]`
-/

namespace A019339.P18097467473083282543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019339.P18097467473083282543

/-! ## A019339.P12137067136878493506

`record[A006530(A240028(n+3))]`
-/

namespace A019339.P12137067136878493506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240028 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019339.P12137067136878493506

/-! ## A019339.P3075281324001658584

`filter[A240028(n+1), A010051(#)]`
-/

namespace A019339.P3075281324001658584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019339.P3075281324001658584

/-! ## A019339.P14100654700318417283

`filter[A240028(n+1), A359158(#)]`
-/

namespace A019339.P14100654700318417283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A019339.P14100654700318417283

/-!
# A019340: Primes with primitive root 12.

The programs for A019340, there is no canonical definition to state claims against.
-/

/-! ## A019340.P16953594706912353269

`p?[A240030(n+1)]`
-/

namespace A019340.P16953594706912353269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019340.P16953594706912353269

/-! ## A019340.P13173974905268276434

`∩[A003630(n+1), A240030(n+1)]`
-/

namespace A019340.P13173974905268276434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P13173974905268276434

/-! ## A019340.P14192268772599041194

`∩[A038875(n+1), A240030(n+1)]`
-/

namespace A019340.P14192268772599041194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P14192268772599041194

/-! ## A019340.P17488849680921362523

`∩[A015919(n+1), A240030(n+1)]`
-/

namespace A019340.P17488849680921362523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P17488849680921362523

/-! ## A019340.P13005834802723662671

`∩[A040125(n+1), A240030(n+1)]`
-/

namespace A019340.P13005834802723662671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P13005834802723662671

/-! ## A019340.P3077792961508430871

`∩[A040102(n+1), A240030(n+1)]`
-/

namespace A019340.P3077792961508430871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P3077792961508430871

/-! ## A019340.P16471309443919291412

`∩[A045318(n+1), A240030(n+1)]`
-/

namespace A019340.P16471309443919291412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P16471309443919291412

/-! ## A019340.P12232914977887899781

`∩[A040995(n+1), A240030(n+1)]`
-/

namespace A019340.P12232914977887899781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P12232914977887899781

/-! ## A019340.P5849700915458470991

`∩[A167135(n+1), A240030(n+1)]`
-/

namespace A019340.P5849700915458470991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P5849700915458470991

/-! ## A019340.P14561510994121089887

`record[A246489(n+3)+1]`
-/

namespace A019340.P14561510994121089887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246489 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019340.P14561510994121089887

/-! ## A019340.P17185303114146158688

`∩[A000040(n+1), A240030(n+1)]`
-/

namespace A019340.P17185303114146158688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P17185303114146158688

/-! ## A019340.P1823812236224890669

`∩[A006005(n+1), A240030(n+1)]`
-/

namespace A019340.P1823812236224890669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P1823812236224890669

/-! ## A019340.P3379428907352848496

`∩[A045344(n+1), A240030(n+1)]`
-/

namespace A019340.P3379428907352848496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P3379428907352848496

/-! ## A019340.P15407554280366935163

`∩[A093515(n+1), A240030(n+1)]`
-/

namespace A019340.P15407554280366935163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P15407554280366935163

/-! ## A019340.P13026164628503790502

`∩[A008578(n+1), A240030(n+1)]`
-/

namespace A019340.P13026164628503790502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P13026164628503790502

/-! ## A019340.P18195129062564097877

`∩[A046022(n+1), A240030(n+1)]`
-/

namespace A019340.P18195129062564097877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P18195129062564097877

/-! ## A019340.P17683912752898773952

`∩[A033946(n+1), A240030(n+1)]`
-/

namespace A019340.P17683912752898773952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P17683912752898773952

/-! ## A019340.P16481293030625053588

`∩[A051948(n+1), A240030(n+1)]`
-/

namespace A019340.P16481293030625053588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P16481293030625053588

/-! ## A019340.P6982062254382793999

`∩[A053813(n+1), A240030(n+1)]`
-/

namespace A019340.P6982062254382793999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P6982062254382793999

/-! ## A019340.P15646955999484666358

`∩[A067126(n+1), A240030(n+1)]`
-/

namespace A019340.P15646955999484666358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019340.P15646955999484666358

/-!
# A019341: Primes with primitive root 13.

The programs for A019341, there is no canonical definition to state claims against.
-/

/-! ## A019341.P2033664458206640397

`p?[A240032(n+1)]`
-/

namespace A019341.P2033664458206640397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019341.P2033664458206640397

/-! ## A019341.P15113422187137020124

`∩[A015919(n+1), A240032(n+1)]`
-/

namespace A019341.P15113422187137020124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P15113422187137020124

/-! ## A019341.P1804366099471623632

`∩[A038884(n+1), A240032(n+1)]`
-/

namespace A019341.P1804366099471623632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P1804366099471623632

/-! ## A019341.P7205698470823580750

`∩[A073485(n+1), A240032(n+1)]`
-/

namespace A019341.P7205698470823580750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P7205698470823580750

/-! ## A019341.P15723393227869206413

`∩[A049545(n+1), A240032(n+1)]`
-/

namespace A019341.P15723393227869206413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P15723393227869206413

/-! ## A019341.P15040750158605316000

`∩[A000040(n+1), A240032(n+1)]`
-/

namespace A019341.P15040750158605316000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P15040750158605316000

/-! ## A019341.P3752585190742368300

`∩[A008578(n+1), A240032(n+1)]`
-/

namespace A019341.P3752585190742368300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P3752585190742368300

/-! ## A019341.P5654736204898932345

`∩[A045344(n+1), A240032(n+1)]`
-/

namespace A019341.P5654736204898932345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P5654736204898932345

/-! ## A019341.P5936912168873621360

`∩[A182986(n+1), A240032(n+1)]`
-/

namespace A019341.P5936912168873621360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P5936912168873621360

/-! ## A019341.P10174890195168850914

`∩[A046022(n+1), A240032(n+1)]`
-/

namespace A019341.P10174890195168850914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P10174890195168850914

/-! ## A019341.P18401344362987189465

`∩[A053813(n+1), A240032(n+1)]`
-/

namespace A019341.P18401344362987189465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P18401344362987189465

/-! ## A019341.P8907245228388563635

`∩[A067126(n+1), A240032(n+1)]`
-/

namespace A019341.P8907245228388563635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P8907245228388563635

/-! ## A019341.P14503340259810171172

`∩[A062972(n+1), A240032(n+1)]`
-/

namespace A019341.P14503340259810171172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P14503340259810171172

/-! ## A019341.P15144188121669101060

`∩[A060634(n+1), A240032(n+1)]`
-/

namespace A019341.P15144188121669101060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P15144188121669101060

/-! ## A019341.P18410821108139661549

`∩[A174090(n+1), A240032(n+1)]`
-/

namespace A019341.P18410821108139661549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P18410821108139661549

/-! ## A019341.P1754231852063711010

`∩[A182140(n+1), A240032(n+1)]`
-/

namespace A019341.P1754231852063711010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P1754231852063711010

/-! ## A019341.P16751716093961074594

`∩[A067133(n+1), A240032(n+1)]`
-/

namespace A019341.P16751716093961074594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P16751716093961074594

/-! ## A019341.P5499130269551918543

`∩[A240032(n+1), A097605(n+1)]`
-/

namespace A019341.P5499130269551918543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P5499130269551918543

/-! ## A019341.P13404698573111098105

`∩[A240032(n+1), A260442(n)]`
-/

namespace A019341.P13404698573111098105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P13404698573111098105

/-! ## A019341.P9795001738382916854

`∩[A066191(n+1), A240032(n+1)]`
-/

namespace A019341.P9795001738382916854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019341.P9795001738382916854

/-!
# A019342: Primes with primitive root 14.

The programs for A019342, there is no canonical definition to state claims against.
-/

/-! ## A019342.P5384963493105361818

`p?[A240094(n+1)]`
-/

namespace A019342.P5384963493105361818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019342.P5384963493105361818

/-! ## A019342.P18231674108728295984

`record[A006530(A240094(n+2))]`
-/

namespace A019342.P18231674108728295984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019342.P18231674108728295984

/-! ## A019342.P273165315354337411

`filter[A240094(n+1), A008966(#)]`
-/

namespace A019342.P273165315354337411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A019342.P273165315354337411

/-! ## A019342.P2123766607731314560

`filter[A240094(n+1), A010051(#)]`
-/

namespace A019342.P2123766607731314560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019342.P2123766607731314560

/-! ## A019342.P6742371104290957287

`filter[A240094(n+1), A252233(#)]`
-/

namespace A019342.P6742371104290957287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A019342.P6742371104290957287

/-! ## A019342.P2257001667661248001

`filter[A240094(n+1), A257531(#)]`
-/

namespace A019342.P2257001667661248001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A019342.P2257001667661248001

/-! ## A019342.P5649540064582832386

`filter[A240094(n+1), A296211(#)]`
-/

namespace A019342.P5649540064582832386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A019342.P5649540064582832386

/-! ## A019342.P4207509627226939747

`filter[A240094(n+1), A323152(#)]`
-/

namespace A019342.P4207509627226939747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A019342.P4207509627226939747

/-! ## A019342.P54445059106915803

`filter[A240094(n+1), A323153(#)]`
-/

namespace A019342.P54445059106915803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A019342.P54445059106915803

/-! ## A019342.P13201778411544958608

`filter[A240094(n+1), A323154(#)]`
-/

namespace A019342.P13201778411544958608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A019342.P13201778411544958608

/-! ## A019342.P12761167174699914084

`filter[A240094(n+1), A323239(#)]`
-/

namespace A019342.P12761167174699914084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A019342.P12761167174699914084

/-! ## A019342.P11653547604690078235

`filter[A240094(n+1), A324823(#)]`
-/

namespace A019342.P11653547604690078235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A019342.P11653547604690078235

/-! ## A019342.P16440448458707226669

`filter[A240094(n+1), A340371(#)]`
-/

namespace A019342.P16440448458707226669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A019342.P16440448458707226669

/-! ## A019342.P17536011480624732209

`∩[A240094(n+1), A260442(n)]`
-/

namespace A019342.P17536011480624732209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P17536011480624732209

/-! ## A019342.P17822607460195639049

`∩[A000040(n+1), A240094(n+1)]`
-/

namespace A019342.P17822607460195639049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P17822607460195639049

/-! ## A019342.P13095906323970002908

`∩[A001751(n+1), A240094(n+1)]`
-/

namespace A019342.P13095906323970002908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P13095906323970002908

/-! ## A019342.P4633925317987158824

`∩[A004139(n+1), A240094(n+1)]`
-/

namespace A019342.P4633925317987158824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P4633925317987158824

/-! ## A019342.P11279615880421976925

`∩[A005117(n+1), A240094(n+1)]`
-/

namespace A019342.P11279615880421976925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P11279615880421976925

/-! ## A019342.P2951414545964335640

`∩[A006005(n+1), A240094(n+1)]`
-/

namespace A019342.P2951414545964335640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019342.P2951414545964335640

/-!
# A019343: Primes with primitive root 15.

The programs for A019343, there is no canonical definition to state claims against.
-/

/-! ## A019343.P14528173553189705602

`p?[A240096(n+1)]`
-/

namespace A019343.P14528173553189705602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019343.P14528173553189705602

/-! ## A019343.P2852738429617800600

`∩[A015919(n+1), A240096(n+1)]`
-/

namespace A019343.P2852738429617800600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P2852738429617800600

/-! ## A019343.P11300388652621893337

`∩[A073485(n+1), A240096(n+1)]`
-/

namespace A019343.P11300388652621893337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P11300388652621893337

/-! ## A019343.P3653844106980619138

`∩[A000040(n+1), A240096(n+1)]`
-/

namespace A019343.P3653844106980619138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P3653844106980619138

/-! ## A019343.P8869020358527879094

`∩[A045319(n+1), A240096(n+1)]`
-/

namespace A019343.P8869020358527879094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P8869020358527879094

/-! ## A019343.P16599640158090496139

`∩[A045344(n+1), A240096(n+1)]`
-/

namespace A019343.P16599640158090496139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P16599640158090496139

/-! ## A019343.P14334499634998099372

`∩[A008578(n+1), A240096(n+1)]`
-/

namespace A019343.P14334499634998099372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P14334499634998099372

/-! ## A019343.P7988837663523101321

`∩[A033946(n+1), A240096(n+1)]`
-/

namespace A019343.P7988837663523101321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P7988837663523101321

/-! ## A019343.P11747199856684657813

`∩[A053813(n+1), A240096(n+1)]`
-/

namespace A019343.P11747199856684657813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P11747199856684657813

/-! ## A019343.P7350454167885038351

`∩[A060634(n+1), A240096(n+1)]`
-/

namespace A019343.P7350454167885038351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P7350454167885038351

/-! ## A019343.P265835406677339572

`∩[A070159(n+1), A240096(n+1)]`
-/

namespace A019343.P265835406677339572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P265835406677339572

/-! ## A019343.P228818951581718020

`∩[A055977(n+1), A240096(n+1)]`
-/

namespace A019343.P228818951581718020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P228818951581718020

/-! ## A019343.P6428469073002369817

`∩[A067934(n+1), A240096(n+1)]`
-/

namespace A019343.P6428469073002369817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P6428469073002369817

/-! ## A019343.P6939630055522401368

`∩[A240096(n+1), A260442(n)]`
-/

namespace A019343.P6939630055522401368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P6939630055522401368

/-! ## A019343.P7800647867282163624

`∩[A143578(n+1), A240096(n+1)]`
-/

namespace A019343.P7800647867282163624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P7800647867282163624

/-! ## A019343.P6038642242288248385

`∩[A117286(n+1), A240096(n+1)]`
-/

namespace A019343.P6038642242288248385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P6038642242288248385

/-! ## A019343.P2120595156537973440

`record[A006530(A240096(n+2))]`
-/

namespace A019343.P2120595156537973440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240096 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019343.P2120595156537973440

/-! ## A019343.P13530241906835645346

`filter[A240096(n+1), A010051(#)]`
-/

namespace A019343.P13530241906835645346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019343.P13530241906835645346

/-! ## A019343.P14820159254153140421

`filter[A240096(n+1), A359158(#)]`
-/

namespace A019343.P14820159254153140421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A019343.P14820159254153140421

/-! ## A019343.P7757810490109157455

`∩[A117285(n+1), A240096(n+1)]`
-/

namespace A019343.P7757810490109157455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019343.P7757810490109157455

/-!
# A019344: Primes with primitive root 17.

The programs for A019344, there is no canonical definition to state claims against.
-/

/-! ## A019344.P7091503970665205330

`p?[A240101(n+1)]`
-/

namespace A019344.P7091503970665205330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019344.P7091503970665205330

/-! ## A019344.P4779837830351710973

`∩[A015919(n+1), A240101(n+1)]`
-/

namespace A019344.P4779837830351710973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P4779837830351710973

/-! ## A019344.P16527806870579899069

`∩[A049549(n+1), A240101(n+1)]`
-/

namespace A019344.P16527806870579899069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P16527806870579899069

/-! ## A019344.P2952788049264344107

`∩[A000040(n+1), A240101(n+1)]`
-/

namespace A019344.P2952788049264344107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P2952788049264344107

/-! ## A019344.P18135494701238694456

`∩[A008578(n+1), A240101(n+1)]`
-/

namespace A019344.P18135494701238694456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P18135494701238694456

/-! ## A019344.P686955141167198378

`∩[A182986(n+1), A240101(n+1)]`
-/

namespace A019344.P686955141167198378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P686955141167198378

/-! ## A019344.P3128278852008528301

`∩[A046022(n+1), A240101(n+1)]`
-/

namespace A019344.P3128278852008528301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P3128278852008528301

/-! ## A019344.P9679322431502524892

`∩[A158611(n+1), A240101(n+1)]`
-/

namespace A019344.P9679322431502524892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P9679322431502524892

/-! ## A019344.P16220695887186887774

`∩[A062972(n+1), A240101(n+1)]`
-/

namespace A019344.P16220695887186887774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P16220695887186887774

/-! ## A019344.P10059500024009729395

`∩[A067126(n+1), A240101(n+1)]`
-/

namespace A019344.P10059500024009729395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P10059500024009729395

/-! ## A019344.P6641105052918603195

`∩[A189710(n+1), A240101(n+1)]`
-/

namespace A019344.P6641105052918603195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P6641105052918603195

/-! ## A019344.P13524566321110844828

`∩[A060634(n+1), A240101(n+1)]`
-/

namespace A019344.P13524566321110844828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P13524566321110844828

/-! ## A019344.P10517054961848362374

`∩[A174090(n+1), A240101(n+1)]`
-/

namespace A019344.P10517054961848362374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P10517054961848362374

/-! ## A019344.P5841750300281437952

`∩[A182140(n+1), A240101(n+1)]`
-/

namespace A019344.P5841750300281437952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P5841750300281437952

/-! ## A019344.P15045216274723312072

`∩[A097605(n+1), A240101(n+1)]`
-/

namespace A019344.P15045216274723312072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P15045216274723312072

/-! ## A019344.P15501414378061210753

`∩[A070159(n+1), A240101(n+1)]`
-/

namespace A019344.P15501414378061210753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P15501414378061210753

/-! ## A019344.P2853000444501903897

`∩[A066191(n+1), A240101(n+1)]`
-/

namespace A019344.P2853000444501903897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P2853000444501903897

/-! ## A019344.P11707377117034425878

`∩[A143578(n+1), A240101(n+1)]`
-/

namespace A019344.P11707377117034425878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019344.P11707377117034425878

/-! ## A019344.P11144589893728377355

`filter[A240101(n+1), A010051(#)]`
-/

namespace A019344.P11144589893728377355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019344.P11144589893728377355

/-! ## A019344.P12563776830651904223

`filter[A240101(n+1), A354817(#)]`
-/

namespace A019344.P12563776830651904223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A019344.P12563776830651904223

/-!
# A019345: Primes with primitive root 18.

The programs for A019345, there is no canonical definition to state claims against.
-/

/-! ## A019345.P4718211460822455987

`p?[A240103(n+1)]`
-/

namespace A019345.P4718211460822455987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019345.P4718211460822455987

/-! ## A019345.P3296956843579246466

`∩[A003629(n+1), A240103(n+1)]`
-/

namespace A019345.P3296956843579246466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P3296956843579246466

/-! ## A019345.P10438929221776032480

`∩[A042999(n+1), A240103(n+1)]`
-/

namespace A019345.P10438929221776032480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P10438929221776032480

/-! ## A019345.P8440289023283823114

`∩[A015919(n+1), A240103(n+1)]`
-/

namespace A019345.P8440289023283823114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P8440289023283823114

/-! ## A019345.P1591496515749629782

`∩[A040100(n+1), A240103(n+1)]`
-/

namespace A019345.P1591496515749629782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P1591496515749629782

/-! ## A019345.P16098627629577301482

`∩[A040144(n+1), A240103(n+1)]`
-/

namespace A019345.P16098627629577301482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P16098627629577301482

/-! ## A019345.P2089435933456463501

`∩[A040993(n+1), A240103(n+1)]`
-/

namespace A019345.P2089435933456463501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P2089435933456463501

/-! ## A019345.P2464132622262558102

`∩[A059309(n+1), A240103(n+1)]`
-/

namespace A019345.P2464132622262558102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P2464132622262558102

/-! ## A019345.P10820340102512543666

`∩[A014662(n+1), A240103(n+1)]`
-/

namespace A019345.P10820340102512543666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P10820340102512543666

/-! ## A019345.P9330117656630459367

`∩[A045395(n+1), A240103(n+1)]`
-/

namespace A019345.P9330117656630459367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P9330117656630459367

/-! ## A019345.P14033394893179130675

`∩[A000040(n+1), A240103(n+1)]`
-/

namespace A019345.P14033394893179130675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P14033394893179130675

/-! ## A019345.P5574437994414381946

`∩[A006005(n+1), A240103(n+1)]`
-/

namespace A019345.P5574437994414381946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P5574437994414381946

/-! ## A019345.P6776664846390821828

`∩[A008578(n+1), A240103(n+1)]`
-/

namespace A019345.P6776664846390821828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P6776664846390821828

/-! ## A019345.P3839539853735858912

`∩[A053813(n+1), A240103(n+1)]`
-/

namespace A019345.P3839539853735858912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P3839539853735858912

/-! ## A019345.P8880537410727395547

`∩[A067126(n+1), A240103(n+1)]`
-/

namespace A019345.P8880537410727395547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P8880537410727395547

/-! ## A019345.P15154962070102084872

`∩[A055977(n+1), A240103(n+1)]`
-/

namespace A019345.P15154962070102084872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P15154962070102084872

/-! ## A019345.P9194955436090845035

`∩[A240103(n+1), A260442(n)]`
-/

namespace A019345.P9194955436090845035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P9194955436090845035

/-! ## A019345.P11344962122763150234

`∩[A143578(n+1), A240103(n+1)]`
-/

namespace A019345.P11344962122763150234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019345.P11344962122763150234

/-! ## A019345.P1903893785484534283

`filter[A240103(n+1), A008966(#)]`
-/

namespace A019345.P1903893785484534283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A019345.P1903893785484534283

/-! ## A019345.P15713151780355583094

`filter[A240103(n+1), A010051(#)]`
-/

namespace A019345.P15713151780355583094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A019345.P15713151780355583094

/-!
# A019346: Primes with primitive root 19.

The programs for A019346, there is no canonical definition to state claims against.
-/

/-! ## A019346.P14802578739840211579

`p?[A240106(n+1)]`
-/

namespace A019346.P14802578739840211579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019346.P14802578739840211579

/-! ## A019346.P1886375298431533398

`∩[A015919(n+1), A240106(n+1)]`
-/

namespace A019346.P1886375298431533398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P1886375298431533398

/-! ## A019346.P3601689640722277005

`∩[A038892(n+1), A240106(n+1)]`
-/

namespace A019346.P3601689640722277005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P3601689640722277005

/-! ## A019346.P16600525798019230157

`∩[A073485(n+1), A240106(n+1)]`
-/

namespace A019346.P16600525798019230157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P16600525798019230157

/-! ## A019346.P13251864372553421158

`∩[A000040(n+1), A240106(n+1)]`
-/

namespace A019346.P13251864372553421158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P13251864372553421158

/-! ## A019346.P2923706676920351585

`∩[A008578(n+1), A240106(n+1)]`
-/

namespace A019346.P2923706676920351585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P2923706676920351585

/-! ## A019346.P576678830481753387

`∩[A045319(n+1), A240106(n+1)]`
-/

namespace A019346.P576678830481753387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P576678830481753387

/-! ## A019346.P14000796871292686233

`∩[A045344(n+1), A240106(n+1)]`
-/

namespace A019346.P14000796871292686233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P14000796871292686233

/-! ## A019346.P14897614955827851623

`∩[A182986(n+1), A240106(n+1)]`
-/

namespace A019346.P14897614955827851623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P14897614955827851623

/-! ## A019346.P13376387496628121057

`∩[A053813(n+1), A240106(n+1)]`
-/

namespace A019346.P13376387496628121057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P13376387496628121057

/-! ## A019346.P3048106716248196862

`∩[A189710(n+1), A240106(n+1)]`
-/

namespace A019346.P3048106716248196862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P3048106716248196862

/-! ## A019346.P1722771415036474848

`∩[A060634(n+1), A240106(n+1)]`
-/

namespace A019346.P1722771415036474848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P1722771415036474848

/-! ## A019346.P1873359470675600658

`∩[A070159(n+1), A240106(n+1)]`
-/

namespace A019346.P1873359470675600658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P1873359470675600658

/-! ## A019346.P1168596748576991538

`∩[A055977(n+1), A240106(n+1)]`
-/

namespace A019346.P1168596748576991538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P1168596748576991538

/-! ## A019346.P16015903064136608341

`∩[A145739(n+1), A240106(n+1)]`
-/

namespace A019346.P16015903064136608341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P16015903064136608341

/-! ## A019346.P16118780473507629903

`∩[A067934(n+1), A240106(n+1)]`
-/

namespace A019346.P16118780473507629903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P16118780473507629903

/-! ## A019346.P12748990398688799431

`∩[A240106(n+1), A260442(n)]`
-/

namespace A019346.P12748990398688799431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P12748990398688799431

/-! ## A019346.P10281842850960549867

`∩[A079603(n+1), A240106(n+1)]`
-/

namespace A019346.P10281842850960549867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P10281842850960549867

/-! ## A019346.P12698615754287891890

`∩[A117287(n+1), A240106(n+1)]`
-/

namespace A019346.P12698615754287891890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019346.P12698615754287891890

/-! ## A019346.P16333784241557886529

`record[A006530(A240106(n+2))]`
-/

namespace A019346.P16333784241557886529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240106 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019346.P16333784241557886529

/-!
# A019347: Primes with primitive root 20.

The programs for A019347, there is no canonical definition to state claims against.
-/

/-! ## A019347.P16978440060898933464

`p?[A240108(n+1)]`
-/

namespace A019347.P16978440060898933464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019347.P16978440060898933464

/-! ## A019347.P16454716953687697879

`∩[A097957(n+1), A240108(n+1)]`
-/

namespace A019347.P16454716953687697879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P16454716953687697879

/-! ## A019347.P14524161274284565185

`∩[A003631(n+1), A240108(n+1)]`
-/

namespace A019347.P14524161274284565185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P14524161274284565185

/-! ## A019347.P13895041626655771010

`∩[A042993(n+1), A240108(n+1)]`
-/

namespace A019347.P13895041626655771010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P13895041626655771010

/-! ## A019347.P6367786661767651927

`∩[A015919(n+1), A240108(n+1)]`
-/

namespace A019347.P6367786661767651927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P6367786661767651927

/-! ## A019347.P15324434407571243643

`∩[A040148(n+1), A240108(n+1)]`
-/

namespace A019347.P15324434407571243643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P15324434407571243643

/-! ## A019347.P15927541737906297392

`∩[A040106(n+1), A240108(n+1)]`
-/

namespace A019347.P15927541737906297392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P15927541737906297392

/-! ## A019347.P12250950895139921633

`∩[A045321(n+1), A240108(n+1)]`
-/

namespace A019347.P12250950895139921633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P12250950895139921633

/-! ## A019347.P474895339270161523

`∩[A023162(n+1), A240108(n+1)]`
-/

namespace A019347.P474895339270161523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P474895339270161523

/-! ## A019347.P6341714549090336652

`∩[A040990(n+1), A240108(n+1)]`
-/

namespace A019347.P6341714549090336652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P6341714549090336652

/-! ## A019347.P14840045800404491638

`∩[A040970(n+1), A240108(n+1)]`
-/

namespace A019347.P14840045800404491638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P14840045800404491638

/-! ## A019347.P10217940388246669151

`∩[A040972(n+1), A240108(n+1)]`
-/

namespace A019347.P10217940388246669151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P10217940388246669151

/-! ## A019347.P14576404365954356796

`∩[A040161(n+1), A240108(n+1)]`
-/

namespace A019347.P14576404365954356796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P14576404365954356796

/-! ## A019347.P17433350103223890339

`∩[A040169(n+1), A240108(n+1)]`
-/

namespace A019347.P17433350103223890339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P17433350103223890339

/-! ## A019347.P8745994778718837723

`∩[A040159(n+1), A240108(n+1)]`
-/

namespace A019347.P8745994778718837723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P8745994778718837723

/-! ## A019347.P7419927923070876801

`∩[A040980(n+1), A240108(n+1)]`
-/

namespace A019347.P7419927923070876801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P7419927923070876801

/-! ## A019347.P5654397789554973108

`∩[A040982(n+1), A240108(n+1)]`
-/

namespace A019347.P5654397789554973108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P5654397789554973108

/-! ## A019347.P4433743736859605671

`∩[A040171(n+1), A240108(n+1)]`
-/

namespace A019347.P4433743736859605671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P4433743736859605671

/-! ## A019347.P6612300243792702067

`∩[A040165(n+1), A240108(n+1)]`
-/

namespace A019347.P6612300243792702067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P6612300243792702067

/-! ## A019347.P9016870585540073248

`∩[A040177(n+1), A240108(n+1)]`
-/

namespace A019347.P9016870585540073248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019347.P9016870585540073248

/-!
# A019351: Primes with primitive root 24.

The programs for A019351, there is no canonical definition to state claims against.
-/

/-! ## A019351.P17581041359233541521

`∩[A038877(n+1), A279367(n+1)]`
-/

namespace A019351.P17581041359233541521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019351.P17581041359233541521

/-! ## A019351.P11930223892057039532

`∩[A038877(n+1), A167662(n+1)]`
-/

namespace A019351.P11930223892057039532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019351.P11930223892057039532

/-! ## A019351.P8456989567860863179

`A141639(A329131(n+1)+A324088(n+1))`
-/

namespace A019351.P8456989567860863179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (A329131 (n + 1) + A324088 (n + 1)).toNat

end

end A019351.P8456989567860863179

/-! ## A019351.P10123836262212451642

`record[A176173(A084127(n+1)-A270650(n+1))]`
-/

namespace A019351.P10123836262212451642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176173 (A084127 (n + 1) - A270650 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019351.P10123836262212451642

/-!
# A019352: Primes with primitive root 26.

The programs for A019352, there is no canonical definition to state claims against.
-/

/-! ## A019352.P10760888431424351603

`p?[eq[A175597(n+1), A228085(n)]]`
-/

namespace A019352.P10760888431424351603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019352.P10760888431424351603

/-! ## A019352.P8113959837407289888

`record[A328579(A047379(n+1)²)]`
-/

namespace A019352.P8113959837407289888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A047379 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019352.P8113959837407289888

/-! ## A019352.P1271577699850333907

`record[A328579(A047386(n+1)²)]`
-/

namespace A019352.P1271577699850333907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A047386 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019352.P1271577699850333907

/-! ## A019352.P10198201242967772995

`record[A328579(A047388(n+1)²)]`
-/

namespace A019352.P10198201242967772995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A047388 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019352.P10198201242967772995

/-! ## A019352.P1981336298614339094

`record[A328579(A059325(n+1)²)]`
-/

namespace A019352.P1981336298614339094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A059325 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019352.P1981336298614339094

/-!
# A019353: Primes with primitive root 27.

The programs for A019353, there is no canonical definition to state claims against.
-/

/-! ## A019353.P1564026483590832933

`∩[A019334(n+1), A105875(n+1)]`
-/

namespace A019353.P1564026483590832933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P1564026483590832933

/-! ## A019353.P14140414774538373919

`∩[A002313(n+1), A019334(n+1)]`
-/

namespace A019353.P14140414774538373919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P14140414774538373919

/-! ## A019353.P11501292704689334852

`∩[A002313(n+1), A105875(n+1)]`
-/

namespace A019353.P11501292704689334852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P11501292704689334852

/-! ## A019353.P1652509945582122110

`∩[A003627(n+1), A019334(n+1)]`
-/

namespace A019353.P1652509945582122110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P1652509945582122110

/-! ## A019353.P6959278435448211897

`∩[A019334(n+1), A045309(n+1)]`
-/

namespace A019353.P6959278435448211897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P6959278435448211897

/-! ## A019353.P3834405127693291210

`∩[A019334(n+1), A055025(n+1)]`
-/

namespace A019353.P3834405127693291210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P3834405127693291210

/-! ## A019353.P1075307047768731793

`∩[A055025(n+1), A105875(n+1)]`
-/

namespace A019353.P1075307047768731793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P1075307047768731793

/-! ## A019353.P11843180420159308812

`∩[A038875(n+1), A105875(n+1)]`
-/

namespace A019353.P11843180420159308812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P11843180420159308812

/-! ## A019353.P15815604803837723147

`∩[A167792(n+1), A002313(n+1)]`
-/

namespace A019353.P15815604803837723147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P15815604803837723147

/-! ## A019353.P14094888839156917415

`∩[A045309(n+1), A167792(n+1)]`
-/

namespace A019353.P14094888839156917415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P14094888839156917415

/-! ## A019353.P16552533456243480765

`∩[A019334(n+1), A040036(n+1)]`
-/

namespace A019353.P16552533456243480765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P16552533456243480765

/-! ## A019353.P18373643758581610692

`∩[A105875(n+1), A301916(n+1)]`
-/

namespace A019353.P18373643758581610692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P18373643758581610692

/-! ## A019353.P137356263671018350

`∩[A019334(n+1), A347877(n+1)]`
-/

namespace A019353.P137356263671018350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P137356263671018350

/-! ## A019353.P15485492673620914494

`∩[A105875(n+1), A347877(n+1)]`
-/

namespace A019353.P15485492673620914494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P15485492673620914494

/-! ## A019353.P10799694853100210593

`∩[A019334(n+1), A281292(n+1)]`
-/

namespace A019353.P10799694853100210593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P10799694853100210593

/-! ## A019353.P387068004258217368

`∩[A019334(n+1), A224450(n+1)]`
-/

namespace A019353.P387068004258217368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P387068004258217368

/-! ## A019353.P1033978397371619360

`∩[A019334(n+1), A066501(n+1)]`
-/

namespace A019353.P1033978397371619360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P1033978397371619360

/-! ## A019353.P11286648054608560804

`∩[A019334(n+1), A082406(n+1)]`
-/

namespace A019353.P11286648054608560804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P11286648054608560804

/-! ## A019353.P9730392689355583261

`∩[A003654(n+1), A019334(n+1)]`
-/

namespace A019353.P9730392689355583261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P9730392689355583261

/-! ## A019353.P493686792547817930

`∩[A003814(n+1), A019334(n+1)]`
-/

namespace A019353.P493686792547817930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019353.P493686792547817930

/-!
# A019354: Primes with primitive root 28.

The programs for A019354, there is no canonical definition to state claims against.
-/

/-! ## A019354.P7849535578764994909

`∩[A003632(n+1), A169655(n+1)]`
-/

namespace A019354.P7849535578764994909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019354.P7849535578764994909

/-! ## A019354.P12233974140756118656

`∩[A003632(n+1), A334966(n+1)+2]`
-/

namespace A019354.P12233974140756118656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019354.P12233974140756118656

/-! ## A019354.P10406263759125093940

`A040113(A351958(n+1))%A132215(A091179(n+2))`
-/

namespace A019354.P10406263759125093940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040113 (A351958 (n + 1)).toNat) (A132215 (A091179 (n + 2)).toNat)

end

end A019354.P10406263759125093940

/-! ## A019354.P13871789141003479204

`∩[A003632(n+1), A048197(n+1)]`
-/

namespace A019354.P13871789141003479204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019354.P13871789141003479204

/-!
# A019355: Primes with primitive root 29.

The programs for A019355, there is no canonical definition to state claims against.
-/

/-! ## A019355.P12451622902032463183

`filter[A038902(n+1), A115198(#)]`
-/

namespace A019355.P12451622902032463183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115198 (f1 j).toNat = 1) n)

end

end A019355.P12451622902032463183

/-! ## A019355.P13823590834488795531

`p?[∑[A031111(A220681(n+1))]]`
-/

namespace A019355.P13823590834488795531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A220681 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019355.P13823590834488795531

/-! ## A019355.P14819733917555967157

`p?[∑[A001215(n+1)%A339333(n+1)]]`
-/

namespace A019355.P14819733917555967157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001215 (n + 1)) (A339333 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019355.P14819733917555967157

/-!
# A019357: Primes with primitive root 31.

The programs for A019357, there is no canonical definition to state claims against.
-/

/-! ## A019357.P9189206100714242477

`p?[2*n-A001221(A246748(n+1))]`
-/

namespace A019357.P9189206100714242477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A001221 (A246748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019357.P9189206100714242477

/-! ## A019357.P14966417864969707941

`p?[eq[1, A000034(A292741(n))]]`
-/

namespace A019357.P14966417864969707941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A292741 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019357.P14966417864969707941

/-! ## A019357.P6332369043196521276

`p?[lt[A102493(n+1), A132575(3*(n+1))]]`
-/

namespace A019357.P6332369043196521276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102493 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019357.P6332369043196521276

/-! ## A019357.P4945564080609946195

`eq[A000034(A292741(n)), A003415(n)]`
-/

namespace A019357.P4945564080609946195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A292741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019357.P4945564080609946195

/-! ## A019357.P17525891092448066371

`eq[A018783(n), A033999(A292741(n))]`
-/

namespace A019357.P17525891092448066371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A292741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019357.P17525891092448066371

/-!
# A019358: Primes with primitive root 32.

The programs for A019358, there is no canonical definition to state claims against.
-/

/-! ## A019358.P3857122775746558771

`∩[A001122(n+1), A042991(n+1)]`
-/

namespace A019358.P3857122775746558771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P3857122775746558771

/-! ## A019358.P8878709755470750811

`∩[A042991(n+1), A139099(n+1)]`
-/

namespace A019358.P8878709755470750811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P8878709755470750811

/-! ## A019358.P15365912861874032864

`∩[A042991(n+1), A167791(n+1)]`
-/

namespace A019358.P15365912861874032864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P15365912861874032864

/-! ## A019358.P9055305875394281244

`∩[A001122(n+1), A049557(n+1)]`
-/

namespace A019358.P9055305875394281244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P9055305875394281244

/-! ## A019358.P15373613319125275715

`∩[A049557(n+1), A139099(n+1)]`
-/

namespace A019358.P15373613319125275715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P15373613319125275715

/-! ## A019358.P9046012776380206565

`∩[A049557(n+1), A167791(n+1)]`
-/

namespace A019358.P9046012776380206565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P9046012776380206565

/-! ## A019358.P11692390294265904414

`∩[A001122(n+1), A040159(n+1)]`
-/

namespace A019358.P11692390294265904414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P11692390294265904414

/-! ## A019358.P15141982269409461766

`∩[A040159(n+1), A139099(n+1)]`
-/

namespace A019358.P15141982269409461766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P15141982269409461766

/-! ## A019358.P16602456800495864919

`∩[A040159(n+1), A167791(n+1)]`
-/

namespace A019358.P16602456800495864919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P16602456800495864919

/-! ## A019358.P14539797894156627392

`∩[A040159(n+1), A141231(n+1)]`
-/

namespace A019358.P14539797894156627392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P14539797894156627392

/-! ## A019358.P7846017895317880583

`∩[A042991(n+1), A141231(n+1)]`
-/

namespace A019358.P7846017895317880583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P7846017895317880583

/-! ## A019358.P6008598490535207504

`∩[A049557(n+1), A141231(n+1)]`
-/

namespace A019358.P6008598490535207504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P6008598490535207504

/-! ## A019358.P15406756653066462495

`∩[A040159(n+1), A319009(n+1)]`
-/

namespace A019358.P15406756653066462495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P15406756653066462495

/-! ## A019358.P4148259572488152746

`∩[A042991(n+1), A319009(n+1)]`
-/

namespace A019358.P4148259572488152746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P4148259572488152746

/-! ## A019358.P2319143431663950686

`∩[A049557(n+1), A319009(n+1)]`
-/

namespace A019358.P2319143431663950686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P2319143431663950686

/-! ## A019358.P15064102995365614028

`∩[A001122(n+1), A187332(n+1)]`
-/

namespace A019358.P15064102995365614028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P15064102995365614028

/-! ## A019358.P22677386269868465

`∩[A001122(n+1), A047203(n+1)]`
-/

namespace A019358.P22677386269868465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P22677386269868465

/-! ## A019358.P5135486405205990534

`∩[A040159(n+1), A216846(n+1)]`
-/

namespace A019358.P5135486405205990534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P5135486405205990534

/-! ## A019358.P18423050141898536415

`∩[A042991(n+1), A216846(n+1)]`
-/

namespace A019358.P18423050141898536415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P18423050141898536415

/-! ## A019358.P16205492695836504628

`∩[A049557(n+1), A216846(n+1)]`
-/

namespace A019358.P16205492695836504628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019358.P16205492695836504628

/-!
# A019359: Primes with primitive root 33.

The programs for A019359, there is no canonical definition to state claims against.
-/

/-! ## A019359.P2407153883515680668

`A000040(lt[A163359(n+3), A194443(3*n+4)])`
-/

namespace A019359.P2407153883515680668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019359.P2407153883515680668

/-! ## A019359.P11245027689144032474

`A131200(∑[2^A326180(n)])`
-/

namespace A019359.P11245027689144032474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A326180 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131200 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A019359.P11245027689144032474

/-! ## A019359.P1451422530120459146

`p?[lt[A120126(n), A159016(n)]]`
-/

namespace A019359.P1451422530120459146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159016 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019359.P1451422530120459146

/-! ## A019359.P14707324514272400366

`p?[∑[A181935(A085505(n+1))]]`
-/

namespace A019359.P14707324514272400366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A085505 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019359.P14707324514272400366

/-! ## A019359.P10553079504682053814

`record[p?[A187485(A126870(n+1))]]`
-/

namespace A019359.P10553079504682053814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (A126870 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019359.P10553079504682053814

/-!
# A019360: Primes with primitive root 34.

The programs for A019360, there is no canonical definition to state claims against.
-/

/-! ## A019360.P8577047083728851121

`∩[A038910(n+1), A140507(n+1)]`
-/

namespace A019360.P8577047083728851121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019360.P8577047083728851121

/-! ## A019360.P13681468581546571428

`A000040(A296352(n+4)%A277274(n+3))`
-/

namespace A019360.P13681468581546571428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A296352 (n + 4)) (A277274 (n + 3))).toNat

end

end A019360.P13681468581546571428

/-! ## A019360.P13216315769422370738

`A000040(A287869(∑[n+2]+1)+5)`
-/

namespace A019360.P13216315769422370738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A287869 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 5).toNat

end

end A019360.P13216315769422370738

/-! ## A019360.P2986503664428427176

`p?[lt[A277879(n+5), A277904(n+1)]]`
-/

namespace A019360.P2986503664428427176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277879 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277904 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019360.P2986503664428427176

/-!
# A019361: Primes with primitive root 35.

The programs for A019361, there is no canonical definition to state claims against.
-/

/-! ## A019361.P9909326370753402134

`A038912(A077168(n))`
-/

namespace A019361.P9909326370753402134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (A077168 n).toNat

end

end A019361.P9909326370753402134

/-! ## A019361.P17190214842871043290

`record[A038912(A225634(n))]`
-/

namespace A019361.P17190214842871043290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (A225634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019361.P17190214842871043290

/-! ## A019361.P6476068883411306031

`A038912(∑[A308974(n)!])`
-/

namespace A019361.P6476068883411306031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A308974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019361.P6476068883411306031

/-! ## A019361.P10271451080881217518

`A038912(∑[2^A308974(n)])`
-/

namespace A019361.P10271451080881217518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A308974 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A019361.P10271451080881217518

/-! ## A019361.P18359316668428318425

`A038912(A308974(n)!+n)`
-/

namespace A019361.P18359316668428318425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (Nat.factorial (A308974 n).toNat + n)

end

end A019361.P18359316668428318425

/-!
# A019364: Primes with primitive root 39.

The programs for A019364, there is no canonical definition to state claims against.
-/

/-! ## A019364.P14612916911922714905

`p?[lcm(A007913(n+1), A258742(n+1))]`
-/

namespace A019364.P14612916911922714905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A258742 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019364.P14612916911922714905

/-! ## A019364.P2656911541072333892

`p?[∑[A068063(A055019(n+1))]]`
-/

namespace A019364.P2656911541072333892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A055019 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019364.P2656911541072333892

/-!
# A019365: Primes with primitive root 40.

The programs for A019365, there is no canonical definition to state claims against.
-/

/-! ## A019365.P16509005843733018810

`A038880(∑[A230469(n+1)!])`
-/

namespace A019365.P16509005843733018810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019365.P16509005843733018810

/-! ## A019365.P975426258927944435

`∩[A038880(n+1), A316521(n+1)]`
-/

namespace A019365.P975426258927944435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019365.P975426258927944435

/-! ## A019365.P12373933924872687757

`∩[A038880(n+1), A317710(n+1)]`
-/

namespace A019365.P12373933924872687757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019365.P12373933924872687757

/-! ## A019365.P4003550463218026942

`∩[A028416(n+1), A028791(n+1)]`
-/

namespace A019365.P4003550463218026942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019365.P4003550463218026942

/-!
# A019366: Primes with primitive root 41.

The programs for A019366, there is no canonical definition to state claims against.
-/

/-! ## A019366.P4427925870907040103

`A000040(eq[A132292(n+1), A338690(n+1)])`
-/

namespace A019366.P4427925870907040103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A019366.P4427925870907040103

/-! ## A019366.P13399723916069829412

`record[p?[A023128(A070865(n+1))]]`
-/

namespace A019366.P13399723916069829412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (A070865 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019366.P13399723916069829412

/-! ## A019366.P56909784100449904

`A000040(∑[A324198(∏[4-2/(n+1)]/2-1)])`
-/

namespace A019366.P56909784100449904
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f2 j) / 2 - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019366.P56909784100449904

/-!
# A019368: Primes with primitive root 43.

The programs for A019368, there is no canonical definition to state claims against.
-/

/-! ## A019368.P7100726610442279926

`p?[(n-1)^(n%2)-A322392(n+1)]`
-/

namespace A019368.P7100726610442279926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2) - A322392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019368.P7100726610442279926

/-!
# A019369: Primes with primitive root 44.

The programs for A019369, there is no canonical definition to state claims against.
-/

/-! ## A019369.P15635661693952848582

`p?[lt[1, A143359(n+1)]]`
-/

namespace A019369.P15635661693952848582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143359 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019369.P15635661693952848582

/-! ## A019369.P15573150070587024886

`p?[lt[4, A332963(n+1)]]`
-/

namespace A019369.P15573150070587024886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019369.P15573150070587024886

/-! ## A019369.P8543143878897707007

`p?[lt[A130316(n+1), A353435(n)]]`
-/

namespace A019369.P8543143878897707007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130316 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353435 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019369.P8543143878897707007

/-! ## A019369.P14629360665748421181

`p?[lt[A167269(n), A099390(n+2)]]`
-/

namespace A019369.P14629360665748421181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167269 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019369.P14629360665748421181

/-! ## A019369.P13617595648009894369

`∩[A129946(n+1), A296936(n+1)]`
-/

namespace A019369.P13617595648009894369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019369.P13617595648009894369

/-!
# A019371: Primes with primitive root 46.

The programs for A019371, there is no canonical definition to state claims against.
-/

/-! ## A019371.P14879327370246807748

`p?[eq[A125071(n+1), A153246(n)]]`
-/

namespace A019371.P14879327370246807748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125071 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019371.P14879327370246807748

/-!
# A019372: Primes with primitive root 47.

The programs for A019372, there is no canonical definition to state claims against.
-/

/-! ## A019372.P10323964090344758046

`p?[eq[2, A001221(A256246(n+1))]]`
-/

namespace A019372.P10323964090344758046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A256246 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019372.P10323964090344758046

/-! ## A019372.P11062566832640150713

`eq[A001221(A256246(n+1)), A005128(n)]`
-/

namespace A019372.P11062566832640150713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A256246 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019372.P11062566832640150713

/-! ## A019372.P11338510042911128276

`A178380(p?[A176486(n+1)])`
-/

namespace A019372.P11338510042911128276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A019372.P11338510042911128276

/-! ## A019372.P2149433042722322615

`record[A178380(A176486(n+2))]`
-/

namespace A019372.P2149433042722322615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 (A176486 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019372.P2149433042722322615

/-!
# A019373: Primes with primitive root 48.

The programs for A019373, there is no canonical definition to state claims against.
-/

/-! ## A019373.P10817873766840938630

`p?[A060107(n+1)*A225654(A325401(n))]`
-/

namespace A019373.P10817873766840938630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) * A225654 (A325401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019373.P10817873766840938630

/-! ## A019373.P4942785988765930160

`p?[A083033(n+1)*A225654(A325401(n))]`
-/

namespace A019373.P4942785988765930160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) * A225654 (A325401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019373.P4942785988765930160

/-! ## A019373.P7097671499001577045

`p?[A083120(n+1)*A225654(A325401(n))]`
-/

namespace A019373.P7097671499001577045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) * A225654 (A325401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019373.P7097671499001577045

/-! ## A019373.P2094504933659159280

`∩[A003630(n+1), A113619(n+1)]`
-/

namespace A019373.P2094504933659159280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019373.P2094504933659159280

/-! ## A019373.P1281296950415937412

`∩[A003630(n+1), A169655(n+1)]`
-/

namespace A019373.P1281296950415937412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019373.P1281296950415937412

/-!
# A019374: Primes with primitive root 50.

The programs for A019374, there is no canonical definition to state claims against.
-/

/-! ## A019374.P7626832533404113799

`A003629(A351870(n)+A082479(n+1))`
-/

namespace A019374.P7626832533404113799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (A351870 n + A082479 (n + 1)).toNat

end

end A019374.P7626832533404113799

/-! ## A019374.P3746418642902141899

`A319041(A351870(n)+A082479(n+1))`
-/

namespace A019374.P3746418642902141899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (A351870 n + A082479 (n + 1)).toNat

end

end A019374.P3746418642902141899

/-! ## A019374.P16907128574416849465

`A001122(lt[A066017(n+1), A134278(n+1)])`
-/

namespace A019374.P16907128574416849465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019374.P16907128574416849465

/-!
# A019376: Primes with primitive root 52.

The programs for A019376, there is no canonical definition to state claims against.
-/

/-! ## A019376.P1718997215924699542

`A038884(n+2)+A024155(A231023(n+2))`
-/

namespace A019376.P1718997215924699542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 2) + A024155 (A231023 (n + 2)).toNat

end

end A019376.P1718997215924699542

/-! ## A019376.P17594455260230098967

`∩[A038884(A044822(n+1)), A249370(n+1)]`
-/

namespace A019376.P17594455260230098967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (A044822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019376.P17594455260230098967

/-! ## A019376.P9681355066914092302

`A038884(∑[A340219(n)!])`
-/

namespace A019376.P9681355066914092302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A340219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019376.P9681355066914092302

/-! ## A019376.P14655947511372925753

`eq[A145326(n+1), A282460(n)]`
-/

namespace A019376.P14655947511372925753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019376.P14655947511372925753

/-!
# A019377: Primes with primitive root 53.

The programs for A019377, there is no canonical definition to state claims against.
-/

/-! ## A019377.P13041766412841088814

`∩[A038932(n+1), A097904(n+1)]`
-/

namespace A019377.P13041766412841088814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019377.P13041766412841088814

/-! ## A019377.P16026643196333970543

`p?[∑[A127929(A168062(n+1))]]`
-/

namespace A019377.P16026643196333970543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127929 (A168062 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019377.P16026643196333970543

/-! ## A019377.P15138586833410308291

`record[p?[A004648(A325623(n+1))]]`
-/

namespace A019377.P15138586833410308291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A325623 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019377.P15138586833410308291

/-!
# A019378: Primes with primitive root 54.

The programs for A019378, there is no canonical definition to state claims against.
-/

/-! ## A019378.P14403798397013443329

`A038877(lt[A038843(n+1), A038834(n)])`
-/

namespace A019378.P14403798397013443329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019378.P14403798397013443329

/-!
# A019379: Primes with primitive root 55.

The programs for A019379, there is no canonical definition to state claims against.
-/

/-! ## A019379.P2302824150859917426

`A323782(A250044(n+1)-A178489(n))`
-/

namespace A019379.P2302824150859917426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (A250044 (n + 1) - A178489 n).toNat

end

end A019379.P2302824150859917426

/-! ## A019379.P15513019238936245213

`A000040(A079696(n+2)%A007545(n)+1)`
-/

namespace A019379.P15513019238936245213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A079696 (n + 2)) (A007545 n) + 1).toNat

end

end A019379.P15513019238936245213

/-! ## A019379.P9970374231164012455

`A000040(A072125(n+3))%A072119(2*(n+1))`
-/

namespace A019379.P9970374231164012455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A072125 (n + 3)).toNat) (A072119 (2 * (n + 1)))

end

end A019379.P9970374231164012455

/-!
# A019380: Primes with primitive root 56.

The programs for A019380, there is no canonical definition to state claims against.
-/

/-! ## A019380.P14554907125457261469

`A230775(∩[(6*n+3)², A350014(n+1)])`
-/

namespace A019380.P14554907125457261469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A019380.P14554907125457261469

/-! ## A019380.P5066895769516725915

`∩[A025584(n+1), A325328(A093511(n+1))]`
-/

namespace A019380.P5066895769516725915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (A093511 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019380.P5066895769516725915

/-! ## A019380.P4809670732171820799

`∩[A325328(A093511(n+1)), A175073(n+1)]`
-/

namespace A019380.P4809670732171820799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (A093511 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019380.P4809670732171820799

/-! ## A019380.P14360588595311951729

`∩[A038886(n+1), A172121(n+1)]`
-/

namespace A019380.P14360588595311951729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019380.P14360588595311951729

/-! ## A019380.P12930643928440125212

`A241082(A055041(n+1))`
-/

namespace A019380.P12930643928440125212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241082 (A055041 (n + 1)).toNat

end

end A019380.P12930643928440125212

/-!
# A019381: Primes with primitive root 57.

The programs for A019381, there is no canonical definition to state claims against.
-/

/-! ## A019381.P7799003318901792557

`A230775(Δ[n^3]*A025487(n+1))`
-/

namespace A019381.P7799003318901792557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A025487 (n + 1)).toNat

end

end A019381.P7799003318901792557

/-! ## A019381.P8318965852927251571

`A230775(A100705(n)*A151800(n))`
-/

namespace A019381.P8318965852927251571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A100705 n * A151800 n).toNat

end

end A019381.P8318965852927251571

/-!
# A019382: Primes with primitive root 58.

The programs for A019382, there is no canonical definition to state claims against.
-/

/-! ## A019382.P17883072934178245635

`p?[eq[A002652(n), A090290(n+2)]]`
-/

namespace A019382.P17883072934178245635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090290 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019382.P17883072934178245635

/-!
# A019383: Primes with primitive root 59.

The programs for A019383, there is no canonical definition to state claims against.
-/

/-! ## A019383.P1746491959501375191

`A038940(n+1)%A075956(n)`
-/

namespace A019383.P1746491959501375191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038940 (n + 1)) (A075956 n)

end

end A019383.P1746491959501375191

/-!
# A019384: Primes with primitive root 60.

The programs for A019384, there is no canonical definition to state claims against.
-/

/-! ## A019384.P12679939398729078860

`A045344(eq[5, A260946(n+1)])`
-/

namespace A019384.P12679939398729078860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019384.P12679939398729078860

/-! ## A019384.P11756689870256424449

`A065091(eq[5, A260946(n+1)])`
-/

namespace A019384.P11756689870256424449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019384.P11756689870256424449

/-! ## A019384.P4380534293674803083

`A000040(eq[5, A260946(n+1)]+1)`
-/

namespace A019384.P4380534293674803083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A019384.P4380534293674803083

/-! ## A019384.P4272583870830824200

`A006005(eq[5, A260946(n+1)]+1)`
-/

namespace A019384.P4272583870830824200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A019384.P4272583870830824200

/-! ## A019384.P2788804740680990645

`A008578(eq[5, A260946(n+1)]+2)`
-/

namespace A019384.P2788804740680990645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A019384.P2788804740680990645

/-!
# A019385: Primes with primitive root 61.

The programs for A019385, there is no canonical definition to state claims against.
-/

/-! ## A019385.P16282998382054803056

`∩[A028803(n+1), A038942(n+1)]`
-/

namespace A019385.P16282998382054803056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019385.P16282998382054803056

/-! ## A019385.P4135336958393773632

`∩[A028788(n+1), A038942(n+1)]`
-/

namespace A019385.P4135336958393773632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019385.P4135336958393773632

/-! ## A019385.P13535307456363221236

`∩[A038942(n+1), A123068(n+1)]`
-/

namespace A019385.P13535307456363221236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019385.P13535307456363221236

/-! ## A019385.P4071870353291954214

`∩[A038942(n+1), A233745(n+1)]`
-/

namespace A019385.P4071870353291954214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019385.P4071870353291954214

/-! ## A019385.P1432653790831917366

`∩[A038942(n+1), A341763(n+1)]`
-/

namespace A019385.P1432653790831917366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019385.P1432653790831917366

/-!
# A019386: Primes with primitive root 62.

The programs for A019386, there is no canonical definition to state claims against.
-/

/-! ## A019386.P5200522955395127730

`∩[A028806(n+1), A038944(n+1)]`
-/

namespace A019386.P5200522955395127730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019386.P5200522955395127730

/-! ## A019386.P4871154670041340684

`∩[A038944(n+1), A113619(n+1)]`
-/

namespace A019386.P4871154670041340684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019386.P4871154670041340684

/-! ## A019386.P14033479024408976181

`∩[A038944(n+1), A358866(n+1)]`
-/

namespace A019386.P14033479024408976181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019386.P14033479024408976181

/-! ## A019386.P9656167615674045698

`∩[A113619(A049386(n)), A038944(n+1)]`
-/

namespace A019386.P9656167615674045698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A049386 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019386.P9656167615674045698

/-! ## A019386.P13181252658904192444

`∩[A038944(n+1), A049386(n)]`
-/

namespace A019386.P13181252658904192444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019386.P13181252658904192444

/-!
# A019387: Primes with primitive root 63.

The programs for A019387, there is no canonical definition to state claims against.
-/

/-! ## A019387.P5342010426693553393

`p?[∑[A051194(A240221(n+1))]]`
-/

namespace A019387.P5342010426693553393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A240221 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019387.P5342010426693553393

/-! ## A019387.P7251021399567467113

`p?[lt[A321921(n+4), A321935(n+1)]]`
-/

namespace A019387.P7251021399567467113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321921 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321935 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019387.P7251021399567467113

/-! ## A019387.P16457798693215906895

`A200997(A301313(n)+A250120(n))`
-/

namespace A019387.P16457798693215906895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A301313 n + A250120 n).toNat

end

end A019387.P16457798693215906895

/-! ## A019387.P3708014950044556398

`eq[A053204(n), A100961(A070865(n+1))]`
-/

namespace A019387.P3708014950044556398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (A070865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019387.P3708014950044556398

/-! ## A019387.P1047200794646264543

`A206074(lt[A155971(n), A002117(n+1)])`
-/

namespace A019387.P1047200794646264543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019387.P1047200794646264543

/-!
# A019389: Primes with primitive root 66.

The programs for A019389, there is no canonical definition to state claims against.
-/

/-! ## A019389.P14598443173530793929

`p?[eq[A128174(n+1), A236508(n+1)]]`
-/

namespace A019389.P14598443173530793929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019389.P14598443173530793929

/-! ## A019389.P15347314247995439557

`p?[eq[A003285(n+1), A156988(n+1)]]`
-/

namespace A019389.P15347314247995439557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156988 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019389.P15347314247995439557

/-!
# A019390: Primes with primitive root 67.

The programs for A019390, there is no canonical definition to state claims against.
-/

/-! ## A019390.P10745726287758738483

`A038950(∑[A212382(A047192(n+1))])`
-/

namespace A019390.P10745726287758738483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (A047192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019390.P10745726287758738483

/-! ## A019390.P7474491005292786056

`p?[A038950(n+1)*A212382(A047192(n+1))]`
-/

namespace A019390.P7474491005292786056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038950 (n + 1) * A212382 (A047192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019390.P7474491005292786056

/-! ## A019390.P17542846174126301689

`A038950(∑[A156885(A165490(n))])`
-/

namespace A019390.P17542846174126301689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156885 (A165490 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019390.P17542846174126301689

/-! ## A019390.P9561482507714298264

`p?[A102683(A000579(n))+A038950(n+1)]`
-/

namespace A019390.P9561482507714298264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000579 n).toNat + A038950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019390.P9561482507714298264

/-! ## A019390.P10822906278940324980

`A038950(∑[A181499(n)!])`
-/

namespace A019390.P10822906278940324980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019390.P10822906278940324980

/-!
# A019391: Primes with primitive root 68.

The programs for A019391, there is no canonical definition to state claims against.
-/

/-! ## A019391.P12949952911961290791

`A000040(∑[A361221(n+1)^(A030532(2*(n+4))%3)]+1)`
-/

namespace A019391.P12949952911961290791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361221 (n + 1) : ℚ) ^ (Int.tmod (A030532 (2 * (n + 4))) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A019391.P12949952911961290791

/-!
# A019392: Primes with primitive root 69.

The programs for A019392, there is no canonical definition to state claims against.
-/

/-! ## A019392.P5956871897045353426

`p?[∑[A054989(A350672(n+1))]]`
-/

namespace A019392.P5956871897045353426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (A350672 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019392.P5956871897045353426

/-! ## A019392.P17803960069781341006

`p?[∑[A000005(A354937(3*n+4))]]`
-/

namespace A019392.P17803960069781341006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A354937 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019392.P17803960069781341006

/-! ## A019392.P3406515767147314136

`p?[A005767(n+1)-A077566(n+1)]`
-/

namespace A019392.P3406515767147314136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1) - A077566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019392.P3406515767147314136

/-! ## A019392.P12815542799473366045

`p?[A244365(3*(n+1))%A265778(n+1)]`
-/

namespace A019392.P12815542799473366045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244365 (3 * (n + 1))) (A265778 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019392.P12815542799473366045

/-!
# A019393: Primes with primitive root 70.

The programs for A019393, there is no canonical definition to state claims against.
-/

/-! ## A019393.P149453507153076073

`A364962(A314585(n+1))`
-/

namespace A019393.P149453507153076073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364962 (A314585 (n + 1)).toNat

end

end A019393.P149453507153076073

/-! ## A019393.P12558645703444273870

`p?[A171511(A171508(2*(n+2)))]`
-/

namespace A019393.P12558645703444273870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (A171508 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019393.P12558645703444273870

/-!
# A019394: Primes with primitive root 71.

The programs for A019394, there is no canonical definition to state claims against.
-/

/-! ## A019394.P1179336758923631718

`p?[lt[A000455(A224344(n)), 3]]`
-/

namespace A019394.P1179336758923631718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000455 (A224344 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019394.P1179336758923631718

/-! ## A019394.P2226750413379077921

`p?[A143813(n+1)-55]`
-/

namespace A019394.P2226750413379077921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143813 (n + 1) - 55

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019394.P2226750413379077921

/-! ## A019394.P9503354070814726815

`record[A248147(A310342(n)²)]`
-/

namespace A019394.P9503354070814726815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248147 (A310342 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019394.P9503354070814726815

/-! ## A019394.P13310586525858068990

`filter[A038947(n+1), A174206(#)]`
-/

namespace A019394.P13310586525858068990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174206 (f1 j).toNat = 1) n)

end

end A019394.P13310586525858068990

/-! ## A019394.P2970247984340333192

`filter[A042998(n+1), A174206(#)]`
-/

namespace A019394.P2970247984340333192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174206 (f1 j).toNat = 1) n)

end

end A019394.P2970247984340333192

/-!
# A019395: Primes with primitive root 72.

The programs for A019395, there is no canonical definition to state claims against.
-/

/-! ## A019395.P742147972897865212

`A059350(∑[A142593(A073350(n+1))])`
-/

namespace A019395.P742147972897865212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142593 (A073350 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019395.P742147972897865212

/-! ## A019395.P1345985669837804166

`p?[gcd(A028240(n), A047621(n+1))]`
-/

namespace A019395.P1345985669837804166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028240 n) (A047621 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019395.P1345985669837804166

/-! ## A019395.P11879709941353422441

`p?[A047621(n+2)-A028240(n+1)]`
-/

namespace A019395.P11879709941353422441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 2) - A028240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019395.P11879709941353422441

/-! ## A019395.P8063949114119160794

`p?[A047621(n+1)*A286334(n)]`
-/

namespace A019395.P8063949114119160794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1) * A286334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019395.P8063949114119160794

/-!
# A019396: Primes with primitive root 73.

The programs for A019396, there is no canonical definition to state claims against.
-/

/-! ## A019396.P17630065035650139276

`p?[record[A075989(A223133(n))]]`
-/

namespace A019396.P17630065035650139276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (A223133 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019396.P17630065035650139276

/-! ## A019396.P7230514824296551712

`p?[A128557(∑[A004736(n+1)])]`
-/

namespace A019396.P7230514824296551712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128557 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019396.P7230514824296551712

/-! ## A019396.P8654166441895162932

`p?[∑[A101608(A059055(n+1))]]`
-/

namespace A019396.P8654166441895162932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (A059055 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019396.P8654166441895162932

/-! ## A019396.P2649821172783219236

`p?[∑[A000005(A068885(n+2))]]`
-/

namespace A019396.P2649821172783219236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068885 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019396.P2649821172783219236

/-! ## A019396.P12963299382314325759

`∑[A000005(A218667(n+2)+A122793(n+2)+1)]`
-/

namespace A019396.P12963299382314325759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A218667 (n + 2) + A122793 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019396.P12963299382314325759

/-!
# A019397: Primes with primitive root 74.

The programs for A019397, there is no canonical definition to state claims against.
-/

/-! ## A019397.P14348390556802887967

`A185255(2*n)+A038960(n+1)`
-/

namespace A019397.P14348390556802887967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * n) + A038960 (n + 1)

end

end A019397.P14348390556802887967

/-! ## A019397.P14568648694613532603

`A038960(A187829(n+1))`
-/

namespace A019397.P14568648694613532603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038960 (A187829 (n + 1)).toNat

end

end A019397.P14568648694613532603

/-! ## A019397.P16512100011265350094

`A069359(A038960(n+1)²)`
-/

namespace A019397.P16512100011265350094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A038960 (n + 1) ^ 2).toNat

end

end A019397.P16512100011265350094

/-! ## A019397.P14240564686401748252

`A038960(n+1)%A195269(n+1)`
-/

namespace A019397.P14240564686401748252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038960 (n + 1)) (A195269 (n + 1))

end

end A019397.P14240564686401748252

/-!
# A019399: Primes with primitive root 76.

The programs for A019399, there is no canonical definition to state claims against.
-/

/-! ## A019399.P15480860407117795686

`∩[A297176(n+1), A336986(n+1)]`
-/

namespace A019399.P15480860407117795686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019399.P15480860407117795686

/-! ## A019399.P10707074934521265945

`A297176(A302569(n+1)+A287383(n))`
-/

namespace A019399.P10707074934521265945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (A302569 (n + 1) + A287383 n).toNat

end

end A019399.P10707074934521265945

