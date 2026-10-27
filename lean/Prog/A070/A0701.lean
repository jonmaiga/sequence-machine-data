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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A070100: Number of integer triangles with perimeter n and prime side lengths which are acute and isosceles.

The programs for A070100, there is no canonical definition to state claims against.
-/

/-! ## A070100.P6670282620021215182

`A070092(n+1)-A070108(n+1)`
-/

namespace A070100.P6670282620021215182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) - A070108 (n + 1)

end

end A070100.P6670282620021215182

/-! ## A070100.P284204941101599621

`A070095(n+1)-A070097(n+1)`
-/

namespace A070100.P284204941101599621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) - A070097 (n + 1)

end

end A070100.P284204941101599621

/-! ## A070100.P12579786336633113837

`A070092(n+1)+A070105(n+1)-A070103(n+1)`
-/

namespace A070100.P12579786336633113837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) + (A070105 (n + 1) - A070103 (n + 1))

end

end A070100.P12579786336633113837

/-! ## A070100.P15396879027814967936

`A070088(n+1)-(A070103(n+1)+A070097(n+1))`
-/

namespace A070100.P15396879027814967936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070103 (n + 1) + A070097 (n + 1))

end

end A070100.P15396879027814967936

/-! ## A070100.P15056689102949488039

`A070088(n+1)-(A070108(n+1)+A070090(n+1))`
-/

namespace A070100.P15056689102949488039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070108 (n + 1) + A070090 (n + 1))

end

end A070100.P15056689102949488039

/-! ## A070100.P2479727487097221993

`A070095(n+1)+A070105(n+1)-A070090(n+1)`
-/

namespace A070100.P2479727487097221993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070105 (n + 1) - A070090 (n + 1))

end

end A070100.P2479727487097221993

/-!
# A070101: Number of obtuse integer triangles with perimeter n.

The programs for A070101, there is no canonical definition to state claims against.
-/

/-! ## A070101.P5100492375844802655

`A005044(n+1)-A070093(n+1)-A024155(n+1)`
-/

namespace A070101.P5100492375844802655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A070093 (n + 1) - A024155 (n + 1)

end

end A070101.P5100492375844802655

/-! ## A070101.P15903974393222005547

`A024156(n+1)+A070106(n+1)`
-/

namespace A070101.P15903974393222005547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + A070106 (n + 1)

end

end A070101.P15903974393222005547

/-! ## A070101.P14497232174358019517

`∑{d}[n+1, A070102(#)]`
-/

namespace A070101.P14497232174358019517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070102 d

end

end A070101.P14497232174358019517

/-! ## A070101.P14323708290141726375

`A024156(n+1)+A047329(n+1)-A003152(n+1)`
-/

namespace A070101.P14323708290141726375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + (A047329 (n + 1) - A003152 (n + 1))

end

end A070101.P14323708290141726375

/-! ## A070101.P13729389143455728088

`A024156(n+1)+A059169(n+1)-A070098(n+1)`
-/

namespace A070101.P13729389143455728088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + (A059169 (n + 1) - A070098 (n + 1))

end

end A070101.P13729389143455728088

/-! ## A070101.P6574207788457061844

`A024156(n+1)+A059169(n+1)-(A004526(n)-A183138(n+1))`
-/

namespace A070101.P6574207788457061844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + (A059169 (n + 1) - (A004526 n - A183138 (n + 1)))

end

end A070101.P6574207788457061844

/-! ## A070101.P1562500377292174742

`A024156(n+1)+A024154(n+1)+A059169(n+1)-A070093(n+1)`
-/

namespace A070101.P1562500377292174742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024156 (n + 1) + (A024154 (n + 1) + (A059169 (n + 1) - A070093 (n + 1)))

end

end A070101.P1562500377292174742

/-! ## A070101.P7844859601570831496

`A308157(n+1)/(n+1)`
-/

namespace A070101.P7844859601570831496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308157 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A070101.P7844859601570831496

/-!
# A070102: Number of obtuse integer triangles with perimeter n and relatively prime side lengths.

The programs for A070102, there is no canonical definition to state claims against.
-/

/-! ## A070102.P2921976379089999944

`A070107(n+1)+A070104(n+1)`
-/

namespace A070102.P2921976379089999944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (n + 1) + A070104 (n + 1)

end

end A070102.P2921976379089999944

/-! ## A070102.P11831653165874932087

`∑{d}[n+1, A008683(#)*A070101((n+1)/#)]`
-/

namespace A070102.P11831653165874932087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070102.P11831653165874932087

/-! ## A070102.P7153010593491033119

`A051493(n+1)-(A070109(n+1)+A070094(n+1))`
-/

namespace A070102.P7153010593491033119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - (A070109 (n + 1) + A070094 (n + 1))

end

end A070102.P7153010593491033119

/-! ## A070102.P7434042686979643997

`A004216(C(n*gcd(2, n), A070101(n+1)))`
-/

namespace A070102.P7434042686979643997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Nat.choose (n * Nat.gcd 2 n) (A070101 (n + 1)).toNat)

end

end A070102.P7434042686979643997

/-! ## A070102.P12972265551932788125

`A080887(A220418(n+1))*A101048(n)`
-/

namespace A070102.P12972265551932788125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A220418 (n + 1)).toNat * A101048 n

end

end A070102.P12972265551932788125

/-!
# A070103: Number of obtuse integer triangles with perimeter n and prime side lengths.

The programs for A070103, there is no canonical definition to state claims against.
-/

/-! ## A070103.P7899828751437542426

`A070108(n+1)+A070105(n+1)`
-/

namespace A070103.P7899828751437542426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070108 (n + 1) + A070105 (n + 1)

end

end A070103.P7899828751437542426

/-! ## A070103.P14116084035239139511

`A070088(n+1)-A070095(n+1)`
-/

namespace A070103.P14116084035239139511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - A070095 (n + 1)

end

end A070103.P14116084035239139511

/-! ## A070103.P6659194473575167859

`A070088(n+1)-(A070100(n+1)+A070097(n+1))`
-/

namespace A070103.P6659194473575167859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070100 (n + 1) + A070097 (n + 1))

end

end A070103.P6659194473575167859

/-! ## A070103.P608210117888073716

`A070090(n+1)+A070092(n+1)-A070095(n+1)`
-/

namespace A070103.P608210117888073716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070092 (n + 1) - A070095 (n + 1))

end

end A070103.P608210117888073716

/-! ## A070103.P10168375936756287028

`A070090(n+1)+A070108(n+1)-A070097(n+1)`
-/

namespace A070103.P10168375936756287028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070108 (n + 1) - A070097 (n + 1))

end

end A070103.P10168375936756287028

/-! ## A070103.P17527051549158243086

`A005044(n+1)-(A308318(n+1)+A070095(n+1))`
-/

namespace A070103.P17527051549158243086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A308318 (n + 1) + A070095 (n + 1))

end

end A070103.P17527051549158243086

/-!
# A070104: Number of integer triangles with perimeter n and relatively prime side lengths which are obtuse and scalene.

The programs for A070104, there is no canonical definition to state claims against.
-/

/-! ## A070104.P6121186903810632252

`A070102(n+1)-A070107(n+1)`
-/

namespace A070104.P6121186903810632252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070102 (n + 1) - A070107 (n + 1)

end

end A070104.P6121186903810632252

/-! ## A070104.P7947959342136338759

`∑{d}[n+1, A008683(#)*A024156((n+1)/#)]`
-/

namespace A070104.P7947959342136338759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A024156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070104.P7947959342136338759

/-! ## A070104.P14600676738220061515

`∑{d}[n+1, A024156(#)*A061220((n+1)/#)]`
-/

namespace A070104.P14600676738220061515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024156 d * A061220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070104.P14600676738220061515

/-! ## A070104.P4076774646750936619

`∑{d}[n+1, A024156(#)*A138544((n+1)/#-1)]`
-/

namespace A070104.P4076774646750936619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024156 d * A138544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A070104.P4076774646750936619

/-! ## A070104.P1713020959755169752

`∑{d}[n+1, A024156(#)*A358927((n+1)/#-1)]`
-/

namespace A070104.P1713020959755169752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024156 d * A358927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A070104.P1713020959755169752

/-!
# A070105: Number of integer triangles with perimeter n and prime side lengths which are obtuse and scalene.

The programs for A070105, there is no canonical definition to state claims against.
-/

/-! ## A070105.P12091166259786361961

`A070103(n+1)-A070108(n+1)`
-/

namespace A070105.P12091166259786361961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070103 (n + 1) - A070108 (n + 1)

end

end A070105.P12091166259786361961

/-! ## A070105.P15105101369802453999

`A070100(n+1)+A070103(n+1)-A070092(n+1)`
-/

namespace A070105.P15105101369802453999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070100 (n + 1) + (A070103 (n + 1) - A070092 (n + 1))

end

end A070105.P15105101369802453999

/-! ## A070105.P10944795593789920795

`A070088(n+1)-(A070097(n+1)+A070092(n+1))`
-/

namespace A070105.P10944795593789920795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070097 (n + 1) + A070092 (n + 1))

end

end A070105.P10944795593789920795

/-! ## A070105.P17897550446660338682

`A070088(n+1)-(A070108(n+1)+A070095(n+1))`
-/

namespace A070105.P17897550446660338682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070108 (n + 1) + A070095 (n + 1))

end

end A070105.P17897550446660338682

/-! ## A070105.P10213299519647502119

`A070090(n+1)-A070097(n+1)`
-/

namespace A070105.P10213299519647502119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) - A070097 (n + 1)

end

end A070105.P10213299519647502119

/-! ## A070105.P954950236913208787

`A070090(n+1)+A070100(n+1)-A070095(n+1)`
-/

namespace A070105.P954950236913208787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070100 (n + 1) - A070095 (n + 1))

end

end A070105.P954950236913208787

/-!
# A070106: Number of integer triangles with perimeter n which are obtuse and isosceles.

The programs for A070106, the canonical program `A070106.P8148621780262521077` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070106 has offset 1).

The definition of A070106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070106.P2154285009945222003

`round(3*n/4)-floor((n+1)/2*sqrt(2))`
-/

namespace A070106.P2154285009945222003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 4)) - ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A070106.P2154285009945222003

namespace A070106

/-- `round(3*n/4)-floor((n+1)/2*sqrt(2))` -/
def P2154285009945222003.Spec : Prop :=
  ∀ n, P2154285009945222003.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P6582039221730421746

`∑{d}[n+1, A070107(#)]`
-/

namespace A070106.P6582039221730421746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070107 d

end

end A070106.P6582039221730421746

namespace A070106

/-- `∑{d}[n+1, A070107(#)]` -/
def P6582039221730421746.Spec : Prop :=
  ∀ n, P6582039221730421746.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P7138398248138735219

`abs(floor((xor(1, n)+1)/4)-A070098(n+1))`
-/

namespace A070106.P7138398248138735219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋ - A070098 (n + 1)|

end

end A070106.P7138398248138735219

namespace A070106

/-- `abs(floor((xor(1, n)+1)/4)-A070098(n+1))` -/
def P7138398248138735219.Spec : Prop :=
  ∀ n, P7138398248138735219.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P8148621780262521077

`A047329(n+1)%A003152(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070106

/-- `A047329(n+1)%A003152(n+1)` -/
def P8148621780262521077.Spec : Prop :=
  ∀ n, P8148621780262521077.a n = A070106 (n + 1)

theorem P8148621780262521077.correct : P8148621780262521077.Spec := by
  intro n
  simp only [A070106, Nat.add_sub_cancel]

end A070106

/-! ## A070106.P2296517604413259350

`abs(A059169(n+1)-A070098(n+1))`
-/

namespace A070106.P2296517604413259350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059169 (n + 1) - A070098 (n + 1)|

end

end A070106.P2296517604413259350

namespace A070106

/-- `abs(A059169(n+1)-A070098(n+1))` -/
def P2296517604413259350.Spec : Prop :=
  ∀ n, P2296517604413259350.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P7170024074553705417

`A194920(n+1)%Δ[A108354(n)]`
-/

namespace A070106.P7170024074553705417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194920 (n + 1)) (f1 (n + 1) - f1 n)

end

end A070106.P7170024074553705417

namespace A070106

/-- `A194920(n+1)%Δ[A108354(n)]` -/
def P7170024074553705417.Spec : Prop :=
  ∀ n, P7170024074553705417.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P12871599834027546371

`A057353(n+2)%A049474(n+1)`
-/

namespace A070106.P12871599834027546371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057353 (n + 2)) (A049474 (n + 1))

end

end A070106.P12871599834027546371

namespace A070106

/-- `A057353(n+2)%A049474(n+1)` -/
def P12871599834027546371.Spec : Prop :=
  ∀ n, P12871599834027546371.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P14873528786037544064

`abs(A024156(n+1)-A070101(n+1))`
-/

namespace A070106.P14873528786037544064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024156 (n + 1) - A070101 (n + 1)|

end

end A070106.P14873528786037544064

namespace A070106

/-- `abs(A024156(n+1)-A070101(n+1))` -/
def P14873528786037544064.Spec : Prop :=
  ∀ n, P14873528786037544064.a n = A070106 (n + 1)

end A070106

/-! ## A070106.P7593549802082401933

`gcd(A024156(n+1)-A070101(n+1), A024155(2*n+1))`
-/

namespace A070106.P7593549802082401933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024156 (n + 1) - A070101 (n + 1)) (A024155 (2 * n + 1))

end

end A070106.P7593549802082401933

namespace A070106

/-- `gcd(A024156(n+1)-A070101(n+1), A024155(2*n+1))` -/
def P7593549802082401933.Spec : Prop :=
  ∀ n, (P7593549802082401933.a n : ℤ) = A070106 (n + 1)

end A070106

/-!
# A070107: Number of integer triangles with perimeter n and relatively prime side lengths which are obtuse and isosceles.

The programs for A070107, the canonical program `A070107.P4147856377676697556` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070107 has offset 1).

The definition of A070107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070107.P4147856377676697556

`A070091(n+1)-A070099(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070107

/-- `A070091(n+1)-A070099(n+1)` -/
def P4147856377676697556.Spec : Prop :=
  ∀ n, P4147856377676697556.a n = A070107 (n + 1)

theorem P4147856377676697556.correct : P4147856377676697556.Spec := by
  intro n
  simp only [A070107, Nat.add_sub_cancel]

end A070107

/-! ## A070107.P15618058560301709005

`∑{d}[n+1, A008683(#)*A070106((n+1)/#)]`
-/

namespace A070107.P15618058560301709005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070107.P15618058560301709005

namespace A070107

/-- `∑{d}[n+1, A008683(#)*A070106((n+1)/#)]` -/
def P15618058560301709005.Spec : Prop :=
  ∀ n, P15618058560301709005.a n = A070107 (n + 1)

end A070107

/-! ## A070107.P13648903548193438195

`∑{d}[n+1, A008683(#)*A059169((n+1)/#)]-A070099(n+1)`
-/

namespace A070107.P13648903548193438195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A059169 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A070099 (n + 1)

end

end A070107.P13648903548193438195

namespace A070107

/-- `∑{d}[n+1, A008683(#)*A059169((n+1)/#)]-A070099(n+1)` -/
def P13648903548193438195.Spec : Prop :=
  ∀ n, P13648903548193438195.a n = A070107 (n + 1)

end A070107

/-! ## A070107.P28049128488524714

`A002265(A000010(n+1)-A275966(n+1))-A070099(n+1)`
-/

namespace A070107.P28049128488524714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000010 (n + 1) - A275966 (n + 1)).toNat - A070099 (n + 1)

end

end A070107.P28049128488524714

namespace A070107

/-- `A002265(A000010(n+1)-A275966(n+1))-A070099(n+1)` -/
def P28049128488524714.Spec : Prop :=
  ∀ n, P28049128488524714.a n = A070107 (n + 1)

end A070107

/-! ## A070107.P6621844962623318177

`A070102(n+1)-A070104(n+1)`
-/

namespace A070107.P6621844962623318177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070102 (n + 1) - A070104 (n + 1)

end

end A070107.P6621844962623318177

namespace A070107

/-- `A070102(n+1)-A070104(n+1)` -/
def P6621844962623318177.Spec : Prop :=
  ∀ n, P6621844962623318177.a n = A070107 (n + 1)

end A070107

/-!
# A070108: Number of integer triangles with perimeter n and prime side lengths which are obtuse and isosceles.

The programs for A070108, there is no canonical definition to state claims against.
-/

/-! ## A070108.P2695669228672097631

`A070092(n+1)-A070100(n+1)`
-/

namespace A070108.P2695669228672097631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) - A070100 (n + 1)

end

end A070108.P2695669228672097631

/-! ## A070108.P16179300814987295682

`A070092(n+1)+A070097(n+1)-A070095(n+1)`
-/

namespace A070108.P16179300814987295682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) + (A070097 (n + 1) - A070095 (n + 1))

end

end A070108.P16179300814987295682

/-! ## A070108.P3450015185538834359

`A070103(n+1)-A070105(n+1)`
-/

namespace A070108.P3450015185538834359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070103 (n + 1) - A070105 (n + 1)

end

end A070108.P3450015185538834359

/-! ## A070108.P1811871847493982395

`A070088(n+1)-(A070105(n+1)+A070095(n+1))`
-/

namespace A070108.P1811871847493982395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070105 (n + 1) + A070095 (n + 1))

end

end A070108.P1811871847493982395

/-! ## A070108.P11659400950603698237

`A070088(n+1)-(A070100(n+1)+A070090(n+1))`
-/

namespace A070108.P11659400950603698237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070100 (n + 1) + A070090 (n + 1))

end

end A070108.P11659400950603698237

/-! ## A070108.P25492354513834473

`A070097(n+1)+A070103(n+1)-A070090(n+1)`
-/

namespace A070108.P25492354513834473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070097 (n + 1) + (A070103 (n + 1) - A070090 (n + 1))

end

end A070108.P25492354513834473

/-!
# A070109: Number of right integer triangles with perimeter n and relatively prime side lengths.

The programs for A070109, there is no canonical definition to state claims against.
-/

/-! ## A070109.P14399318263594030944

`A051493(n+1)-A070094(n+1)-A070102(n+1)`
-/

namespace A070109.P14399318263594030944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - A070094 (n + 1) - A070102 (n + 1)

end

end A070109.P14399318263594030944

/-! ## A070109.P7460002593822319741

`A078926(A152271(n))`
-/

namespace A070109.P7460002593822319741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A152271 n).toNat

end

end A070109.P7460002593822319741

/-! ## A070109.P6439101031758262513

`A078926(A057979(n)+1)`
-/

namespace A070109.P6439101031758262513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A057979 n + 1).toNat

end

end A070109.P6439101031758262513

/-! ## A070109.P6234181612028629270

`A078926((A093178(n)+1)/2)`
-/

namespace A070109.P6234181612028629270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A070109.P6234181612028629270

/-! ## A070109.P14514885870926710600

`A078926(gcd(n+1, A008619(n)))`
-/

namespace A070109.P14514885870926710600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A070109.P14514885870926710600

/-! ## A070109.P14613617726324119271

`∑{d}[n+1, A008683(#)*A024155((n+1)/#)]`
-/

namespace A070109.P14613617726324119271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A024155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070109.P14613617726324119271

/-! ## A070109.P9771074457117800388

`A078926(A008619(A093178(n)))`
-/

namespace A070109.P9771074457117800388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A008619 (A093178 n).toNat).toNat

end

end A070109.P9771074457117800388

/-! ## A070109.P7512967095733162962

`A078926(A008621(A019425(n)))`
-/

namespace A070109.P7512967095733162962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A008621 (A019425 n).toNat).toNat

end

end A070109.P7512967095733162962

/-! ## A070109.P5245910561362485195

`A328981(33*(A060374(n)+A033676(n+1)))`
-/

namespace A070109.P5245910561362485195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (33 * (A060374 n + A033676 (n + 1))).toNat

end

end A070109.P5245910561362485195

/-! ## A070109.P15885550897541195716

`A079261(A007528(A002313(n+1))-(n+1))`
-/

namespace A070109.P15885550897541195716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (A007528 (A002313 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A070109.P15885550897541195716

/-!
# A070110: Numbers k such that [A070080(k), A070081(k), A070082(k)] is an integer triangle with relatively prime side lengths.

The programs for A070110, there is no canonical definition to state claims against.
-/

/-! ## A070110.P15174568349770210680

`∪[A070113(n+1), A070116(n+1)]`
-/

namespace A070110.P15174568349770210680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070110.P15174568349770210680

/-! ## A070110.P13430911101269349043

`eq[1, A070084(n+1)]+1`
-/

namespace A070110.P13430911101269349043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070110.P13430911101269349043

/-! ## A070110.P16938465226863325129

`eq[3, A045943(a(A070084(n)-1))]` with `a(0)=1`
-/

namespace A070110.P16938465226863325129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A045943 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P16938465226863325129

/-! ## A070110.P204677844652064069

`eq[3, A065091(a(A070084(n)-1))]` with `a(0)=1`
-/

namespace A070110.P204677844652064069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A065091 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P204677844652064069

/-! ## A070110.P5166750571374665455

`eq[3, A115061(a(A070084(n)-1))]` with `a(0)=1`
-/

namespace A070110.P5166750571374665455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A115061 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P5166750571374665455

/-! ## A070110.P5140598987370869247

`eq[2, A137927(a(A070084(n)-1))]` with `a(0)=3`
-/

namespace A070110.P5140598987370869247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A137927 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P5140598987370869247

/-! ## A070110.P6675490336011002561

`eq[2, A306211(a(A070084(n)-1))]` with `a(0)=3`
-/

namespace A070110.P6675490336011002561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A306211 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P6675490336011002561

/-! ## A070110.P17227970640774744622

`eq[3, A000005(a(A070084(n)-1))]` with `a(0)=4`
-/

namespace A070110.P17227970640774744622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P17227970640774744622

/-! ## A070110.P13085882562355869228

`record[A000027(n+1)/A070084(n+1)]`
-/

namespace A070110.P13085882562355869228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A070084 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070110.P13085882562355869228

/-! ## A070110.P6819905717468954325

`eq[3, A050614(a(A070084(n)-1))]` with `a(0)=1`
-/

namespace A070110.P6819905717468954325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A050614 (f2 (A070084 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070110.P6819905717468954325

/-!
# A070111: Numbers k such that [A070080(k), A070081(k), A070082(k)] is an integer triangle with prime sides.

The programs for A070111, there is no canonical definition to state claims against.
-/

/-! ## A070111.P3080624648847074167

`∪[A070114(n+1), A070117(n+1)]`
-/

namespace A070111.P3080624648847074167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070111.P3080624648847074167

/-! ## A070111.P2553755252065559560

`∪[A070120(n+1), A070129(n+1)]`
-/

namespace A070111.P2553755252065559560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070111.P2553755252065559560

/-! ## A070111.P12600969578056342869

`∑[A000120(A025169(n))]+2`
-/

namespace A070111.P12600969578056342869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A025169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A070111.P12600969578056342869

/-!
# A070112: Numbers n such that [A070080(n), A070081(n), A070082(n)] is a scalene integer triangle.

The programs for A070112, there is no canonical definition to state claims against.
-/

/-! ## A070112.P12879444860755085276

`comp[A070115(n+1)-1]+1`
-/

namespace A070112.P12879444860755085276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A070112.P12879444860755085276

/-! ## A070112.P15602593401228090396

`comp[A070115(n-a(3%n))]` with `a(0)=0, a(1)=-1`
-/

namespace A070112.P15602593401228090396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  A070115 ((n : ℤ) - f1 (3 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070112.P15602593401228090396

/-! ## A070112.P793059370998186332

`comp[A070115(a(2%n)+n)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A070112.P793059370998186332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  A070115 (f1 (2 % n) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A070112.P793059370998186332

/-! ## A070112.P5336861595399062687

`A348811(A084938(n))+A070113(n+1)`
-/

namespace A070112.P5336861595399062687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348811 (A084938 n).toNat + A070113 (n + 1)

end

end A070112.P5336861595399062687

/-! ## A070112.P9906883514444626633

`A295659(A337492(n))+A070113(n+1)`
-/

namespace A070112.P9906883514444626633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A337492 n).toNat + A070113 (n + 1)

end

end A070112.P9906883514444626633

/-!
# A070113: Numbers k such that [A070080(k), A070081(k), A070082(k)] is a scalene integer triangle with relatively prime side lengths.

The programs for A070113, there is no canonical definition to state claims against.
-/

/-! ## A070113.P8651678497203279978

`∩[A070110(n+1), A070112(n+1)]`
-/

namespace A070113.P8651678497203279978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070113.P8651678497203279978

/-! ## A070113.P6862455145896113685

`∩[A070110(n+1), comp[A070115(n+1)]]`
-/

namespace A070113.P6862455145896113685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A070113.P6862455145896113685

/-! ## A070113.P14071267807555104920

`∩[eq[1, A070084(n+1)]+1, A070112(n+1)]`
-/

namespace A070113.P14071267807555104920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070084 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A070113.P14071267807555104920

/-! ## A070113.P4997019636101132944

`A070112(A160543(n+1)%A168466(n+1))`
-/

namespace A070113.P4997019636101132944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (Int.tmod (A160543 (n + 1)) (A168466 (n + 1))).toNat

end

end A070113.P4997019636101132944

/-!
# A070114: Numbers n such that [A070080(n), A070081(n), A070082(n)] is a scalene integer triangle with prime side lengths.

The programs for A070114, there is no canonical definition to state claims against.
-/

/-! ## A070114.P10015631857787236254

`∪[A070123(n+1), A070132(n+1)]`
-/

namespace A070114.P10015631857787236254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070114.P10015631857787236254

/-! ## A070114.P3054668045219721149

`∩[A070111(n+1), A070113(n+1)]`
-/

namespace A070114.P3054668045219721149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070114.P3054668045219721149

/-! ## A070114.P16522192706244616963

`∩[A070111(n+1), A070112(n+1)]`
-/

namespace A070114.P16522192706244616963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070114.P16522192706244616963

/-!
# A070115: Numbers m such that [A070080(m), A070081(m), A070082(m)] is an isosceles integer triangle.

The programs for A070115, there is no canonical definition to state claims against.
-/

/-! ## A070115.P395224096416373753

`∪[A070124(n+1), A070133(n+1)]`
-/

namespace A070115.P395224096416373753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070115.P395224096416373753

/-! ## A070115.P589930148663373658

`eq[char[A070112(n+1)], A000007(n)]`
-/

namespace A070115.P589930148663373658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A070115.P589930148663373658

/-! ## A070115.P16489929589564362937

`lt[2^n*char[A070112(n+1)]+1, A049417(n+1)]`
-/

namespace A070115.P16489929589564362937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A070115.P16489929589564362937

/-! ## A070115.P11520279620615964666

`eq[char[A070112(n+1)], A151933(n)]`
-/

namespace A070115.P11520279620615964666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A070115.P11520279620615964666

/-! ## A070115.P13841106869142652295

`lt[A280542(n), A008621(A280490(n+1))]`
-/

namespace A070115.P13841106869142652295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A280490 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070115.P13841106869142652295

/-!
# A070116: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an isosceles integer triangle with relatively prime side lengths.

The programs for A070116, there is no canonical definition to state claims against.
-/

/-! ## A070116.P13946717399344862897

`∪[A070125(n+1), A070134(n+1)]`
-/

namespace A070116.P13946717399344862897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070116.P13946717399344862897

/-! ## A070116.P14580793349505973278

`∩[A070110(n+1), A070115(n+1)]`
-/

namespace A070116.P14580793349505973278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070116.P14580793349505973278

/-! ## A070116.P3758532120288356848

`∩[A070110(n+1), comp[A070113(n+1)]]`
-/

namespace A070116.P3758532120288356848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A070116.P3758532120288356848

/-! ## A070116.P12350744745423829760

`∩[eq[1, A070084(n+1)]+1, A070115(n+1)]`
-/

namespace A070116.P12350744745423829760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070084 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A070116.P12350744745423829760

/-! ## A070116.P7980886685425762960

`eq[A000925(A168391(n+1)), A000925(n)]`
-/

namespace A070116.P7980886685425762960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A168391 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070116.P7980886685425762960

/-!
# A070117: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an isosceles integer triangle with prime side lengths.

The programs for A070117, there is no canonical definition to state claims against.
-/

/-! ## A070117.P9670517346907119600

`∪[A070126(n+1), A070135(n+1)]`
-/

namespace A070117.P9670517346907119600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070117.P9670517346907119600

/-! ## A070117.P2852357132234000627

`∩[A070111(n+1), A070115(n+1)]`
-/

namespace A070117.P2852357132234000627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070117.P2852357132234000627

/-! ## A070117.P17250120173301058938

`filter[A070111(n+1), A337263(#)]`
-/

namespace A070117.P17250120173301058938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337263 (f1 j).toNat = 1) n)

end

end A070117.P17250120173301058938

/-! ## A070117.P4948584962575819114

`∩[A070111(n+1), A277061(n+1)]`
-/

namespace A070117.P4948584962575819114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070117.P4948584962575819114

/-! ## A070117.P8987547181180279508

`∩[A070111(n+1), A344543(n+1)]`
-/

namespace A070117.P8987547181180279508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070117.P8987547181180279508

/-!
# A070118: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute integer triangle.

The programs for A070118, there is no canonical definition to state claims against.
-/

/-! ## A070118.P6468736179286998605

`∪[A070121(n+1), A070124(n+1)]`
-/

namespace A070118.P6468736179286998605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070118.P6468736179286998605

/-! ## A070118.P12239629421482015828

`lt[0, A070085(n+1)]+1`
-/

namespace A070118.P12239629421482015828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070118.P12239629421482015828

/-! ## A070118.P13484617146861031709

`lt[A000038(n), A070085(A028310(n))]`
-/

namespace A070118.P13484617146861031709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070118.P13484617146861031709

/-! ## A070118.P13733266011494458994

`lt[A000007(n), A070085(A028310(n))]`
-/

namespace A070118.P13733266011494458994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070118.P13733266011494458994

/-! ## A070118.P17065105388007499852

`A070124(n+1)%A088800(n+1)`
-/

namespace A070118.P17065105388007499852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070124 (n + 1)) (A088800 (n + 1))

end

end A070118.P17065105388007499852

/-!
# A070119: Numbers k such that [A070080(k), A070081(k), A070082(k)] is an acute integer triangle with relatively prime side lengths.

The programs for A070119, there is no canonical definition to state claims against.
-/

/-! ## A070119.P11653800339381519365

`∪[A070122(n+1), A070125(n+1)]`
-/

namespace A070119.P11653800339381519365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070119.P11653800339381519365

/-! ## A070119.P12411436944039069979

`∩[A070110(n+1), A070118(n+1)]`
-/

namespace A070119.P12411436944039069979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070119.P12411436944039069979

/-!
# A070120: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute integer triangle with prime side lengths.

The programs for A070120, there is no canonical definition to state claims against.
-/

/-! ## A070120.P8866405239621147097

`∪[A070123(n+1), A070126(n+1)]`
-/

namespace A070120.P8866405239621147097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070120.P8866405239621147097

/-! ## A070120.P4797770822112588127

`∩[A070111(n+1), A070118(n+1)]`
-/

namespace A070120.P4797770822112588127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070120.P4797770822112588127

/-!
# A070121: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute scalene integer triangle.

The programs for A070121, there is no canonical definition to state claims against.
-/

/-! ## A070121.P11620130227739989339

`∩[A070112(n+1), A070118(n+1)]`
-/

namespace A070121.P11620130227739989339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070121.P11620130227739989339

/-!
# A070122: Numbers m such that [A070080(m), A070081(m), A070082(m)] is an acute scalene integer triangle with relatively prime side lengths.

The programs for A070122, there is no canonical definition to state claims against.
-/

/-! ## A070122.P1001439885066493799

`∩[A070119(n+1), A070121(n+1)]`
-/

namespace A070122.P1001439885066493799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P1001439885066493799

/-! ## A070122.P7072607072364396125

`∩[A070113(n+1), A070118(n+1)]`
-/

namespace A070122.P7072607072364396125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P7072607072364396125

/-! ## A070122.P4521893203033886182

`∩[A070113(n+1), A070119(n+1)]`
-/

namespace A070122.P4521893203033886182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P4521893203033886182

/-! ## A070122.P13109120763270855880

`∩[A070113(n+1), A070121(n+1)]`
-/

namespace A070122.P13109120763270855880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P13109120763270855880

/-! ## A070122.P10781004401609921995

`∩[A070110(n+1), A070121(n+1)]`
-/

namespace A070122.P10781004401609921995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P10781004401609921995

/-! ## A070122.P16579594845045215980

`∩[A070112(n+1), A070119(n+1)]`
-/

namespace A070122.P16579594845045215980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070122.P16579594845045215980

/-!
# A070123: Numbers m such that [A070080(m), A070081(m), A070082(m)] is an acute scalene integer triangle with prime side lengths.

The programs for A070123, there is no canonical definition to state claims against.
-/

/-! ## A070123.P6805723635085529479

`∩[A070114(n+1), A070120(n+1)]`
-/

namespace A070123.P6805723635085529479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070123.P6805723635085529479

/-! ## A070123.P2959456112753458567

`∩[A070111(n+1), A070121(n+1)]`
-/

namespace A070123.P2959456112753458567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070123.P2959456112753458567

/-!
# A070124: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute isosceles integer triangle.

The programs for A070124, there is no canonical definition to state claims against.
-/

/-! ## A070124.P13426392812911691832

`∩[A070115(n+1), A070118(n+1)]`
-/

namespace A070124.P13426392812911691832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070124.P13426392812911691832

/-! ## A070124.P15981648261220812040

`∩[A070118(n+1), comp[A070121(n+1)]]`
-/

namespace A070124.P15981648261220812040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070121 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A070124.P15981648261220812040

/-! ## A070124.P8096912260444590447

`∩[A070115(n+1), comp[A070133(n+1)]]`
-/

namespace A070124.P8096912260444590447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A070124.P8096912260444590447

/-!
# A070125: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute isosceles integer triangle with relatively prime side lengths.

The programs for A070125, there is no canonical definition to state claims against.
-/

/-! ## A070125.P8593182193315801777

`∩[A070116(n+1), A070124(n+1)]`
-/

namespace A070125.P8593182193315801777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P8593182193315801777

/-! ## A070125.P2607916873584226452

`∩[A070115(n+1), A070119(n+1)]`
-/

namespace A070125.P2607916873584226452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P2607916873584226452

/-! ## A070125.P11592814774168644632

`∩[A070116(n+1), A070119(n+1)]`
-/

namespace A070125.P11592814774168644632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P11592814774168644632

/-! ## A070125.P16241536419871342815

`∩[A070119(n+1), A070124(n+1)]`
-/

namespace A070125.P16241536419871342815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P16241536419871342815

/-! ## A070125.P18180125834500989772

`∩[A070116(n+1), A070118(n+1)]`
-/

namespace A070125.P18180125834500989772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P18180125834500989772

/-! ## A070125.P16113135067591860664

`∩[A070110(n+1), A070124(n+1)]`
-/

namespace A070125.P16113135067591860664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070125.P16113135067591860664

/-!
# A070126: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an acute isosceles integer triangle with prime side lengths.

The programs for A070126, there is no canonical definition to state claims against.
-/

/-! ## A070126.P11929971269081473765

`∩[A070117(n+1), A070120(n+1)]`
-/

namespace A070126.P11929971269081473765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P11929971269081473765

/-! ## A070126.P16056443362447213422

`∩[A070111(n+1), A070124(n+1)]`
-/

namespace A070126.P16056443362447213422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P16056443362447213422

/-! ## A070126.P9422933542336944113

`∩[A070117(n+1), A070124(n+1)]`
-/

namespace A070126.P9422933542336944113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P9422933542336944113

/-! ## A070126.P16977703379604224503

`∩[A070120(n+1), A070124(n+1)]`
-/

namespace A070126.P16977703379604224503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P16977703379604224503

/-! ## A070126.P15057624954849037938

`∩[A070115(n+1), A070120(n+1)]`
-/

namespace A070126.P15057624954849037938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P15057624954849037938

/-! ## A070126.P12855947890071003579

`∩[A070117(n+1), A070118(n+1)]`
-/

namespace A070126.P12855947890071003579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070126.P12855947890071003579

/-!
# A070127: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse integer triangle.

The programs for A070127, there is no canonical definition to state claims against.
-/

/-! ## A070127.P4205665570614087659

`∪[A070130(n+1), A070133(n+1)]`
-/

namespace A070127.P4205665570614087659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070127.P4205665570614087659

/-! ## A070127.P10859926414568965880

`lt[A070085(n+1), 0]+1`
-/

namespace A070127.P10859926414568965880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070127.P10859926414568965880

/-! ## A070127.P1396378244565915956

`lt[A070085(A028310(n)), 0]`
-/

namespace A070127.P1396378244565915956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070127.P1396378244565915956

/-!
# A070128: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse integer triangle with relatively prime side lengths.

The programs for A070128, there is no canonical definition to state claims against.
-/

/-! ## A070128.P15377875680085264799

`∪[A070131(n+1), A070134(n+1)]`
-/

namespace A070128.P15377875680085264799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070128.P15377875680085264799

/-! ## A070128.P2945378908787162963

`∩[A070110(n+1), A070127(n+1)]`
-/

namespace A070128.P2945378908787162963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070128.P2945378908787162963

/-! ## A070128.P11911320734882693951

`∩[eq[1, A070084(n+1)]+1, A070127(n+1)]`
-/

namespace A070128.P11911320734882693951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070084 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A070128.P11911320734882693951

/-! ## A070128.P3044916665708980192

`A070127(A188437(n+1)%A006620(n+2))`
-/

namespace A070128.P3044916665708980192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (Int.tmod (A188437 (n + 1)) (A006620 (n + 2))).toNat

end

end A070128.P3044916665708980192

/-! ## A070128.P10047756108208058584

`A070127(A004709(n+1)%A309180(3*n+4))`
-/

namespace A070128.P10047756108208058584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (Int.tmod (A004709 (n + 1)) (A309180 (3 * n + 4))).toNat

end

end A070128.P10047756108208058584

/-!
# A070129: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse integer triangle with prime side lengths.

The programs for A070129, there is no canonical definition to state claims against.
-/

/-! ## A070129.P5232044514567446061

`∪[A070132(n+1), A070135(n+1)]`
-/

namespace A070129.P5232044514567446061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070129.P5232044514567446061

/-! ## A070129.P14585181524987984691

`∩[A070111(n+1), A070128(n+1)]`
-/

namespace A070129.P14585181524987984691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070129.P14585181524987984691

/-! ## A070129.P17059128026557987086

`∩[A070111(n+1), A070127(n+1)]`
-/

namespace A070129.P17059128026557987086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070129.P17059128026557987086

/-!
# A070130: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse scalene integer triangle.

The programs for A070130, there is no canonical definition to state claims against.
-/

/-! ## A070130.P5351342824032248617

`∩[A070112(n+1), A070127(n+1)]`
-/

namespace A070130.P5351342824032248617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070130.P5351342824032248617

/-! ## A070130.P4445974503283013835

`∩[comp[A070115(n+1)], A070127(n+1)]`
-/

namespace A070130.P4445974503283013835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A070130.P4445974503283013835

/-! ## A070130.P14787222102122128667

`∩[A070127(n+1), comp[A070133(n+1)]]`
-/

namespace A070130.P14787222102122128667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A070130.P14787222102122128667

/-! ## A070130.P1593774594078692364

`∩[lt[A070085(n+1), 0]+1, A070112(n+1)]`
-/

namespace A070130.P1593774594078692364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070085 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A070130.P1593774594078692364

/-! ## A070130.P4181375369424693251

`record[A070112(n+1)/A107577(n+1)]`
-/

namespace A070130.P4181375369424693251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070112 (n + 1) : ℚ) / (A107577 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070130.P4181375369424693251

/-!
# A070131: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse scalene integer triangle with relatively prime side lengths.

The programs for A070131, there is no canonical definition to state claims against.
-/

/-! ## A070131.P11405745362920029848

`∩[A070128(n+1), A070130(n+1)]`
-/

namespace A070131.P11405745362920029848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P11405745362920029848

/-! ## A070131.P7106917135235620644

`∩[A070113(n+1), A070127(n+1)]`
-/

namespace A070131.P7106917135235620644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P7106917135235620644

/-! ## A070131.P9415704863095932474

`∩[A070113(n+1), A070128(n+1)]`
-/

namespace A070131.P9415704863095932474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P9415704863095932474

/-! ## A070131.P9498314152445697115

`∩[A070113(n+1), A070130(n+1)]`
-/

namespace A070131.P9498314152445697115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P9498314152445697115

/-! ## A070131.P11744550785071001874

`∩[A070110(n+1), A070130(n+1)]`
-/

namespace A070131.P11744550785071001874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P11744550785071001874

/-! ## A070131.P2946041833881920823

`∩[A070112(n+1), A070128(n+1)]`
-/

namespace A070131.P2946041833881920823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070131.P2946041833881920823

/-!
# A070132: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse scalene integer triangle with prime side lengths.

The programs for A070132, there is no canonical definition to state claims against.
-/

/-! ## A070132.P1156033700097326916

`∩[A070114(n+1), A070129(n+1)]`
-/

namespace A070132.P1156033700097326916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P1156033700097326916

/-! ## A070132.P9001520258639156289

`∩[A070111(n+1), A070131(n+1)]`
-/

namespace A070132.P9001520258639156289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P9001520258639156289

/-! ## A070132.P1076565612070627852

`∩[A070114(n+1), A070131(n+1)]`
-/

namespace A070132.P1076565612070627852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P1076565612070627852

/-! ## A070132.P2850695068537577289

`∩[A070129(n+1), A070131(n+1)]`
-/

namespace A070132.P2850695068537577289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P2850695068537577289

/-! ## A070132.P18342159297349236068

`∩[A070114(n+1), A070128(n+1)]`
-/

namespace A070132.P18342159297349236068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P18342159297349236068

/-! ## A070132.P3970432700849883099

`∩[A070111(n+1), A070130(n+1)]`
-/

namespace A070132.P3970432700849883099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P3970432700849883099

/-! ## A070132.P13632759903975801817

`∩[A070114(n+1), A070130(n+1)]`
-/

namespace A070132.P13632759903975801817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P13632759903975801817

/-! ## A070132.P15791759701383044816

`∩[A070129(n+1), A070130(n+1)]`
-/

namespace A070132.P15791759701383044816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P15791759701383044816

/-! ## A070132.P5936170180128102372

`∩[A070114(n+1), A070127(n+1)]`
-/

namespace A070132.P5936170180128102372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P5936170180128102372

/-! ## A070132.P18259245105331006812

`∩[A070113(n+1), A070129(n+1)]`
-/

namespace A070132.P18259245105331006812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P18259245105331006812

/-! ## A070132.P7386131734989289058

`∩[A070112(n+1), A070129(n+1)]`
-/

namespace A070132.P7386131734989289058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070132.P7386131734989289058

/-!
# A070133: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse isosceles integer triangle.

The programs for A070133, there is no canonical definition to state claims against.
-/

/-! ## A070133.P10288422886695973944

`∩[A070115(n+1), A070127(n+1)]`
-/

namespace A070133.P10288422886695973944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070133.P10288422886695973944

/-!
# A070134: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse isosceles integer triangle with relatively prime side lengths.

The programs for A070134, there is no canonical definition to state claims against.
-/

/-! ## A070134.P6573789419576966636

`∩[A070116(n+1), A070133(n+1)]`
-/

namespace A070134.P6573789419576966636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P6573789419576966636

/-! ## A070134.P16812833304946901855

`∩[A070115(n+1), A070128(n+1)]`
-/

namespace A070134.P16812833304946901855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P16812833304946901855

/-! ## A070134.P13267891254979176388

`∩[A070116(n+1), A070128(n+1)]`
-/

namespace A070134.P13267891254979176388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P13267891254979176388

/-! ## A070134.P642550330155529840

`∩[A070128(n+1), A070133(n+1)]`
-/

namespace A070134.P642550330155529840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P642550330155529840

/-! ## A070134.P6743647597269515072

`∩[A070116(n+1), A070127(n+1)]`
-/

namespace A070134.P6743647597269515072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P6743647597269515072

/-! ## A070134.P1380800341994340087

`∩[A070110(n+1), A070133(n+1)]`
-/

namespace A070134.P1380800341994340087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070134.P1380800341994340087

/-!
# A070135: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an obtuse isosceles integer triangle with prime side lengths.

The programs for A070135, there is no canonical definition to state claims against.
-/

/-! ## A070135.P6912732714132879583

`∩[A070117(n+1), A070134(n+1)]`
-/

namespace A070135.P6912732714132879583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P6912732714132879583

/-! ## A070135.P11739432004077081460

`∩[A070117(n+1), A070133(n+1)]`
-/

namespace A070135.P11739432004077081460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P11739432004077081460

/-! ## A070135.P4553436134659763346

`∩[A070117(n+1), A070129(n+1)]`
-/

namespace A070135.P4553436134659763346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P4553436134659763346

/-! ## A070135.P8549412106528375399

`∩[A070129(n+1), A070133(n+1)]`
-/

namespace A070135.P8549412106528375399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P8549412106528375399

/-! ## A070135.P3485384468035578761

`∩[A070129(n+1), A070134(n+1)]`
-/

namespace A070135.P3485384468035578761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P3485384468035578761

/-! ## A070135.P8773360133806433489

`∩[A070111(n+1), A070133(n+1)]`
-/

namespace A070135.P8773360133806433489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P8773360133806433489

/-! ## A070135.P17857356914001257556

`∩[A070111(n+1), A070134(n+1)]`
-/

namespace A070135.P17857356914001257556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P17857356914001257556

/-! ## A070135.P16350925966037860602

`∩[A070116(n+1), A070129(n+1)]`
-/

namespace A070135.P16350925966037860602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P16350925966037860602

/-! ## A070135.P17049130298272203817

`∩[A070115(n+1), A070129(n+1)]`
-/

namespace A070135.P17049130298272203817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070135.P17049130298272203817

/-!
# A070136: Numbers m such that [A070080(m), A070081(m), A070082(m)] is a right integer triangle.

The programs for A070136, there is no canonical definition to state claims against.
-/

/-! ## A070136.P10309091164213252151

`A070209(lt[∑[n+1], A316650(2*n+1)]+1)`
-/

namespace A070136.P10309091164213252151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1)

end

end A070136.P10309091164213252151

/-!
# A070137: Numbers k such that [A070080(k), A070081(k), A070082(k)] is a right integer triangle with relatively prime side lengths.

The programs for A070137, there is no canonical definition to state claims against.
-/

/-! ## A070137.P13192238731682544012

`∩[A070136(n+1), A070143(n+1)]`
-/

namespace A070137.P13192238731682544012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070137.P13192238731682544012

/-!
# A070138: Number of integer triangles with an integer area having relatively prime sides a, b and c such that a + b + c = n.

The programs for A070138, there is no canonical definition to state claims against.
-/

/-! ## A070138.P5747568367834586623

`∑{d}[n+1, A008683(#)*A051516((n+1)/#)]`
-/

namespace A070138.P5747568367834586623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A051516 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070138.P5747568367834586623

/-! ## A070138.P9937906516743970764

`A237685(n+1)%A004525(A001055(n+1))`
-/

namespace A070138.P9937906516743970764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237685 (n + 1)) (A004525 (A001055 (n + 1)).toNat)

end

end A070138.P9937906516743970764

/-! ## A070138.P17474852798827628612

`A036615(A036602(n))%A317145(n+1)`
-/

namespace A070138.P17474852798827628612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036615 (A036602 n).toNat) (A317145 (n + 1))

end

end A070138.P17474852798827628612

/-! ## A070138.P15447405210176358865

`A243842(A326851(n+1))`
-/

namespace A070138.P15447405210176358865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243842 (A326851 (n + 1)).toNat

end

end A070138.P15447405210176358865

/-! ## A070138.P14894397491562524725

`∑[Δ[A243842(A326851(n))]%3]`
-/

namespace A070138.P14894397491562524725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243842 (A326851 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070138.P14894397491562524725

/-!
# A070139: Number of isosceles integer triangles with perimeter n having integral area.

The programs for A070139, the canonical program `A070139.P10794529069713137926` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070139 has offset 1).

The definition of A070139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070139.P15492587139232304624

`A051516(n+1)-A024153(n+1)`
-/

namespace A070139.P15492587139232304624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - A024153 (n + 1)

end

end A070139.P15492587139232304624

namespace A070139

/-- `A051516(n+1)-A024153(n+1)` -/
def P15492587139232304624.Spec : Prop :=
  ∀ n, P15492587139232304624.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P10794529069713137926

`A004526(A057918(Δ[A004526(n)²]+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070139

/-- `A004526(A057918(Δ[A004526(n)²]+1))` -/
def P10794529069713137926.Spec : Prop :=
  ∀ n, P10794529069713137926.a n = A070139 (n + 1)

theorem P10794529069713137926.correct : P10794529069713137926.Spec := by
  intro n
  simp only [A070139, Nat.add_sub_cancel]

end A070139

/-! ## A070139.P10333194100054111775

`A004526(Δ[A004526(n)]*A057918(n+1))`
-/

namespace A070139.P10333194100054111775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) - f1 n) * A057918 (n + 1)).toNat

end

end A070139.P10333194100054111775

namespace A070139

/-- `A004526(Δ[A004526(n)]*A057918(n+1))` -/
def P10333194100054111775.Spec : Prop :=
  ∀ n, P10333194100054111775.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P9191357901046673824

`A309395(A152271(n))`
-/

namespace A070139.P9191357901046673824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A152271 n).toNat

end

end A070139.P9191357901046673824

namespace A070139

/-- `A309395(A152271(n))` -/
def P9191357901046673824.Spec : Prop :=
  ∀ n, P9191357901046673824.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P3101881821446413784

`A309395(A057979(n)+1)`
-/

namespace A070139.P3101881821446413784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A057979 n + 1).toNat

end

end A070139.P3101881821446413784

namespace A070139

/-- `A309395(A057979(n)+1)` -/
def P3101881821446413784.Spec : Prop :=
  ∀ n, P3101881821446413784.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P13225917697308575598

`A309395(A133265(n)/2)`
-/

namespace A070139.P13225917697308575598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A070139.P13225917697308575598

namespace A070139

/-- `A309395(A133265(n)/2)` -/
def P13225917697308575598.Spec : Prop :=
  ∀ n, P13225917697308575598.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P231709359780617325

`A309395(gcd(n+1, A001057(n)))`
-/

namespace A070139.P231709359780617325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (Int.gcd (n + 1 : ℤ) (A001057 n))

end

end A070139.P231709359780617325

namespace A070139

/-- `A309395(gcd(n+1, A001057(n)))` -/
def P231709359780617325.Spec : Prop :=
  ∀ n, P231709359780617325.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P9819512057053823620

`A309395(A004526(n*A000035(n))+1)`
-/

namespace A070139.P9819512057053823620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A004526 ((n : ℤ) * A000035 n).toNat + 1).toNat

end

end A070139.P9819512057053823620

namespace A070139

/-- `A309395(A004526(n*A000035(n))+1)` -/
def P9819512057053823620.Spec : Prop :=
  ∀ n, P9819512057053823620.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P10280723592203755562

`A070204(A355264(n+1))`
-/

namespace A070139.P10280723592203755562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (A355264 (n + 1)).toNat

end

end A070139.P10280723592203755562

namespace A070139

/-- `A070204(A355264(n+1))` -/
def P10280723592203755562.Spec : Prop :=
  ∀ n, P10280723592203755562.a n = A070139 (n + 1)

end A070139

/-! ## A070139.P17598626090791424476

`A070204((n+1)*A056622(n+1))`
-/

namespace A070139.P17598626090791424476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 ((n + 1 : ℤ) * A056622 (n + 1)).toNat

end

end A070139.P17598626090791424476

namespace A070139

/-- `A070204((n+1)*A056622(n+1))` -/
def P17598626090791424476.Spec : Prop :=
  ∀ n, P17598626090791424476.a n = A070139 (n + 1)

end A070139

/-!
# A070140: Number of acute integer triangles with perimeter n having integral area.

The programs for A070140, there is no canonical definition to state claims against.
-/

/-! ## A070140.P7602784568025763457

`A051516(n+1)-(A070141(n+1)+A024155(n+1))`
-/

namespace A070140.P7602784568025763457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - (A070141 (n + 1) + A024155 (n + 1))

end

end A070140.P7602784568025763457

/-! ## A070140.P17429806779207932768

`A285464(A061338(n+1)^A051516(n+1))`
-/

namespace A070140.P17429806779207932768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (SequenceMachineLib.roundAway ((A061338 (n + 1) : ℚ) ^ (A051516 (n + 1) : ℤ))).toNat

end

end A070140.P17429806779207932768

/-! ## A070140.P12176589261595004776

`A076489(and(A046523(n+1), A193960(n)))`
-/

namespace A070140.P12176589261595004776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (Int.land (A046523 (n + 1)) (A193960 n)).toNat

end

end A070140.P12176589261595004776

/-! ## A070140.P4170423357900815699

`A161062(and(A046523(n+1), A193960(n))+1)`
-/

namespace A070140.P4170423357900815699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (Int.land (A046523 (n + 1)) (A193960 n) + 1).toNat

end

end A070140.P4170423357900815699

/-! ## A070140.P4851821159847307195

`A245837(and(A046523(n+1), A193960(n))+8)`
-/

namespace A070140.P4851821159847307195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245837 (Int.land (A046523 (n + 1)) (A193960 n) + 8).toNat

end

end A070140.P4851821159847307195

/-! ## A070140.P9727879860004539365

`A064834(and(A046523(n+1), A193960(n)))%2`
-/

namespace A070140.P9727879860004539365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064834 (Int.land (A046523 (n + 1)) (A193960 n)).toNat) 2

end

end A070140.P9727879860004539365

/-! ## A070140.P16202819041146774671

`and(n, A046080(A112063(n+1)))`
-/

namespace A070140.P16202819041146774671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A046080 (A112063 (n + 1)).toNat)

end

end A070140.P16202819041146774671

/-! ## A070140.P14742830810192971500

`A000035(n)*A046080(A112063(n+1))`
-/

namespace A070140.P14742830810192971500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A046080 (A112063 (n + 1)).toNat

end

end A070140.P14742830810192971500

/-! ## A070140.P6590206308068606422

`round(A046080(A112063(n+1))/A020639(n+1))`
-/

namespace A070140.P6590206308068606422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046080 (A112063 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ))

end

end A070140.P6590206308068606422

/-!
# A070141: Number of obtuse integer triangles with perimeter n having integral area.

The programs for A070141, there is no canonical definition to state claims against.
-/

/-! ## A070141.P17702127431829708152

`A051516(n+1)-(A070140(n+1)+A024155(n+1))`
-/

namespace A070141.P17702127431829708152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - (A070140 (n + 1) + A024155 (n + 1))

end

end A070141.P17702127431829708152

/-! ## A070141.P4414662765252099847

`C(A070138(n+1), A194446(A008917(n+1)))`
-/

namespace A070141.P4414662765252099847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070138 (n + 1)).toNat (A194446 (A008917 (n + 1)).toNat).toNat

end

end A070141.P4414662765252099847

/-! ## A070141.P5400989352900586748

`A334234(A334260(n+1))%A193738(A334239(n+1))`
-/

namespace A070141.P5400989352900586748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334234 (A334260 (n + 1)).toNat) (A193738 (A334239 (n + 1)).toNat)

end

end A070141.P5400989352900586748

/-! ## A070141.P11217011906264095227

`A090047(A090111(n+1))%A050330(n+1)`
-/

namespace A070141.P11217011906264095227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090047 (A090111 (n + 1)).toNat) (A050330 (n + 1))

end

end A070141.P11217011906264095227

/-! ## A070141.P16106617395791834608

`A189140(n+1)%A319149(A319137(n+1))`
-/

namespace A070141.P16106617395791834608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189140 (n + 1)) (A319149 (A319137 (n + 1)).toNat)

end

end A070141.P16106617395791834608

/-!
# A070142: Numbers k such that [A070080(k), A070081(k), A070082(k)] is an integer triangle with integer area.

The programs for A070142, there is no canonical definition to state claims against.
-/

/-! ## A070142.P5148343716524995867

`∪[A070144(n+1), A070145(n+1)]`
-/

namespace A070142.P5148343716524995867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070142.P5148343716524995867

/-!
# A070143: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an integer triangle with integer area, having relatively prime side lengths.

The programs for A070143, there is no canonical definition to state claims against.
-/

/-! ## A070143.P3190285068231442822

`A070142(A138529(n+1)%A187124(3*n+5))`
-/

namespace A070143.P3190285068231442822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (Int.tmod (A138529 (n + 1)) (A187124 (3 * n + 5))).toNat

end

end A070143.P3190285068231442822

/-! ## A070143.P1855698066395543859

`A070142(A026355(n)+A278610(n+1)²)`
-/

namespace A070143.P1855698066395543859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (A026355 n + A278610 (n + 1) ^ 2).toNat

end

end A070143.P1855698066395543859

/-! ## A070143.P9486128206229997366

`A070142(lt[A070111(n+2), A070151(2*(n+2))])`
-/

namespace A070143.P9486128206229997366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070111 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070151 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A070143.P9486128206229997366

/-!
# A070144: Numbers n such that [A070080(n), A070081(n), A070082(n)] is a scalene integer triangle with integer area.

The programs for A070144, there is no canonical definition to state claims against.
-/

/-! ## A070144.P10993524218423030060

`∩[A070112(n+1), A070142(n+1)]`
-/

namespace A070144.P10993524218423030060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070144.P10993524218423030060

/-! ## A070144.P7297115102892129472

`A070142(A061578(n+1)%A122539(2*n+3))`
-/

namespace A070144.P7297115102892129472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (Int.tmod (A061578 (n + 1)) (A122539 (2 * n + 3))).toNat

end

end A070144.P7297115102892129472

/-!
# A070149: Areas of integer Heronian triangles [A070080(A070142(n)), A070081(A070142(n)), A070082(A070142(n))].

The programs for A070149, there is no canonical definition to state claims against.
-/

/-! ## A070149.P8516283615556179604

`A070086(A070142(n+1))`
-/

namespace A070149.P8516283615556179604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070086 (A070142 (n + 1)).toNat

end

end A070149.P8516283615556179604

/-! ## A070149.P1214269675684407037

`A070086(∪[A070144(n+1), A070145(n+1)])`
-/

namespace A070149.P1214269675684407037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070145 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070086 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A070149.P1214269675684407037

/-!
# A070150: Triangular areas of integer Heronian triangles.

The programs for A070150, there is no canonical definition to state claims against.
-/

/-! ## A070150.P18289508063684551420

`filter[A070149(n+1), A073424(#)]`
-/

namespace A070150.P18289508063684551420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A070150.P18289508063684551420

/-! ## A070150.P5145621582229202590

`filter[A070149(n+1), A010054(#)]`
-/

namespace A070150.P5145621582229202590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A070150.P5145621582229202590

/-! ## A070150.P9773950024565336463

`filter[A070149(n+1), A185907(#)]`
-/

namespace A070150.P9773950024565336463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A070150.P9773950024565336463

/-! ## A070150.P547113184179858055

`filter[A070149(n+1), A204177(#)]`
-/

namespace A070150.P547113184179858055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204177 (f1 j).toNat = 1) n)

end

end A070150.P547113184179858055

/-! ## A070150.P4234381221036385692

`A070086(A070148(n+1))`
-/

namespace A070150.P4234381221036385692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070086 (A070148 (n + 1)).toNat

end

end A070150.P4234381221036385692

/-!
# A070151: a(n) is one fourth of the even leg of the unique primitive Pythagorean triangle with hypotenuse A002144(n).

The programs for A070151, there is no canonical definition to state claims against.
-/

/-! ## A070151.P5979072700956319343

`A002330(n+2)*A002331(n+2)/2`
-/

namespace A070151.P5979072700956319343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002330 (n + 2) * A002331 (n + 2) : ℚ) / 2

end

end A070151.P5979072700956319343

/-! ## A070151.P8814806684561331072

`A145046(n)/4`
-/

namespace A070151.P8814806684561331072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145046 n : ℚ) / 4

end

end A070151.P8814806684561331072

/-! ## A070151.P12793660898541463179

`A002972(n+1)*A002973(n+1)`
-/

namespace A070151.P12793660898541463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1) * A002973 (n + 1)

end

end A070151.P12793660898541463179

/-! ## A070151.P2973634692834224097

`abs(A002973(n+1)*A046730(n+1))`
-/

namespace A070151.P2973634692834224097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002973 (n + 1) * A046730 (n + 1)|

end

end A070151.P2973634692834224097

/-! ## A070151.P10792276423515504963

`A005098(n+1)-A002378(A096030(n+1))`
-/

namespace A070151.P10792276423515504963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - A002378 (A096030 (n + 1)).toNat

end

end A070151.P10792276423515504963

/-! ## A070151.P5683232814161078931

`lcm(A002972(n+1)%A002144(n+1), A002973(n+1))`
-/

namespace A070151.P5683232814161078931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A002972 (n + 1)) (A002144 (n + 1))) (A002973 (n + 1))

end

end A070151.P5683232814161078931

/-! ## A070151.P16201707248948038187

`A001281(A079886(n+1)-A002972(n+1))*A002972(n+1)`
-/

namespace A070151.P16201707248948038187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A079886 (n + 1) - A002972 (n + 1)).toNat * A002972 (n + 1)

end

end A070151.P16201707248948038187

/-! ## A070151.P13962907408582186889

`A002972(n+1)*A029578(A079886(n+1)-A002972(n+1))`
-/

namespace A070151.P13962907408582186889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1) * A029578 (A079886 (n + 1) - A002972 (n + 1)).toNat

end

end A070151.P13962907408582186889

/-! ## A070151.P4340531585644910604

`A145019(n+1)/2`
-/

namespace A070151.P4340531585644910604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145019 (n + 1) : ℚ) / 2

end

end A070151.P4340531585644910604

/-! ## A070151.P3453908391787566598

`A145010(n+1)/(2*A070079(n+1))`
-/

namespace A070151.P3453908391787566598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145010 (n + 1) : ℚ) / (2 * A070079 (n + 1) : ℚ)

end

end A070151.P3453908391787566598

/-! ## A070151.P4733400728657742781

`A001281(A145019(n+1))`
-/

namespace A070151.P4733400728657742781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A145019 (n + 1)).toNat

end

end A070151.P4733400728657742781

/-! ## A070151.P16846612216512879857

`A002265(A145046(n))`
-/

namespace A070151.P16846612216512879857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145046 n).toNat

end

end A070151.P16846612216512879857

/-! ## A070151.P4989262639838609945

`A037214(A002144(n+1))/4`
-/

namespace A070151.P4989262639838609945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037214 (A002144 (n + 1)).toNat : ℚ) / 4

end

end A070151.P4989262639838609945

/-!
# A070155: Numbers k such that k-1, k+1 and k^2+1 are prime numbers.

The programs for A070155, there is no canonical definition to state claims against.
-/

/-! ## A070155.P10924048536368108826

`floor(sqrt(A051779(n+1)))`
-/

namespace A070155.P10924048536368108826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051779 (n + 1))

end

end A070155.P10924048536368108826

/-! ## A070155.P7210062040535835510

`A129293(n+2)`
-/

namespace A070155.P7210062040535835510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129293 (n + 2)

end

end A070155.P7210062040535835510

/-! ## A070155.P852544413664465691

`A108013(n+1)+1`
-/

namespace A070155.P852544413664465691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 1) + 1

end

end A070155.P852544413664465691

/-! ## A070155.P1793013743290951549

`∩[A001359(n+1), A051507(n+1)]+1`
-/

namespace A070155.P1793013743290951549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P1793013743290951549

/-! ## A070155.P2686228086420203977

`∩[A001359(n+1), A157468(n+1)]+1`
-/

namespace A070155.P2686228086420203977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P2686228086420203977

/-! ## A070155.P4906199097936226869

`∩[A014574(n+1), A067720(n+1)]`
-/

namespace A070155.P4906199097936226869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070155.P4906199097936226869

/-! ## A070155.P5918280647899596626

`∩[A014574(n+1), A070689(n+1)]`
-/

namespace A070155.P5918280647899596626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070155.P5918280647899596626

/-! ## A070155.P17852540458204883479

`∩[A067720(n+1), A217259(n+1)]`
-/

namespace A070155.P17852540458204883479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070155.P17852540458204883479

/-! ## A070155.P16908802706247505386

`∩[A070689(n+1), A217259(n+1)]`
-/

namespace A070155.P16908802706247505386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070155.P16908802706247505386

/-! ## A070155.P1430022085965456940

`∩[A051507(n+1), A054799(n+1)]+1`
-/

namespace A070155.P1430022085965456940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P1430022085965456940

/-! ## A070155.P6354219789089206783

`∩[A051507(n+1), A063700(n+1)]+1`
-/

namespace A070155.P6354219789089206783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P6354219789089206783

/-! ## A070155.P13579216180323019120

`∩[A051507(n+1), A124588(n+1)]+1`
-/

namespace A070155.P13579216180323019120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P13579216180323019120

/-! ## A070155.P8779796456281988846

`∩[A054799(n+1), A157468(n+1)]+1`
-/

namespace A070155.P8779796456281988846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P8779796456281988846

/-! ## A070155.P16869942348179305289

`∩[A063700(n+1), A157468(n+1)]+1`
-/

namespace A070155.P16869942348179305289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P16869942348179305289

/-! ## A070155.P7072599645347512122

`∩[A051507(n+1), A181747(n+1)]+1`
-/

namespace A070155.P7072599645347512122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P7072599645347512122

/-! ## A070155.P4384802079806446120

`∩[A124588(n+1), A157468(n+1)]+1`
-/

namespace A070155.P4384802079806446120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P4384802079806446120

/-! ## A070155.P11705403924298555244

`∩[A051507(n+1), A280255(n+1)]+1`
-/

namespace A070155.P11705403924298555244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P11705403924298555244

/-! ## A070155.P11507267412954154703

`∩[A157468(n+1), A181747(n+1)]+1`
-/

namespace A070155.P11507267412954154703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P11507267412954154703

/-! ## A070155.P4584585042529706134

`∩[A157468(n+1), A238528(n+1)]+1`
-/

namespace A070155.P4584585042529706134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P4584585042529706134

/-! ## A070155.P14625656148834644179

`∩[A157468(n+1), A280255(n+1)]+1`
-/

namespace A070155.P14625656148834644179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070155.P14625656148834644179

/-!
# A070156: Numbers k such that k-1, k+1, k^2+1 and k^4+1 are all prime numbers.

The programs for A070156, there is no canonical definition to state claims against.
-/

/-! ## A070156.P3405998332205506453

`∩[A070155(n+1), A070325(n+1)]`
-/

namespace A070156.P3405998332205506453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070156.P3405998332205506453

/-! ## A070156.P17945356146572881082

`∩[A070325(n+1), A129293(n+1)]`
-/

namespace A070156.P17945356146572881082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070156.P17945356146572881082

/-! ## A070156.P11024883986464804015

`∩[A067662(n+1), A070155(n+1)]`
-/

namespace A070156.P11024883986464804015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070156.P11024883986464804015

/-! ## A070156.P13621189425401152226

`∩[A067662(n+1), A108013(n+1)+1]`
-/

namespace A070156.P13621189425401152226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070156.P13621189425401152226

/-!
# A070159: Numbers k such that phi(k)/(sigma(k)-k) is an integer.

The programs for A070159, there is no canonical definition to state claims against.
-/

/-! ## A070159.P6495165911276608351

`∪[A000040(n+1), A055940(n+1)]`
-/

namespace A070159.P6495165911276608351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070159.P6495165911276608351

/-! ## A070159.P12076095382064562661

`filter[A325327(n+1), A296084(#)]`
-/

namespace A070159.P12076095382064562661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296084 (f1 j).toNat = 1) n)

end

end A070159.P12076095382064562661

/-! ## A070159.P10781826134286513692

`∩[A054403(n+1), A325327(n+1)]`
-/

namespace A070159.P10781826134286513692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070159.P10781826134286513692

/-! ## A070159.P1070095097159739432

`lt[A330502(A005940(n+2)), A242931(n+1)]`
-/

namespace A070159.P1070095097159739432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330502 (A005940 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070159.P1070095097159739432

/-! ## A070159.P7341870319407696308

`eq[A001222(n+1), A344590(A305566(3*n+4)+1)]+1`
-/

namespace A070159.P7341870319407696308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A305566 (3 * n + 4) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070159.P7341870319407696308

/-!
# A070160: Nonprime numbers k such that phi(k)/(sigma(k) - k - 1) is an integer.

The programs for A070160, there is no canonical definition to state claims against.
-/

/-! ## A070160.P14644822939775742359

`∪[A070161(n+1), Δ[A024525(n)]]`
-/

namespace A070160.P14644822939775742359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070160.P14644822939775742359

/-! ## A070160.P17548409890897130257

`∪[A001248(n+1), A070161(n+1)]`
-/

namespace A070160.P17548409890897130257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070160.P17548409890897130257

/-! ## A070160.P13872955268491396925

`∪[A000040(n+1)², A070161(n+1)]`
-/

namespace A070160.P13872955268491396925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070160.P13872955268491396925

/-! ## A070160.P17941556739141051698

`∪[p?[A070159(n+1)]², A070161(n+1)]`
-/

namespace A070160.P17941556739141051698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A070160.P17941556739141051698

/-! ## A070160.P1422091591799406015

`A342418(A028310(n))%A016969(A007088(n))`
-/

namespace A070160.P1422091591799406015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342418 (A028310 n).toNat) (A016969 (A007088 n).toNat)

end

end A070160.P1422091591799406015

/-!
# A070161: Nonprime numbers n such that q=phi(n)/(sigma(n)-n-1) is an integer and n is not a prime square.

The programs for A070161, there is no canonical definition to state claims against.
-/

/-! ## A070161.P12759202174960825805

`filter[A070160(n+1), A324903(#)]`
-/

namespace A070161.P12759202174960825805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A070161.P12759202174960825805

/-! ## A070161.P5687886512667193713

`filter[A070160(n+1), A049240(#)]`
-/

namespace A070161.P5687886512667193713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A070161.P5687886512667193713

/-! ## A070161.P4352462778557242353

`filter[A070160(n+1), A324908(#)]`
-/

namespace A070161.P4352462778557242353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A070161.P4352462778557242353

/-! ## A070161.P3215240381338469439

`filter[A070160(n+1), A343219(#)]`
-/

namespace A070161.P3215240381338469439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A070161.P3215240381338469439

/-! ## A070161.P2257854671437984050

`filter[A070160(n+3), A323158(#)]`
-/

namespace A070161.P2257854671437984050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A070161.P2257854671437984050

/-! ## A070161.P6617886995859439959

`∩[A024556(n+1), A070160(n+1)]`
-/

namespace A070161.P6617886995859439959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070161.P6617886995859439959

/-! ## A070161.P5240783602241858078

`∩[A056911(n+1), A070160(n+1)]`
-/

namespace A070161.P5240783602241858078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070161.P5240783602241858078

/-! ## A070161.P15012785795613477033

`∩[A061346(n+1), A070160(n+1)]`
-/

namespace A070161.P15012785795613477033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070161.P15012785795613477033

/-! ## A070161.P16824540471943439383

`∩[A000469(n+1), A070160(n+1)]`
-/

namespace A070161.P16824540471943439383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070161.P16824540471943439383

/-! ## A070161.P8744702374649301584

`∩[A070160(n+1), A120944(n+1)]`
-/

namespace A070161.P8744702374649301584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070161.P8744702374649301584

/-!
# A070162: Numbers k such that k - phi(k) - 1 is a prime.

The programs for A070162, the canonical program `A070162.P6067516089811518343` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070162 has offset 1).

The definition of A070162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070162.P6067516089811518343

`eq[2, a(A016035(n))+1]` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070162

/-- `eq[2, a(A016035(n))+1]` -/
def P6067516089811518343.Spec : Prop :=
  ∀ n, (P6067516089811518343.a n : ℤ) = A070162 (n + 1)

theorem P6067516089811518343.correct : P6067516089811518343.Spec := by
  intro n
  simp only [A070162, Nat.add_sub_cancel]

end A070162

/-! ## A070162.P11180327476393734682

`eq[1, ∑{e}[A219428(n+1), #]]+1`
-/

namespace A070162.P11180327476393734682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070162.P11180327476393734682

namespace A070162

/-- `eq[1, ∑{e}[A219428(n+1), #]]+1` -/
def P11180327476393734682.Spec : Prop :=
  ∀ n, (P11180327476393734682.a n : ℤ) = A070162 (n + 1)

end A070162

/-! ## A070162.P4059723239334230064

`eq[2, ∏{e}[A016035(n+1), #+1]]+1`
-/

namespace A070162.P4059723239334230064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070162.P4059723239334230064

namespace A070162

/-- `eq[2, ∏{e}[A016035(n+1), #+1]]+1` -/
def P4059723239334230064.Spec : Prop :=
  ∀ n, (P4059723239334230064.a n : ℤ) = A070162 (n + 1)

end A070162

/-! ## A070162.P15770637251518654127

`eq[1, ∑{e}[A000010(n+1)-n, #]]+1`
-/

namespace A070162.P15770637251518654127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070162.P15770637251518654127

namespace A070162

/-- `eq[1, ∑{e}[A000010(n+1)-n, #]]+1` -/
def P15770637251518654127.Spec : Prop :=
  ∀ n, (P15770637251518654127.a n : ℤ) = A070162 (n + 1)

end A070162

/-! ## A070162.P13965611717363952030

`eq[2, ∏{e}[A016035(A028310(n)), #+1]]`
-/

namespace A070162.P13965611717363952030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070162.P13965611717363952030

namespace A070162

/-- `eq[2, ∏{e}[A016035(A028310(n)), #+1]]` -/
def P13965611717363952030.Spec : Prop :=
  ∀ n, (P13965611717363952030.a n : ℤ) = A070162 (n + 1)

end A070162

/-! ## A070162.P8242289826411570569

`eq[1, ∑{e}[A219428(A000038(n)+n), #]]`
-/

namespace A070162.P8242289826411570569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070162.P8242289826411570569

namespace A070162

/-- `eq[1, ∑{e}[A219428(A000038(n)+n), #]]` -/
def P8242289826411570569.Spec : Prop :=
  ∀ n, (P8242289826411570569.a n : ℤ) = A070162 (n + 1)

end A070162

/-! ## A070162.P16268383328725736607

`eq[2, A131882(a(A016035(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A070162.P16268383328725736607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A131882 (f2 (A016035 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070162.P16268383328725736607

namespace A070162

/-- `eq[2, A131882(a(A016035(n)))]` -/
def P16268383328725736607.Spec : Prop :=
  ∀ n, (P16268383328725736607.a n : ℤ) = A070162 (n + 1)

end A070162

/-!
# A070163: Primes arising in A070162.

The programs for A070163, the canonical program `A070163.P4710213129982356040` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070163 has offset 1).

The definition of A070163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070162, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070163.P4710213129982356040

`A051953(A070162(n+1))-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070163

/-- `A051953(A070162(n+1))-1` -/
def P4710213129982356040.Spec : Prop :=
  ∀ n, P4710213129982356040.a n = A070163 (n + 1)

theorem P4710213129982356040.correct : P4710213129982356040.Spec := by
  intro n
  simp only [A070163, Nat.add_sub_cancel]

end A070163

/-! ## A070163.P16977619286068916584

`p?[n-A000010(n+1)]`
-/

namespace A070163.P16977619286068916584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P16977619286068916584

namespace A070163

/-- `p?[n-A000010(n+1)]` -/
def P16977619286068916584.Spec : Prop :=
  ∀ n, P16977619286068916584.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P270391070404139945

`p?[A290599(n+1)]`
-/

namespace A070163.P270391070404139945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P270391070404139945

namespace A070163

/-- `p?[A290599(n+1)]` -/
def P270391070404139945.Spec : Prop :=
  ∀ n, P270391070404139945.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P17903961968219366097

`filter[A290599(n+1), A010051(#)]`
-/

namespace A070163.P17903961968219366097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070163.P17903961968219366097

namespace A070163

/-- `filter[A290599(n+1), A010051(#)]` -/
def P17903961968219366097.Spec : Prop :=
  ∀ n, P17903961968219366097.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P5730622517965415533

`filter[A290599(n+2), A080339(#)]`
-/

namespace A070163.P5730622517965415533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A070163.P5730622517965415533

namespace A070163

/-- `filter[A290599(n+2), A080339(#)]` -/
def P5730622517965415533.Spec : Prop :=
  ∀ n, P5730622517965415533.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P3731866406481774726

`p?[A016035(n+1)]`
-/

namespace A070163.P3731866406481774726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P3731866406481774726

namespace A070163

/-- `p?[A016035(n+1)]` -/
def P3731866406481774726.Spec : Prop :=
  ∀ n, P3731866406481774726.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P13367874113534605269

`p?[A219428(n+1)]`
-/

namespace A070163.P13367874113534605269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P13367874113534605269

namespace A070163

/-- `p?[A219428(n+1)]` -/
def P13367874113534605269.Spec : Prop :=
  ∀ n, P13367874113534605269.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P4405158863108619899

`p?[A062830(n)-2]`
-/

namespace A070163.P4405158863108619899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P4405158863108619899

namespace A070163

/-- `p?[A062830(n)-2]` -/
def P4405158863108619899.Spec : Prop :=
  ∀ n, P4405158863108619899.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P14661082001830551418

`p?[Δ[A185670(n+1)]]`
-/

namespace A070163.P14661082001830551418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P14661082001830551418

namespace A070163

/-- `p?[Δ[A185670(n+1)]]` -/
def P14661082001830551418.Spec : Prop :=
  ∀ n, P14661082001830551418.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P10339906003421142484

`p?[A051953(n+1)-1]`
-/

namespace A070163.P10339906003421142484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P10339906003421142484

namespace A070163

/-- `p?[A051953(n+1)-1]` -/
def P10339906003421142484.Spec : Prop :=
  ∀ n, P10339906003421142484.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P7501780652865275771

`p?[n-A109606(n+2)]`
-/

namespace A070163.P7501780652865275771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P7501780652865275771

namespace A070163

/-- `p?[n-A109606(n+2)]` -/
def P7501780652865275771.Spec : Prop :=
  ∀ n, P7501780652865275771.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P9123572860371775882

`p?[n-∑[A057000(n+1)]]`
-/

namespace A070163.P9123572860371775882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P9123572860371775882

namespace A070163

/-- `p?[n-∑[A057000(n+1)]]` -/
def P9123572860371775882.Spec : Prop :=
  ∀ n, P9123572860371775882.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P11142809787153219776

`p?[n-Δ[A015613(n+1)]]`
-/

namespace A070163.P11142809787153219776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P11142809787153219776

namespace A070163

/-- `p?[n-Δ[A015613(n+1)]]` -/
def P11142809787153219776.Spec : Prop :=
  ∀ n, P11142809787153219776.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P7318279808402860504

`p?[n-A349137(2*n+1)]`
-/

namespace A070163.P7318279808402860504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P7318279808402860504

namespace A070163

/-- `p?[n-A349137(2*n+1)]` -/
def P7318279808402860504.Spec : Prop :=
  ∀ n, P7318279808402860504.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P16406077071591815677

`A016035(A070162(n+1))`
-/

namespace A070163.P16406077071591815677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A070162 (n + 1)).toNat

end

end A070163.P16406077071591815677

namespace A070163

/-- `A016035(A070162(n+1))` -/
def P16406077071591815677.Spec : Prop :=
  ∀ n, P16406077071591815677.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P3953028589222931446

`p?[n-A004442(A039649(n+1))]`
-/

namespace A070163.P3953028589222931446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004442 (A039649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P3953028589222931446

namespace A070163

/-- `p?[n-A004442(A039649(n+1))]` -/
def P3953028589222931446.Spec : Prop :=
  ∀ n, P3953028589222931446.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P13374010724607720390

`p?[A018252(n+1)-A039649(A018252(n+1))]`
-/

namespace A070163.P13374010724607720390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A039649 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P13374010724607720390

namespace A070163

/-- `p?[A018252(n+1)-A039649(A018252(n+1))]` -/
def P13374010724607720390.Spec : Prop :=
  ∀ n, P13374010724607720390.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P14261757278697845277

`p?[A319700(2*(n+1))-1]`
-/

namespace A070163.P14261757278697845277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P14261757278697845277

namespace A070163

/-- `p?[A319700(2*(n+1))-1]` -/
def P14261757278697845277.Spec : Prop :=
  ∀ n, P14261757278697845277.a n = A070163 (n + 1)

end A070163

/-! ## A070163.P16535877455021179717

`p?[n-A067541(2*n+1)]`
-/

namespace A070163.P16535877455021179717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A067541 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P16535877455021179717

namespace A070163

/-- `p?[n-A067541(2*n+1)]` -/
def P16535877455021179717.Spec : Prop :=
  ∀ n, P16535877455021179717.a n = A070163 (n + 1)

end A070163

/-!
# A070164: Least number m such that cototient(m) - 1 = prime(n).

The programs for A070164, there is no canonical definition to state claims against.
-/

/-! ## A070164.P13852875619308428603

`A063507(A008864(n+1))`
-/

namespace A070164.P13852875619308428603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A008864 (n + 1)).toNat

end

end A070164.P13852875619308428603

/-! ## A070164.P5798243413139257904

`A063507(A028815(n+1))`
-/

namespace A070164.P5798243413139257904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A028815 (n + 1)).toNat

end

end A070164.P5798243413139257904

/-! ## A070164.P12470306320679962490

`A063507(A299763(n+2))`
-/

namespace A070164.P12470306320679962490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A299763 (n + 2)).toNat

end

end A070164.P12470306320679962490

/-! ## A070164.P15131975409772208216

`A063507(Δ[A007504(n)]+1)`
-/

namespace A070164.P15131975409772208216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (n + 1) - f1 n + 1).toNat

end

end A070164.P15131975409772208216

/-! ## A070164.P11018392393603849998

`A063507(record[A051698(n)+1])`
-/

namespace A070164.P11018392393603849998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070164.P11018392393603849998

/-! ## A070164.P5566748128496998710

`A063507(record[A162753(n)+1])`
-/

namespace A070164.P5566748128496998710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070164.P5566748128496998710

/-! ## A070164.P16322924241940995362

`A063507(A000040(n+1)+1)`
-/

namespace A070164.P16322924241940995362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A000040 (n + 1) + 1).toNat

end

end A070164.P16322924241940995362

/-! ## A070164.P6726694453830416481

`A063507(A006093(n+1)+2)`
-/

namespace A070164.P6726694453830416481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A006093 (n + 1) + 2).toNat

end

end A070164.P6726694453830416481

/-! ## A070164.P16963014387544676519

`A063507(A008578(n+2)+1)`
-/

namespace A070164.P16963014387544676519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A008578 (n + 2) + 1).toNat

end

end A070164.P16963014387544676519

/-! ## A070164.P16343758681091649498

`A063507(A182986(n+2)+1)`
-/

namespace A070164.P16343758681091649498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A182986 (n + 2) + 1).toNat

end

end A070164.P16343758681091649498

/-! ## A070164.P1912495223255851559

`A063507(record[A000010(n+1)+2])`
-/

namespace A070164.P1912495223255851559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070164.P1912495223255851559

/-!
# A070165: Irregular triangle read by rows giving trajectory of n in Collatz problem.

The programs for A070165, there is no canonical definition to state claims against.
-/

/-! ## A070165.P2844632131788017589

`A235795(n+4)`
-/

namespace A070165.P2844632131788017589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (n + 4)

end

end A070165.P2844632131788017589

/-! ## A070165.P6828738733400532335

`Δ[A347653(n+3)]`
-/

namespace A070165.P6828738733400532335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070165.P6828738733400532335

/-! ## A070165.P3731700668271312750

`A347653(n+4)-A347653(n+3)`
-/

namespace A070165.P3731700668271312750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347653 (n + 4) - A347653 (n + 3)

end

end A070165.P3731700668271312750

/-! ## A070165.P285383893681004360

`A245943(n+4)-2`
-/

namespace A070165.P285383893681004360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245943 (n + 4) - 2

end

end A070165.P285383893681004360

/-! ## A070165.P974745035907669834

`A023444(A245943(n+4))`
-/

namespace A070165.P974745035907669834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A245943 (n + 4)).toNat

end

end A070165.P974745035907669834

/-! ## A070165.P13064236087520680739

`A289207(A245943(n+4))%A001513(n)`
-/

namespace A070165.P13064236087520680739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289207 (A245943 (n + 4)).toNat) (A001513 n)

end

end A070165.P13064236087520680739

/-! ## A070165.P4933500410848425731

`or(A000007(n), A289207(A245943(n+4)))`
-/

namespace A070165.P4933500410848425731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A289207 (A245943 (n + 4)).toNat)

end

end A070165.P4933500410848425731

/-! ## A070165.P349866147420937168

`A289207(A245943(n+4)%A331087(n+1))`
-/

namespace A070165.P349866147420937168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.tmod (A245943 (n + 4)) (A331087 (n + 1))).toNat

end

end A070165.P349866147420937168

/-! ## A070165.P8958274188956028490

`A000010(C(2, n)!)*A289207(A245943(n+4))`
-/

namespace A070165.P8958274188956028490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A289207 (A245943 (n + 4)).toNat

end

end A070165.P8958274188956028490

/-! ## A070165.P17988412337011827733

`A000045(C(2, n+2))!*A289207(A245943(n+4))`
-/

namespace A070165.P17988412337011827733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (Nat.choose 2 (n + 2))).toNat : ℤ) * A289207 (A245943 (n + 4)).toNat

end

end A070165.P17988412337011827733

/-!
# A070166: Irregular triangle read by rows giving T(n,k) = number of rooted graphs on n + 1 nodes with k edges (n >= 0, 0 <= k <= n(n+1)/2).

The programs for A070166, there is no canonical definition to state claims against.
-/

/-! ## A070166.P14706104024911871659

`A136625(3*A008302(n+1))`
-/

namespace A070166.P14706104024911871659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136625 (3 * A008302 (n + 1)).toNat

end

end A070166.P14706104024911871659

/-! ## A070166.P8112866786702335686

`A288738(3^A008302(n+1))`
-/

namespace A070166.P8112866786702335686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288738 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A008302 (n + 1) : ℤ))).toNat

end

end A070166.P8112866786702335686

/-! ## A070166.P4871183431306155949

`A043276(∏{d}[A084546(n+1), #])`
-/

namespace A070166.P4871183431306155949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A070166.P4871183431306155949

/-! ## A070166.P373207763198758659

`A000005(A181796(A008302(n+1)!))`
-/

namespace A070166.P373207763198758659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181796 (Nat.factorial (A008302 (n + 1)).toNat)).toNat

end

end A070166.P373207763198758659

/-! ## A070166.P17511493218543643191

`A152968(A008302(n+1)%A189686(n+1))`
-/

namespace A070166.P17511493218543643191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152968 (Int.tmod (A008302 (n + 1)) (A189686 (n + 1))).toNat

end

end A070166.P17511493218543643191

/-!
# A070167: a(n) is the smallest starting value that produces a Collatz sequence in which n occurs.

The programs for A070167, there is no canonical definition to state claims against.
-/

/-! ## A070167.P4387042771424603783

`A299962(∪[A299945(2*(n+1)), A000124(n)])`
-/

namespace A070167.P4387042771424603783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299945 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299962 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A070167.P4387042771424603783

/-!
# A070168: Irregular triangle of Terras-modified Collatz problem.

The programs for A070168, there is no canonical definition to state claims against.
-/

/-! ## A070168.P10678247872019346721

`A070165(eq[A016389(n), A270034(n+1)])`
-/

namespace A070168.P10678247872019346721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070168.P10678247872019346721

/-! ## A070168.P7394168790763668522

`A070165(lt[A271269(n+1), A115195(3*n)])`
-/

namespace A070168.P7394168790763668522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115195 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A070168.P7394168790763668522

/-! ## A070168.P6933992691758979161

`A070165(record[∑[A321765(3*n+1)]])`
-/

namespace A070168.P6933992691758979161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070168.P6933992691758979161

/-! ## A070168.P10251571974235716342

`A070165(lt[A265602(3*n+4), A112206(2*n)])`
-/

namespace A070168.P10251571974235716342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265602 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112206 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A070168.P10251571974235716342

/-!
# A070169: Rounded total surface area of a regular tetrahedron with edge length n.

The programs for A070169, the canonical program `A070169.P12326242139371247653` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070169 has offset 0).

The definition of A070169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070169.P12326242139371247653

`round(n²*sqrt(3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070169

/-- `round(n²*sqrt(3))` -/
def P12326242139371247653.Spec : Prop :=
  ∀ n, P12326242139371247653.a n = A070169 n

theorem P12326242139371247653.correct : P12326242139371247653.Spec := by
  intro n
  simp only [A070169]

end A070169

/-! ## A070169.P10109902346742350685

`round(sqrt(A219056(n)+1))*A057427(n)`
-/

namespace A070169.P10109902346742350685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A219056 n + 1 : ℝ)) * A057427 n

end

end A070169.P10109902346742350685

namespace A070169

/-- `round(sqrt(A219056(n)+1))*A057427(n)` -/
def P10109902346742350685.Spec : Prop :=
  ∀ n, P10109902346742350685.a n = A070169 n

end A070169

/-! ## A070169.P8566301643601989995

`ceil((A293410(2*n)-2)/4)`
-/

namespace A070169.P8566301643601989995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293410 (2 * n) - 2 : ℚ) / 4⌉

end

end A070169.P8566301643601989995

namespace A070169

/-- `ceil((A293410(2*n)-2)/4)` -/
def P8566301643601989995.Spec : Prop :=
  ∀ n, P8566301643601989995.a n = A070169 n

end A070169

/-! ## A070169.P10381753062827418510

`floor((floor(A171972(2*n)/2)+1)/2)`
-/

namespace A070169.P10381753062827418510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A171972 (2 * n) : ℚ) / 2⌋ + 1 : ℚ) / 2⌋

end

end A070169.P10381753062827418510

namespace A070169

/-- `floor((floor(A171972(2*n)/2)+1)/2)` -/
def P10381753062827418510.Spec : Prop :=
  ∀ n, P10381753062827418510.a n = A070169 n

end A070169

/-! ## A070169.P15125154774273098522

`ceil((A293410(A004277(n))/2-1)/2)`
-/

namespace A070169.P15125154774273098522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A293410 (A004277 n).toNat : ℚ) / 2 - 1) / 2⌉

end

end A070169.P15125154774273098522

namespace A070169

/-- `ceil((A293410(A004277(n))/2-1)/2)` -/
def P15125154774273098522.Spec : Prop :=
  ∀ n, P15125154774273098522.a n = A070169 n

end A070169

/-! ## A070169.P12260546207212804987

`A022847(n²)`
-/

namespace A070169.P12260546207212804987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (n ^ 2)

end

end A070169.P12260546207212804987

namespace A070169

/-- `A022847(n²)` -/
def P12260546207212804987.Spec : Prop :=
  ∀ n, P12260546207212804987.a n = A070169 n

theorem P12260546207212804987.correct : P12260546207212804987.Spec := by
  intro n
  simp only [A070169, Nat.add_sub_cancel, A070169.P12260546207212804987.a, A070169.P12326242139371247653.a, A022847, A022847.P11285214133989731691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A070169

/-! ## A070169.P12727332731160067482

`floor(A198269(n²)/2)`
-/

namespace A070169.P12727332731160067482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198269 (n ^ 2) : ℚ) / 2⌋

end

end A070169.P12727332731160067482

namespace A070169

/-- `floor(A198269(n²)/2)` -/
def P12727332731160067482.Spec : Prop :=
  ∀ n, P12727332731160067482.a n = A070169 n

end A070169

/-! ## A070169.P3719014870893093589

`record[A022847(A123596(n))]`
-/

namespace A070169.P3719014870893093589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070169.P3719014870893093589

namespace A070169

/-- `record[A022847(A123596(n))]` -/
def P3719014870893093589.Spec : Prop :=
  ∀ n, P3719014870893093589.a n = A070169 n

end A070169

/-! ## A070169.P13133663490095816260

`record[A022847(A004788(n)^2)]`
-/

namespace A070169.P13133663490095816260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A004788 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070169.P13133663490095816260

namespace A070169

/-- `record[A022847(A004788(n)^2)]` -/
def P13133663490095816260.Spec : Prop :=
  ∀ n, P13133663490095816260.a n = A070169 n

end A070169

/-! ## A070169.P18085476787981243052

`record[A022847(A081134(n+1)^2)]`
-/

namespace A070169.P18085476787981243052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A081134 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070169.P18085476787981243052

namespace A070169

/-- `record[A022847(A081134(n+1)^2)]` -/
def P18085476787981243052.Spec : Prop :=
  ∀ n, P18085476787981243052.a n = A070169 n

end A070169

/-! ## A070169.P14971957049579224333

`A022847(n*n)%A000041(n+9)`
-/

namespace A070169.P14971957049579224333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022847 (n * n)) (A000041 (n + 9))

end

end A070169.P14971957049579224333

namespace A070169

/-- `A022847(n*n)%A000041(n+9)` -/
def P14971957049579224333.Spec : Prop :=
  ∀ n, P14971957049579224333.a n = A070169 n

end A070169

/-! ## A070169.P7545335623011481042

`A022847(A000290(n))%∑[∑[n+1]]`
-/

namespace A070169.P7545335623011481042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022847 (A000290 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A070169.P7545335623011481042

namespace A070169

/-- `A022847(A000290(n))%∑[∑[n+1]]` -/
def P7545335623011481042.Spec : Prop :=
  ∀ n, P7545335623011481042.a n = A070169 n

end A070169

/-! ## A070169.P2879853535376500612

`A102683(A073790(n))+A022847(n*n)`
-/

namespace A070169.P2879853535376500612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A073790 n).toNat + A022847 (n * n)

end

end A070169.P2879853535376500612

namespace A070169

/-- `A102683(A073790(n))+A022847(n*n)` -/
def P2879853535376500612.Spec : Prop :=
  ∀ n, P2879853535376500612.a n = A070169 n

end A070169

/-! ## A070169.P3187187875856963281

`A064722(A014963(n+1))+A022847(n*n)`
-/

namespace A070169.P3187187875856963281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A014963 (n + 1)).toNat + A022847 (n * n)

end

end A070169.P3187187875856963281

namespace A070169

/-- `A064722(A014963(n+1))+A022847(n*n)` -/
def P3187187875856963281.Spec : Prop :=
  ∀ n, P3187187875856963281.a n = A070169 n

end A070169

/-!
# A070170: Numbers k such that sigma(k-phi(k)) = phi(k).

The programs for A070170, there is no canonical definition to state claims against.
-/

/-! ## A070170.P17066002072523186749

`A155085(A068366(n+1))`
-/

namespace A070170.P17066002072523186749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A068366 (n + 1)).toNat

end

end A070170.P17066002072523186749

/-! ## A070170.P2543441126827637588

`∑{d}[A068366(n+1), A121048(#)]`
-/

namespace A070170.P2543441126827637588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A121048 d

end

end A070170.P2543441126827637588

/-!
# A070173: Numbers k such that k! and 2^k+1 are relatively prime.

The programs for A070173, there is no canonical definition to state claims against.
-/

/-! ## A070173.P6243366186168005775

`record[(n+1)%A002586(n+1)]`
-/

namespace A070173.P6243366186168005775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002586 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070173.P6243366186168005775

/-! ## A070173.P691706888417294691

`lt[A000027(n+1), A002586(n+1)]+1`
-/

namespace A070173.P691706888417294691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070173.P691706888417294691

/-! ## A070173.P14012625307997964533

`lt[A028310(n)+1, A002586(n+1)]+1`
-/

namespace A070173.P14012625307997964533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070173.P14012625307997964533

/-! ## A070173.P10068251130995727340

`∑[gcd(8, A335823(3*(n+1)))]`
-/

namespace A070173.P10068251130995727340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A335823 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070173.P10068251130995727340

/-! ## A070173.P13253176980348533073

`lt[n+1, A260218(2*(n+1))]+1`
-/

namespace A070173.P13253176980348533073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070173.P13253176980348533073

/-!
# A070174: Primes p such that (p^2)! and 2^(p^2)-1 are not relatively prime.

The programs for A070174, there is no canonical definition to state claims against.
-/

/-! ## A070174.P13538893052075822574

`p?[∑[A277314(A240364(n+1))]]`
-/

namespace A070174.P13538893052075822574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A240364 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070174.P13538893052075822574

/-!
# A070175: The smallest representative of each (bigomega(n),omega(n)) pair.

The programs for A070175, there is no canonical definition to state claims against.
-/

/-! ## A070175.P7514808617642660745

`A025487(eq[1, A249773(n+1)]+1)`
-/

namespace A070175.P7514808617642660745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070175.P7514808617642660745

/-! ## A070175.P6620108423421458986

`record[A025487(n+1)/A249773(n+1)]`
-/

namespace A070175.P6620108423421458986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (A249773 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070175.P6620108423421458986

/-! ## A070175.P13226244679168655340

`record[A025487(n+1)/A060826(n+1)!]`
-/

namespace A070175.P13226244679168655340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / (Nat.factorial (A060826 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070175.P13226244679168655340

/-! ## A070175.P13797463739858895163

`record[A329899(n+1)/A249773(n+1)]`
-/

namespace A070175.P13797463739858895163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329899 (n + 1) : ℚ) / (A249773 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070175.P13797463739858895163

/-! ## A070175.P16312919523027653751

`record[A051466(n+2)/A249773(n+2)]`
-/

namespace A070175.P16312919523027653751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051466 (n + 2) : ℚ) / (A249773 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070175.P16312919523027653751

/-! ## A070175.P15907402313335770413

`filter[A025487(n+1), A353627(#)]`
-/

namespace A070175.P15907402313335770413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A070175.P15907402313335770413

/-! ## A070175.P698958080818726684

`filter[A055932(n+1), A353627(#)]`
-/

namespace A070175.P698958080818726684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A070175.P698958080818726684

/-! ## A070175.P14057582605286955931

`filter[A385722(n+1), A353627(#)]`
-/

namespace A070175.P14057582605286955931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A070175.P14057582605286955931

/-! ## A070175.P11677020899241412918

`filter[A385722(n+1), A353628(#)]`
-/

namespace A070175.P11677020899241412918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A070175.P11677020899241412918

/-!
# A070176: Let s(n) be smallest number >= n which is a sum of two squares (A001481); sequence gives s(n) - n.

The programs for A070176, the canonical program `A070176.P12484260426223726726` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070176 has offset 0).

The definition of A070176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070176.P12484260426223726726

`A166687(∑[char[A166687(n+1)]]+1)-(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070176

/-- `A166687(∑[char[A166687(n+1)]]+1)-(n+1)` -/
def P12484260426223726726.Spec : Prop :=
  ∀ n, P12484260426223726726.a n = A070176 n

theorem P12484260426223726726.correct : P12484260426223726726.Spec := by
  intro n
  simp only [A070176]

end A070176

/-! ## A070176.P8475956069417435414

`A000034(A003293(n))*A038189(n)`
-/

namespace A070176.P8475956069417435414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003293 n).toNat * A038189 n

end

end A070176.P8475956069417435414

namespace A070176

/-- `A000034(A003293(n))*A038189(n)` -/
def P8475956069417435414.Spec : Prop :=
  ∀ n, P8475956069417435414.a n = A070176 n

end A070176

/-! ## A070176.P10178166684577373697

`A006466(A325545(n))*A038189(n)`
-/

namespace A070176.P10178166684577373697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A325545 n).toNat * A038189 n

end

end A070176.P10178166684577373697

namespace A070176

/-- `A006466(A325545(n))*A038189(n)` -/
def P10178166684577373697.Spec : Prop :=
  ∀ n, P10178166684577373697.a n = A070176 n

end A070176

/-! ## A070176.P11566775003470877680

`A038189(n)*A237593(A296993(n+1))`
-/

namespace A070176.P11566775003470877680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n * A237593 (A296993 (n + 1)).toNat

end

end A070176.P11566775003470877680

namespace A070176

/-- `A038189(n)*A237593(A296993(n+1))` -/
def P11566775003470877680.Spec : Prop :=
  ∀ n, P11566775003470877680.a n = A070176 n

end A070176

/-! ## A070176.P9633798782624892675

`A347550(gcd(A104794(n), A333364(n+1)))`
-/

namespace A070176.P9633798782624892675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (Int.gcd (A104794 n) (A333364 (n + 1)))

end

end A070176.P9633798782624892675

namespace A070176

/-- `A347550(gcd(A104794(n), A333364(n+1)))` -/
def P9633798782624892675.Spec : Prop :=
  ∀ n, P9633798782624892675.a n = A070176 n

end A070176

/-!
# A070179: Primes p such that x^2 = 2 has a solution mod p, but x^(2^2) = 2 has no solution mod p.

The programs for A070179, there is no canonical definition to state claims against.
-/

/-! ## A070179.P13329140979450308229

`p?[A293394(n+1)]`
-/

namespace A070179.P13329140979450308229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070179.P13329140979450308229

/-! ## A070179.P6685649043755469032

`p?[record[A293394(A100727(n))]]`
-/

namespace A070179.P6685649043755469032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070179.P6685649043755469032

/-! ## A070179.P57866836110377225

`p?[record[A293394(A293428(n))]]`
-/

namespace A070179.P57866836110377225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070179.P57866836110377225

/-! ## A070179.P17436176553924147888

`p?[or(1, A293394(A028310(n)))]`
-/

namespace A070179.P17436176553924147888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293394 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070179.P17436176553924147888

/-! ## A070179.P9471164376204695879

`∩[A001132(n+1), A293394(n+1)]`
-/

namespace A070179.P9471164376204695879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P9471164376204695879

/-! ## A070179.P9213246349523795969

`∩[A002144(n+1), A293394(n+1)]`
-/

namespace A070179.P9213246349523795969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P9213246349523795969

/-! ## A070179.P1869962733195583252

`∩[A002313(n+1), A293394(n+1)]`
-/

namespace A070179.P1869962733195583252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P1869962733195583252

/-! ## A070179.P9954547784676704463

`∩[A007519(n+1), A293394(n+1)]`
-/

namespace A070179.P9954547784676704463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P9954547784676704463

/-! ## A070179.P9676908438709392351

`∩[A033200(n+1), A293394(n+1)]`
-/

namespace A070179.P9676908438709392351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P9676908438709392351

/-! ## A070179.P3680052467179603394

`∩[A033203(n+1), A293394(n+1)]`
-/

namespace A070179.P3680052467179603394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P3680052467179603394

/-! ## A070179.P1493032481129675202

`∩[A038873(n+1), A293394(n+1)]`
-/

namespace A070179.P1493032481129675202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P1493032481129675202

/-! ## A070179.P14509839061772017323

`∩[A045390(n+1), A293394(n+1)]`
-/

namespace A070179.P14509839061772017323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P14509839061772017323

/-! ## A070179.P17828466160377965979

`∩[A055025(n+1), A293394(n+1)]`
-/

namespace A070179.P17828466160377965979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P17828466160377965979

/-! ## A070179.P17850883916528339601

`∩[A055673(n+1), A293394(n+1)]`
-/

namespace A070179.P17850883916528339601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P17850883916528339601

/-! ## A070179.P4357215827798847590

`∩[A089200(n+1), A293394(n+1)]`
-/

namespace A070179.P4357215827798847590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P4357215827798847590

/-! ## A070179.P16051292301981430261

`∩[A097958(n+1), A293394(n+1)]`
-/

namespace A070179.P16051292301981430261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P16051292301981430261

/-! ## A070179.P2345501123928634677

`∩[A120960(n+1), A293394(n+1)]`
-/

namespace A070179.P2345501123928634677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P2345501123928634677

/-! ## A070179.P13853646416841369288

`∩[A172280(n+1), A293394(n+1)]`
-/

namespace A070179.P13853646416841369288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P13853646416841369288

/-! ## A070179.P3638799375450440135

`∩[A172480(n+1), A293394(n+1)]`
-/

namespace A070179.P3638799375450440135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P3638799375450440135

/-! ## A070179.P13024415414006694102

`∩[A191218(n+1), A293394(n+1)]`
-/

namespace A070179.P13024415414006694102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070179.P13024415414006694102

/-!
# A070180: Primes p such that x^3 = 2 has a solution mod p, but x^(3^2) = 2 has no solution mod p.

The programs for A070180, there is no canonical definition to state claims against.
-/

/-! ## A070180.P6102094481104417195

`∩[A014752(n+1), A059262(n+1)]`
-/

namespace A070180.P6102094481104417195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070180.P6102094481104417195

/-! ## A070180.P6859833618347960924

`∩[A016108(n+1), A059262(n+1)]`
-/

namespace A070180.P6859833618347960924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070180.P6859833618347960924

/-! ## A070180.P1547987124370086761

`∩[A040028(n+1), A059262(n+1)]`
-/

namespace A070180.P1547987124370086761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070180.P1547987124370086761

/-! ## A070180.P15090715255221142559

`∩[A059262(n+1), A014752(A248182(n))]`
-/

namespace A070180.P15090715255221142559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (A248182 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070180.P15090715255221142559

/-!
# A070182: Primes p such that x^5 = 2 has a solution mod p, but x^(5^2) = 2 has no solution mod p.

The programs for A070182, there is no canonical definition to state claims against.
-/

/-! ## A070182.P15953556785686330128

`∩[A059313(n+1), A059858(n+1)]`
-/

namespace A070182.P15953556785686330128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070182.P15953556785686330128

/-!
# A070184: Primes p such that x^8 = 2 has a solution mod p, but x^(8^2) = 2 has no solution mod p.

The programs for A070184, there is no canonical definition to state claims against.
-/

/-! ## A070184.P1241001763351585687

`A252279((n+3)^A339387(n+1))`
-/

namespace A070184.P1241001763351585687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252279 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (A339387 (n + 1) : ℤ))).toNat

end

end A070184.P1241001763351585687

/-!
# A070186: Primes p such that x^10 = 2 has a solution mod p, but x^(10^2) = 2 has no solution mod p.

The programs for A070186, there is no canonical definition to state claims against.
-/

/-! ## A070186.P1468281076075747666

`A219602(2*A304412(n+1))`
-/

namespace A070186.P1468281076075747666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219602 (2 * A304412 (n + 1)).toNat

end

end A070186.P1468281076075747666

/-!
# A070188: Primes p such that x^12 = 2 has a solution mod p, but x^(12^2) = 2 has no solution mod p.

The programs for A070188, there is no canonical definition to state claims against.
-/

/-! ## A070188.P5227899463138370954

`∑{p}[A059331(n+1)², #]`
-/

namespace A070188.P5227899463138370954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059331 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A070188.P5227899463138370954

/-!
# A070189: a(n) = 12345679*n.

The programs for A070189, there is no canonical definition to state claims against.
-/

/-! ## A070189.P2663618718858633929

`n*A178069(A000010(gcd(n, n+1)))`
-/

namespace A070189.P2663618718858633929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178069 (A000010 (Nat.gcd n (n + 1))).toNat

end

end A070189.P2663618718858633929

/-!
# A070190: Expansion of e.g.f. I_0(2*x)^5 + 2*Sum_{k>=1} I_k(2*x)^5, where I_n(z) are modified Bessel functions of order n.

The programs for A070190, there is no canonical definition to state claims against.
-/

/-! ## A070190.P15557798770603212760

`A162756(A282278(n+1))%A154643(n)`
-/

namespace A070190.P15557798770603212760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162756 (A282278 (n + 1)).toNat) (A154643 n)

end

end A070190.P15557798770603212760

/-!
# A070191: Numbers k such that gcd(3*k, 8^k+1) = 3.

The programs for A070191, the canonical program `A070191.P17002932225715111264` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070191 has offset 1).

The definition of A070191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070191.P17002932225715111264

`eq[9, A087968(or(1, 3*n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070191

/-- `eq[9, A087968(or(1, 3*n))]` -/
def P17002932225715111264.Spec : Prop :=
  ∀ n, (P17002932225715111264.a n : ℤ) = A070191 (n + 1)

theorem P17002932225715111264.correct : P17002932225715111264.Spec := by
  intro n
  simp only [A070191, Nat.add_sub_cancel]

end A070191

/-! ## A070191.P8727155130427581556

`eq[9, A087968(A008486(n))]`
-/

namespace A070191.P8727155130427581556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087968 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070191.P8727155130427581556

namespace A070191

/-- `eq[9, A087968(A008486(n))]` -/
def P8727155130427581556.Spec : Prop :=
  ∀ n, (P8727155130427581556.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P11761294488412206260

`eq[9, A087968(A250469(n+1))]`
-/

namespace A070191.P11761294488412206260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087968 (A250469 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070191.P11761294488412206260

namespace A070191

/-- `eq[9, A087968(A250469(n+1))]` -/
def P11761294488412206260.Spec : Prop :=
  ∀ n, (P11761294488412206260.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P2255055082038343160

`A008611(eq[9, A087968(n+1)])`
-/

namespace A070191.P2255055082038343160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070191.P2255055082038343160

namespace A070191

/-- `A008611(eq[9, A087968(n+1)])` -/
def P2255055082038343160.Spec : Prop :=
  ∀ n, P2255055082038343160.a n = A070191 (n + 1)

end A070191

/-! ## A070191.P15684530863013787336

`eq[A069226(n), A333599(n)]`
-/

namespace A070191.P15684530863013787336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P15684530863013787336

namespace A070191

/-- `eq[A069226(n), A333599(n)]` -/
def P15684530863013787336.Spec : Prop :=
  ∀ n, (P15684530863013787336.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P14844600372541042843

`record[A000265(n+1)-A008611(A087968(n+1))]`
-/

namespace A070191.P14844600372541042843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A008611 (A087968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070191.P14844600372541042843

namespace A070191

/-- `record[A000265(n+1)-A008611(A087968(n+1))]` -/
def P14844600372541042843.Spec : Prop :=
  ∀ n, P14844600372541042843.a n = A070191 (n + 1)

end A070191

/-! ## A070191.P14410397172964552931

`record[A060819(n+1)-A004442(A087968(n+1))]`
-/

namespace A070191.P14410397172964552931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) - A004442 (A087968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070191.P14410397172964552931

namespace A070191

/-- `record[A060819(n+1)-A004442(A087968(n+1))]` -/
def P14410397172964552931.Spec : Prop :=
  ∀ n, P14410397172964552931.a n = A070191 (n + 1)

end A070191

/-! ## A070191.P16011347730362116717

`record[A300330(n+1)-A004442(A087968(n+1))]`
-/

namespace A070191.P16011347730362116717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (n + 1) - A004442 (A087968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070191.P16011347730362116717

namespace A070191

/-- `record[A300330(n+1)-A004442(A087968(n+1))]` -/
def P16011347730362116717.Spec : Prop :=
  ∀ n, P16011347730362116717.a n = A070191 (n + 1)

end A070191

/-! ## A070191.P11318995330750949164

`eq[A069226(n), A329696(n)]`
-/

namespace A070191.P11318995330750949164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P11318995330750949164

namespace A070191

/-- `eq[A069226(n), A329696(n)]` -/
def P11318995330750949164.Spec : Prop :=
  ∀ n, (P11318995330750949164.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P16294223488008495684

`eq[1, gcd(n, A014113(n))]`
-/

namespace A070191.P16294223488008495684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014113 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P16294223488008495684

namespace A070191

/-- `eq[1, gcd(n, A014113(n))]` -/
def P16294223488008495684.Spec : Prop :=
  ∀ n, (P16294223488008495684.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P6835067616465633286

`eq[1, gcd(n², A092297(n+1))]`
-/

namespace A070191.P6835067616465633286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A092297 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P6835067616465633286

namespace A070191

/-- `eq[1, gcd(n², A092297(n+1))]` -/
def P6835067616465633286.Spec : Prop :=
  ∀ n, (P6835067616465633286.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P10837623173230605253

`record[floor(log2(A069111(2*n+1)))]`
-/

namespace A070191.P10837623173230605253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A069111 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070191.P10837623173230605253

namespace A070191

/-- `record[floor(log2(A069111(2*n+1)))]` -/
def P10837623173230605253.Spec : Prop :=
  ∀ n, (P10837623173230605253.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P9111699460416073599

`eq[A062510(n), A069111(n)]`
-/

namespace A070191.P9111699460416073599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P9111699460416073599

namespace A070191

/-- `eq[A062510(n), A069111(n)]` -/
def P9111699460416073599.Spec : Prop :=
  ∀ n, (P9111699460416073599.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P17828273203228061080

`eq[3, gcd(A008585(n), A083318(n))]`
-/

namespace A070191.P17828273203228061080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008585 n) (A083318 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P17828273203228061080

namespace A070191

/-- `eq[3, gcd(A008585(n), A083318(n))]` -/
def P17828273203228061080.Spec : Prop :=
  ∀ n, (P17828273203228061080.a n : ℤ) = A070191 (n + 1)

end A070191

/-! ## A070191.P14960620955661680526

`eq[2*A069111(n), A092297(n+1)]`
-/

namespace A070191.P14960620955661680526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070191.P14960620955661680526

namespace A070191

/-- `eq[2*A069111(n), A092297(n+1)]` -/
def P14960620955661680526.Spec : Prop :=
  ∀ n, (P14960620955661680526.a n : ℤ) = A070191 (n + 1)

end A070191

/-!
# A070194: List the phi(n) numbers from 1 to n-1 which are relatively prime to n; sequence gives size of maximal gap.

The programs for A070194, there is no canonical definition to state claims against.
-/

/-! ## A070194.P1312984026869887376

`A048669(A181569(n+2))`
-/

namespace A070194.P1312984026869887376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A181569 (n + 2)).toNat

end

end A070194.P1312984026869887376

/-! ## A070194.P8071030683413367158

`A048669(A005451(n+3))`
-/

namespace A070194.P8071030683413367158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A005451 (n + 3)).toNat

end

end A070194.P8071030683413367158

/-! ## A070194.P4825357475615149923

`A048669(A048671(n+3))`
-/

namespace A070194.P4825357475615149923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A048671 (n + 3)).toNat

end

end A070194.P4825357475615149923

/-! ## A070194.P6682748881293222701

`A048669(A144907(n+3))`
-/

namespace A070194.P6682748881293222701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A144907 (n + 3)).toNat

end

end A070194.P6682748881293222701

/-! ## A070194.P6323842014374441503

`A048669(n+3)-A010051(n+3)`
-/

namespace A070194.P6323842014374441503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 3) - A010051 (n + 3)

end

end A070194.P6323842014374441503

/-!
# A070195: Squarefree numbers sandwiched between a pair of twin primes.

The programs for A070195, the canonical program `A070195.P10767127516466230729` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070195 has offset 1).

The definition of A070195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070195.P7998815036181796151

`A061351(n+1)+1`
-/

namespace A070195.P7998815036181796151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 (n + 1) + 1

end

end A070195.P7998815036181796151

namespace A070195

/-- `A061351(n+1)+1` -/
def P7998815036181796151.Spec : Prop :=
  ∀ n, P7998815036181796151.a n = A070195 (n + 1)

end A070195

/-! ## A070195.P10767127516466230729

`record[lcm(2, A066653(n+2))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A070195

/-- `record[lcm(2, A066653(n+2))]` -/
def P10767127516466230729.Spec : Prop :=
  ∀ n, (P10767127516466230729.a n : ℤ) = A070195 (n + 1)

theorem P10767127516466230729.correct : P10767127516466230729.Spec := by
  intro n
  simp only [A070195, Nat.add_sub_cancel]

end A070195

/-! ## A070195.P11431307672980969249

`record[A078579(n+2)]`
-/

namespace A070195.P11431307672980969249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070195.P11431307672980969249

namespace A070195

/-- `record[A078579(n+2)]` -/
def P11431307672980969249.Spec : Prop :=
  ∀ n, P11431307672980969249.a n = A070195 (n + 1)

end A070195

/-! ## A070195.P17203459193479813998

`record[∏{p}[A014574(n+2), #]]`
-/

namespace A070195.P17203459193479813998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070195.P17203459193479813998

namespace A070195

/-- `record[∏{p}[A014574(n+2), #]]` -/
def P17203459193479813998.Spec : Prop :=
  ∀ n, (P17203459193479813998.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P7874486426305608800

`p?[A039787(n+1)-2]+1`
-/

namespace A070195.P7874486426305608800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A070195.P7874486426305608800

namespace A070195

/-- `p?[A039787(n+1)-2]+1` -/
def P7874486426305608800.Spec : Prop :=
  ∀ n, P7874486426305608800.a n = A070195 (n + 1)

end A070195

/-! ## A070195.P12955639148949635041

`record[∏{p}[A054735(n+2), #]]`
-/

namespace A070195.P12955639148949635041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070195.P12955639148949635041

namespace A070195

/-- `record[∏{p}[A054735(n+2), #]]` -/
def P12955639148949635041.Spec : Prop :=
  ∀ n, (P12955639148949635041.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P3210388233896785062

`p?[A077067(n+1)+1]-1`
-/

namespace A070195.P3210388233896785062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070195.P3210388233896785062

namespace A070195

/-- `p?[A077067(n+1)+1]-1` -/
def P3210388233896785062.Spec : Prop :=
  ∀ n, P3210388233896785062.a n = A070195 (n + 1)

end A070195

/-! ## A070195.P2360479981789217205

`p?[A049097(n+1)+2]-1`
-/

namespace A070195.P2360479981789217205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070195.P2360479981789217205

namespace A070195

/-- `p?[A049097(n+1)+2]-1` -/
def P2360479981789217205.Spec : Prop :=
  ∀ n, P2360479981789217205.a n = A070195 (n + 1)

end A070195

/-! ## A070195.P13156177388385227132

`∩[A014574(n+1), A063015(n+1)]`
-/

namespace A070195.P13156177388385227132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P13156177388385227132

namespace A070195

/-- `∩[A014574(n+1), A063015(n+1)]` -/
def P13156177388385227132.Spec : Prop :=
  ∀ n, (P13156177388385227132.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P9565591776480068834

`∩[A014574(n+1), A077067(n+1)]`
-/

namespace A070195.P9565591776480068834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P9565591776480068834

namespace A070195

/-- `∩[A014574(n+1), A077067(n+1)]` -/
def P9565591776480068834.Spec : Prop :=
  ∀ n, (P9565591776480068834.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P14280472726032374233

`∩[A056853(n+1), A063015(n+1)]`
-/

namespace A070195.P14280472726032374233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P14280472726032374233

namespace A070195

/-- `∩[A056853(n+1), A063015(n+1)]` -/
def P14280472726032374233.Spec : Prop :=
  ∀ n, (P14280472726032374233.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P17310428354705636811

`∩[A056853(n+1), A077067(n+1)]`
-/

namespace A070195.P17310428354705636811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P17310428354705636811

namespace A070195

/-- `∩[A056853(n+1), A077067(n+1)]` -/
def P17310428354705636811.Spec : Prop :=
  ∀ n, (P17310428354705636811.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P1690334162905614134

`∩[A063015(n+1), A072570(n+1)]`
-/

namespace A070195.P1690334162905614134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P1690334162905614134

namespace A070195

/-- `∩[A063015(n+1), A072570(n+1)]` -/
def P1690334162905614134.Spec : Prop :=
  ∀ n, (P1690334162905614134.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P3714669563236042887

`∩[A072570(n+1), A077067(n+1)]`
-/

namespace A070195.P3714669563236042887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P3714669563236042887

namespace A070195

/-- `∩[A072570(n+1), A077067(n+1)]` -/
def P3714669563236042887.Spec : Prop :=
  ∀ n, (P3714669563236042887.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P12294284089222493853

`∩[A063015(n+1), A217259(n+1)]`
-/

namespace A070195.P12294284089222493853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P12294284089222493853

namespace A070195

/-- `∩[A063015(n+1), A217259(n+1)]` -/
def P12294284089222493853.Spec : Prop :=
  ∀ n, (P12294284089222493853.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P17778573526894633931

`∩[A077067(n+1), A217259(n+1)]`
-/

namespace A070195.P17778573526894633931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P17778573526894633931

namespace A070195

/-- `∩[A077067(n+1), A217259(n+1)]` -/
def P17778573526894633931.Spec : Prop :=
  ∀ n, (P17778573526894633931.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P4378876106503304087

`∩[A077067(n+1), A223138(n+1)]`
-/

namespace A070195.P4378876106503304087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070195.P4378876106503304087

namespace A070195

/-- `∩[A077067(n+1), A223138(n+1)]` -/
def P4378876106503304087.Spec : Prop :=
  ∀ n, (P4378876106503304087.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P484385215349309449

`∩[A049097(n+2), A073534(n+2)]+1`
-/

namespace A070195.P484385215349309449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070195.P484385215349309449

namespace A070195

/-- `∩[A049097(n+2), A073534(n+2)]+1` -/
def P484385215349309449.Spec : Prop :=
  ∀ n, (P484385215349309449.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P18393070076112243997

`∩[A049097(n+2), A111166(n+2)]+1`
-/

namespace A070195.P18393070076112243997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070195.P18393070076112243997

namespace A070195

/-- `∩[A049097(n+2), A111166(n+2)]+1` -/
def P18393070076112243997.Spec : Prop :=
  ∀ n, (P18393070076112243997.a n : ℤ) = A070195 (n + 1)

end A070195

/-! ## A070195.P14696965673516654879

`∩[A049097(n+2), A238528(n+2)]+1`
-/

namespace A070195.P14696965673516654879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A070195.P14696965673516654879

namespace A070195

/-- `∩[A049097(n+2), A238528(n+2)]+1` -/
def P14696965673516654879.Spec : Prop :=
  ∀ n, (P14696965673516654879.a n : ℤ) = A070195 (n + 1)

end A070195

/-!
# A070196: a(n) = n plus the sorted version of the base-10 digits of n.

The programs for A070196, there is no canonical definition to state claims against.
-/

/-! ## A070196.P4384319263619941964

`n+A004185(n)`
-/

namespace A070196.P4384319263619941964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A004185 n

end

end A070196.P4384319263619941964

/-! ## A070196.P7723331295058491806

`2*n-A193581(n)`
-/

namespace A070196.P7723331295058491806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A193581 n

end

end A070196.P7723331295058491806

/-! ## A070196.P8640641194852622224

`A004086(A004186(n))+n`
-/

namespace A070196.P8640641194852622224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 n).toNat + (n : ℤ)

end

end A070196.P8640641194852622224

/-! ## A070196.P13875310292907435675

`A004185(n)-A001489(n)`
-/

namespace A070196.P13875310292907435675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n - A001489 n

end

end A070196.P13875310292907435675

/-! ## A070196.P17335209114353560028

`A052008(n)-A108782(n)`
-/

namespace A070196.P17335209114353560028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - A108782 n

end

end A070196.P17335209114353560028

/-! ## A070196.P15667107436738112281

`A004086(A108782(n)+n)+n`
-/

namespace A070196.P15667107436738112281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A108782 n + (n : ℤ)).toNat + (n : ℤ)

end

end A070196.P15667107436738112281

/-! ## A070196.P6712089732960505839

`A052008(n)+n-A004186(n)`
-/

namespace A070196.P6712089732960505839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n + ((n : ℤ) - A004186 n)

end

end A070196.P6712089732960505839

/-! ## A070196.P6138955948841387461

`A004186(n)+n-A151949(n)`
-/

namespace A070196.P6138955948841387461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + ((n : ℤ) - A151949 n)

end

end A070196.P6138955948841387461

/-! ## A070196.P13732676909593190240

`A328447(n-A193581(n))+n`
-/

namespace A070196.P13732676909593190240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 ((n : ℤ) - A193581 n).toNat + (n : ℤ)

end

end A070196.P13732676909593190240

/-! ## A070196.P6306794422210721295

`A004185(n)-(n-A005843(n))`
-/

namespace A070196.P6306794422210721295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n - ((n : ℤ) - A005843 n)

end

end A070196.P6306794422210721295

/-! ## A070196.P4118358942527192700

`A002378(n)-(n²-A004185(n))`
-/

namespace A070196.P4118358942527192700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n ^ 2 : ℤ) - A004185 n)

end

end A070196.P4118358942527192700

/-! ## A070196.P7078925714922557580

`A108782(n)+n-A151949(n)+n`
-/

namespace A070196.P7078925714922557580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + ((n : ℤ) - A151949 n) + (n : ℤ)

end

end A070196.P7078925714922557580

/-! ## A070196.P7613652813234934220

`A108782(n)+n-9*A151950(n)+n`
-/

namespace A070196.P7613652813234934220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + (n : ℤ) - 9 * A151950 n + (n : ℤ)

end

end A070196.P7613652813234934220

/-! ## A070196.P11597424364355956122

`A056964(A108782(n)+n)-A108782(n)`
-/

namespace A070196.P11597424364355956122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A108782 n + (n : ℤ)).toNat - A108782 n

end

end A070196.P11597424364355956122

/-! ## A070196.P4350586165114952578

`A333659(A333659(n))+n-A193581(n)`
-/

namespace A070196.P4350586165114952578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A333659 n).toNat + ((n : ℤ) - A193581 n)

end

end A070196.P4350586165114952578

/-! ## A070196.P12833487355864224464

`n-(A108782(A004186(n))-A004185(n))`
-/

namespace A070196.P12833487355864224464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A108782 (A004186 n).toNat - A004185 n)

end

end A070196.P12833487355864224464

/-! ## A070196.P5398244988819756690

`A004185(n)-(A319650(n)-A073138(n))`
-/

namespace A070196.P5398244988819756690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n - (A319650 n - A073138 n)

end

end A070196.P5398244988819756690

/-! ## A070196.P13302119812522802036

`n-(A005872(A005872(n))-A004185(n))`
-/

namespace A070196.P13302119812522802036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005872 (A005872 n).toNat - A004185 n)

end

end A070196.P13302119812522802036

/-! ## A070196.P18303413666738688468

`n-(A005888(A005888(n))-A004185(n))`
-/

namespace A070196.P18303413666738688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005888 (A005888 n).toNat - A004185 n)

end

end A070196.P18303413666738688468

/-! ## A070196.P15790763226318717101

`n-A001057(2*A004185(n))`
-/

namespace A070196.P15790763226318717101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A004185 n).toNat

end

end A070196.P15790763226318717101

/-!
# A070198: Smallest nonnegative number m such that m == i (mod i+1) for all 1 <= i <= n.

The programs for A070198, the canonical program `A070198.P18115024891889206898` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070198 has offset 0).

The definition of A070198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070198.P18115024891889206898

`A003418(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070198

/-- `A003418(n+1)-1` -/
def P18115024891889206898.Spec : Prop :=
  ∀ n, P18115024891889206898.a n = A070198 n

theorem P18115024891889206898.correct : P18115024891889206898.Spec := by
  intro n
  simp only [A070198]

end A070198

/-! ## A070198.P936988185923482454

`∑[abs(Δ[lcm(n, a(n-1))])]` with `a(0)=1`
-/

namespace A070198.P936988185923482454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.lcm n (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070198.P936988185923482454

namespace A070198

/-- `∑[abs(Δ[lcm(n, a(n-1))])]` -/
def P936988185923482454.Spec : Prop :=
  ∀ n, P936988185923482454.a n = A070198 n

end A070198

/-! ## A070198.P2029662479706829615

`lcm(n+1, a(n-1)+1)-1` with `a(0)=0`
-/

namespace A070198.P2029662479706829615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm (n + 1 : ℤ) (a (n - 1) + 1) : ℤ) - 1

end

end A070198.P2029662479706829615

namespace A070198

/-- `lcm(n+1, a(n-1)+1)-1` -/
def P2029662479706829615.Spec : Prop :=
  ∀ n, P2029662479706829615.a n = A070198 n

end A070198

/-! ## A070198.P17472349227507315359

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-1`
-/

namespace A070198.P17472349227507315359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A070198.P17472349227507315359

namespace A070198

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-1` -/
def P17472349227507315359.Spec : Prop :=
  ∀ n, P17472349227507315359.a n = A070198 n

end A070198

/-! ## A070198.P3881647754242123319

`∑[A119944(n)]`
-/

namespace A070198.P3881647754242123319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070198.P3881647754242123319

namespace A070198

/-- `∑[A119944(n)]` -/
def P3881647754242123319.Spec : Prop :=
  ∀ n, P3881647754242123319.a n = A070198 n

end A070198

/-! ## A070198.P14956153281666536117

`Δ[A173185(n)]-1`
-/

namespace A070198.P14956153281666536117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A070198.P14956153281666536117

namespace A070198

/-- `Δ[A173185(n)]-1` -/
def P14956153281666536117.Spec : Prop :=
  ∀ n, P14956153281666536117.a n = A070198 n

end A070198

/-! ## A070198.P12181865721818293766

`Δ[A236856(n)]-1`
-/

namespace A070198.P12181865721818293766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A070198.P12181865721818293766

namespace A070198

/-- `Δ[A236856(n)]-1` -/
def P12181865721818293766.Spec : Prop :=
  ∀ n, P12181865721818293766.a n = A070198 n

end A070198

/-! ## A070198.P17354835525948840757

`∑[abs(Δ[A003418(n)])]`
-/

namespace A070198.P17354835525948840757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070198.P17354835525948840757

namespace A070198

/-- `∑[abs(Δ[A003418(n)])]` -/
def P17354835525948840757.Spec : Prop :=
  ∀ n, P17354835525948840757.a n = A070198 n

end A070198

/-! ## A070198.P9137061206849656583

`∑[abs(Δ[A075059(n)])]`
-/

namespace A070198.P9137061206849656583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070198.P9137061206849656583

namespace A070198

/-- `∑[abs(Δ[A075059(n)])]` -/
def P9137061206849656583.Spec : Prop :=
  ∀ n, P9137061206849656583.a n = A070198 n

end A070198

/-! ## A070198.P15737983454099196957

`A075059(n+1)-2`
-/

namespace A070198.P15737983454099196957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 1) - 2

end

end A070198.P15737983454099196957

namespace A070198

/-- `A075059(n+1)-2` -/
def P15737983454099196957.Spec : Prop :=
  ∀ n, P15737983454099196957.a n = A070198 n

theorem P15737983454099196957.correct : P15737983454099196957.Spec := by
  intro n
  simp only [A070198, Nat.add_sub_cancel, A070198.P15737983454099196957.a, A070198.P18115024891889206898.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070198

/-! ## A070198.P2587067791988618459

`∏[A014963(n+1)]-1`
-/

namespace A070198.P2587067791988618459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A070198.P2587067791988618459

namespace A070198

/-- `∏[A014963(n+1)]-1` -/
def P2587067791988618459.Spec : Prop :=
  ∀ n, P2587067791988618459.a n = A070198 n

end A070198

/-! ## A070198.P11427923313259934707

`A139550(2*(n+1))-1`
-/

namespace A070198.P11427923313259934707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * (n + 1)) - 1

end

end A070198.P11427923313259934707

namespace A070198

/-- `A139550(2*(n+1))-1` -/
def P11427923313259934707.Spec : Prop :=
  ∀ n, P11427923313259934707.a n = A070198 n

end A070198

/-! ## A070198.P4509726337820587613

`A051426(n+1)/2-1`
-/

namespace A070198.P4509726337820587613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / 2 - 1

end

end A070198.P4509726337820587613

namespace A070198

/-- `A051426(n+1)/2-1` -/
def P4509726337820587613.Spec : Prop :=
  ∀ n, P4509726337820587613.a n = (A070198 n : ℚ)

end A070198

/-! ## A070198.P13753912835360549491

`A065500(n+1)-(n+1)`
-/

namespace A070198.P13753912835360549491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065500 (n + 1) - (n + 1 : ℤ)

end

end A070198.P13753912835360549491

namespace A070198

/-- `A065500(n+1)-(n+1)` -/
def P13753912835360549491.Spec : Prop :=
  ∀ n, P13753912835360549491.a n = A070198 n

end A070198

/-! ## A070198.P11116984784935324762

`A060401(n+1)-(n+2)`
-/

namespace A070198.P11116984784935324762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - (n + 2 : ℤ)

end

end A070198.P11116984784935324762

namespace A070198

/-- `A060401(n+1)-(n+2)` -/
def P11116984784935324762.Spec : Prop :=
  ∀ n, P11116984784935324762.a n = A070198 n

theorem P11116984784935324762.correct : P11116984784935324762.Spec := by
  intro n
  simp only [A070198, Nat.add_sub_cancel, A070198.P11116984784935324762.a, A070198.P18115024891889206898.a, A003418, A003418.P6976248655893080794.a, A060401, A060401.P17035692861748186501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070198

/-! ## A070198.P934731894261084412

`A195507(n+2)-(n+3)`
-/

namespace A070198.P934731894261084412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 2) - (n + 3 : ℤ)

end

end A070198.P934731894261084412

namespace A070198

/-- `A195507(n+2)-(n+3)` -/
def P934731894261084412.Spec : Prop :=
  ∀ n, P934731894261084412.a n = A070198 n

theorem P934731894261084412.correct : P934731894261084412.Spec := by
  intro n
  simp only [A070198, Nat.add_sub_cancel, A070198.P934731894261084412.a, A070198.P18115024891889206898.a, A003418, A003418.P6976248655893080794.a, A195507, A195507.P13812271573965113829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070198

/-! ## A070198.P9783765520349796534

`∑[abs(Δ[∏[A014963(∏{p}[n, #])]])]`
-/

namespace A070198.P9783765520349796534
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f4 n), p)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070198.P9783765520349796534

namespace A070198

/-- `∑[abs(Δ[∏[A014963(∏{p}[n, #])]])]` -/
def P9783765520349796534.Spec : Prop :=
  ∀ n, P9783765520349796534.a n = A070198 n

end A070198

/-! ## A070198.P12339608854431101044

`(n+1)*A002944(n+1)-1`
-/

namespace A070198.P12339608854431101044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002944 (n + 1) - 1

end

end A070198.P12339608854431101044

namespace A070198

/-- `(n+1)*A002944(n+1)-1` -/
def P12339608854431101044.Spec : Prop :=
  ∀ n, P12339608854431101044.a n = A070198 n

end A070198

/-! ## A070198.P10787960437251540935

`A051451(A065515(n+1))-1`
-/

namespace A070198.P10787960437251540935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (n + 1)).toNat - 1

end

end A070198.P10787960437251540935

namespace A070198

/-- `A051451(A065515(n+1))-1` -/
def P10787960437251540935.Spec : Prop :=
  ∀ n, P10787960437251540935.a n = A070198 n

end A070198

/-! ## A070198.P1232145082891916878

`A059794(n+1)+A000225(n)`
-/

namespace A070198.P1232145082891916878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) + A000225 n

end

end A070198.P1232145082891916878

namespace A070198

/-- `A059794(n+1)+A000225(n)` -/
def P1232145082891916878.Spec : Prop :=
  ∀ n, P1232145082891916878.a n = A070198 n

end A070198

/-!
# A070199: Number of palindromes of length <= n.

The programs for A070199, the canonical program `A070199.P1496566458978163531` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070199 has offset 1).

The definition of A070199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070199.P1496566458978163531

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=10, a(1)=19, a(2)=109`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070199

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P1496566458978163531.Spec : Prop :=
  ∀ n, P1496566458978163531.a n = A070199 (n + 1)

theorem P1496566458978163531.correct : P1496566458978163531.Spec := by
  intro n
  simp only [A070199, Nat.add_sub_cancel]

end A070199

/-! ## A070199.P13358621034708429114

`A050250(n+1)+1`
-/

namespace A070199.P13358621034708429114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050250 (n + 1) + 1

end

end A070199.P13358621034708429114

namespace A070199

/-- `A050250(n+1)+1` -/
def P13358621034708429114.Spec : Prop :=
  ∀ n, P13358621034708429114.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P13825943787915342317

`∑[ogf((10+9x-10x^2)/(1-10x^2))]`
-/

namespace A070199.P13825943787915342317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9, -10] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070199.P13825943787915342317

namespace A070199

/-- `∑[ogf((10+9x-10x^2)/(1-10x^2))]` -/
def P13825943787915342317.Spec : Prop :=
  ∀ n, P13825943787915342317.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P11975770260797870360

`ogf((10+9x-10x^2)/(1-x-10x^2+10x^3))`
-/

namespace A070199.P11975770260797870360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9, -10] [1, -1, -10, 10] n

end

end A070199.P11975770260797870360

namespace A070199

/-- `ogf((10+9x-10x^2)/(1-x-10x^2+10x^3))` -/
def P11975770260797870360.Spec : Prop :=
  ∀ n, P11975770260797870360.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P17967659920164441170

`10*a(n-2)+9` with `a(0)=10, a(1)=19`
-/

namespace A070199.P17967659920164441170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 19] fun n a =>
  10 * a (n - 2) + 9

end

end A070199.P17967659920164441170

namespace A070199

/-- `10*a(n-2)+9` -/
def P17967659920164441170.Spec : Prop :=
  ∀ n, (P17967659920164441170.a n : ℤ) = A070199 (n + 1)

end A070199

/-! ## A070199.P6071949957547901554

`∑[10*a(n-2)]` with `a(0)=10, a(1)=9, a(2)=90`
-/

namespace A070199.P6071949957547901554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 9, 90] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070199.P6071949957547901554

namespace A070199

/-- `∑[10*a(n-2)]` -/
def P6071949957547901554.Spec : Prop :=
  ∀ n, (P6071949957547901554.a n : ℤ) = A070199 (n + 1)

end A070199

/-! ## A070199.P15446403681046378371

`∑[9*10^floor(n/2)]+1`
-/

namespace A070199.P15446403681046378371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070199.P15446403681046378371

namespace A070199

/-- `∑[9*10^floor(n/2)]+1` -/
def P15446403681046378371.Spec : Prop :=
  ∀ n, P15446403681046378371.a n = (A070199 (n + 1) : ℚ)

end A070199

/-! ## A070199.P4093832210652866517

`∑[A070252(n+1)]`
-/

namespace A070199.P4093832210652866517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070199.P4093832210652866517

namespace A070199

/-- `∑[A070252(n+1)]` -/
def P4093832210652866517.Spec : Prop :=
  ∀ n, P4093832210652866517.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P10879331133388056108

`Δ[A094622(n)-n]`
-/

namespace A070199.P10879331133388056108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070199.P10879331133388056108

namespace A070199

/-- `Δ[A094622(n)-n]` -/
def P10879331133388056108.Spec : Prop :=
  ∀ n, P10879331133388056108.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P12613303464364423718

`Δ[A094627(n+1)-n]`
-/

namespace A070199.P12613303464364423718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070199.P12613303464364423718

namespace A070199

/-- `Δ[A094627(n+1)-n]` -/
def P12613303464364423718.Spec : Prop :=
  ∀ n, P12613303464364423718.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P18283871766055242943

`record[A069532(n+1)-A051885(n)]`
-/

namespace A070199.P18283871766055242943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069532 (n + 1) - A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070199.P18283871766055242943

namespace A070199

/-- `record[A069532(n+1)-A051885(n)]` -/
def P18283871766055242943.Spec : Prop :=
  ∀ n, P18283871766055242943.a n = A070199 (n + 1)

end A070199

/-! ## A070199.P15251635454324852383

`∑[A240022(n+1)/(n+1)]`
-/

namespace A070199.P15251635454324852383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240022 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070199.P15251635454324852383

namespace A070199

/-- `∑[A240022(n+1)/(n+1)]` -/
def P15251635454324852383.Spec : Prop :=
  ∀ n, P15251635454324852383.a n = (A070199 (n + 1) : ℚ)

end A070199

