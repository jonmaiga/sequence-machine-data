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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273102: Difference table of the divisors of the positive integers.

The programs for A273102, there is no canonical definition to state claims against.
-/

/-! ## A273102.P16245973918418861389

`A273104(n+1)-A055028(A092573(n))`
-/

namespace A273102.P16245973918418861389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (n + 1) - A055028 (A092573 n).toNat

end

end A273102.P16245973918418861389

/-! ## A273102.P9568337343832534054

`A273104(Δ[n²]-n)-A260490(A092573(n))`
-/

namespace A273102.P9568337343832534054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - A260490 (A092573 n).toNat

end

end A273102.P9568337343832534054

/-! ## A273102.P6005929806867923045

`A273104(n+1)+A273135(n+1)-A272121(n+1)`
-/

namespace A273102.P6005929806867923045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (n + 1) + (A273135 (n + 1) - A272121 (n + 1))

end

end A273102.P6005929806867923045

/-! ## A273102.P3209514234657134505

`(A273104(n+1)-A260490(A092573(n)))^A054977(n)!`
-/

namespace A273102.P3209514234657134505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273104 (n + 1) - A260490 (A092573 n).toNat) ^ Nat.factorial (A054977 n).toNat

end

end A273102.P3209514234657134505

/-! ## A273102.P10455997756009075665

`(A273104(n+1)-A260490(A092573(n)))%A044699(n+1)`
-/

namespace A273102.P10455997756009075665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273104 (n + 1) - A260490 (A092573 n).toNat) (A044699 (n + 1))

end

end A273102.P10455997756009075665

/-! ## A273102.P14842670318784184161

`A273104(A151878(n)+1+n)`
-/

namespace A273102.P14842670318784184161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (A151878 n + 1 + (n : ℤ)).toNat

end

end A273102.P14842670318784184161

/-! ## A273102.P11513019217239355841

`A273104(n+1)^gcd(43, A274531(n+1))`
-/

namespace A273102.P11513019217239355841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (n + 1) ^ Int.gcd 43 (A274531 (n + 1))

end

end A273102.P11513019217239355841

/-! ## A273102.P15007202394636174359

`A273104(n+1)+A073424(A140513(n))`
-/

namespace A273102.P15007202394636174359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273104 (n + 1) + A073424 (A140513 n).toNat

end

end A273102.P15007202394636174359

/-! ## A273102.P12483766435020639784

`A273104(n+1)%A002189(n)`
-/

namespace A273102.P12483766435020639784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273104 (n + 1)) (A002189 n)

end

end A273102.P12483766435020639784

/-! ## A273102.P1818510946477233397

`gcd(A273104(n+1), A370015(n))`
-/

namespace A273102.P1818510946477233397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273104 (n + 1)) (A370015 n)

end

end A273102.P1818510946477233397

/-!
# A273103: Sum of the elements of the difference triangle of the divisors of n (including the divisors of n).

The programs for A273103, there is no canonical definition to state claims against.
-/

/-! ## A273103.P8082330571047347671

`A187215(A122201(∑[n+1]))`
-/

namespace A273103.P8082330571047347671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273103.P8082330571047347671

/-! ## A273103.P12469082903849269643

`A187215(A122204(C(n+2, 2)))`
-/

namespace A273103.P12469082903849269643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (A122204 (Nat.choose (n + 2) 2)).toNat

end

end A273103.P12469082903849269643

/-! ## A273103.P7648242924131365092

`A187215(n+1)%A372614(n)`
-/

namespace A273103.P7648242924131365092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187215 (n + 1)) (A372614 n)

end

end A273103.P7648242924131365092

/-! ## A273103.P5616443969357209841

`A187215(n+1)+A174980(2^n-1)`
-/

namespace A273103.P5616443969357209841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) + A174980 (2 ^ n - 1)

end

end A273103.P5616443969357209841

/-! ## A273103.P3761767840033564006

`A187215(n+1)+A007814(A006977(n))`
-/

namespace A273103.P3761767840033564006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187215 (n + 1) + A007814 (A006977 n).toNat

end

end A273103.P3761767840033564006

/-!
# A273104: Absolute difference table of the divisors of the positive integers.

The programs for A273104, there is no canonical definition to state claims against.
-/

/-! ## A273104.P10277955176267835220

`abs(A273102(n+1))`
-/

namespace A273104.P10277955176267835220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273102 (n + 1)|

end

end A273104.P10277955176267835220

/-! ## A273104.P14486012207593552799

`lcm((-1)^n, A273102(C(2, C(3, n²))+n))`
-/

namespace A273104.P14486012207593552799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A273102 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n))

end

end A273104.P14486012207593552799

/-! ## A273104.P17850092872186792589

`A000194(A273102(n+1)²)`
-/

namespace A273104.P17850092872186792589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A273102 (n + 1) ^ 2).toNat

end

end A273104.P17850092872186792589

/-! ## A273104.P14229216503020558795

`A000196(A273102(n+1)²)`
-/

namespace A273104.P14229216503020558795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A273102 (n + 1) ^ 2).toNat

end

end A273104.P14229216503020558795

/-! ## A273104.P9366510154472501609

`A018851(A273102(n+1)²)`
-/

namespace A273104.P9366510154472501609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A273102 (n + 1) ^ 2).toNat

end

end A273104.P9366510154472501609

/-! ## A273104.P5674226238853338093

`A037213(A273102(n+1)²)`
-/

namespace A273104.P5674226238853338093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A273102 (n + 1) ^ 2).toNat

end

end A273104.P5674226238853338093

/-! ## A273104.P7926410935128625594

`A262689(A273102(n+1)²)`
-/

namespace A273104.P7926410935128625594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A273102 (n + 1) ^ 2).toNat

end

end A273104.P7926410935128625594

/-! ## A273104.P17544808129669224818

`A212598(A273102(n+1)+6)`
-/

namespace A273104.P17544808129669224818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A273102 (n + 1) + 6).toNat

end

end A273104.P17544808129669224818

/-! ## A273104.P7755078509013584731

`gcd(A000038(n), A273102(n+1))`
-/

namespace A273104.P7755078509013584731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273102 (n + 1))

end

end A273104.P7755078509013584731

/-! ## A273104.P15082555943696616978

`lcm(A020985(n), A273102(n+1))`
-/

namespace A273104.P15082555943696616978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A273102 (n + 1))

end

end A273104.P15082555943696616978

/-! ## A273104.P1232947849742460523

`∑{d}[A273102(n+1), A000010(#)]`
-/

namespace A273104.P1232947849742460523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A273104.P1232947849742460523

/-! ## A273104.P14723468715344779758

`sqrt(A273102(n+1)²%A000040(n+1))`
-/

namespace A273104.P14723468715344779758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A273102 (n + 1) ^ 2) (A000040 (n + 1)) : ℝ)

end

end A273104.P14723468715344779758

/-! ## A273104.P6665237605364067069

`A272121(n+1)+A273102(n+1)-A273135(n+1)`
-/

namespace A273104.P6665237605364067069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + (A273102 (n + 1) - A273135 (n + 1))

end

end A273104.P6665237605364067069

/-!
# A273105: a(n) = A038572(n) + A006257(n), sum of the two numbers obtained by rotating the binary representation of n by one place to the right and to the left.

The programs for A273105, the canonical program `A273105.P3798720398051730023` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273105 has offset 0).

The definition of A273105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273105.P3798720398051730023

`A038572(n)+A006257(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273105

/-- `A038572(n)+A006257(n)` -/
def P3798720398051730023.Spec : Prop :=
  ∀ n, P3798720398051730023.a n = A273105 n

theorem P3798720398051730023.correct : P3798720398051730023.Spec := by
  intro n
  simp only [A273105]

end A273105

/-! ## A273105.P554569453589961228

`A006257(floor(n/(n%2+1)))+Δ[n*floor(n/2)]`
-/

namespace A273105.P554569453589961228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat + (f1 (n + 1) - f1 n)

end

end A273105.P554569453589961228

namespace A273105

/-- `A006257(floor(n/(n%2+1)))+Δ[n*floor(n/2)]` -/
def P554569453589961228.Spec : Prop :=
  ∀ n, P554569453589961228.a n = A273105 n

end A273105

/-! ## A273105.P11054830947140908529

`A088161(n)+2*A006257(n)`
-/

namespace A273105.P11054830947140908529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + 2 * A006257 n

end

end A273105.P11054830947140908529

namespace A273105

/-- `A088161(n)+2*A006257(n)` -/
def P11054830947140908529.Spec : Prop :=
  ∀ n, P11054830947140908529.a n = A273105 n

theorem P11054830947140908529.correct : P11054830947140908529.Spec := by
  intro n
  simp only [A273105, Nat.add_sub_cancel, A273105.P11054830947140908529.a, A273105.P3798720398051730023.a, A006257, A006257.P8910165504183276925.a, A038572, A038572.P9289042872142352092.a, A088161, A088161.P8986286637870394846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273105

/-! ## A273105.P3638213341439342805

`2*A038572(n)-A088161(n)`
-/

namespace A273105.P3638213341439342805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038572 n - A088161 n

end

end A273105.P3638213341439342805

namespace A273105

/-- `2*A038572(n)-A088161(n)` -/
def P3638213341439342805.Spec : Prop :=
  ∀ n, P3638213341439342805.a n = A273105 n

theorem P3638213341439342805.correct : P3638213341439342805.Spec := by
  intro n
  simp only [A273105, Nat.add_sub_cancel, A273105.P3638213341439342805.a, A273105.P3798720398051730023.a, A006257, A006257.P8910165504183276925.a, A038572, A038572.P9289042872142352092.a, A088161, A088161.P8986286637870394846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273105

/-! ## A273105.P6911618001846562023

`2*n+A038572(n)-A003817(n)`
-/

namespace A273105.P6911618001846562023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A038572 n - A003817 n)

end

end A273105.P6911618001846562023

namespace A273105

/-- `2*n+A038572(n)-A003817(n)` -/
def P6911618001846562023.Spec : Prop :=
  ∀ n, P6911618001846562023.a n = A273105 n

end A273105

/-! ## A273105.P13882283677380227775

`A088161(n)+A005843(A006257(n))`
-/

namespace A273105.P13882283677380227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + A005843 (A006257 n).toNat

end

end A273105.P13882283677380227775

namespace A273105

/-- `A088161(n)+A005843(A006257(n))` -/
def P13882283677380227775.Spec : Prop :=
  ∀ n, P13882283677380227775.a n = A273105 n

end A273105

/-! ## A273105.P1908856590358985628

`A005843(A038572(n))-A088161(n)`
-/

namespace A273105.P1908856590358985628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038572 n).toNat - A088161 n

end

end A273105.P1908856590358985628

namespace A273105

/-- `A005843(A038572(n))-A088161(n)` -/
def P1908856590358985628.Spec : Prop :=
  ∀ n, P1908856590358985628.a n = A273105 n

end A273105

/-! ## A273105.P9873854552133460149

`A053645(2*n+1)+A038572(n)`
-/

namespace A273105.P9873854552133460149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1) + A038572 n

end

end A273105.P9873854552133460149

namespace A273105

/-- `A053645(2*n+1)+A038572(n)` -/
def P9873854552133460149.Spec : Prop :=
  ∀ n, P9873854552133460149.a n = A273105 n

end A273105

/-! ## A273105.P6821825924026353313

`A266539(2*(n+1))+A038572(n)`
-/

namespace A273105.P6821825924026353313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (2 * (n + 1)) + A038572 n

end

end A273105.P6821825924026353313

namespace A273105

/-- `A266539(2*(n+1))+A038572(n)` -/
def P6821825924026353313.Spec : Prop :=
  ∀ n, P6821825924026353313.a n = A273105 n

end A273105

/-! ## A273105.P2026732291007468757

`A246591(2*n)+A038572(n)`
-/

namespace A273105.P2026732291007468757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n) + A038572 n

end

end A273105.P2026732291007468757

namespace A273105

/-- `A246591(2*n)+A038572(n)` -/
def P2026732291007468757.Spec : Prop :=
  ∀ n, P2026732291007468757.a n = A273105 n

end A273105

/-! ## A273105.P4494954477452978516

`A053645(2*n+1)+A053645(A080544(2*n+1))`
-/

namespace A273105.P4494954477452978516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1) + A053645 (A080544 (2 * n + 1)).toNat

end

end A273105.P4494954477452978516

namespace A273105

/-- `A053645(2*n+1)+A053645(A080544(2*n+1))` -/
def P4494954477452978516.Spec : Prop :=
  ∀ n, P4494954477452978516.a n = A273105 n

end A273105

/-! ## A273105.P5470145562439347807

`A053645(A080544(2*n+1)+2*n+1)`
-/

namespace A273105.P5470145562439347807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080544 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A273105.P5470145562439347807

namespace A273105

/-- `A053645(A080544(2*n+1)+2*n+1)` -/
def P5470145562439347807.Spec : Prop :=
  ∀ n, P5470145562439347807.a n = A273105 n

end A273105

/-!
# A273106: Numbers representable as ror(k)+rol(k), where ror(k)=A038572(k) is k rotated one binary place to the right, rol(k)=A006257(k) is k rotated one binary place to the left.

The programs for A273106, there is no canonical definition to state claims against.
-/

/-! ## A273106.P17922684190392423872

`comp[A274341(n+1)]`
-/

namespace A273106.P17922684190392423872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P17922684190392423872

/-! ## A273106.P7980590243928253842

`comp[record[A274341(A028920(n))]]`
-/

namespace A273106.P7980590243928253842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P7980590243928253842

/-! ## A273106.P16123291037792545780

`comp[record[A274341(A193592(n))]]`
-/

namespace A273106.P16123291037792545780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P16123291037792545780

/-! ## A273106.P4167984356651734971

`comp[record[A274341(A324345(n))]]`
-/

namespace A273106.P4167984356651734971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (A324345 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P4167984356651734971

/-! ## A273106.P11580569100533650513

`comp[record[A274341(A328399(n))]]`
-/

namespace A273106.P11580569100533650513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274341 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P11580569100533650513

/-! ## A273106.P9165263940911025973

`comp[A000027(comp[A273105(n)])]`
-/

namespace A273106.P9165263940911025973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273105 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P9165263940911025973

/-! ## A273106.P15953821035415832603

`comp[comp[A038572(n)+A006257(n)-1]+1]`
-/

namespace A273106.P15953821035415832603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A006257 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A273106.P15953821035415832603

/-! ## A273106.P2182682310418836574

`comp[A028310(comp[A088161(n)+2*A006257(n)])]`
-/

namespace A273106.P2182682310418836574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + 2 * A006257 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P2182682310418836574

/-! ## A273106.P11516098381298808838

`comp[A028310(comp[A246591(2*n)+A038572(n)])]`
-/

namespace A273106.P11516098381298808838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n) + A038572 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P11516098381298808838

/-! ## A273106.P1925455202708390011

`comp[A028310(comp[2*A038572(n)-A088161(n)])]`
-/

namespace A273106.P1925455202708390011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038572 n - A088161 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A273106.P1925455202708390011

/-!
# A273108: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (x + y)^2 + (4z)^2 a square, where x,y,z,w are nonnegative integers with x <= y > z.

The programs for A273108, there is no canonical definition to state claims against.
-/

/-! ## A273108.P6586941240549206623

`A032741(A292576(n+3))^∑[A091536(n)]`
-/

namespace A273108.P6586941240549206623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (A292576 (n + 3)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A273108.P6586941240549206623

/-! ## A273108.P16504582916235250329

`A000108(A015161(n))*A032741(A292576(n+3))`
-/

namespace A273108.P16504582916235250329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A015161 n).toNat * A032741 (A292576 (n + 3)).toNat

end

end A273108.P16504582916235250329

/-! ## A273108.P17825196862308707783

`A195017(A092761(n+1)+4)+A032741(A292576(n+3))`
-/

namespace A273108.P17825196862308707783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A092761 (n + 1) + 4).toNat + A032741 (A292576 (n + 3)).toNat

end

end A273108.P17825196862308707783

/-! ## A273108.P13992711607823344258

`A275678(n+1)+A080343(A199660(n))`
-/

namespace A273108.P13992711607823344258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275678 (n + 1) + A080343 (A199660 n).toNat

end

end A273108.P13992711607823344258

/-! ## A273108.P1375195000577917815

`A137457(n+2)+A001222(A214679(n+1)²)`
-/

namespace A273108.P1375195000577917815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137457 (n + 2) + A001222 (A214679 (n + 1) ^ 2).toNat

end

end A273108.P1375195000577917815

/-!
# A273109: Numbers n such that in the difference triangle of the divisors of n (including the divisors of n) the diagonal from the bottom entry to n gives the divisors of n.

The programs for A273109, there is no canonical definition to state claims against.
-/

/-! ## A273109.P13184835628321122081

`ogf((-1+4x^4+8x^5)/(-1+2x))`
-/

namespace A273109.P13184835628321122081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -4, -8] [1, -2] n

end

end A273109.P13184835628321122081

/-! ## A273109.P18088848661181997783

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=16`
-/

namespace A273109.P18088848661181997783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 12, 16] fun n a =>
  2 * a (n - 1)

end

end A273109.P18088848661181997783

/-! ## A273109.P17206713312534225090

`record[A324714(or(1, n))+1]`
-/

namespace A273109.P17206713312534225090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (Nat.lor 1 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273109.P17206713312534225090

/-! ## A273109.P2359212894356751773

`record[A324714(2*n+1)+1]`
-/

namespace A273109.P2359212894356751773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273109.P2359212894356751773

/-! ## A273109.P1118081734312423310

`record[A324714(n+1+n)]+1`
-/

namespace A273109.P1118081734312423310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A273109.P1118081734312423310

/-!
# A273110: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (x+4*y+4*z)^2 + (9*x+3*y+3*z)^2 a square, where x,y,z,w are nonnegative integers with y > 0 and y >= z <= w.

The programs for A273110, there is no canonical definition to state claims against.
-/

/-! ## A273110.P1047207063975612214

`A033687(A272336(n+1)!)`
-/

namespace A273110.P1047207063975612214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (Nat.factorial (A272336 (n + 1)).toNat)

end

end A273110.P1047207063975612214

/-! ## A273110.P14689762299541471002

`A090822(4^A272336(n+1))`
-/

namespace A273110.P14689762299541471002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A272336 (n + 1) : ℤ))).toNat

end

end A273110.P14689762299541471002

/-! ## A273110.P4764925575269229196

`A001221(4^A272336(n+1)-2)`
-/

namespace A273110.P4764925575269229196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A272336 (n + 1) : ℤ) - 2)).toNat

end

end A273110.P4764925575269229196

/-! ## A273110.P15277241605629379431

`A001222(4^A272336(n+1)-2)`
-/

namespace A273110.P15277241605629379431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A272336 (n + 1) : ℤ) - 2)).toNat

end

end A273110.P15277241605629379431

/-! ## A273110.P2600464014139285510

`A001221(A243065(2*(n+1))+A085483(n+1))`
-/

namespace A273110.P2600464014139285510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243065 (2 * (n + 1)) + A085483 (n + 1)).toNat

end

end A273110.P2600464014139285510

/-!
# A273111: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A273111, there is no canonical definition to state claims against.
-/

/-! ## A273111.P4727418941435045719

`A273114(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273111.P4727418941435045719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273114 (n - 1) + a (n - 1)

end

end A273111.P4727418941435045719

/-! ## A273111.P3354351299006388769

`Δ[A273113(n)]-A273114(n)`
-/

namespace A273111.P3354351299006388769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273114 n

end

end A273111.P3354351299006388769

/-! ## A273111.P8937928296341675052

`∑[A273114(2*n-n)]+1-A273114(n)`
-/

namespace A273111.P8937928296341675052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273114 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273114 n)

end

end A273111.P8937928296341675052

/-! ## A273111.P443053225666813402

`A273113(n+1)-(A273114(n)+A273113(n))`
-/

namespace A273111.P443053225666813402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273113 (n + 1) - (A273114 n + A273113 n)

end

end A273111.P443053225666813402

/-! ## A273111.P3901042189935228105

`A000027(∑[A273114(n)]+1-A273114(n))`
-/

namespace A273111.P3901042189935228105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273114 n)).toNat

end

end A273111.P3901042189935228105

/-!
# A273112: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A273112, there is no canonical definition to state claims against.
-/

/-! ## A273112.P16299192640339970233

`A273111(2^n-1)`
-/

namespace A273112.P16299192640339970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (2 ^ n - 1)

end

end A273112.P16299192640339970233

/-! ## A273112.P12855719285980781484

`record[A273111(A006068(n))]`
-/

namespace A273112.P12855719285980781484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273112.P12855719285980781484

/-! ## A273112.P14965306151391996953

`record[A273111(A218616(n))]`
-/

namespace A273112.P14965306151391996953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273112.P14965306151391996953

/-! ## A273112.P8458051808524022395

`record[A273111(A227351(n))]`
-/

namespace A273112.P8458051808524022395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273112.P8458051808524022395

/-! ## A273112.P8913293058333940258

`record[A273111(A255565(n))]`
-/

namespace A273112.P8913293058333940258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273112.P8913293058333940258

/-!
# A273113: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A273113, there is no canonical definition to state claims against.
-/

/-! ## A273113.P11907461372227794996

`∑[∑[A273114(n)]+1-A273114(n)]`
-/

namespace A273113.P11907461372227794996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273114 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273113.P11907461372227794996

/-! ## A273113.P8888316819512122189

`∑[A273111(n)]`
-/

namespace A273113.P8888316819512122189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273113.P8888316819512122189

/-! ## A273113.P11443553217396941593

`A273111(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A273113.P11443553217396941593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273111 n + a ((n : ℤ) - A057427 n).toNat

end

end A273113.P11443553217396941593

/-! ## A273113.P13526846459015337506

`A273111(n)+A007318(C(2, n))*a(n-1)` with `a(0)=1`
-/

namespace A273113.P13526846459015337506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273111 n + A007318 (Nat.choose 2 n) * a (n - 1)

end

end A273113.P13526846459015337506

/-! ## A273113.P3235901137165915391

`a(n-1)+A273111(n)+A000007(A053023(n+1))` with `a(0)=1`
-/

namespace A273113.P3235901137165915391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273111 n + A000007 (A053023 (n + 1)).toNat)

end

end A273113.P3235901137165915391

/-!
# A273114: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A273114, there is no canonical definition to state claims against.
-/

/-! ## A273114.P9857510070112545425

`Δ[A273111(n)]`
-/

namespace A273114.P9857510070112545425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273114.P9857510070112545425

/-! ## A273114.P8044757594395970993

`A273111(n+1)-A273111(n)`
-/

namespace A273114.P8044757594395970993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273111 (n + 1) - A273111 n

end

end A273114.P8044757594395970993

/-!
# A273115: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A273115, there is no canonical definition to state claims against.
-/

/-! ## A273115.P11123417012047121328

`A273118(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273115.P11123417012047121328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273118 (n - 1) + a (n - 1)

end

end A273115.P11123417012047121328

/-! ## A273115.P2601499324605869765

`Δ[A273117(n)]-A273118(n)`
-/

namespace A273115.P2601499324605869765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273118 n

end

end A273115.P2601499324605869765

/-! ## A273115.P10100339362517020528

`A273117(n+1)-(A273118(n)+A273117(n))`
-/

namespace A273115.P10100339362517020528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273117 (n + 1) - (A273118 n + A273117 n)

end

end A273115.P10100339362517020528

/-! ## A273115.P14940912494083680618

`A273423(2*n+1)-(A273424(2*n)+A273423(2*n))`
-/

namespace A273115.P14940912494083680618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273423 (2 * n + 1) - (A273424 (2 * n) + A273423 (2 * n))

end

end A273115.P14940912494083680618

/-! ## A273115.P10117587001611187765

`A273421(2*n)`
-/

namespace A273115.P10117587001611187765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (2 * n)

end

end A273115.P10117587001611187765

/-! ## A273115.P2169233875396093103

`or(1, A273421(A005843(n))-1)`
-/

namespace A273115.P2169233875396093103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273421 (A005843 n).toNat - 1)

end

end A273115.P2169233875396093103

/-! ## A273115.P3426536440190810677

`A273421(A005843(n))/A033999(n)²`
-/

namespace A273115.P3426536440190810677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273421 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A273115.P3426536440190810677

/-! ## A273115.P4620422490122036988

`A273421(A005843(n))%A059664(n+1)`
-/

namespace A273115.P4620422490122036988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273421 (A005843 n).toNat) (A059664 (n + 1))

end

end A273115.P4620422490122036988

/-! ## A273115.P13158620637903936016

`A005408((∑[A273118(n)]-A273118(n))/2)`
-/

namespace A273115.P13158620637903936016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273118 n : ℤ) : ℚ) / 2)).toNat

end

end A273115.P13158620637903936016

/-! ## A273115.P1550801356593894751

`A141310(∑[A273118(n)]-A273118(n))`
-/

namespace A273115.P1550801356593894751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273118 n).toNat

end

end A273115.P1550801356593894751

/-! ## A273115.P10339152671859902326

`A004442(∑[A273118(n)]-A273118(n))`
-/

namespace A273115.P10339152671859902326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273118 n).toNat

end

end A273115.P10339152671859902326

/-! ## A273115.P16135902144694449818

`A109613(∑[A273118(n)]-A273118(n))`
-/

namespace A273115.P16135902144694449818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273118 n).toNat

end

end A273115.P16135902144694449818

/-!
# A273116: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A273116, there is no canonical definition to state claims against.
-/

/-! ## A273116.P14075447715116837885

`A273115(2^n-1)`
-/

namespace A273116.P14075447715116837885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 (2 ^ n - 1)

end

end A273116.P14075447715116837885

/-! ## A273116.P10537933840046110671

`or(1, A273115(A000225(n)))`
-/

namespace A273116.P10537933840046110671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273115 (A000225 n).toNat)

end

end A273116.P10537933840046110671

/-! ## A273116.P13279761207681284884

`record[A273115(Δ[A228693(n)])]`
-/

namespace A273116.P13279761207681284884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273116.P13279761207681284884

/-! ## A273116.P7823931581740832716

`record[A273115(A245611(n+1))]`
-/

namespace A273116.P7823931581740832716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273116.P7823931581740832716

/-! ## A273116.P902926638944243549

`record[A273115(A057728(n+1)-1)]`
-/

namespace A273116.P902926638944243549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 (A057728 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273116.P902926638944243549

/-!
# A273117: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A273117, there is no canonical definition to state claims against.
-/

/-! ## A273117.P9343702132582138209

`∑[A273118(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273117.P9343702132582138209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273118 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273117.P9343702132582138209

/-! ## A273117.P6500203712881028761

`∑[∑[A273118(n)]+1-A273118(n)]`
-/

namespace A273117.P6500203712881028761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273117.P6500203712881028761

/-! ## A273117.P7790116916963465361

`∑[A273115(n)]`
-/

namespace A273117.P7790116916963465361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273117.P7790116916963465361

/-! ## A273117.P16496666932993493221

`A273115(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A273117.P16496666932993493221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273115 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A273117.P16496666932993493221

/-! ## A273117.P1933857799576710419

`a(n-1)+A273115(n)%A000605(n)` with `a(0)=1`
-/

namespace A273117.P1933857799576710419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273115 n) (A000605 n)

end

end A273117.P1933857799576710419

/-! ## A273117.P8107817716365388103

`∑[A273421(2*n)]`
-/

namespace A273117.P8107817716365388103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273117.P8107817716365388103

/-! ## A273117.P14564948792356037675

`A273421(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A273117.P14564948792356037675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273421 (n + n) + a (n - 1)

end

end A273117.P14564948792356037675

/-!
# A273118: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A273118, there is no canonical definition to state claims against.
-/

/-! ## A273118.P18208178282294922936

`Δ[A273115(n)]`
-/

namespace A273118.P18208178282294922936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273118.P18208178282294922936

/-! ## A273118.P3493508797735279414

`A273115(n+1)-A273115(n)`
-/

namespace A273118.P3493508797735279414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273115 (n + 1) - A273115 n

end

end A273118.P3493508797735279414

/-! ## A273118.P471471245482778487

`A273424(2*n+1)+A273424(2*n)`
-/

namespace A273118.P471471245482778487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 (2 * n + 1) + A273424 (2 * n)

end

end A273118.P471471245482778487

/-! ## A273118.P2754209929673543792

`Δ[A273421(2*n)]`
-/

namespace A273118.P2754209929673543792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273118.P2754209929673543792

/-! ## A273118.P2394065575439318725

`Δ[or(1, A273421(A005843(n)))]`
-/

namespace A273118.P2394065575439318725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273421 (A005843 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273118.P2394065575439318725

/-! ## A273118.P9825009957909421030

`A273421(2*(n+1))-A273421(2*n)`
-/

namespace A273118.P9825009957909421030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (2 * (n + 1)) - A273421 (2 * n)

end

end A273118.P9825009957909421030

/-! ## A273118.P1524986503839201481

`Δ[A273421(A005843(n))]%A007521(n+1)`
-/

namespace A273118.P1524986503839201481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007521 (n + 1))

end

end A273118.P1524986503839201481

/-!
# A273119: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A273119, there is no canonical definition to state claims against.
-/

/-! ## A273119.P7693104102494146154

`A273122(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273119.P7693104102494146154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273122 (n - 1) + a (n - 1)

end

end A273119.P7693104102494146154

/-! ## A273119.P1984526630655252040

`∑[A273122(n)]+1-A273122(n)`
-/

namespace A273119.P1984526630655252040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273122 n)

end

end A273119.P1984526630655252040

/-! ## A273119.P1224581793200074644

`Δ[A273121(n)]-A273122(n)`
-/

namespace A273119.P1224581793200074644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273122 n

end

end A273119.P1224581793200074644

/-! ## A273119.P7934214851540248805

`A273121(n+1)-(A273122(n)+A273121(n))`
-/

namespace A273119.P7934214851540248805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273121 (n + 1) - (A273122 n + A273121 n)

end

end A273119.P7934214851540248805

/-! ## A273119.P11988482662608133770

`A181385(A016825(n))-A253078(n)`
-/

namespace A273119.P11988482662608133770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A253078 n

end

end A273119.P11988482662608133770

/-! ## A273119.P17619942659758279325

`A008740(A008458(n))-A253078(n)`
-/

namespace A273119.P17619942659758279325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A253078 n

end

end A273119.P17619942659758279325

/-!
# A273120: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A273120, there is no canonical definition to state claims against.
-/

/-! ## A273120.P8701515064826461788

`A273119(2^n-1)`
-/

namespace A273120.P8701515064826461788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (2 ^ n - 1)

end

end A273120.P8701515064826461788

/-! ## A273120.P6996530399169680917

`record[A273119(A038573(n))]`
-/

namespace A273120.P6996530399169680917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273120.P6996530399169680917

/-! ## A273120.P8974678503414458180

`record[A273119(A227351(n))]`
-/

namespace A273120.P8974678503414458180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273120.P8974678503414458180

/-! ## A273120.P12572538010344771686

`record[A273119(Δ[A228693(n)])]`
-/

namespace A273120.P12572538010344771686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273120.P12572538010344771686

/-! ## A273120.P12047855379602553679

`record[A273119(A253564(n+1))]`
-/

namespace A273120.P12047855379602553679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273120.P12047855379602553679

/-!
# A273121: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A273121, there is no canonical definition to state claims against.
-/

/-! ## A273121.P1168639280552135121

`∑[A273119(n)]`
-/

namespace A273121.P1168639280552135121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273121.P1168639280552135121

/-! ## A273121.P2404208731895625623

`∑[A273122(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273121.P2404208731895625623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273122 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273121.P2404208731895625623

/-! ## A273121.P12558241233134859033

`∑[∑[A273122(n)]+1-A273122(n)]`
-/

namespace A273121.P12558241233134859033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273122 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273121.P12558241233134859033

/-! ## A273121.P10723991358284175957

`a(n-1)+A273119(n)%A217775(n)` with `a(0)=1`
-/

namespace A273121.P10723991358284175957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273119 n) (A217775 n)

end

end A273121.P10723991358284175957

/-! ## A273121.P1097457340377319893

`A273119(n+1)+a(n-1)-A273122(n)` with `a(0)=1`
-/

namespace A273121.P1097457340377319893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273119 (n + 1) + (a (n - 1) - A273122 n)

end

end A273121.P1097457340377319893

/-! ## A273121.P12094823990190488896

`∑[A181385(A016825(n))-A253078(n)]`
-/

namespace A273121.P12094823990190488896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A253078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273121.P12094823990190488896

/-!
# A273122: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A273122, there is no canonical definition to state claims against.
-/

/-! ## A273122.P4267855313389184176

`Δ[A273119(n)]`
-/

namespace A273122.P4267855313389184176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273122.P4267855313389184176

/-! ## A273122.P14149327564707389878

`A273119(n+1)-A273119(n)`
-/

namespace A273122.P14149327564707389878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273119 (n + 1) - A273119 n

end

end A273122.P14149327564707389878

/-! ## A273122.P5584929825839674613

`Δ[A181385(A016825(n))-A253078(n)]`
-/

namespace A273122.P5584929825839674613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A253078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273122.P5584929825839674613

/-! ## A273122.P5113038662500321663

`Δ[A008740(A008458(n))-A253078(n)]`
-/

namespace A273122.P5113038662500321663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A253078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273122.P5113038662500321663

/-! ## A273122.P3303191009429593908

`Δ[A008740(A008458(n))]-A272422(n)`
-/

namespace A273122.P3303191009429593908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272422 n

end

end A273122.P3303191009429593908

/-!
# A273123: Values of A007692(n) that are not of the form x^2 + y^2 + z^2 where x, y, z are nonzero integers.

The programs for A273123, there is no canonical definition to state claims against.
-/

/-! ## A273123.P5978708980058049

`2^n*A025303(-or(n, -2))`
-/

namespace A273123.P5978708980058049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025303 (-Int.lor (n : ℤ) (-2)).toNat

end

end A273123.P5978708980058049

/-! ## A273123.P16588506355710643164

`5*(A133572(n+4)+A000079(n))`
-/

namespace A273123.P16588506355710643164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A133572 (n + 4) + A000079 n)

end

end A273123.P16588506355710643164

/-! ## A273123.P15096612126987006201

`Δ[5*A258415(A161680(n+8)+8)]`
-/

namespace A273123.P15096612126987006201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A258415 (A161680 (n + 8) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273123.P15096612126987006201

/-! ## A273123.P11615822285810511344

`Δ[A273669(3*(n+1))]*A020714(n)`
-/

namespace A273123.P11615822285810511344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020714 n

end

end A273123.P11615822285810511344

/-! ## A273123.P12893780625130726327

`Δ[A235089(3*n+5)]*A020714(n)`
-/

namespace A273123.P12893780625130726327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020714 n

end

end A273123.P12893780625130726327

/-!
# A273125: Numbers n for which 3*n is an isolated deficient number.

The programs for A273125, there is no canonical definition to state claims against.
-/

/-! ## A273125.P8076870377328498646

`A273255(n+1)/3`
-/

namespace A273125.P8076870377328498646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273255 (n + 1) : ℚ) / 3

end

end A273125.P8076870377328498646

/-! ## A273125.P8542973970368500135

`A093411(2*A273255(n+1))`
-/

namespace A273125.P8542973970368500135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * A273255 (n + 1)).toNat

end

end A273125.P8542973970368500135

/-! ## A273125.P13668924934882021758

`A093411(lcm(2, A273255(n+1)))`
-/

namespace A273125.P13668924934882021758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (Int.lcm 2 (A273255 (n + 1)))

end

end A273125.P13668924934882021758

/-! ## A273125.P13957502119031547915

`A006083(A273255(n+1))`
-/

namespace A273125.P13957502119031547915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A273255 (n + 1)).toNat

end

end A273125.P13957502119031547915

/-! ## A273125.P12016665432005776891

`A322982(A273255(comp[37*n]))`
-/

namespace A273125.P12016665432005776891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A273255 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A273125.P12016665432005776891

/-!
# A273126: Length of "continued logarithm" expansion of n.

The programs for A273126, there is no canonical definition to state claims against.
-/

/-! ## A273126.P3825997679623674377

`A007302(A053645(n+1)²²)+1`
-/

namespace A273126.P3825997679623674377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 ((A053645 (n + 1) ^ 2) ^ 2).toNat + 1

end

end A273126.P3825997679623674377

/-! ## A273126.P8378859137177451695

`A160385(A053645(n+1)²²)+1`
-/

namespace A273126.P8378859137177451695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 ((A053645 (n + 1) ^ 2) ^ 2).toNat + 1

end

end A273126.P8378859137177451695

/-! ## A273126.P9780648109029182574

`A160385(A087475(A053645(n+1)²))`
-/

namespace A273126.P9780648109029182574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A087475 (A053645 (n + 1) ^ 2).toNat).toNat

end

end A273126.P9780648109029182574

/-! ## A273126.P13199060708363728946

`A300223(A101692(n))%8`
-/

namespace A273126.P13199060708363728946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300223 (A101692 n).toNat) 8

end

end A273126.P13199060708363728946

/-! ## A273126.P17934622336539395803

`A007302(A058331(A053645(n+1)²))`
-/

namespace A273126.P17934622336539395803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A058331 (A053645 (n + 1) ^ 2).toNat).toNat

end

end A273126.P17934622336539395803

/-!
# A273127: Continued logarithm expansion of e.

The programs for A273127, there is no canonical definition to state claims against.
-/

/-! ## A273127.P5411649620668203659

`and(A007551(n+1), A226898(A007560(n+1)))`
-/

namespace A273127.P5411649620668203659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007551 (n + 1)) (A226898 (A007560 (n + 1)).toNat)

end

end A273127.P5411649620668203659

/-! ## A273127.P1162626709203302313

`A287108(or(A009936(n), A128035(n)))`
-/

namespace A273127.P1162626709203302313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (Int.lor (A009936 n) (A128035 n)).toNat

end

end A273127.P1162626709203302313

/-! ## A273127.P17493932048105237960

`A308831(A308786(n+3)%A308816(n+1))`
-/

namespace A273127.P17493932048105237960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308831 (Int.tmod (A308786 (n + 3)) (A308816 (n + 1))).toNat

end

end A273127.P17493932048105237960

/-!
# A273128: Continued logarithm expansion of Pi.

The programs for A273128, there is no canonical definition to state claims against.
-/

/-! ## A273128.P17850476873756992370

`A331416(∑[A130250(4*n)])`
-/

namespace A273128.P17850476873756992370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273128.P17850476873756992370

/-! ## A273128.P7579070208306776436

`lcm(A000503(A000996(n)), A293051(n))`
-/

namespace A273128.P7579070208306776436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000503 (A000996 n).toNat) (A293051 n)

end

end A273128.P7579070208306776436

/-! ## A273128.P11782526185029523546

`and(A090669(n+1), A105899(A090628(3*n)))`
-/

namespace A273128.P11782526185029523546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090669 (n + 1)) (A105899 (A090628 (3 * n)).toNat)

end

end A273128.P11782526185029523546

/-! ## A273128.P17015519688742277303

`A343380(A180567(n+1)%A287346(3*n+1))`
-/

namespace A273128.P17015519688742277303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (Int.tmod (A180567 (n + 1)) (A287346 (3 * n + 1))).toNat

end

end A273128.P17015519688742277303

/-! ## A273128.P3212652935124156541

`A230642(C(A168009(n+1), A000120(3*(n+1))))`
-/

namespace A273128.P3212652935124156541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (Nat.choose (A168009 (n + 1)).toNat (A000120 (3 * (n + 1))).toNat)

end

end A273128.P3212652935124156541

/-!
# A273129: The Rote-Fibonacci infinite sequence.

The programs for A273129, the canonical program `A273129.P1966559582175092992` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273129 has offset 0).

The definition of A273129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273129.P13355550180288044688

`ceil((n+2)/ϕ)%2`
-/

namespace A273129.P13355550180288044688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 2 : ℝ) / Real.goldenRatio⌉ 2

end

end A273129.P13355550180288044688

namespace A273129

/-- `ceil((n+2)/ϕ)%2` -/
def P13355550180288044688.Spec : Prop :=
  ∀ n, P13355550180288044688.a n = A273129 n

end A273129

/-! ## A273129.P13173916082269692813

`and(1, ceil((n+2)/ϕ))`
-/

namespace A273129.P13173916082269692813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(n + 2 : ℝ) / Real.goldenRatio⌉

end

end A273129.P13173916082269692813

namespace A273129

/-- `and(1, ceil((n+2)/ϕ))` -/
def P13173916082269692813.Spec : Prop :=
  ∀ n, P13173916082269692813.a n = A273129 n

end A273129

/-! ## A273129.P72551089078863373

`1-floor((n+2)/ϕ)%2`
-/

namespace A273129.P72551089078863373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌊(n + 2 : ℝ) / Real.goldenRatio⌋ 2

end

end A273129.P72551089078863373

namespace A273129

/-- `1-floor((n+2)/ϕ)%2` -/
def P72551089078863373.Spec : Prop :=
  ∀ n, P72551089078863373.a n = A273129 n

end A273129

/-! ## A273129.P3937504567689467407

`gcd(2, floor((n+2)/ϕ))-1`
-/

namespace A273129.P3937504567689467407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 ⌊(n + 2 : ℝ) / Real.goldenRatio⌋ : ℤ) - 1

end

end A273129.P3937504567689467407

namespace A273129

/-- `gcd(2, floor((n+2)/ϕ))-1` -/
def P3937504567689467407.Spec : Prop :=
  ∀ n, P3937504567689467407.a n = A273129 n

end A273129

/-! ## A273129.P3126435003588814686

`1-and(1, floor((n+2)/ϕ))`
-/

namespace A273129.P3126435003588814686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

end

end A273129.P3126435003588814686

namespace A273129

/-- `1-and(1, floor((n+2)/ϕ))` -/
def P3126435003588814686.Spec : Prop :=
  ∀ n, P3126435003588814686.a n = A273129 n

end A273129

/-! ## A273129.P10962220308684579838

`and(1, floor(-((n+2)/ϕ)))²`
-/

namespace A273129.P10962220308684579838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊-((n + 2 : ℝ) / Real.goldenRatio)⌋ ^ 2

end

end A273129.P10962220308684579838

namespace A273129

/-- `and(1, floor(-((n+2)/ϕ)))²` -/
def P10962220308684579838.Spec : Prop :=
  ∀ n, P10962220308684579838.a n = A273129 n

end A273129

/-! ## A273129.P9779750880369272200

`floor(n/lcm(2, floor((n+2)/ϕ)))`
-/

namespace A273129.P9779750880369272200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.lcm 2 ⌊(n + 2 : ℝ) / Real.goldenRatio⌋ : ℚ)⌋

end

end A273129.P9779750880369272200

namespace A273129

/-- `floor(n/lcm(2, floor((n+2)/ϕ)))` -/
def P9779750880369272200.Spec : Prop :=
  ∀ n, P9779750880369272200.a n = A273129 n

end A273129

/-! ## A273129.P10231394666421190161

`(Δ[floor((n+1)/ϕ)]-a(n-1))²` with `a(0)=0`
-/

namespace A273129.P10231394666421190161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) - f1 n - a (n - 1)) ^ 2

end

end A273129.P10231394666421190161

namespace A273129

/-- `(Δ[floor((n+1)/ϕ)]-a(n-1))²` -/
def P10231394666421190161.Spec : Prop :=
  ∀ n, P10231394666421190161.a n = A273129 n

end A273129

/-! ## A273129.P6110843719839448674

`floor(log(A316340(n)))`
-/

namespace A273129.P6110843719839448674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A316340 n : ℝ)⌋

end

end A273129.P6110843719839448674

namespace A273129

/-- `floor(log(A316340(n)))` -/
def P6110843719839448674.Spec : Prop :=
  ∀ n, P6110843719839448674.a n = A273129 n

end A273129

/-! ## A273129.P1624970711731429947

`abs(Δ[A332299(n)])`
-/

namespace A273129.P1624970711731429947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A273129.P1624970711731429947

namespace A273129

/-- `abs(Δ[A332299(n)])` -/
def P1624970711731429947.Spec : Prop :=
  ∀ n, P1624970711731429947.a n = A273129 n

end A273129

/-! ## A273129.P1966559582175092992

`1-A171587(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273129

/-- `1-A171587(n+1)` -/
def P1966559582175092992.Spec : Prop :=
  ∀ n, P1966559582175092992.a n = A273129 n

theorem P1966559582175092992.correct : P1966559582175092992.Spec := by
  intro n
  simp only [A273129]

end A273129

/-! ## A273129.P8568147587032462598

`1-Δ[A332298(n)]²`
-/

namespace A273129.P8568147587032462598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A273129.P8568147587032462598

namespace A273129

/-- `1-Δ[A332298(n)]²` -/
def P8568147587032462598.Spec : Prop :=
  ∀ n, P8568147587032462598.a n = A273129 n

end A273129

/-! ## A273129.P13988880430496782917

`A000035(A319433(n))`
-/

namespace A273129.P13988880430496782917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319433 n).toNat

end

end A273129.P13988880430496782917

namespace A273129

/-- `A000035(A319433(n))` -/
def P13988880430496782917.Spec : Prop :=
  ∀ n, P13988880430496782917.a n = A273129 n

end A273129

/-! ## A273129.P1658860542604752059

`A339052(A307295(n))`
-/

namespace A273129.P1658860542604752059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 (A307295 n).toNat

end

end A273129.P1658860542604752059

namespace A273129

/-- `A339052(A307295(n))` -/
def P1658860542604752059.Spec : Prop :=
  ∀ n, P1658860542604752059.a n = A273129 n

end A273129

/-! ## A273129.P4798891905557352752

`A059841(A005206(n+1))`
-/

namespace A273129.P4798891905557352752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A005206 (n + 1)).toNat

end

end A273129.P4798891905557352752

namespace A273129

/-- `A059841(A005206(n+1))` -/
def P4798891905557352752.Spec : Prop :=
  ∀ n, P4798891905557352752.a n = A273129 n

end A273129

/-! ## A273129.P48356992815210979

`A171587(n-A003849(n))`
-/

namespace A273129.P48356992815210979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 ((n : ℤ) - A003849 n).toNat

end

end A273129.P48356992815210979

namespace A273129

/-- `A171587(n-A003849(n))` -/
def P48356992815210979.Spec : Prop :=
  ∀ n, P48356992815210979.a n = A273129 n

end A273129

/-! ## A273129.P2521942798261095616

`xor(A003849(n), A171587(n))`
-/

namespace A273129.P2521942798261095616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 n) (A171587 n)

end

end A273129.P2521942798261095616

namespace A273129

/-- `xor(A003849(n), A171587(n))` -/
def P2521942798261095616.Spec : Prop :=
  ∀ n, P2521942798261095616.a n = A273129 n

end A273129

/-! ## A273129.P3628305900287789708

`A000035(A005206(n+1)+1)`
-/

namespace A273129.P3628305900287789708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005206 (n + 1) + 1).toNat

end

end A273129.P3628305900287789708

namespace A273129

/-- `A000035(A005206(n+1)+1)` -/
def P3628305900287789708.Spec : Prop :=
  ∀ n, P3628305900287789708.a n = A273129 n

end A273129

/-! ## A273129.P6813810048273722857

`A135528(A005206(n+1)+2)`
-/

namespace A273129.P6813810048273722857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A005206 (n + 1) + 2).toNat

end

end A273129.P6813810048273722857

namespace A273129

/-- `A135528(A005206(n+1)+2)` -/
def P6813810048273722857.Spec : Prop :=
  ∀ n, P6813810048273722857.a n = A273129 n

end A273129

/-! ## A273129.P12581125610122610346

`1-A096270(A141105(n+2))`
-/

namespace A273129.P12581125610122610346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096270 (A141105 (n + 2)).toNat

end

end A273129.P12581125610122610346

namespace A273129

/-- `1-A096270(A141105(n+2))` -/
def P12581125610122610346.Spec : Prop :=
  ∀ n, P12581125610122610346.a n = A273129 n

end A273129

/-!
# A273130: Numbers which have only positive entries in the difference table of their divisors.

The programs for A273130, there is no canonical definition to state claims against.
-/

/-! ## A273130.P8730502523800042333

`∪[A000079(n), A244579(n+1)]`
-/

namespace A273130.P8730502523800042333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P8730502523800042333

/-! ## A273130.P7272265865286373521

`∪[A008860(n), A244579(n+1)]`
-/

namespace A273130.P7272265865286373521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P7272265865286373521

/-! ## A273130.P11652264356707837567

`∪[A008861(n), A244579(n+1)]`
-/

namespace A273130.P11652264356707837567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P11652264356707837567

/-! ## A273130.P16673129014678435408

`∪[A008862(n), A244579(n+1)]`
-/

namespace A273130.P16673129014678435408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P16673129014678435408

/-! ## A273130.P13828524169082269090

`∪[A008863(n), A244579(n+1)]`
-/

namespace A273130.P13828524169082269090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P13828524169082269090

/-! ## A273130.P18019956838659620028

`∪[A051535(n), A244579(n+1)]`
-/

namespace A273130.P18019956838659620028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P18019956838659620028

/-! ## A273130.P7799111795293994428

`∪[A145114(n), A244579(n+1)]`
-/

namespace A273130.P7799111795293994428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P7799111795293994428

/-! ## A273130.P3641332994423283671

`∪[A145115(n), A244579(n+1)]`
-/

namespace A273130.P3641332994423283671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P3641332994423283671

/-! ## A273130.P15712541259025104270

`∪[A145116(n), A244579(n+1)]`
-/

namespace A273130.P15712541259025104270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P15712541259025104270

/-! ## A273130.P6225132563940918839

`∪[A145117(n), A244579(n+1)]`
-/

namespace A273130.P6225132563940918839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273130.P6225132563940918839

/-!
# A273131: Numbers n such that the bottom entry of the difference table of the divisors of n divides n.

The programs for A273131, there is no canonical definition to state claims against.
-/

/-! ## A273131.P10567188981234332949

`A371477(A015929(n+1))`
-/

namespace A273131.P10567188981234332949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A015929 (n + 1)).toNat

end

end A273131.P10567188981234332949

/-! ## A273131.P15729807004976532438

`lt[A000700(A253565(n)), A070940(n+1)]`
-/

namespace A273131.P15729807004976532438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A253565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273131.P15729807004976532438

/-! ## A273131.P3317120323884533535

`record[A335852(A335845(n)*A335853(n+1))]`
-/

namespace A273131.P3317120323884533535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335852 (A335845 n * A335853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273131.P3317120323884533535

/-! ## A273131.P9364603276928692616

`∩[A015929(n+1), A055572(n)]`
-/

namespace A273131.P9364603276928692616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273131.P9364603276928692616

/-! ## A273131.P11315772505724263199

`A355911(A140328(n+1))`
-/

namespace A273131.P11315772505724263199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A140328 (n + 1)).toNat

end

end A273131.P11315772505724263199

/-!
# A273132: Absolute difference table of the divisors of the positive integers (with every table read by antidiagonals upwards).

The programs for A273132, there is no canonical definition to state claims against.
-/

/-! ## A273132.P7987006103004954113

`abs(A272210(n+1))`
-/

namespace A273132.P7987006103004954113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272210 (n + 1)|

end

end A273132.P7987006103004954113

/-! ## A273132.P14900483316391829075

`A000194(A272210(n+1)²)`
-/

namespace A273132.P14900483316391829075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A272210 (n + 1) ^ 2).toNat

end

end A273132.P14900483316391829075

/-! ## A273132.P16542146775331183435

`A000196(A272210(n+1)²)`
-/

namespace A273132.P16542146775331183435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A272210 (n + 1) ^ 2).toNat

end

end A273132.P16542146775331183435

/-! ## A273132.P7174388497328007760

`A037213(A272210(n+1)²)`
-/

namespace A273132.P7174388497328007760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A272210 (n + 1) ^ 2).toNat

end

end A273132.P7174388497328007760

/-! ## A273132.P2274911911931594595

`A331958(A272210(n+1)²)`
-/

namespace A273132.P2274911911931594595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (A272210 (n + 1) ^ 2).toNat

end

end A273132.P2274911911931594595

/-! ## A273132.P9368701165320510792

`A272210(A316869(n)!+n)`
-/

namespace A273132.P9368701165320510792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272210 (Nat.factorial (A316869 n).toNat + n)

end

end A273132.P9368701165320510792

/-! ## A273132.P4817533633042803509

`gcd(A000038(n), A272210(n+1))`
-/

namespace A273132.P4817533633042803509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A272210 (n + 1))

end

end A273132.P4817533633042803509

/-! ## A273132.P2421512693249334673

`∑{d}[A272210(n+1), A000010(#)]`
-/

namespace A273132.P2421512693249334673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A273132.P2421512693249334673

/-! ## A273132.P13175295526352786475

`sqrt(A272210(n+1)²%A235462(n+1))`
-/

namespace A273132.P13175295526352786475
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A272210 (n + 1) ^ 2) (A235462 (n + 1)) : ℝ)

end

end A273132.P13175295526352786475

/-! ## A273132.P14028053857877000328

`sqrt(A272210(n+1)^A020639(2*(n+1)))`
-/

namespace A273132.P14028053857877000328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A272210 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A273132.P14028053857877000328

/-!
# A273133: a(n) = n minus the bottom entry of the difference table of the divisors of n.

The programs for A273133, there is no canonical definition to state claims against.
-/

/-! ## A273133.P16121209975479145189

`n+1-A187202(n+1)`
-/

namespace A273133.P16121209975479145189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A187202 (n + 1)

end

end A273133.P16121209975479145189

/-! ## A273133.P13207392255584071780

`1-A161856(A006218(n+1))+n`
-/

namespace A273133.P13207392255584071780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161856 (A006218 (n + 1)).toNat + (n : ℤ)

end

end A273133.P13207392255584071780

/-! ## A273133.P17176873491192569688

`1-A161856(∑[A000005(n+1)])+n`
-/

namespace A273133.P17176873491192569688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161856 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A273133.P17176873491192569688

/-!
# A273134: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with (x+8*y+8*z+15*w)^2+(6*(x+y+z+w))^2 a square, where x,y,z,w are nonnegative integers with y < z.

The programs for A273134, there is no canonical definition to state claims against.
-/

/-! ## A273134.P9036085508995427524

`gcd(∑[A001222(3*n+4)], A005866(n+2))`
-/

namespace A273134.P9036085508995427524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A005866 (n + 2))

end

end A273134.P9036085508995427524

/-! ## A273134.P3671509417725826292

`A125919(A125911(n+1)*A302243(n+1))`
-/

namespace A273134.P3671509417725826292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125919 (A125911 (n + 1) * A302243 (n + 1)).toNat

end

end A273134.P3671509417725826292

/-! ## A273134.P295471454040383979

`A103921(A330371(n+3)+A181985(n+2))`
-/

namespace A273134.P295471454040383979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A330371 (n + 3) + A181985 (n + 2)).toNat

end

end A273134.P295471454040383979

/-! ## A273134.P9064693703175640856

`A097367(A097367(A210863(A286343(A210862(n+1)))))`
-/

namespace A273134.P9064693703175640856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097367 (A097367 (A210863 (A286343 (A210862 (n + 1)).toNat).toNat).toNat).toNat

end

end A273134.P9064693703175640856

/-! ## A273134.P17772774842189102778

`A083911(A018135(n+1))`
-/

namespace A273134.P17772774842189102778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (A018135 (n + 1)).toNat

end

end A273134.P17772774842189102778

/-!
# A273135: Difference table of the divisors of the positive integers (with every table read by antidiagonals downwards).

The programs for A273135, there is no canonical definition to state claims against.
-/

/-! ## A273135.P454612864140394957

`A272121(n+1)-A055028(A092573(n))`
-/

namespace A273135.P454612864140394957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) - A055028 (A092573 n).toNat

end

end A273135.P454612864140394957

/-! ## A273135.P11185594560600045938

`A272121(n+1)+A273102(n+1)-A273104(n+1)`
-/

namespace A273135.P11185594560600045938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + (A273102 (n + 1) - A273104 (n + 1))

end

end A273135.P11185594560600045938

/-! ## A273135.P4605505550551582732

`A272121(A151878(n)+n+1)`
-/

namespace A273135.P4605505550551582732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (A151878 n + (n + 1 : ℤ)).toNat

end

end A273135.P4605505550551582732

/-! ## A273135.P8308948751876775952

`A272121(n+1)+A063691(A140513(n))`
-/

namespace A273135.P8308948751876775952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + A063691 (A140513 n).toNat

end

end A273135.P8308948751876775952

/-! ## A273135.P12505711660238352775

`A272121(n+1)+A000007(A274532(n+5))`
-/

namespace A273135.P12505711660238352775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + A000007 (A274532 (n + 5)).toNat

end

end A273135.P12505711660238352775

/-! ## A273135.P7882069083732477997

`A272121(n+1)%A001065(A269715(n+4))`
-/

namespace A273135.P7882069083732477997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272121 (n + 1)) (A001065 (A269715 (n + 4)).toNat)

end

end A273135.P7882069083732477997

/-! ## A273135.P1034206733291130000

`A007814(2^A272121(n+1))`
-/

namespace A273135.P1034206733291130000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A272121 (n + 1) : ℤ))).toNat

end

end A273135.P1034206733291130000

/-! ## A273135.P6916026049089202741

`A272121(n+1)+A007949(A067945(n+1))`
-/

namespace A273135.P6916026049089202741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + A007949 (A067945 (n + 1)).toNat

end

end A273135.P6916026049089202741

/-! ## A273135.P14148326015084853081

`A272121(n+1)+A000007(A138170(2*n+1))`
-/

namespace A273135.P14148326015084853081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272121 (n + 1) + A000007 (A138170 (2 * n + 1)).toNat

end

end A273135.P14148326015084853081

/-! ## A273135.P9423456679400672173

`A272121(n+1)%A002189(n)`
-/

namespace A273135.P9423456679400672173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272121 (n + 1)) (A002189 n)

end

end A273135.P9423456679400672173

/-!
# A273136: Difference table of the divisors of the positive integers (with every table read by columns).

The programs for A273136, there is no canonical definition to state claims against.
-/

/-! ## A273136.P5385039420345812809

`A273137(A151933(n)+1+n)`
-/

namespace A273136.P5385039420345812809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (A151933 n + 1 + (n : ℤ)).toNat

end

end A273136.P5385039420345812809

/-! ## A273136.P18318744299742527798

`A273137(or(1-(n-2*n), A151933(n)))`
-/

namespace A273136.P18318744299742527798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (Int.lor (1 - ((n : ℤ) - (2 * n : ℤ))) (A151933 n)).toNat

end

end A273136.P18318744299742527798

/-! ## A273136.P17374251910872661689

`A273137(n+1)+A000038(A064861(n))`
-/

namespace A273136.P17374251910872661689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (n + 1) + A000038 (A064861 n).toNat

end

end A273136.P17374251910872661689

/-! ## A273136.P2289967606180294600

`A273137(n+1)+A000007(A096669(n+1))`
-/

namespace A273136.P2289967606180294600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (n + 1) + A000007 (A096669 (n + 1)).toNat

end

end A273136.P2289967606180294600

/-! ## A273136.P17186780462610306293

`A054977(A247935(n+2))*A273137(n+1)`
-/

namespace A273136.P17186780462610306293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A247935 (n + 2)).toNat * A273137 (n + 1)

end

end A273136.P17186780462610306293

/-! ## A273136.P730817788668915927

`A273137(n+1)^A227690(A325249(n+1))`
-/

namespace A273136.P730817788668915927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273137 (n + 1) : ℚ) ^ (A227690 (A325249 (n + 1)).toNat : ℤ)

end

end A273136.P730817788668915927

/-! ## A273136.P7789515931458639950

`lcm(A008683(A119653(n+1)), A273137(n+1))`
-/

namespace A273136.P7789515931458639950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A119653 (n + 1)).toNat) (A273137 (n + 1))

end

end A273136.P7789515931458639950

/-! ## A273136.P1276445738603028250

`A273137(n+1)%A002189(n)`
-/

namespace A273136.P1276445738603028250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273137 (n + 1)) (A002189 n)

end

end A273136.P1276445738603028250

/-! ## A273136.P4918597002141348392

`A008683(A090076(n+1))*A273137(n+1)`
-/

namespace A273136.P4918597002141348392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A090076 (n + 1)).toNat * A273137 (n + 1)

end

end A273136.P4918597002141348392

/-! ## A273136.P16525995847999556806

`A273137(and(1, A141311(n+1))+n)`
-/

namespace A273136.P16525995847999556806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273137 (Int.land 1 (A141311 (n + 1)) + (n : ℤ)).toNat

end

end A273136.P16525995847999556806

/-!
# A273137: Absolute difference table of the divisors of the positive integers (with every table read by columns).

The programs for A273137, there is no canonical definition to state claims against.
-/

/-! ## A273137.P5621198185569198274

`abs(A273136(n+1))`
-/

namespace A273137.P5621198185569198274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273136 (n + 1)|

end

end A273137.P5621198185569198274

/-! ## A273137.P7726475663572312704

`gcd(C(2, n), A273136(-xor(n, -1)))`
-/

namespace A273137.P7726475663572312704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A273136 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A273137.P7726475663572312704

/-! ## A273137.P8295501210475631234

`A000194(A273136(n+1)²)`
-/

namespace A273137.P8295501210475631234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A273136 (n + 1) ^ 2).toNat

end

end A273137.P8295501210475631234

/-! ## A273137.P6782191970718317618

`A000196(A273136(n+1)²)`
-/

namespace A273137.P6782191970718317618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A273136 (n + 1) ^ 2).toNat

end

end A273137.P6782191970718317618

/-! ## A273137.P2252216637715459329

`A000194(A273136(n+1)^2)`
-/

namespace A273137.P2252216637715459329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A273136 (n + 1) ^ 2).toNat

end

end A273137.P2252216637715459329

/-! ## A273137.P9800303577004918372

`gcd(A000038(n), A273136(n+1))`
-/

namespace A273137.P9800303577004918372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273136 (n + 1))

end

end A273137.P9800303577004918372

/-! ## A273137.P4711191399991058325

`∑{d}[A273136(n+1), A000010(#)]`
-/

namespace A273137.P4711191399991058325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A273137.P4711191399991058325

/-! ## A273137.P14225814404499403265

`A002262(2*A273136(n+1)²)`
-/

namespace A273137.P14225814404499403265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A273136 (n + 1) ^ 2).toNat

end

end A273137.P14225814404499403265

/-! ## A273137.P10559392098710534973

`sqrt(A273136(n+1)²%A100637(n²))`
-/

namespace A273137.P10559392098710534973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A273136 (n + 1) ^ 2) (A100637 (n ^ 2)) : ℝ)

end

end A273137.P10559392098710534973

/-! ## A273137.P6547327699058595104

`sqrt(A273136(n+1)^A020639(2*(n+1)))`
-/

namespace A273137.P6547327699058595104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A273136 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A273137.P6547327699058595104

/-! ## A273137.P14387997011843059049

`sqrt(A273136(n+1)^A000040(gcd(n, n+1)))`
-/

namespace A273137.P14387997011843059049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A273136 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ) : ℝ)

end

end A273137.P14387997011843059049

/-! ## A273137.P337357725679903189

`lcm(-A273136(n+1), A227349(A003714(n)))`
-/

namespace A273137.P337357725679903189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A273136 (n + 1)) (A227349 (A003714 n).toNat)

end

end A273137.P337357725679903189

/-!
# A273138: Row number in which n appears for the first time in the infinite Sudoku-type array A269526.

The programs for A273138, there is no canonical definition to state claims against.
-/

/-! ## A273138.P18349142707148221249

`A004736(A273139(n+1))`
-/

namespace A273138.P18349142707148221249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A273139 (n + 1)).toNat

end

end A273138.P18349142707148221249

/-! ## A273138.P11370442160761263562

`A057555(2*A273139(n+1))`
-/

namespace A273138.P11370442160761263562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A273139 (n + 1)).toNat

end

end A273138.P11370442160761263562

/-! ## A273138.P11924583699111575350

`A200370(A273139(n+1)+1)`
-/

namespace A273138.P11924583699111575350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A273139 (n + 1) + 1).toNat

end

end A273138.P11924583699111575350

/-! ## A273138.P7111492752437845390

`A162320(A153119(3*n+4)+1)`
-/

namespace A273138.P7111492752437845390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162320 (A153119 (3 * n + 4) + 1).toNat

end

end A273138.P7111492752437845390

/-! ## A273138.P6474278883501353920

`A001222(A223168(3*n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A273138.P6474278883501353920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A223168 (3 * n + 1) + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉).toNat

end

end A273138.P6474278883501353920

/-!
# A273140: Number of parts in the corner of size n X n of the modular table of partitions described in Comments.

The programs for A273140, there is no canonical definition to state claims against.
-/

/-! ## A273140.P9279623224539609741

`(n+1)²-A207038(n+1)`
-/

namespace A273140.P9279623224539609741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A207038 (n + 1)

end

end A273140.P9279623224539609741

/-! ## A273140.P3086343374402811745

`∑[Δ[n²]-A207034(n+1)]`
-/

namespace A273140.P3086343374402811745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A207034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273140.P3086343374402811745

/-! ## A273140.P17608246990818609259

`∑[Δ[n²]-A000120(A194602(n))]`
-/

namespace A273140.P17608246990818609259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000120 (A194602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273140.P17608246990818609259

/-! ## A273140.P5854441926750129713

`∑[A005408(n)]-∑[A207034(n+1)]`
-/

namespace A273140.P5854441926750129713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A273140.P5854441926750129713

/-! ## A273140.P11371451659628025527

`A000290(n+1)-∑[A207034(n+1)]`
-/

namespace A273140.P11371451659628025527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273140.P11371451659628025527

/-! ## A273140.P15812064889961839232

`(n+1)²-∑[A000120(record[A331856(2*n)])]`
-/

namespace A273140.P15812064889961839232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273140.P15812064889961839232

/-!
# A273141: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A273141, there is no canonical definition to state claims against.
-/

/-! ## A273141.P3101635915180610995

`A272161(2^n-1)`
-/

namespace A273141.P3101635915180610995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 (2 ^ n - 1)

end

end A273141.P3101635915180610995

/-! ## A273141.P13316495523537759459

`record[A272161(A006068(n))]`
-/

namespace A273141.P13316495523537759459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273141.P13316495523537759459

/-! ## A273141.P5976835840814669679

`record[A272161(A173787(n))]`
-/

namespace A273141.P5976835840814669679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273141.P5976835840814669679

/-! ## A273141.P9538673869625807897

`or(1, A272161(A000225(n)))`
-/

namespace A273141.P9538673869625807897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272161 (A000225 n).toNat)

end

end A273141.P9538673869625807897

/-! ## A273141.P9238321438641721772

`record[A272161(A293447(n+1))]`
-/

namespace A273141.P9238321438641721772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273141.P9238321438641721772

/-!
# A273142: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A273142, there is no canonical definition to state claims against.
-/

/-! ## A273142.P14343583467803540533

`∑[A273143(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273142.P14343583467803540533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273143 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273142.P14343583467803540533

/-! ## A273142.P18272697973959815617

`∑[∑[A273143(n)]-A273143(n)+1]`
-/

namespace A273142.P18272697973959815617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273143 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273142.P18272697973959815617

/-! ## A273142.P15065991115491103460

`∑[A272161(n)]`
-/

namespace A273142.P15065991115491103460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273142.P15065991115491103460

/-! ## A273142.P2736053160812538512

`A272161(n%A005653(n))+a(n-1)` with `a(0)=1`
-/

namespace A273142.P2736053160812538512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272161 (Int.tmod (n : ℤ) (A005653 n)).toNat + a (n - 1)

end

end A273142.P2736053160812538512

/-! ## A273142.P2578540443955382866

`a(n-1)+or(A272161(n), A276791(n))` with `a(0)=1`
-/

namespace A273142.P2578540443955382866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A272161 n) (A276791 n)

end

end A273142.P2578540443955382866

/-! ## A273142.P5107196036770015802

`a(n-1)+or(A272161(n), A286419(n+1))` with `a(0)=1`
-/

namespace A273142.P5107196036770015802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A272161 n) (A286419 (n + 1))

end

end A273142.P5107196036770015802

/-! ## A273142.P14859188634400855123

`A272161(n)+a(n-1)%A280754(n+2)` with `a(0)=1`
-/

namespace A273142.P14859188634400855123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272161 n + Int.tmod (a (n - 1)) (A280754 (n + 2))

end

end A273142.P14859188634400855123

/-!
# A273143: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A273143, there is no canonical definition to state claims against.
-/

/-! ## A273143.P13536623203367452269

`Δ[A272161(n)]`
-/

namespace A273143.P13536623203367452269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273143.P13536623203367452269

/-! ## A273143.P12757105262220844750

`A272161(n+1)-A272161(n)`
-/

namespace A273143.P12757105262220844750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272161 (n + 1) - A272161 n

end

end A273143.P12757105262220844750

/-!
# A273144: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A273144, the canonical program `A273144.P17848120828081165436` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273144 has offset 0).

The definition of A273144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2984 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273144.P17848120828081165436

`2*a(n-2)-2*a(n-6)+a(n-8)` with `a(0)=1, a(1)=8, a(2)=20, a(3)=41, a(4)=57, a(5)=104, a(6)=116, a(7)=193`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273144

/-- `2*a(n-2)-2*a(n-6)+a(n-8)` -/
def P17848120828081165436.Spec : Prop :=
  ∀ n, P17848120828081165436.a n = A273144 n

theorem P17848120828081165436.correct : P17848120828081165436.Spec := by
  intro n
  simp only [A273144]

end A273144

/-! ## A273144.P3780893690648974984

`A005891(n)+A103832(n)-A106249(n)`
-/

namespace A273144.P3780893690648974984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + (A103832 n - A106249 n)

end

end A273144.P3780893690648974984

namespace A273144

/-- `A005891(n)+A103832(n)-A106249(n)` -/
def P3780893690648974984.Spec : Prop :=
  ∀ n, P3780893690648974984.a n = A273144 n

end A273144

/-! ## A273144.P12407101456869160675

`∑[A008706(n)]+A103832(n)-A106249(n)`
-/

namespace A273144.P12407101456869160675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A103832 n - A106249 n)

end

end A273144.P12407101456869160675

namespace A273144

/-- `∑[A008706(n)]+A103832(n)-A106249(n)` -/
def P12407101456869160675.Spec : Prop :=
  ∀ n, P12407101456869160675.a n = A273144 n

end A273144

/-! ## A273144.P6294911109184102023

`Δ[A000982(n)*A042963(n+1)-A004525(n)]`
-/

namespace A273144.P6294911109184102023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A042963 (n + 1) - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273144.P6294911109184102023

namespace A273144

/-- `Δ[A000982(n)*A042963(n+1)-A004525(n)]` -/
def P6294911109184102023.Spec : Prop :=
  ∀ n, P6294911109184102023.a n = A273144 n

end A273144

/-! ## A273144.P17396051470112765637

`A273147(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273144.P17396051470112765637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273147 (n - 1) + a (n - 1)

end

end A273144.P17396051470112765637

namespace A273144

/-- `A273147(n-1)+a(n-1)` -/
def P17396051470112765637.Spec : Prop :=
  ∀ n, P17396051470112765637.a n = A273144 n

end A273144

/-! ## A273144.P13129615219681006780

`Δ[A273146(n)]-A273147(n)`
-/

namespace A273144.P13129615219681006780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273147 n

end

end A273144.P13129615219681006780

namespace A273144

/-- `Δ[A273146(n)]-A273147(n)` -/
def P13129615219681006780.Spec : Prop :=
  ∀ n, P13129615219681006780.a n = A273144 n

end A273144

/-! ## A273144.P5264507167248906768

`A273146(n+1)-(A273147(n)+A273146(n))`
-/

namespace A273144.P5264507167248906768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273146 (n + 1) - (A273147 n + A273146 n)

end

end A273144.P5264507167248906768

namespace A273144

/-- `A273146(n+1)-(A273147(n)+A273146(n))` -/
def P5264507167248906768.Spec : Prop :=
  ∀ n, P5264507167248906768.a n = A273144 n

end A273144

/-! ## A273144.P13025654208858492730

`A080412(Δ[A000982(n)*A042963(n+1)])`
-/

namespace A273144.P13025654208858492730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (f1 (n + 1) - f1 n).toNat

end

end A273144.P13025654208858492730

namespace A273144

/-- `A080412(Δ[A000982(n)*A042963(n+1)])` -/
def P13025654208858492730.Spec : Prop :=
  ∀ n, P13025654208858492730.a n = A273144 n

end A273144

/-!
# A273145: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A273145, the canonical program `A273145.P8616683296191754335` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273145 has offset 0).

The definition of A273145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273145.P6845296598715697746

`and(7*C(2^n, 2)+1, -or(1, 2^n-1))`
-/

namespace A273145.P6845296598715697746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 * Nat.choose (2 ^ n) 2 + 1 : ℤ) (-Int.lor 1 ((2 ^ n : ℤ) - 1))

end

end A273145.P6845296598715697746

namespace A273145

/-- `and(7*C(2^n, 2)+1, -or(1, 2^n-1))` -/
def P6845296598715697746.Spec : Prop :=
  ∀ n, P6845296598715697746.a n = A273145 n

end A273145

/-! ## A273145.P13755985932769752961

`and(7*C(2^n, 2)+1, -(2*round(2^n/3)+1))`
-/

namespace A273145.P13755985932769752961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 * Nat.choose (2 ^ n) 2 + 1 : ℤ) (-(2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) + 1))

end

end A273145.P13755985932769752961

namespace A273145

/-- `and(7*C(2^n, 2)+1, -(2*round(2^n/3)+1))` -/
def P13755985932769752961.Spec : Prop :=
  ∀ n, P13755985932769752961.a n = A273145 n

end A273145

/-! ## A273145.P9372536640121726250

`and(-(floor(2^(n-1))+1), A171479(n))`
-/

namespace A273145.P9372536640121726250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)) (A171479 n)

end

end A273145.P9372536640121726250

namespace A273145

/-- `and(-(floor(2^(n-1))+1), A171479(n))` -/
def P9372536640121726250.Spec : Prop :=
  ∀ n, P9372536640121726250.a n = A273145 n

end A273145

/-! ## A273145.P11694634007357419654

`record[Δ[A279879(n)+2-ceil(2^(n-1))]]`
-/

namespace A273145.P11694634007357419654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n + (2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273145.P11694634007357419654

namespace A273145

/-- `record[Δ[A279879(n)+2-ceil(2^(n-1))]]` -/
def P11694634007357419654.Spec : Prop :=
  ∀ n, P11694634007357419654.a n = A273145 n

end A273145

/-! ## A273145.P1282047280009721671

`A269716(n)+A134057(n+1)`
-/

namespace A273145.P1282047280009721671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269716 n + A134057 (n + 1)

end

end A273145.P1282047280009721671

namespace A273145

/-- `A269716(n)+A134057(n+1)` -/
def P1282047280009721671.Spec : Prop :=
  ∀ n, P1282047280009721671.a n = A273145 n

end A273145

/-! ## A273145.P8616683296191754335

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=41, a(3)=193, a(4)=833`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273145

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P8616683296191754335.Spec : Prop :=
  ∀ n, P8616683296191754335.a n = A273145 n

theorem P8616683296191754335.correct : P8616683296191754335.Spec := by
  intro n
  simp only [A273145]

end A273145

/-!
# A273146: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A273146, the canonical program `A273146.P12604411476535506395` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273146 has offset 0).

The definition of A273146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273146.P12604411476535506395

`∑[A273144(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273146

/-- `∑[A273144(n)]` -/
def P12604411476535506395.Spec : Prop :=
  ∀ n, P12604411476535506395.a n = A273146 n

theorem P12604411476535506395.correct : P12604411476535506395.Spec := by
  intro n
  simp only [A273146]

end A273146

/-! ## A273146.P16647633385727995143

`a(n-1)+A273144(n)+A000007(n)` with `a(0)=1`
-/

namespace A273146.P16647633385727995143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273144 n + A000007 n)

end

end A273146.P16647633385727995143

namespace A273146

/-- `a(n-1)+A273144(n)+A000007(n)` -/
def P16647633385727995143.Spec : Prop :=
  ∀ n, P16647633385727995143.a n = A273146 n

end A273146

/-! ## A273146.P9118211912648815258

`a(n-1)+A273144(n)+A000038(n)` with `a(0)=1`
-/

namespace A273146.P9118211912648815258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273144 n + A000038 n)

end

end A273146.P9118211912648815258

namespace A273146

/-- `a(n-1)+A273144(n)+A000038(n)` -/
def P9118211912648815258.Spec : Prop :=
  ∀ n, P9118211912648815258.a n = A273146 n

end A273146

/-! ## A273146.P12550802797800353889

`A273144(A004525(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273146.P12550802797800353889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273144 (A004525 (n + n)).toNat + a (n - 1)

end

end A273146.P12550802797800353889

namespace A273146

/-- `A273144(A004525(n+n))+a(n-1)` -/
def P12550802797800353889.Spec : Prop :=
  ∀ n, P12550802797800353889.a n = A273146 n

end A273146

/-! ## A273146.P9201416347141784398

`a(n-1)+A273144(n)%A010965(n)` with `a(0)=1`
-/

namespace A273146.P9201416347141784398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273144 n) (A010965 (n + 12))

end

end A273146.P9201416347141784398

namespace A273146

/-- `a(n-1)+A273144(n)%A010965(n)` -/
def P9201416347141784398.Spec : Prop :=
  ∀ n, P9201416347141784398.a n = A273146 n

end A273146

/-! ## A273146.P5744016787381102663

`∑[A005891(n)+A103832(n)-A106249(n)]`
-/

namespace A273146.P5744016787381102663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + (A103832 n - A106249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273146.P5744016787381102663

namespace A273146

/-- `∑[A005891(n)+A103832(n)-A106249(n)]` -/
def P5744016787381102663.Spec : Prop :=
  ∀ n, P5744016787381102663.a n = A273146 n

end A273146

/-! ## A273146.P3870309625178442205

`A000982(n+1)*A042963(n+2)-A004525(n+1)`
-/

namespace A273146.P3870309625178442205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) * A042963 (n + 2) - A004525 (n + 1)

end

end A273146.P3870309625178442205

namespace A273146

/-- `A000982(n+1)*A042963(n+2)-A004525(n+1)` -/
def P3870309625178442205.Spec : Prop :=
  ∀ n, P3870309625178442205.a n = A273146 n

end A273146

/-! ## A273146.P12726952817747343301

`∑[∑[A273147(n)]+1-A273147(n)]`
-/

namespace A273146.P12726952817747343301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273147 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273146.P12726952817747343301

namespace A273146

/-- `∑[∑[A273147(n)]+1-A273147(n)]` -/
def P12726952817747343301.Spec : Prop :=
  ∀ n, P12726952817747343301.a n = A273146 n

end A273146

/-!
# A273147: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A273147, the canonical program `A273147.P7169736395643555006` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273147 has offset 0).

The definition of A273147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273147.P7169736395643555006

`Δ[A273144(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273147

/-- `Δ[A273144(n)]` -/
def P7169736395643555006.Spec : Prop :=
  ∀ n, P7169736395643555006.a n = A273147 n

theorem P7169736395643555006.correct : P7169736395643555006.Spec := by
  intro n
  simp only [A273147]

end A273147

/-! ## A273147.P500911360526716622

`A273144(n+1)-A273144(n)`
-/

namespace A273147.P500911360526716622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273144 (n + 1) - A273144 n

end

end A273147.P500911360526716622

namespace A273147

/-- `A273144(n+1)-A273144(n)` -/
def P500911360526716622.Spec : Prop :=
  ∀ n, P500911360526716622.a n = A273147 n

theorem P500911360526716622.correct : P500911360526716622.Spec := by
  intro n
  simp only [A273147, Nat.add_sub_cancel, A273147.P500911360526716622.a, A273147.P7169736395643555006.f1, A273147.P7169736395643555006.a, SequenceMachineLib.memo_apply]

end A273147

/-! ## A273147.P1777845263359669420

`Δ[A005891(n)+A103832(n)-A106249(n)]`
-/

namespace A273147.P1777845263359669420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + (A103832 n - A106249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273147.P1777845263359669420

namespace A273147

/-- `Δ[A005891(n)+A103832(n)-A106249(n)]` -/
def P1777845263359669420.Spec : Prop :=
  ∀ n, P1777845263359669420.a n = A273147 n

end A273147

/-! ## A273147.P13855587783004144981

`Δ[A273146(n)]-(∑[A008706(n)]+A103832(n)-A106249(n))`
-/

namespace A273147.P13855587783004144981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (∑ j ∈ Finset.range (n + 1), f2 j + (A103832 n - A106249 n))

end

end A273147.P13855587783004144981

namespace A273147

/-- `Δ[A273146(n)]-(∑[A008706(n)]+A103832(n)-A106249(n))` -/
def P13855587783004144981.Spec : Prop :=
  ∀ n, P13855587783004144981.a n = A273147 n

end A273147

/-! ## A273147.P3543400819595247866

`Δ[A273146(n)]-Δ[A000982(n)*A042963(n+1)-A004525(n)]`
-/

namespace A273147.P3543400819595247866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A042963 (n + 1) - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A273147.P3543400819595247866

namespace A273147

/-- `Δ[A273146(n)]-Δ[A000982(n)*A042963(n+1)-A004525(n)]` -/
def P3543400819595247866.Spec : Prop :=
  ∀ n, P3543400819595247866.a n = A273147 n

end A273147

/-!
# A273148: Left inverse of A274648.

The programs for A273148, there is no canonical definition to state claims against.
-/

/-! ## A273148.P56803593364936268

`A143583(a(n-1))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A273148.P56803593364936268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 2] fun n a =>
  A143583 (a (n - 1)).toNat

end

end A273148.P56803593364936268

/-!
# A273149: a(n) = A053839(n)+1.

The programs for A273149, the canonical program `A273149.P13038668691077749708` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273149 has offset 0).

The definition of A273149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273149.P13038668691077749708

`A053839(n)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273149

/-- `A053839(n)+1` -/
def P13038668691077749708.Spec : Prop :=
  ∀ n, P13038668691077749708.a n = A273149 n

theorem P13038668691077749708.correct : P13038668691077749708.Spec := by
  intro n
  simp only [A273149]

end A273149

/-! ## A273149.P16664678025487117772

`and(3, record[val(n, 4)-a(n-1)])+1` with `a(0)=4`
-/

namespace A273149.P16664678025487117772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A273149.P16664678025487117772

namespace A273149

/-- `and(3, record[val(n, 4)-a(n-1)])+1` -/
def P16664678025487117772.Spec : Prop :=
  ∀ n, P16664678025487117772.a n = A273149 n

end A273149

/-! ## A273149.P12175554268709005655

`A037463(n)%4+1`
-/

namespace A273149.P12175554268709005655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037463 n) 4 + 1

end

end A273149.P12175554268709005655

namespace A273149

/-- `A037463(n)%4+1` -/
def P12175554268709005655.Spec : Prop :=
  ∀ n, P12175554268709005655.a n = A273149 n

end A273149

/-! ## A273149.P14364817521118021748

`A053737(n)%4+1`
-/

namespace A273149.P14364817521118021748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 n) 4 + 1

end

end A273149.P14364817521118021748

namespace A273149

/-- `A053737(n)%4+1` -/
def P14364817521118021748.Spec : Prop :=
  ∀ n, P14364817521118021748.a n = A273149 n

end A273149

/-! ## A273149.P14870413163326649636

`A087069(n)%4+1`
-/

namespace A273149.P14870413163326649636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087069 n) 4 + 1

end

end A273149.P14870413163326649636

namespace A273149

/-- `A087069(n)%4+1` -/
def P14870413163326649636.Spec : Prop :=
  ∀ n, P14870413163326649636.a n = A273149 n

end A273149

/-! ## A273149.P11900959226120470104

`A247891(n)%4+1`
-/

namespace A273149.P11900959226120470104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247891 n) 4 + 1

end

end A273149.P11900959226120470104

namespace A273149

/-- `A247891(n)%4+1` -/
def P11900959226120470104.Spec : Prop :=
  ∀ n, P11900959226120470104.a n = A273149 n

end A273149

/-! ## A273149.P13731959028340617201

`A020654(n+1)%4+1`
-/

namespace A273149.P13731959028340617201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (n + 1)) 4 + 1

end

end A273149.P13731959028340617201

namespace A273149

/-- `A020654(n+1)%4+1` -/
def P13731959028340617201.Spec : Prop :=
  ∀ n, P13731959028340617201.a n = A273149 n

end A273149

/-! ## A273149.P2224722384129758188

`A010883(A053737(n))`
-/

namespace A273149.P2224722384129758188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A053737 n).toNat

end

end A273149.P2224722384129758188

namespace A273149

/-- `A010883(A053737(n))` -/
def P2224722384129758188.Spec : Prop :=
  ∀ n, P2224722384129758188.a n = A273149 n

theorem P2224722384129758188.correct : P2224722384129758188.Spec := by
  intro n
  simp only [A273149, Nat.add_sub_cancel, A273149.P2224722384129758188.a, A273149.P13038668691077749708.a, A010883, A010883.P8521723522809144533.a, A053737, A053737.P2884229603739038868.a, A053839, A053839.P2067355896077085715.a, A010873, A010873.P1599048511093929465.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273149

/-! ## A273149.P8204701655739041797

`A010873(A087069(n))+1`
-/

namespace A273149.P8204701655739041797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A087069 n).toNat + 1

end

end A273149.P8204701655739041797

namespace A273149

/-- `A010873(A087069(n))+1` -/
def P8204701655739041797.Spec : Prop :=
  ∀ n, P8204701655739041797.a n = A273149 n

end A273149

/-! ## A273149.P15013664887374538903

`A010873(A247891(n))+1`
-/

namespace A273149.P15013664887374538903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A247891 n).toNat + 1

end

end A273149.P15013664887374538903

namespace A273149

/-- `A010873(A247891(n))+1` -/
def P15013664887374538903.Spec : Prop :=
  ∀ n, P15013664887374538903.a n = A273149 n

end A273149

/-! ## A273149.P5748696288637617504

`A002260(or(92, A053737(n)))`
-/

namespace A273149.P5748696288637617504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor 92 (A053737 n)).toNat

end

end A273149.P5748696288637617504

namespace A273149

/-- `A002260(or(92, A053737(n)))` -/
def P5748696288637617504.Spec : Prop :=
  ∀ n, P5748696288637617504.a n = A273149 n

end A273149

/-! ## A273149.P5799163636858485970

`A010883(∑{digits}[A007090(n), #])`
-/

namespace A273149.P5799163636858485970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A273149.P5799163636858485970

namespace A273149

/-- `A010883(∑{digits}[A007090(n), #])` -/
def P5799163636858485970.Spec : Prop :=
  ∀ n, P5799163636858485970.a n = A273149 n

end A273149

/-! ## A273149.P14119647446825842553

`A010873(A020654(n+1))+1`
-/

namespace A273149.P14119647446825842553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A020654 (n + 1)).toNat + 1

end

end A273149.P14119647446825842553

namespace A273149

/-- `A010873(A020654(n+1))+1` -/
def P14119647446825842553.Spec : Prop :=
  ∀ n, P14119647446825842553.a n = A273149 n

end A273149

/-! ## A273149.P15061762951318259991

`and(A001539(n), A053737(n))+1`
-/

namespace A273149.P15061762951318259991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A053737 n) + 1

end

end A273149.P15061762951318259991

namespace A273149

/-- `and(A001539(n), A053737(n))+1` -/
def P15061762951318259991.Spec : Prop :=
  ∀ n, P15061762951318259991.a n = A273149 n

end A273149

/-! ## A273149.P8575615675684176803

`A004766(n+1)-A287555(n+1)`
-/

namespace A273149.P8575615675684176803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1) - A287555 (n + 1)

end

end A273149.P8575615675684176803

namespace A273149

/-- `A004766(n+1)-A287555(n+1)` -/
def P8575615675684176803.Spec : Prop :=
  ∀ n, P8575615675684176803.a n = A273149 n

theorem P8575615675684176803.correct : P8575615675684176803.Spec := by
  intro n
  simp only [A273149, Nat.add_sub_cancel, A273149.P8575615675684176803.a, A273149.P13038668691077749708.a, A004766, A004766.P16471747092736184313.a, A053839, A053839.P2067355896077085715.a, A287555, A287555.P853673800569344600.a, A010873, A010873.P1599048511093929465.a, A053737, A053737.P2884229603739038868.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273149

/-! ## A273149.P4934204952197215462

`A010883(A247891(n))`
-/

namespace A273149.P4934204952197215462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A247891 n).toNat

end

end A273149.P4934204952197215462

namespace A273149

/-- `A010883(A247891(n))` -/
def P4934204952197215462.Spec : Prop :=
  ∀ n, P4934204952197215462.a n = A273149 n

end A273149

/-! ## A273149.P5581146537453721512

`A010883(A087069(n))`
-/

namespace A273149.P5581146537453721512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A087069 n).toNat

end

end A273149.P5581146537453721512

namespace A273149

/-- `A010883(A087069(n))` -/
def P5581146537453721512.Spec : Prop :=
  ∀ n, P5581146537453721512.a n = A273149 n

end A273149

/-! ## A273149.P2600088484703225804

`A010883(A020654(n+1))`
-/

namespace A273149.P2600088484703225804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A020654 (n + 1)).toNat

end

end A273149.P2600088484703225804

namespace A273149

/-- `A010883(A020654(n+1))` -/
def P2600088484703225804.Spec : Prop :=
  ∀ n, P2600088484703225804.a n = A273149 n

end A273149

/-! ## A273149.P1802293135557003488

`A020655(A020655(n+1))%5`
-/

namespace A273149.P1802293135557003488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (A020655 (n + 1)).toNat) 5

end

end A273149.P1802293135557003488

namespace A273149

/-- `A020655(A020655(n+1))%5` -/
def P1802293135557003488.Spec : Prop :=
  ∀ n, P1802293135557003488.a n = A273149 n

end A273149

/-! ## A273149.P2007715395955099254

`A158459(A287555(n+1))+1`
-/

namespace A273149.P2007715395955099254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A287555 (n + 1)).toNat + 1

end

end A273149.P2007715395955099254

namespace A273149

/-- `A158459(A287555(n+1))+1` -/
def P2007715395955099254.Spec : Prop :=
  ∀ n, P2007715395955099254.a n = A273149 n

end A273149

/-!
# A273150: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A273150, there is no canonical definition to state claims against.
-/

/-! ## A273150.P14251144433616434028

`A273152(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273150.P14251144433616434028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273152 (n - 1) + a (n - 1)

end

end A273150.P14251144433616434028

/-! ## A273150.P18437175109982675467

`Δ[A273151(n)]-A273152(n)`
-/

namespace A273150.P18437175109982675467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273152 n

end

end A273150.P18437175109982675467

/-! ## A273150.P10082543471921825214

`A273151(n+1)-(A273152(n)+A273151(n))`
-/

namespace A273150.P10082543471921825214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273151 (n + 1) - (A273152 n + A273151 n)

end

end A273150.P10082543471921825214

/-! ## A273150.P11953880306464884157

`ceil(A272089(2*n)/2)`
-/

namespace A273150.P11953880306464884157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A272089 (2 * n) : ℚ) / 2⌉

end

end A273150.P11953880306464884157

/-! ## A273150.P13028038182069377431

`(A272089(A005843(n))+1)/2`
-/

namespace A273150.P13028038182069377431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272089 (A005843 n).toNat + 1 : ℚ) / 2

end

end A273150.P13028038182069377431

/-! ## A273150.P15981375344537663040

`round(A272089(A038608(2*n))/2)`
-/

namespace A273150.P15981375344537663040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272089 (A038608 (2 * n)).toNat : ℚ) / 2)

end

end A273150.P15981375344537663040

/-! ## A273150.P15215124768451504268

`or(round(A272089(2*n)/2), A057427(n))`
-/

namespace A273150.P15215124768451504268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A272089 (2 * n) : ℚ) / 2)) (A057427 n)

end

end A273150.P15215124768451504268

/-! ## A273150.P4607596635923244357

`(A272089(2*n)+A057427(n+1))/2`
-/

namespace A273150.P4607596635923244357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272089 (2 * n) + A057427 (n + 1) : ℚ) / 2

end

end A273150.P4607596635923244357

/-! ## A273150.P15625364003593432193

`A000265(A272089(2*n)+1)`
-/

namespace A273150.P15625364003593432193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A272089 (2 * n) + 1).toNat

end

end A273150.P15625364003593432193

/-! ## A273150.P5937178075150408461

`A273943(A272089(2*n)+1)`
-/

namespace A273150.P5937178075150408461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A272089 (2 * n) + 1).toNat

end

end A273150.P5937178075150408461

/-! ## A273150.P976382616504464911

`A005408((∑[A273152(n)]-A273152(n))/2)`
-/

namespace A273150.P976382616504464911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273152 n : ℤ) : ℚ) / 2)).toNat

end

end A273150.P976382616504464911

/-! ## A273150.P13576074524751921357

`A157142((∑[A273152(n)]-A273152(n))/2)`
-/

namespace A273150.P13576074524751921357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273152 n : ℤ) : ℚ) / 2)).toNat

end

end A273150.P13576074524751921357

/-!
# A273151: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A273151, there is no canonical definition to state claims against.
-/

/-! ## A273151.P938426920494010713

`∑[∑[A273152(n)]+1-A273152(n)]`
-/

namespace A273151.P938426920494010713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273152 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273152 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P938426920494010713

/-! ## A273151.P3839236672832534843

`∑[A273150(n)]`
-/

namespace A273151.P3839236672832534843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P3839236672832534843

/-! ## A273151.P7923134469508636416

`A273150(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273151.P7923134469508636416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273150 n + a (A023443 n).toNat

end

end A273151.P7923134469508636416

/-! ## A273151.P8819474218717049937

`∑[round(A272089(2*n)/2)]`
-/

namespace A273151.P8819474218717049937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272089 (2 * n) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P8819474218717049937

/-! ## A273151.P7950845865733119568

`a(n-1)+A273150(n)%A282001(n+1)` with `a(0)=1`
-/

namespace A273151.P7950845865733119568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273150 n) (A282001 (n + 1))

end

end A273151.P7950845865733119568

/-! ## A273151.P15943504880704271281

`∑[A246425(A272089(2*n))]`
-/

namespace A273151.P15943504880704271281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A272089 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P15943504880704271281

/-! ## A273151.P14468552594818086445

`∑[A161151(A272089(A005843(n)))]`
-/

namespace A273151.P14468552594818086445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A272089 (A005843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P14468552594818086445

/-! ## A273151.P333662424593524308

`∑[A008619(A272089(A038608(2*n)))]`
-/

namespace A273151.P333662424593524308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A272089 (A038608 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273151.P333662424593524308

/-!
# A273152: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 598", based on the 5-celled von Neumann neighborhood.

The programs for A273152, there is no canonical definition to state claims against.
-/

/-! ## A273152.P7094803730209215262

`Δ[A273150(n)]`
-/

namespace A273152.P7094803730209215262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273152.P7094803730209215262

/-! ## A273152.P15800562972800100600

`A273150(n+1)-A273150(n)`
-/

namespace A273152.P15800562972800100600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273150 (n + 1) - A273150 n

end

end A273152.P15800562972800100600

/-! ## A273152.P22220210771877600

`Δ[A272089(2*n)/2]`
-/

namespace A273152.P22220210771877600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272089 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273152.P22220210771877600

/-! ## A273152.P12948980001619775996

`Δ[A272089(A005843(n))]/2`
-/

namespace A273152.P12948980001619775996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272089 (A005843 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A273152.P12948980001619775996

/-! ## A273152.P3497909062014634240

`Δ[A000265(A272089(2*n)+1)]`
-/

namespace A273152.P3497909062014634240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A272089 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273152.P3497909062014634240

/-! ## A273152.P9816706267397159582

`Δ[A246425(A272089(2*n))]`
-/

namespace A273152.P9816706267397159582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A272089 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273152.P9816706267397159582

/-! ## A273152.P6979186218853646202

`(A272092(2*n+1)+A272092(2*n))/2`
-/

namespace A273152.P6979186218853646202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272092 (2 * n + 1) + A272092 (2 * n) : ℚ) / 2

end

end A273152.P6979186218853646202

/-!
# A273153: a(n) = Numerator of (0 followed by 1's) - n/2^n.

The programs for A273153, there is no canonical definition to state claims against.
-/

/-! ## A273153.P5566998510100634858

`floor((2^n-n)/gcd(32, n))`
-/

namespace A273153.P5566998510100634858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) - (n : ℤ) : ℚ) / (Nat.gcd 32 n : ℚ)⌋

end

end A273153.P5566998510100634858

/-! ## A273153.P7704509556997348204

`lcm(n, 2^n-n)/round(1/acot(n))`
-/

namespace A273153.P7704509556997348204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((2 ^ n : ℤ) - (n : ℤ)) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A273153.P7704509556997348204

/-! ## A273153.P5922065543675712140

`lcm(n, A000325(n))/A028310(n)`
-/

namespace A273153.P5922065543675712140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A000325 n) : ℚ) / (A028310 n : ℚ)

end

end A273153.P5922065543675712140

/-! ## A273153.P13606995319980416723

`(A000079(n)-A028310(n))/gcd(64, n)`
-/

namespace A273153.P13606995319980416723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A028310 n : ℚ) / (Nat.gcd 64 n : ℚ)

end

end A273153.P13606995319980416723

/-! ## A273153.P416674228972476445

`A000265(2^n-n)%(2^n)`
-/

namespace A273153.P416674228972476445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (2 ^ n - n)) (2 ^ n : ℤ)

end

end A273153.P416674228972476445

/-!
# A273154: Number of 4-power-free binary words of length n.

The programs for A273154, there is no canonical definition to state claims against.
-/

/-! ## A273154.P14728697751862661785

`A308148(n)+A076282(A008288(n))`
-/

namespace A273154.P14728697751862661785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 n + A076282 (A008288 n).toNat

end

end A273154.P14728697751862661785

/-! ## A273154.P18129181513058972073

`A308148(lcm(n, n-and(n, 2*n)))`
-/

namespace A273154.P18129181513058972073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 (Int.lcm (n : ℤ) ((n : ℤ) - (Nat.land n (2 * n) : ℤ)))

end

end A273154.P18129181513058972073

/-! ## A273154.P18308586646418836697

`A308148(A055649(n))`
-/

namespace A273154.P18308586646418836697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 (A055649 n).toNat

end

end A273154.P18308586646418836697

/-! ## A273154.P7396016930634836984

`A308148(A061378(n))`
-/

namespace A273154.P7396016930634836984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 (A061378 n).toNat

end

end A273154.P7396016930634836984

/-! ## A273154.P6115586368451961452

`A308148(A062399(n))`
-/

namespace A273154.P6115586368451961452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 (A062399 n).toNat

end

end A273154.P6115586368451961452

/-!
# A273157: Numbers which have nonpositive entries in the difference table of their divisors (complement of A273130).

The programs for A273157, there is no canonical definition to state claims against.
-/

/-! ## A273157.P5713756948406808173

`comp[A273130(n+1)-1]+1`
-/

namespace A273157.P5713756948406808173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A273157.P5713756948406808173

/-! ## A273157.P18101557495790344290

`lt[val(n+1, 2), A243982(n+1)]+1`
-/

namespace A273157.P18101557495790344290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A273157.P18101557495790344290

/-! ## A273157.P3483059852127098238

`∪[2*lt[and(n, -n), n], A090196(n+1)]`
-/

namespace A273157.P3483059852127098238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A273157.P3483059852127098238

/-! ## A273157.P2960212362904680891

`filter[A350803(n+1), A143731(#)]`
-/

namespace A273157.P2960212362904680891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A273157.P2960212362904680891

/-! ## A273157.P13766769151335075278

`filter[A350803(n+1), A202238(#)]`
-/

namespace A273157.P13766769151335075278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A273157.P13766769151335075278

/-! ## A273157.P6586735713572763749

`filter[A350803(n+1), A267579(#)]`
-/

namespace A273157.P6586735713572763749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A273157.P6586735713572763749

/-! ## A273157.P9235989119625714861

`filter[A350803(n+1), A347523(#)]`
-/

namespace A273157.P9235989119625714861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A273157.P9235989119625714861

/-! ## A273157.P4009053683428174018

`∩[A350803(n+1), A057716(n)]`
-/

namespace A273157.P4009053683428174018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273157.P4009053683428174018

/-! ## A273157.P2147555294720375051

`eq[char[A273130(n+1)], A000007(n)]`
-/

namespace A273157.P2147555294720375051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A273157.P2147555294720375051

/-! ## A273157.P5076597847580764298

`eq[char[A273130(n+1)], A000038(n)]`
-/

namespace A273157.P5076597847580764298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A273157.P5076597847580764298

/-!
# A273159: Numbers whose digit sum is divisible by 7.

The programs for A273159, the canonical program `A273159.P2710656007498216518` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273159 has offset 1).

The definition of A273159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273159.P2710656007498216518

`eq[0, A118881(n)%7]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273159

/-- `eq[0, A118881(n)%7]` -/
def P2710656007498216518.Spec : Prop :=
  ∀ n, (P2710656007498216518.a n : ℤ) = A273159 (n + 1)

theorem P2710656007498216518.correct : P2710656007498216518.Spec := by
  intro n
  simp only [A273159, Nat.add_sub_cancel]

end A273159

/-! ## A273159.P17761745812349783291

`eq[0, A010876(A007953(n))]`
-/

namespace A273159.P17761745812349783291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P17761745812349783291

namespace A273159

/-- `eq[0, A010876(A007953(n))]` -/
def P17761745812349783291.Spec : Prop :=
  ∀ n, (P17761745812349783291.a n : ℤ) = A273159 (n + 1)

end A273159

/-! ## A273159.P2832942336969912909

`eq[1, A014016(A118881(n))]`
-/

namespace A273159.P2832942336969912909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P2832942336969912909

namespace A273159

/-- `eq[1, A014016(A118881(n))]` -/
def P2832942336969912909.Spec : Prop :=
  ∀ n, (P2832942336969912909.a n : ℤ) = A273159 (n + 1)

end A273159

/-! ## A273159.P15787756244815072583

`eq[1, A014016(A007953(n)²)]`
-/

namespace A273159.P15787756244815072583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P15787756244815072583

namespace A273159

/-- `eq[1, A014016(A007953(n)²)]` -/
def P15787756244815072583.Spec : Prop :=
  ∀ n, (P15787756244815072583.a n : ℤ) = A273159 (n + 1)

end A273159

/-! ## A273159.P3986412484182850728

`eq[7, A006530(A007953(n)+7)]`
-/

namespace A273159.P3986412484182850728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007953 n + 7).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273159.P3986412484182850728

namespace A273159

/-- `eq[7, A006530(A007953(n)+7)]` -/
def P3986412484182850728.Spec : Prop :=
  ∀ n, (P3986412484182850728.a n : ℤ) = A273159 (n + 1)

end A273159

/-!
# A273161: a(n) = Sum_{k=1..n} C(n-k, floor((n-k)/k)).

The programs for A273161, there is no canonical definition to state claims against.
-/

/-! ## A273161.P5999040302662429704

`A359077(A344604(n))%(∏[4-2/(n+1)]/2)`
-/

namespace A273161.P5999040302662429704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359077 (A344604 n).toNat) (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2))

end

end A273161.P5999040302662429704

/-! ## A273161.P14560450033299299835

`lt[A347560(A347528(n+3)), 5]`
-/

namespace A273161.P14560450033299299835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347560 (A347528 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A273161.P14560450033299299835

/-! ## A273161.P290515595129966494

`eq[A078704(n+1), A219585(n)]`
-/

namespace A273161.P290515595129966494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273161.P290515595129966494

/-! ## A273161.P9795016013747256991

`eq[A114294(n), A217743(n+1)]`
-/

namespace A273161.P9795016013747256991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273161.P9795016013747256991

/-! ## A273161.P3017538842888222492

`eq[A036875(n+1), A340732(n)]`
-/

namespace A273161.P3017538842888222492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273161.P3017538842888222492

/-!
# A273162: G.f. A(x) satisfies: A(x*B(x)) = x^2 - x^3, where A(B(x)) = x.

The programs for A273162, there is no canonical definition to state claims against.
-/

/-! ## A273162.P13820614445908836453

`A050296(∑[A049159(n)])`
-/

namespace A273162.P13820614445908836453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273162.P13820614445908836453

/-! ## A273162.P13906096330221736477

`A050296(∑[A151459(n)])`
-/

namespace A273162.P13906096330221736477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273162.P13906096330221736477

/-!
# A273163: P-defects p - N(p) of the congruence y^2 == x^3 + x^2 + 4*x + 4 (mod p) for primes p, where N(p) is the number of solutions given for p = prime(n) by A272207(n).

The programs for A273163, there is no canonical definition to state claims against.
-/

/-! ## A273163.P17904679711796991228

`A000040(n+1)-A272207(n+1)`
-/

namespace A273163.P17904679711796991228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A272207 (n + 1)

end

end A273163.P17904679711796991228

/-! ## A273163.P6779242261486426880

`A070750(n+1)*A276695(n+1)`
-/

namespace A273163.P6779242261486426880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A276695 (n + 1)

end

end A273163.P6779242261486426880

/-! ## A273163.P8993663226255111480

`A276664(n+1)+A276695(n+1)-A272207(n+1)`
-/

namespace A273163.P8993663226255111480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276664 (n + 1) + (A276695 (n + 1) - A272207 (n + 1))

end

end A273163.P8993663226255111480

/-! ## A273163.P10462434886912846530

`A276730(n+1)+A278720(n+1)-A272207(n+1)`
-/

namespace A273163.P10462434886912846530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276730 (n + 1) + (A278720 (n + 1) - A272207 (n + 1))

end

end A273163.P10462434886912846530

/-! ## A273163.P7057684625716559361

`A030205(A130290(n+1))%A005408(n)`
-/

namespace A273163.P7057684625716559361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030205 (A130290 (n + 1)).toNat) (A005408 n)

end

end A273163.P7057684625716559361

/-! ## A273163.P10840670521491973197

`A276491(p?[comp[n²]])`
-/

namespace A273163.P10840670521491973197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A273163.P10840670521491973197

/-! ## A273163.P9502878746981018344

`A276491(Δ[A007504(n)])`
-/

namespace A273163.P9502878746981018344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (f1 (n + 1) - f1 n).toNat

end

end A273163.P9502878746981018344

/-! ## A273163.P11017302008329413455

`A276491(A000040(n+1))`
-/

namespace A273163.P11017302008329413455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A000040 (n + 1)).toNat

end

end A273163.P11017302008329413455

/-! ## A273163.P9866533548022236401

`A276491(A008578(n+2))`
-/

namespace A273163.P9866533548022236401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A008578 (n + 2)).toNat

end

end A273163.P9866533548022236401

/-! ## A273163.P4864433650743969814

`A276491(A182986(n+2))`
-/

namespace A273163.P4864433650743969814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A182986 (n + 2)).toNat

end

end A273163.P4864433650743969814

/-! ## A273163.P4710839522972042846

`A276491(record[A006530(n+2)])`
-/

namespace A273163.P4710839522972042846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273163.P4710839522972042846

/-! ## A273163.P15647018847619052789

`A276491(record[A014963(n+2)])`
-/

namespace A273163.P15647018847619052789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273163.P15647018847619052789

/-! ## A273163.P9678601764338084166

`A276491(record[A020639(n+2)])`
-/

namespace A273163.P9678601764338084166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273163.P9678601764338084166

/-! ## A273163.P17379113301959794691

`A276491(A040976(n+1)+2)`
-/

namespace A273163.P17379113301959794691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A040976 (n + 1) + 2).toNat

end

end A273163.P17379113301959794691

/-! ## A273163.P2595508505300330648

`p?[A246425(n)]-A272207(n+1)`
-/

namespace A273163.P2595508505300330648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272207 (n + 1)

end

end A273163.P2595508505300330648

/-! ## A273163.P10130454846189845088

`A276491(A007504(n+1)-A007504(n))`
-/

namespace A273163.P10130454846189845088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A007504 (n + 1) - A007504 n).toNat

end

end A273163.P10130454846189845088

/-! ## A273163.P12644838502730610496

`A276491(A276695(n+1)+A276664(n+1))`
-/

namespace A273163.P12644838502730610496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A276695 (n + 1) + A276664 (n + 1)).toNat

end

end A273163.P12644838502730610496

/-! ## A273163.P14940504358482206317

`A276491(A278720(n+1)+A276730(n+1))`
-/

namespace A273163.P14940504358482206317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276491 (A278720 (n + 1) + A276730 (n + 1)).toNat

end

end A273163.P14940504358482206317

/-!
# A273165: One half the number of divisors of nonprime numbers that are 3 (mod 4).

The programs for A273165, the canonical program `A273165.P13852452285329225728` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273165 has offset 1).

The definition of A273165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273165.P13852452285329225728

`A000005(A091236(n+1))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A273165

/-- `A000005(A091236(n+1))/2` -/
def P13852452285329225728.Spec : Prop :=
  ∀ n, P13852452285329225728.a n = (A273165 (n + 1) : ℚ)

end A273165

/-! ## A273165.P13382101339597188664

`A078703(A045752(n+1))`
-/

namespace A273165.P13382101339597188664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A045752 (n + 1)).toNat

end

end A273165.P13382101339597188664

namespace A273165

/-- `A078703(A045752(n+1))` -/
def P13382101339597188664.Spec : Prop :=
  ∀ n, P13382101339597188664.a n = A273165 (n + 1)

end A273165

/-! ## A273165.P13710021817675033055

`A078703(A095277(n+1)+1)`
-/

namespace A273165.P13710021817675033055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A095277 (n + 1) + 1).toNat

end

end A273165.P13710021817675033055

namespace A273165

/-- `A078703(A095277(n+1)+1)` -/
def P13710021817675033055.Spec : Prop :=
  ∀ n, P13710021817675033055.a n = A273165 (n + 1)

end A273165

/-! ## A273165.P778344521395609804

`A001826(A091236(n+1))`
-/

namespace A273165.P778344521395609804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A091236 (n + 1)).toNat

end

end A273165.P778344521395609804

namespace A273165

/-- `A001826(A091236(n+1))` -/
def P778344521395609804.Spec : Prop :=
  ∀ n, P778344521395609804.a n = A273165 (n + 1)

end A273165

/-! ## A273165.P1533600966347117002

`A100073(∩[A018252(n+1), A004767(n)])`
-/

namespace A273165.P1533600966347117002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A273165.P1533600966347117002

namespace A273165

/-- `A100073(∩[A018252(n+1), A004767(n)])` -/
def P1533600966347117002.Spec : Prop :=
  ∀ n, P1533600966347117002.a n = A273165 (n + 1)

end A273165

/-!
# A273167: Numerators of coefficient triangle for expansion of x^(2*n) in terms of Chebyshev polynomials of the first kind T(2*m, x) (A127674).

The programs for A273167, the canonical program `A273167.P942441107459462647` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273167 has offset 0).

The definition of A273167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273167.P942441107459462647

`gcd(C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2)), A001147(∑[char[∑[n+1]]]))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273167

/-- `gcd(C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2)), A001147(∑[char[∑[n+1]]]))` -/
def P942441107459462647.Spec : Prop :=
  ∀ n, (P942441107459462647.a n : ℤ) = A273167 n

theorem P942441107459462647.correct : P942441107459462647.Spec := by
  intro n
  simp only [A273167]

end A273167

/-! ## A273167.P17947802370929301884

`gcd(A094527(n), A176230(A057944(n)))`
-/

namespace A273167.P17947802370929301884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094527 n) (A176230 (A057944 n).toNat)

end

end A273167.P17947802370929301884

namespace A273167

/-- `gcd(A094527(n), A176230(A057944(n)))` -/
def P17947802370929301884.Spec : Prop :=
  ∀ n, (P17947802370929301884.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P12228355491409302480

`lcm(A034583(n), A094527(n))/A034583(n)`
-/

namespace A273167.P12228355491409302480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034583 n) (A094527 n) : ℚ) / (A034583 n : ℚ)

end

end A273167.P12228355491409302480

namespace A273167

/-- `lcm(A034583(n), A094527(n))/A034583(n)` -/
def P12228355491409302480.Spec : Prop :=
  ∀ n, P12228355491409302480.a n = (A273167 n : ℚ)

end A273167

/-! ## A273167.P7281009254797251581

`gcd(A119239(n+1), A128413(n))`
-/

namespace A273167.P7281009254797251581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119239 (n + 1)) (A128413 n)

end

end A273167.P7281009254797251581

namespace A273167

/-- `gcd(A119239(n+1), A128413(n))` -/
def P7281009254797251581.Spec : Prop :=
  ∀ n, (P7281009254797251581.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P3441527052551861511

`gcd(A119239(n+2), A128417(n))`
-/

namespace A273167.P3441527052551861511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119239 (n + 2)) (A128417 n)

end

end A273167.P3441527052551861511

namespace A273167

/-- `gcd(A119239(n+2), A128417(n))` -/
def P3441527052551861511.Spec : Prop :=
  ∀ n, (P3441527052551861511.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P11058382281132991576

`gcd(A055634(n), A094527(n))`
-/

namespace A273167.P11058382281132991576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A094527 n)

end

end A273167.P11058382281132991576

namespace A273167

/-- `gcd(A055634(n), A094527(n))` -/
def P11058382281132991576.Spec : Prop :=
  ∀ n, (P11058382281132991576.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P13420387099747122462

`gcd(A323499(n+2), A380113(n))`
-/

namespace A273167.P13420387099747122462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323499 (n + 2)) (A380113 n)

end

end A273167.P13420387099747122462

namespace A273167

/-- `gcd(A323499(n+2), A380113(n))` -/
def P13420387099747122462.Spec : Prop :=
  ∀ n, (P13420387099747122462.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P8680413671611245228

`gcd(A128413(n), A160616(n))`
-/

namespace A273167.P8680413671611245228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128413 n) (A160616 n)

end

end A273167.P8680413671611245228

namespace A273167

/-- `gcd(A128413(n), A160616(n))` -/
def P8680413671611245228.Spec : Prop :=
  ∀ n, (P8680413671611245228.a n : ℤ) = A273167 n

end A273167

/-! ## A273167.P12545570246513724605

`A000265(A389708(n))`
-/

namespace A273167.P12545570246513724605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A389708 n).toNat

end

end A273167.P12545570246513724605

namespace A273167

/-- `A000265(A389708(n))` -/
def P12545570246513724605.Spec : Prop :=
  ∀ n, P12545570246513724605.a n = A273167 n

end A273167

/-! ## A273167.P9273277985274079823

`A000265(A380113(n))`
-/

namespace A273167.P9273277985274079823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A380113 n).toNat

end

end A273167.P9273277985274079823

namespace A273167

/-- `A000265(A380113(n))` -/
def P9273277985274079823.Spec : Prop :=
  ∀ n, P9273277985274079823.a n = A273167 n

end A273167

/-!
# A273168: Denominators of coefficient triangle for expansion of x^(2*n) in terms of Chebyshev polynomials of the first kind T(2*m, x) (A127674).

The programs for A273168, there is no canonical definition to state claims against.
-/

/-! ## A273168.P5251229045063971165

`A049116(xor(A001787(n), A192416(n+1)))`
-/

namespace A273168.P5251229045063971165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (Int.xor (A001787 n) (A192416 (n + 1))).toNat

end

end A273168.P5251229045063971165

/-! ## A273168.P963227101631596521

`gcd(32, A249769(A115425(n)))`
-/

namespace A273168.P963227101631596521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A249769 (A115425 n).toNat)

end

end A273168.P963227101631596521

/-! ## A273168.P6924045137138365603

`A061142(A109397(n+1)+1)`
-/

namespace A273168.P6924045137138365603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A109397 (n + 1) + 1).toNat

end

end A273168.P6924045137138365603

/-! ## A273168.P10730247454371386141

`A048896(record[Δ[A185209(n+1)]])`
-/

namespace A273168.P10730247454371386141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185209 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273168.P10730247454371386141

/-! ## A273168.P11560812602361628413

`A001316(A260652(∑[∏{p}[n+1, #]]))`
-/

namespace A273168.P11560812602361628413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A260652 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273168.P11560812602361628413

/-!
# A273169: Numerators of coefficient triangle for integrated even powers of cos(x) in terms of x and sin(2*m*x).

The programs for A273169, there is no canonical definition to state claims against.
-/

/-! ## A273169.P12879244489458511125

`A273167(n)/A322036(A322038(2*n))`
-/

namespace A273169.P12879244489458511125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273167 n : ℚ) / (A322036 (A322038 (2 * n)).toNat : ℚ)

end

end A273169.P12879244489458511125

/-! ## A273169.P4920497753047780640

`gcd(A094527(n), A147580(A094527(n+1)))`
-/

namespace A273169.P4920497753047780640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094527 n) (A147580 (A094527 (n + 1)).toNat)

end

end A273169.P4920497753047780640

/-! ## A273169.P11941438758005239601

`gcd(A128417(n), A147580(A268448(n+1)))`
-/

namespace A273169.P11941438758005239601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128417 n) (A147580 (A268448 (n + 1)).toNat)

end

end A273169.P11941438758005239601

/-! ## A273169.P17464115185049038589

`gcd(A093411(A176230(n)), A094527(n))`
-/

namespace A273169.P17464115185049038589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093411 (A176230 n).toNat) (A094527 n)

end

end A273169.P17464115185049038589

/-! ## A273169.P3350463696826423424

`A273167(n)/A295657(A000032(n))`
-/

namespace A273169.P3350463696826423424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273167 n : ℚ) / (A295657 (A000032 n).toNat : ℚ)

end

end A273169.P3350463696826423424

/-!
# A273170: Denominators of coefficient triangle for integrated even powers of cos(x) in terms of x and sin(2*m*x).

The programs for A273170, there is no canonical definition to state claims against.
-/

/-! ## A273170.P3360431630933777021

`A048896(∑[3^n/gcd(n, 3^n)])`
-/

namespace A273170.P3360431630933777021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (Nat.gcd n (3 ^ n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A273170.P3360431630933777021

/-! ## A273170.P6488579701388074012

`A376555(A290746(n+1))`
-/

namespace A273170.P6488579701388074012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376555 (A290746 (n + 1)).toNat

end

end A273170.P6488579701388074012

/-! ## A273170.P2192526494813582884

`A049116(A176042(n+4))`
-/

namespace A273170.P2192526494813582884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A176042 (n + 4)).toNat

end

end A273170.P2192526494813582884

/-! ## A273170.P8852529825550988679

`A105153(n*A001937(n))`
-/

namespace A273170.P8852529825550988679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 ((n : ℤ) * A001937 n).toNat

end

end A273170.P8852529825550988679

/-!
# A273173: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A273173, there is no canonical definition to state claims against.
-/

/-! ## A273173.P8989372943111326758

`∑[A272828(n)]`
-/

namespace A273173.P8989372943111326758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273173.P8989372943111326758

/-! ## A273173.P17393466289649697102

`A272828(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273173.P17393466289649697102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272828 n + a (A023443 n).toNat

end

end A273173.P17393466289649697102

/-! ## A273173.P7934147098485665124

`A272828(n%A008458(n))+a(n-1)` with `a(0)=1`
-/

namespace A273173.P7934147098485665124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272828 (Int.tmod (n : ℤ) (A008458 n)).toNat + a (n - 1)

end

end A273173.P7934147098485665124

/-! ## A273173.P2968789262754297806

`A272828(n)-(A028310(n)-n-a(n-1))` with `a(0)=1`
-/

namespace A273173.P2968789262754297806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272828 n - (A028310 n - (n : ℤ) - a (n - 1))

end

end A273173.P2968789262754297806

/-! ## A273173.P1240931653705408968

`∑[∑[A273174(n)]+1-A273174(n)]`
-/

namespace A273173.P1240931653705408968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273174 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273173.P1240931653705408968

/-! ## A273173.P1831576758295118817

`a(n-1)+A014963(A000217(n+6))*A272828(n)` with `a(0)=1`
-/

namespace A273173.P1831576758295118817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (A000217 (n + 6)).toNat * A272828 n

end

end A273173.P1831576758295118817

/-!
# A273174: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A273174, there is no canonical definition to state claims against.
-/

/-! ## A273174.P13763846859483892737

`Δ[A272828(n)]`
-/

namespace A273174.P13763846859483892737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273174.P13763846859483892737

/-! ## A273174.P8311501241560373643

`A272828(n+1)-A272828(n)`
-/

namespace A273174.P8311501241560373643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 (n + 1) - A272828 n

end

end A273174.P8311501241560373643

/-!
# A273175: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A273175, there is no canonical definition to state claims against.
-/

/-! ## A273175.P13181106310558609666

`A273178(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273175.P13181106310558609666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273178 (n - 1) + a (n - 1)

end

end A273175.P13181106310558609666

/-! ## A273175.P3450405852349193294

`∑[A273178(n-1)/a(n*A020761(n))]` with `a(0)=1`
-/

namespace A273175.P3450405852349193294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A273178 (n - 1) : ℚ) / f1 ((n : ℤ) * A020761 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273175.P3450405852349193294

/-! ## A273175.P14644407485728024678

`A273178(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A273175.P14644407485728024678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273178 (n - 1) - (A000007 n - a (n - 1))

end

end A273175.P14644407485728024678

/-! ## A273175.P2278540458000525638

`Δ[A273177(n)]-A273178(n)`
-/

namespace A273175.P2278540458000525638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273178 n

end

end A273175.P2278540458000525638

/-! ## A273175.P671826495059700089

`A273177(n+1)-(A273178(n)+A273177(n))`
-/

namespace A273175.P671826495059700089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273177 (n + 1) - (A273178 n + A273177 n)

end

end A273175.P671826495059700089

/-!
# A273176: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A273176, there is no canonical definition to state claims against.
-/

/-! ## A273176.P12109117612369012855

`A273175(2^n-1)`
-/

namespace A273176.P12109117612369012855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (2 ^ n - 1)

end

end A273176.P12109117612369012855

/-! ## A273176.P10402443953456852021

`record[A273175(A173787(n))]`
-/

namespace A273176.P10402443953456852021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273176.P10402443953456852021

/-! ## A273176.P7294521765704264821

`record[A273175(A227351(n))]`
-/

namespace A273176.P7294521765704264821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273176.P7294521765704264821

/-! ## A273176.P12512827294536701744

`record[A273175(Δ[A228693(n)])]`
-/

namespace A273176.P12512827294536701744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273176.P12512827294536701744

/-! ## A273176.P12840133537178731838

`record[A273175(A243071(n+1))]`
-/

namespace A273176.P12840133537178731838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273176.P12840133537178731838

/-!
# A273177: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A273177, there is no canonical definition to state claims against.
-/

/-! ## A273177.P8341539802113033697

`∑[A273175(n)]`
-/

namespace A273177.P8341539802113033697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273177.P8341539802113033697

/-! ## A273177.P196513400343577547

`A273175(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A273177.P196513400343577547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273175 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A273177.P196513400343577547

/-! ## A273177.P11412837068339122618

`A273175(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A273177.P11412837068339122618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273175 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A273177.P11412837068339122618

/-! ## A273177.P8414995561875920924

`a(n-1)+A273175(n)%A316482(n+1)` with `a(0)=1`
-/

namespace A273177.P8414995561875920924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273175 n) (A316482 (n + 1))

end

end A273177.P8414995561875920924

/-! ## A273177.P17749435996273946364

`∑[A273178(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273177.P17749435996273946364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273178 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273177.P17749435996273946364

/-!
# A273178: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A273178, there is no canonical definition to state claims against.
-/

/-! ## A273178.P1994141364197761034

`Δ[A273175(n)]`
-/

namespace A273178.P1994141364197761034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273178.P1994141364197761034

/-! ## A273178.P4805112597881018181

`A273175(n+1)-A273175(n)`
-/

namespace A273178.P4805112597881018181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273175 (n + 1) - A273175 n

end

end A273178.P4805112597881018181

/-!
# A273179: Numbers k for which 2 has exactly four square roots mod k.

The programs for A273179, there is no canonical definition to state claims against.
-/

/-! ## A273179.P16993397424347925766

`eq[4, A087780(A028310(n))]`
-/

namespace A273179.P16993397424347925766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273179.P16993397424347925766

/-! ## A273179.P2376243677664726336

`A020725(eq[4, A087780(n+1)])`
-/

namespace A273179.P2376243677664726336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273179.P2376243677664726336

/-! ## A273179.P12761044500963765839

`A065475(eq[4, A087780(n+1)])`
-/

namespace A273179.P12761044500963765839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273179.P12761044500963765839

/-! ## A273179.P8252867693932486007

`A153152(eq[4, A087780(n+1)])`
-/

namespace A273179.P8252867693932486007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273179.P8252867693932486007

/-! ## A273179.P9615211747919669187

`∩[A033949(n+1), A057126(n+1)]`
-/

namespace A273179.P9615211747919669187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273179.P9615211747919669187

/-!
# A273180: Numbers k such that ror(k) + rol(k) is a power of 2, where ror(k)=A038572(k) is k rotated one binary place to the right, rol(k)=A006257(k) is k rotated one binary place to the left.

The programs for A273180, the canonical program `A273180.P17305121926620542049` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273180 has offset 1).

The definition of A273180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273180.P17305121926620542049

`17*a(n-3)-16*a(n-6)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=19, a(4)=38, a(5)=102`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273180

/-- `17*a(n-3)-16*a(n-6)` -/
def P17305121926620542049.Spec : Prop :=
  ∀ n, P17305121926620542049.a n = A273180 (n + 1)

theorem P17305121926620542049.correct : P17305121926620542049.Spec := by
  intro n
  simp only [A273180, Nat.add_sub_cancel]

end A273180

/-! ## A273180.P18199397229614267998

`record[A077870(n)-A137505(n+4)]`
-/

namespace A273180.P18199397229614267998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077870 n - A137505 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273180.P18199397229614267998

namespace A273180

/-- `record[A077870(n)-A137505(n+4)]` -/
def P18199397229614267998.Spec : Prop :=
  ∀ n, P18199397229614267998.a n = A273180 (n + 1)

end A273180

/-! ## A273180.P651042007421458592

`floor(3*A160967(2*n+3)/10)`
-/

namespace A273180.P651042007421458592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A160967 (2 * n + 3) : ℚ) / 10⌋

end

end A273180.P651042007421458592

namespace A273180

/-- `floor(3*A160967(2*n+3)/10)` -/
def P651042007421458592.Spec : Prop :=
  ∀ n, P651042007421458592.a n = A273180 (n + 1)

end A273180

/-! ## A273180.P5021422590973482781

`floor(A264613(2*(n+1))/5)`
-/

namespace A273180.P5021422590973482781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264613 (2 * (n + 1)) : ℚ) / 5⌋

end

end A273180.P5021422590973482781

namespace A273180

/-- `floor(A264613(2*(n+1))/5)` -/
def P5021422590973482781.Spec : Prop :=
  ∀ n, P5021422590973482781.a n = A273180 (n + 1)

end A273180

/-! ## A273180.P6806517402582317165

`round(A264613(2*n+2)/5)`
-/

namespace A273180.P6806517402582317165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A264613 (2 * n + 2) : ℚ) / 5)

end

end A273180.P6806517402582317165

namespace A273180

/-- `round(A264613(2*n+2)/5)` -/
def P6806517402582317165.Spec : Prop :=
  ∀ n, P6806517402582317165.a n = A273180 (n + 1)

end A273180

/-!
# A273182: a(n) is the second number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of a magic square of squares.

The programs for A273182, the canonical program `A273182.P4133612475031240748` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273182 has offset 0).

The definition of A273182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273182.P12152512651469414282

`ogf(14/(1-6x+x^2))`
-/

namespace A273182.P12152512651469414282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14] [1, -6, 1] n

end

end A273182.P12152512651469414282

namespace A273182

/-- `ogf(14/(1-6x+x^2))` -/
def P12152512651469414282.Spec : Prop :=
  ∀ n, P12152512651469414282.a n = A273182 n

end A273182

/-! ## A273182.P4133612475031240748

`6*a(n-1)-a(n-2)` with `a(0)=14, a(1)=84`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273182

/-- `6*a(n-1)-a(n-2)` -/
def P4133612475031240748.Spec : Prop :=
  ∀ n, P4133612475031240748.a n = A273182 n

theorem P4133612475031240748.correct : P4133612475031240748.Spec := by
  intro n
  simp only [A273182]

end A273182

/-! ## A273182.P4934505393945017352

`Δ[7*A011900(n)]`
-/

namespace A273182.P4934505393945017352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273182.P4934505393945017352

namespace A273182

/-- `Δ[7*A011900(n)]` -/
def P4934505393945017352.Spec : Prop :=
  ∀ n, P4934505393945017352.a n = A273182 n

end A273182

/-! ## A273182.P10778369317434913094

`Δ[7*A053141(n)]`
-/

namespace A273182.P10778369317434913094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A053141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273182.P10778369317434913094

namespace A273182

/-- `Δ[7*A053141(n)]` -/
def P10778369317434913094.Spec : Prop :=
  ∀ n, P10778369317434913094.a n = A273182 n

end A273182

/-! ## A273182.P1091734471284785093

`Δ[14*A053142(n)]`
-/

namespace A273182.P1091734471284785093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273182.P1091734471284785093

namespace A273182

/-- `Δ[14*A053142(n)]` -/
def P1091734471284785093.Spec : Prop :=
  ∀ n, P1091734471284785093.a n = A273182 n

end A273182

/-! ## A273182.P12255695979295604338

`2*A054890(n+2)`
-/

namespace A273182.P12255695979295604338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054890 (n + 2)

end

end A273182.P12255695979295604338

namespace A273182

/-- `2*A054890(n+2)` -/
def P12255695979295604338.Spec : Prop :=
  ∀ n, P12255695979295604338.a n = A273182 n

end A273182

/-! ## A273182.P3526001808297619608

`A106526(3*(n+1))`
-/

namespace A273182.P3526001808297619608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106526 (3 * (n + 1))

end

end A273182.P3526001808297619608

namespace A273182

/-- `A106526(3*(n+1))` -/
def P3526001808297619608.Spec : Prop :=
  ∀ n, P3526001808297619608.a n = A273182 n

end A273182

/-! ## A273182.P18281668595827841466

`7*A001542(n+1)`
-/

namespace A273182.P18281668595827841466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001542 (n + 1)

end

end A273182.P18281668595827841466

namespace A273182

/-- `7*A001542(n+1)` -/
def P18281668595827841466.Spec : Prop :=
  ∀ n, P18281668595827841466.a n = A273182 n

end A273182

/-! ## A273182.P8360774334052797597

`7*A129345(2*n)`
-/

namespace A273182.P8360774334052797597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A129345 (2 * n)

end

end A273182.P8360774334052797597

namespace A273182

/-- `7*A129345(2*n)` -/
def P8360774334052797597.Spec : Prop :=
  ∀ n, P8360774334052797597.a n = A273182 n

end A273182

/-! ## A273182.P16715724275430707234

`14*A001109(n+1)`
-/

namespace A273182.P16715724275430707234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A001109 (n + 1)

end

end A273182.P16715724275430707234

namespace A273182

/-- `14*A001109(n+1)` -/
def P16715724275430707234.Spec : Prop :=
  ∀ n, P16715724275430707234.a n = A273182 n

end A273182

/-! ## A273182.P2713833118564994791

`∑[14*Δ[A001109(n)]]`
-/

namespace A273182.P2713833118564994791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273182.P2713833118564994791

namespace A273182

/-- `∑[14*Δ[A001109(n)]]` -/
def P2713833118564994791.Spec : Prop :=
  ∀ n, P2713833118564994791.a n = A273182 n

end A273182

/-! ## A273182.P7726207903471410758

`7*A114647(2*n+1)`
-/

namespace A273182.P7726207903471410758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A114647 (2 * n + 1)

end

end A273182.P7726207903471410758

namespace A273182

/-- `7*A114647(2*n+1)` -/
def P7726207903471410758.Spec : Prop :=
  ∀ n, P7726207903471410758.a n = A273182 n

end A273182

/-! ## A273182.P9599719694561351432

`2*∑[7*A001653(n+1)]`
-/

namespace A273182.P9599719694561351432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273182.P9599719694561351432

namespace A273182

/-- `2*∑[7*A001653(n+1)]` -/
def P9599719694561351432.Spec : Prop :=
  ∀ n, P9599719694561351432.a n = A273182 n

end A273182

/-! ## A273182.P7960914945532565184

`∑[14*A000129(2*n+1)]`
-/

namespace A273182.P7960914945532565184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000129 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273182.P7960914945532565184

namespace A273182

/-- `∑[14*A000129(2*n+1)]` -/
def P7960914945532565184.Spec : Prop :=
  ∀ n, P7960914945532565184.a n = A273182 n

end A273182

/-! ## A273182.P9147052812214433298

`14*A105635(A005408(n))`
-/

namespace A273182.P9147052812214433298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A105635 (A005408 n).toNat

end

end A273182.P9147052812214433298

namespace A273182

/-- `14*A105635(A005408(n))` -/
def P9147052812214433298.Spec : Prop :=
  ∀ n, P9147052812214433298.a n = A273182 n

end A273182

/-! ## A273182.P16101905738953950456

`A054490(n)+Δ[A275794(n)]`
-/

namespace A273182.P16101905738953950456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + (f1 (n + 1) - f1 n)

end

end A273182.P16101905738953950456

namespace A273182

/-- `A054490(n)+Δ[A275794(n)]` -/
def P16101905738953950456.Spec : Prop :=
  ∀ n, P16101905738953950456.a n = A273182 n

end A273182

/-! ## A273182.P6390398450996332942

`2*A276600(A016777(n+1))`
-/

namespace A273182.P6390398450996332942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276600 (A016777 (n + 1)).toNat

end

end A273182.P6390398450996332942

namespace A273182

/-- `2*A276600(A016777(n+1))` -/
def P6390398450996332942.Spec : Prop :=
  ∀ n, P6390398450996332942.a n = A273182 n

end A273182

/-! ## A273182.P13214497308376678018

`A038762(n+1)+A038761(n)`
-/

namespace A273182.P13214497308376678018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 (n + 1) + A038761 n

end

end A273182.P13214497308376678018

namespace A273182

/-- `A038762(n+1)+A038761(n)` -/
def P13214497308376678018.Spec : Prop :=
  ∀ n, P13214497308376678018.a n = A273182 n

end A273182

/-! ## A273182.P2622013383231279169

`A077413(n+1)+A054488(n)`
-/

namespace A273182.P2622013383231279169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 (n + 1) + A054488 n

end

end A273182.P2622013383231279169

namespace A273182

/-- `A077413(n+1)+A054488(n)` -/
def P2622013383231279169.Spec : Prop :=
  ∀ n, P2622013383231279169.a n = A273182 n

end A273182

/-! ## A273182.P15131931333123750996

`A255236(n)+A038761(n+1)`
-/

namespace A273182.P15131931333123750996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255236 n + A038761 (n + 1)

end

end A273182.P15131931333123750996

namespace A273182

/-- `A255236(n)+A038761(n+1)` -/
def P15131931333123750996.Spec : Prop :=
  ∀ n, P15131931333123750996.a n = A273182 n

end A273182

/-!
# A273185: Start with a(0) = 0. Thereafter a(n) is the number of m < n with the property that a(m) + n is a perfect square.

The programs for A273185, there is no canonical definition to state claims against.
-/

/-! ## A273185.P11382999168683324196

`A350948(A134334(n+1))%A325537(n+4)`
-/

namespace A273185.P11382999168683324196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350948 (A134334 (n + 1)).toNat) (A325537 (n + 4))

end

end A273185.P11382999168683324196

/-! ## A273185.P5842865097469333406

`C(A130654(A220761(n+4)), A348890(n))`
-/

namespace A273185.P5842865097469333406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130654 (A220761 (n + 4)).toNat).toNat (A348890 n).toNat

end

end A273185.P5842865097469333406

/-! ## A273185.P7349702185963857546

`A144629(2*n+1)+A144603(A065832(n+1))`
-/

namespace A273185.P7349702185963857546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144629 (2 * n + 1) + A144603 (A065832 (n + 1)).toNat

end

end A273185.P7349702185963857546

/-! ## A273185.P18102721149925826939

`A118340(n+3)-A373372(A121704(n+1))`
-/

namespace A273185.P18102721149925826939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (n + 3) - A373372 (A121704 (n + 1)).toNat

end

end A273185.P18102721149925826939

/-! ## A273185.P14103542149966533369

`A353436(n+3)%A105619(A269303(n+1))`
-/

namespace A273185.P14103542149966533369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353436 (n + 3)) (A105619 (A269303 (n + 1)).toNat)

end

end A273185.P14103542149966533369

/-!
# A273187: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of magic square of squares.

The programs for A273187, the canonical program `A273187.P6364872259732564638` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273187 has offset 0).

The definition of A273187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273187.P6364872259732564638

`24+25*A001541(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273187

/-- `24+25*A001541(n+1)` -/
def P6364872259732564638.Spec : Prop :=
  ∀ n, P6364872259732564638.a n = A273187 n

theorem P6364872259732564638.correct : P6364872259732564638.Spec := by
  intro n
  simp only [A273187]

end A273187

/-! ## A273187.P13468287137619566083

`A273189(n)+48`
-/

namespace A273187.P13468287137619566083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273189 n + 48

end

end A273187.P13468287137619566083

namespace A273187

/-- `A273189(n)+48` -/
def P13468287137619566083.Spec : Prop :=
  ∀ n, P13468287137619566083.a n = A273187 n

theorem P13468287137619566083.correct : P13468287137619566083.Spec := by
  intro n
  simp only [A273187, Nat.add_sub_cancel, A273187.P13468287137619566083.a, A273187.P6364872259732564638.a, A001541, A001541.P3730671586373433410.a, A273189, A273189.P9425377602579684644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273187

/-! ## A273187.P2961164448866776313

`50*A115599(n+1)-1`
-/

namespace A273187.P2961164448866776313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A115599 (n + 1) - 1

end

end A273187.P2961164448866776313

namespace A273187

/-- `50*A115599(n+1)-1` -/
def P2961164448866776313.Spec : Prop :=
  ∀ n, P2961164448866776313.a n = A273187 n

end A273187

/-! ## A273187.P14292158221505839025

`50*A115598(n+1)+49`
-/

namespace A273187.P14292158221505839025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A115598 (n + 1) + 49

end

end A273187.P14292158221505839025

namespace A273187

/-- `50*A115598(n+1)+49` -/
def P14292158221505839025.Spec : Prop :=
  ∀ n, P14292158221505839025.a n = A273187 n

end A273187

/-! ## A273187.P17447513971398978108

`50*A024537(2*n+1)-1`
-/

namespace A273187.P17447513971398978108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A024537 (2 * n + 1) - 1

end

end A273187.P17447513971398978108

namespace A273187

/-- `50*A024537(2*n+1)-1` -/
def P17447513971398978108.Spec : Prop :=
  ∀ n, P17447513971398978108.a n = A273187 n

end A273187

/-!
# A273188: Numbers whose digit sum is divisible by 8.

The programs for A273188, the canonical program `A273188.P10817074238036710104` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273188 has offset 1).

The definition of A273188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273188.P10817074238036710104

`eq[8, gcd(8, A007953(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A273188

/-- `eq[8, gcd(8, A007953(n))]` -/
def P10817074238036710104.Spec : Prop :=
  ∀ n, (P10817074238036710104.a n : ℤ) = A273188 (n + 1)

theorem P10817074238036710104.correct : P10817074238036710104.Spec := by
  intro n
  simp only [A273188, Nat.add_sub_cancel]

end A273188

/-! ## A273188.P6395804628967138596

`eq[n%8, A062028(n)%8]`
-/

namespace A273188.P6395804628967138596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273188.P6395804628967138596

namespace A273188

/-- `eq[n%8, A062028(n)%8]` -/
def P6395804628967138596.Spec : Prop :=
  ∀ n, (P6395804628967138596.a n : ℤ) = A273188 (n + 1)

end A273188

/-! ## A273188.P14410510312988411562

`eq[1, (1-A066568(n)+n)%8]`
-/

namespace A273188.P14410510312988411562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A066568 n + (n : ℤ)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273188.P14410510312988411562

namespace A273188

/-- `eq[1, (1-A066568(n)+n)%8]` -/
def P14410510312988411562.Spec : Prop :=
  ∀ n, (P14410510312988411562.a n : ℤ) = A273188 (n + 1)

end A273188

/-! ## A273188.P281465628825066608

`record[(n+1)*val(A007953(n+1), 8)]`
-/

namespace A273188.P281465628825066608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A007953 (n + 1)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273188.P281465628825066608

namespace A273188

/-- `record[(n+1)*val(A007953(n+1), 8)]` -/
def P281465628825066608.Spec : Prop :=
  ∀ n, (P281465628825066608.a n : ℤ) = A273188 (n + 1)

end A273188

/-! ## A273188.P2103312619119289704

`eq[0, A168181(A007953(n))]`
-/

namespace A273188.P2103312619119289704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273188.P2103312619119289704

namespace A273188

/-- `eq[0, A168181(A007953(n))]` -/
def P2103312619119289704.Spec : Prop :=
  ∀ n, (P2103312619119289704.a n : ℤ) = A273188 (n + 1)

end A273188

/-! ## A273188.P6214776781490687424

`eq[8, A093017(A007953(n)+8)]`
-/

namespace A273188.P6214776781490687424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 (A007953 n + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273188.P6214776781490687424

namespace A273188

/-- `eq[8, A093017(A007953(n)+8)]` -/
def P6214776781490687424.Spec : Prop :=
  ∀ n, (P6214776781490687424.a n : ℤ) = A273188 (n + 1)

end A273188

/-! ## A273188.P3492283423706279679

`eq[1, A015241(A007953(n)+8)²]`
-/

namespace A273188.P3492283423706279679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 (A007953 n + 8).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273188.P3492283423706279679

namespace A273188

/-- `eq[1, A015241(A007953(n)+8)²]` -/
def P3492283423706279679.Spec : Prop :=
  ∀ n, (P3492283423706279679.a n : ℤ) = A273188 (n + 1)

end A273188

/-!
# A273189: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of a magic square of squares.

The programs for A273189, the canonical program `A273189.P9425377602579684644` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273189 has offset 0).

The definition of A273189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273189.P9425377602579684644

`A273187(n)-48`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A273189

/-- `A273187(n)-48` -/
def P9425377602579684644.Spec : Prop :=
  ∀ n, P9425377602579684644.a n = A273189 n

theorem P9425377602579684644.correct : P9425377602579684644.Spec := by
  intro n
  simp only [A273189]

end A273189

/-! ## A273189.P967209620427710178

`25*A001541(n+1)-24`
-/

namespace A273189.P967209620427710178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A001541 (n + 1) - 24

end

end A273189.P967209620427710178

namespace A273189

/-- `25*A001541(n+1)-24` -/
def P967209620427710178.Spec : Prop :=
  ∀ n, P967209620427710178.a n = A273189 n

theorem P967209620427710178.correct : P967209620427710178.Spec := by
  intro n
  simp only [A273189, Nat.add_sub_cancel, A273189.P967209620427710178.a, A273189.P9425377602579684644.a, A001541, A001541.P3730671586373433410.a, A273187, A273187.P6364872259732564638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A273189

/-! ## A273189.P17693136642274599769

`50*A115598(n+1)+1`
-/

namespace A273189.P17693136642274599769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * A115598 (n + 1) + 1

end

end A273189.P17693136642274599769

namespace A273189

/-- `50*A115598(n+1)+1` -/
def P17693136642274599769.Spec : Prop :=
  ∀ n, P17693136642274599769.a n = A273189 n

end A273189

/-! ## A273189.P8711718342879121647

`25*A113224(2*n+1)+1`
-/

namespace A273189.P8711718342879121647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A113224 (2 * n + 1) + 1

end

end A273189.P8711718342879121647

namespace A273189

/-- `25*A113224(2*n+1)+1` -/
def P8711718342879121647.Spec : Prop :=
  ∀ n, P8711718342879121647.a n = A273189 n

end A273189

/-! ## A273189.P5953671995216325217

`50*(A115599(n+1)-1)+1`
-/

namespace A273189.P5953671995216325217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  50 * (A115599 (n + 1) - 1) + 1

end

end A273189.P5953671995216325217

namespace A273189

/-- `50*(A115599(n+1)-1)+1` -/
def P5953671995216325217.Spec : Prop :=
  ∀ n, P5953671995216325217.a n = A273189 n

end A273189

/-! ## A273189.P15668061144911434530

`25*(A001541(n+1)+A008683(A065091(n+1)))+1`
-/

namespace A273189.P15668061144911434530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (A001541 (n + 1) + A008683 (A065091 (n + 1)).toNat) + 1

end

end A273189.P15668061144911434530

namespace A273189

/-- `25*(A001541(n+1)+A008683(A065091(n+1)))+1` -/
def P15668061144911434530.Spec : Prop :=
  ∀ n, P15668061144911434530.a n = A273189 n

end A273189

/-!
# A273190: a(n) is the number of nonnegative m < n for which m + n is a perfect square.

The programs for A273190, the canonical program `A273190.P4537096407027587621` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273190 has offset 0).

The definition of A273190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273190.P4537096407027587621

`ceil(sqrt(2*n)-ceil(sqrt(n)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273190

/-- `ceil(sqrt(2*n)-ceil(sqrt(n)))` -/
def P4537096407027587621.Spec : Prop :=
  ∀ n, P4537096407027587621.a n = A273190 n

theorem P4537096407027587621.correct : P4537096407027587621.Spec := by
  intro n
  simp only [A273190]

end A273190

/-! ## A273190.P10920698536593708066

`A320278(n)+char[(n+1)²]`
-/

namespace A273190.P10920698536593708066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273190.P10920698536593708066

namespace A273190

/-- `A320278(n)+char[(n+1)²]` -/
def P10920698536593708066.Spec : Prop :=
  ∀ n, P10920698536593708066.a n = A273190 n

end A273190

/-! ## A273190.P11908669950774728081

`A393564(n)+A025435(n)`
-/

namespace A273190.P11908669950774728081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393564 n + A025435 n

end

end A273190.P11908669950774728081

namespace A273190

/-- `A393564(n)+A025435(n)` -/
def P11908669950774728081.Spec : Prop :=
  ∀ n, P11908669950774728081.a n = A273190 n

theorem P11908669950774728081.correct : P11908669950774728081.Spec := by
  intro n
  simp only [A273190, Nat.add_sub_cancel, A273190.P11908669950774728081.a, A273190.P4537096407027587621.a, A025435, A025435.P3024463487466648612.a, A393564, A393564.P18420932766056836635.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A237526, A237526.P3622557248388023722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A273190

/-! ## A273190.P2375660465690747562

`A172471(n)-A339186(n)`
-/

namespace A273190.P2375660465690747562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A339186 n

end

end A273190.P2375660465690747562

namespace A273190

/-- `A172471(n)-A339186(n)` -/
def P2375660465690747562.Spec : Prop :=
  ∀ n, P2375660465690747562.a n = A273190 n

end A273190

/-! ## A273190.P14042803218567423104

`A339184(A053438(n))`
-/

namespace A273190.P14042803218567423104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 (A053438 n).toNat

end

end A273190.P14042803218567423104

namespace A273190

/-- `A339184(A053438(n))` -/
def P14042803218567423104.Spec : Prop :=
  ∀ n, P14042803218567423104.a n = A273190 n

end A273190

/-! ## A273190.P8185326984261372190

`A247367(2*n)-A247367(n)`
-/

namespace A273190.P8185326984261372190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 (2 * n) - A247367 n

end

end A273190.P8185326984261372190

namespace A273190

/-- `A247367(2*n)-A247367(n)` -/
def P8185326984261372190.Spec : Prop :=
  ∀ n, P8185326984261372190.a n = A273190 n

end A273190

/-! ## A273190.P6326166365063826182

`A339184(2*n-A323158(n+1))`
-/

namespace A273190.P6326166365063826182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 ((2 * n : ℤ) - A323158 (n + 1)).toNat

end

end A273190.P6326166365063826182

namespace A273190

/-- `A339184(2*n-A323158(n+1))` -/
def P6326166365063826182.Spec : Prop :=
  ∀ n, P6326166365063826182.a n = A273190 n

end A273190

/-! ## A273190.P14139214325883117171

`A000194(n)-A320278(A004273(n))`
-/

namespace A273190.P14139214325883117171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n - A320278 (A004273 n).toNat

end

end A273190.P14139214325883117171

namespace A273190

/-- `A000194(n)-A320278(A004273(n))` -/
def P14139214325883117171.Spec : Prop :=
  ∀ n, P14139214325883117171.a n = A273190 n

end A273190

/-! ## A273190.P10870304958251007887

`A000196(A163985(n))-A000196((2*n)%(n+1))`
-/

namespace A273190.P10870304958251007887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A163985 n).toNat - A000196 (2 * n % (n + 1))

end

end A273190.P10870304958251007887

namespace A273190

/-- `A000196(A163985(n))-A000196((2*n)%(n+1))` -/
def P10870304958251007887.Spec : Prop :=
  ∀ n, P10870304958251007887.a n = A273190 n

end A273190

/-! ## A273190.P4438848011165971154

`A339184(2*n)`
-/

namespace A273190.P4438848011165971154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 (2 * n)

end

end A273190.P4438848011165971154

namespace A273190

/-- `A339184(2*n)` -/
def P4438848011165971154.Spec : Prop :=
  ∀ n, P4438848011165971154.a n = A273190 n

end A273190

/-! ## A273190.P1402410613354904755

`A135034(2*n)-ceil(sqrt(n))`
-/

namespace A273190.P1402410613354904755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (2 * n) - ⌈Real.sqrt (n : ℝ)⌉

end

end A273190.P1402410613354904755

namespace A273190

/-- `A135034(2*n)-ceil(sqrt(n))` -/
def P1402410613354904755.Spec : Prop :=
  ∀ n, P1402410613354904755.a n = A273190 n

end A273190

/-! ## A273190.P2876428238263512786

`A339186(2*n+1)-A339186(n)`
-/

namespace A273190.P2876428238263512786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (2 * n + 1) - A339186 n

end

end A273190.P2876428238263512786

namespace A273190

/-- `A339186(2*n+1)-A339186(n)` -/
def P2876428238263512786.Spec : Prop :=
  ∀ n, P2876428238263512786.a n = A273190 n

end A273190

/-! ## A273190.P15036538552248389234

`A339186(2*n)-A339183(2*n)`
-/

namespace A273190.P15036538552248389234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (2 * n) - A339183 (2 * n)

end

end A273190.P15036538552248389234

namespace A273190

/-- `A339186(2*n)-A339183(2*n)` -/
def P15036538552248389234.Spec : Prop :=
  ∀ n, P15036538552248389234.a n = A273190 n

end A273190

/-! ## A273190.P5592292688034549894

`A339183(A014105(A339184(n+n)))`
-/

namespace A273190.P5592292688034549894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A014105 (A339184 (n + n)).toNat).toNat

end

end A273190.P5592292688034549894

namespace A273190

/-- `A339183(A014105(A339184(n+n)))` -/
def P5592292688034549894.Spec : Prop :=
  ∀ n, P5592292688034549894.a n = A273190 n

end A273190

/-! ## A273190.P16946503921911645229

`A371355(n+1)-A339184(n)`
-/

namespace A273190.P16946503921911645229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (n + 1) - A339184 n

end

end A273190.P16946503921911645229

namespace A273190

/-- `A371355(n+1)-A339184(n)` -/
def P16946503921911645229.Spec : Prop :=
  ∀ n, P16946503921911645229.a n = A273190 n

end A273190

/-!
# A273192: Unsigned numerators of the nonzero coefficients in the expansion of 1/hypergeom([], [Seq_{k=1..m-1} k/m], (x/m)^m) for m = 4.

The programs for A273192, there is no canonical definition to state claims against.
-/

/-! ## A273192.P6174007312869875208

`A211212(n)/A066099(A358690(n+1))`
-/

namespace A273192.P6174007312869875208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211212 n : ℚ) / (A066099 (A358690 (n + 1)).toNat : ℚ)

end

end A273192.P6174007312869875208

/-!
# A273194: a(n) = numerator(R(n,3)), where R(n,d) = (Product_{j prime to d} Pochhammer(j/d, n)) / n!.

The programs for A273194, there is no canonical definition to state claims against.
-/

/-! ## A273194.P6641548746149495456

`A007559(n)*A127974(n)`
-/

namespace A273194.P6641548746149495456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 n * A127974 n

end

end A273194.P6641548746149495456

/-! ## A273194.P1016772666066514754

`A004988(n)*A007559(n)/A125824(n)`
-/

namespace A273194.P1016772666066514754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n * A007559 n : ℚ) / (A125824 n : ℚ)

end

end A273194.P1016772666066514754

/-! ## A273194.P1155703656235861076

`A052502(n)/A008544(n)*A127974(n)`
-/

namespace A273194.P1155703656235861076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052502 n : ℚ) / (A008544 n : ℚ) * (A127974 n : ℚ)

end

end A273194.P1155703656235861076

/-! ## A273194.P13378894354819083356

`A084941(n)/A000142(n)*A127974(n)`
-/

namespace A273194.P13378894354819083356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084941 n : ℚ) / (A000142 n : ℚ) * (A127974 n : ℚ)

end

end A273194.P13378894354819083356

/-! ## A273194.P11676184477383888874

`gcd(A004987(n), A007559(n))*A008544(n)`
-/

namespace A273194.P11676184477383888874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004987 n) (A007559 n) : ℤ) * A008544 n

end

end A273194.P11676184477383888874

/-!
# A273195: The determinant of the difference table of the divisors vanishes for these numbers.

The programs for A273195, there is no canonical definition to state claims against.
-/

/-! ## A273195.P7522321505235333341

`A180425(3*n+2)%Δ[(4*n)²]`
-/

namespace A273195.P7522321505235333341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180425 (3 * n + 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A273195.P7522321505235333341

/-!
# A273197: a(n) = denominator of T(n, 2) with T(n, m) = Sum_{k=0..n}( 1/(m*k+1) * Sum_{j=0..m*k} (-1)^j*C(k,j)*j^(m*n) ).

The programs for A273197, there is no canonical definition to state claims against.
-/

/-! ## A273197.P8143147203588910454

`A344085(or(A265351(n), A344085(2*n+1)))`
-/

namespace A273197.P8143147203588910454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (Int.lor (A265351 n) (A344085 (2 * n + 1))).toNat

end

end A273197.P8143147203588910454

/-! ## A273197.P5484375881203595057

`A344085(or(A344048(n), A344085(2*n+1)))`
-/

namespace A273197.P5484375881203595057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (Int.lor (A344048 n) (A344085 (2 * n + 1))).toNat

end

end A273197.P5484375881203595057

/-! ## A273197.P6973874669294093750

`A344085(or(A049196(n+1), A344085(2*n+1)))`
-/

namespace A273197.P6973874669294093750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (Int.lor (A049196 (n + 1)) (A344085 (2 * n + 1))).toNat

end

end A273197.P6973874669294093750

/-!
# A273199: Integers which have a positive but not monotone difference table of their divisors.

The programs for A273199, there is no canonical definition to state claims against.
-/

/-! ## A273199.P16234437727790834069

`A162457(A322703(n+1)+11)`
-/

namespace A273199.P16234437727790834069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162457 (A322703 (n + 1) + 11).toNat

end

end A273199.P16234437727790834069

