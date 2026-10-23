import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B014.C000
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

/-!
# A367700: Number of degree 2 vertices in the n-Menger sponge graph.

The programs for A367700, the canonical program `A367700.P17883411812266083417` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367700 has offset 1).

The definition of A367700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367700.P17883411812266083417

`20*a(n-1)-3/5*8^(n+1)-72/5*3^(n+1)` with `a(0)=12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367700

/-- `20*a(n-1)-3/5*8^(n+1)-72/5*3^(n+1)` -/
def P17883411812266083417.Spec : Prop :=
  ∀ n, P17883411812266083417.a n = (A367700 (n + 1) : ℚ)

end A367700

/-! ## A367700.P3790230827353027226

`1/17*20^(n+1)+2/5*8^(n+1)+216/85*3^(n+1)`
-/

namespace A367700.P3790230827353027226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 17 * (20 ^ (n + 1) : ℚ) + (2 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) + (216 : ℚ) / 85 * (3 ^ (n + 1) : ℚ)

end

end A367700.P3790230827353027226

namespace A367700

/-- `1/17*20^(n+1)+2/5*8^(n+1)+216/85*3^(n+1)` -/
def P3790230827353027226.Spec : Prop :=
  ∀ n, P3790230827353027226.a n = (A367700 (n + 1) : ℚ)

end A367700

/-!
# A367701: Number of degree 3 vertices in the n-Menger sponge graph.

The programs for A367701, the canonical program `A367701.P9799478557419957753` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367701 has offset 1).

The definition of A367701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367701.P9799478557419957753

`20*a(n-1)-9/5*8^(n+1)+144/5*3^(n+1)-152` with `a(0)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367701

/-- `20*a(n-1)-9/5*8^(n+1)+144/5*3^(n+1)-152` -/
def P9799478557419957753.Spec : Prop :=
  ∀ n, P9799478557419957753.a n = (A367701 (n + 1) : ℚ)

end A367701

/-! ## A367701.P12710558181733731651

`24/85*20^(n+1)+6/5*8^(n+1)-432/85*3^(n+1)+8`
-/

namespace A367701.P12710558181733731651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) / 85 * (20 ^ (n + 1) : ℚ) + (6 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) - (432 : ℚ) / 85 * (3 ^ (n + 1) : ℚ) + 8

end

end A367701.P12710558181733731651

namespace A367701

/-- `24/85*20^(n+1)+6/5*8^(n+1)-432/85*3^(n+1)+8` -/
def P12710558181733731651.Spec : Prop :=
  ∀ n, P12710558181733731651.a n = (A367701 (n + 1) : ℚ)

end A367701

/-!
# A367702: Number of degree 4 vertices in the n-Menger sponge graph.

The programs for A367702, the canonical program `A367702.P3996351846515481811` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367702 has offset 1).

The definition of A367702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367702.P3996351846515481811

`20*a(n-1)+6/5*8^(n+1)-216/5*3^(n+1)+456` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367702

/-- `20*a(n-1)+6/5*8^(n+1)-216/5*3^(n+1)+456` -/
def P3996351846515481811.Spec : Prop :=
  ∀ n, P3996351846515481811.a n = (A367702 (n + 1) : ℚ)

end A367702

/-! ## A367702.P3120023792166919668

`32/85*20^(n+1)-4/5*8^(n+1)+648/85*3^(n+1)-24`
-/

namespace A367702.P3120023792166919668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 : ℚ) / 85 * (20 ^ (n + 1) : ℚ) - (4 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) + (648 : ℚ) / 85 * (3 ^ (n + 1) : ℚ) - 24

end

end A367702.P3120023792166919668

namespace A367702

/-- `32/85*20^(n+1)-4/5*8^(n+1)+648/85*3^(n+1)-24` -/
def P3120023792166919668.Spec : Prop :=
  ∀ n, P3120023792166919668.a n = (A367702 (n + 1) : ℚ)

end A367702

/-!
# A367703: a(n) = the maximum number of distinct compositions of a polycube of size n using any combination of polycubes of sizes 1 through n.

The programs for A367703, there is no canonical definition to state claims against.
-/

/-! ## A367703.P12714524339976892158

`A298479(A263402(n+1))`
-/

namespace A367703.P12714524339976892158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A263402 (n + 1)).toNat

end

end A367703.P12714524339976892158

/-! ## A367703.P18357577140864149791

`A077623(A001063(n))+A014138(n)`
-/

namespace A367703.P18357577140864149791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077623 (A001063 n).toNat + A014138 n

end

end A367703.P18357577140864149791

/-! ## A367703.P12919915390671334093

`A280534(A006252(n)*A202089(n+1))`
-/

namespace A367703.P12919915390671334093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280534 (A006252 n * A202089 (n + 1)).toNat

end

end A367703.P12919915390671334093

/-!
# A367705: Coefficients of expansion of (1 + 5*x + 11*x^2 + 5*x^3 + 7*x^4 + x^5)/(1 - x^3)^2 in powers of x.

The programs for A367705, the canonical program `A367705.P12095556615350475222` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367705 has offset 0).

The definition of A367705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367705.P12095556615350475222

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=7, a(4)=17, a(5)=23`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367705

/-- `2*a(n-3)-a(n-6)` -/
def P12095556615350475222.Spec : Prop :=
  ∀ n, P12095556615350475222.a n = A367705 n

theorem P12095556615350475222.correct : P12095556615350475222.Spec := by
  intro n
  simp only [A367705]

end A367705

/-! ## A367705.P6210577558234370359

`3*A006369(n)+A130196(n)`
-/

namespace A367705.P6210577558234370359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006369 n + A130196 n

end

end A367705.P6210577558234370359

namespace A367705

/-- `3*A006369(n)+A130196(n)` -/
def P6210577558234370359.Spec : Prop :=
  ∀ n, P6210577558234370359.a n = A367705 n

end A367705

/-! ## A367705.P12450905485426870655

`A007310(A006369(n)+1)`
-/

namespace A367705.P12450905485426870655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A006369 n + 1).toNat

end

end A367705.P12450905485426870655

namespace A367705

/-- `A007310(A006369(n)+1)` -/
def P12450905485426870655.Spec : Prop :=
  ∀ n, P12450905485426870655.a n = A367705 n

end A367705

/-! ## A367705.P142590320441401403

`A000265(A347838(n+1))`
-/

namespace A367705.P142590320441401403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A347838 (n + 1)).toNat

end

end A367705.P142590320441401403

namespace A367705

/-- `A000265(A347838(n+1))` -/
def P142590320441401403.Spec : Prop :=
  ∀ n, P142590320441401403.a n = A367705 n

end A367705

/-! ## A367705.P10747878704453226989

`gcd(A014795(n), A347838(n+1))`
-/

namespace A367705.P10747878704453226989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014795 n) (A347838 (n + 1))

end

end A367705.P10747878704453226989

namespace A367705

/-- `gcd(A014795(n), A347838(n+1))` -/
def P10747878704453226989.Spec : Prop :=
  ∀ n, (P10747878704453226989.a n : ℤ) = A367705 n

end A367705

/-! ## A367705.P11389076036919948361

`A014682(A342369(n+1)+A342369(n))`
-/

namespace A367705.P11389076036919948361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A342369 (n + 1) + A342369 n).toNat

end

end A367705.P11389076036919948361

namespace A367705

/-- `A014682(A342369(n+1)+A342369(n))` -/
def P11389076036919948361.Spec : Prop :=
  ∀ n, P11389076036919948361.a n = A367705 n

end A367705

/-! ## A367705.P12650979869713475115

`A007310(A265667(n+1))`
-/

namespace A367705.P12650979869713475115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A265667 (n + 1)).toNat

end

end A367705.P12650979869713475115

namespace A367705

/-- `A007310(A265667(n+1))` -/
def P12650979869713475115.Spec : Prop :=
  ∀ n, P12650979869713475115.a n = A367705 n

end A367705

/-! ## A367705.P658944468136782976

`A075677(A004773(n+1))`
-/

namespace A367705.P658944468136782976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A004773 (n + 1)).toNat

end

end A367705.P658944468136782976

namespace A367705

/-- `A075677(A004773(n+1))` -/
def P658944468136782976.Spec : Prop :=
  ∀ n, P658944468136782976.a n = A367705 n

end A367705

/-! ## A367705.P4801894318611728800

`A165367(A042965(n+1))`
-/

namespace A367705.P4801894318611728800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A042965 (n + 1)).toNat

end

end A367705.P4801894318611728800

namespace A367705

/-- `A165367(A042965(n+1))` -/
def P4801894318611728800.Spec : Prop :=
  ∀ n, P4801894318611728800.a n = A367705 n

end A367705

/-! ## A367705.P10504979430448926111

`filter[A165367(n), A093719(#)]`
-/

namespace A367705.P10504979430448926111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A367705.P10504979430448926111

namespace A367705

/-- `filter[A165367(n), A093719(#)]` -/
def P10504979430448926111.Spec : Prop :=
  ∀ n, P10504979430448926111.a n = A367705 n

end A367705

/-! ## A367705.P3124568404918308537

`filter[A165367(n), A320106(#)]`
-/

namespace A367705.P3124568404918308537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A367705.P3124568404918308537

namespace A367705

/-- `filter[A165367(n), A320106(#)]` -/
def P3124568404918308537.Spec : Prop :=
  ∀ n, P3124568404918308537.a n = A367705 n

end A367705

/-! ## A367705.P17951647060478073312

`filter[A165367(n), A354354(#)]`
-/

namespace A367705.P17951647060478073312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A367705.P17951647060478073312

namespace A367705

/-- `filter[A165367(n), A354354(#)]` -/
def P17951647060478073312.Spec : Prop :=
  ∀ n, P17951647060478073312.a n = A367705 n

end A367705

/-! ## A367705.P5235363259318068919

`filter[A165367(n), A373156(#)]`
-/

namespace A367705.P5235363259318068919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A367705.P5235363259318068919

namespace A367705

/-- `filter[A165367(n), A373156(#)]` -/
def P5235363259318068919.Spec : Prop :=
  ∀ n, P5235363259318068919.a n = A367705 n

end A367705

/-! ## A367705.P11574836126666116895

`filter[A165367(n), A374134(#)]`
-/

namespace A367705.P11574836126666116895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A367705.P11574836126666116895

namespace A367705

/-- `filter[A165367(n), A374134(#)]` -/
def P11574836126666116895.Spec : Prop :=
  ∀ n, P11574836126666116895.a n = A367705 n

end A367705

/-! ## A367705.P8432372571404183986

`A075677(A349414(A047529(n+1)))`
-/

namespace A367705.P8432372571404183986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A349414 (A047529 (n + 1)).toNat).toNat

end

end A367705.P8432372571404183986

namespace A367705

/-- `A075677(A349414(A047529(n+1)))` -/
def P8432372571404183986.Spec : Prop :=
  ∀ n, P8432372571404183986.a n = A367705 n

end A367705

/-! ## A367705.P17736928692554570537

`A147666(A080031(n))`
-/

namespace A367705.P17736928692554570537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A080031 n).toNat

end

end A367705.P17736928692554570537

namespace A367705

/-- `A147666(A080031(n))` -/
def P17736928692554570537.Spec : Prop :=
  ∀ n, P17736928692554570537.a n = A367705 n

end A367705

/-! ## A367705.P1476358322316840786

`A080031(A047267(n+1))`
-/

namespace A367705.P1476358322316840786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 (A047267 (n + 1)).toNat

end

end A367705.P1476358322316840786

namespace A367705

/-- `A080031(A047267(n+1))` -/
def P1476358322316840786.Spec : Prop :=
  ∀ n, P1476358322316840786.a n = A367705 n

end A367705

/-! ## A367705.P1149017410846490285

`A047266(A080029(n+1))`
-/

namespace A367705.P1149017410846490285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A080029 (n + 1)).toNat

end

end A367705.P1149017410846490285

namespace A367705

/-- `A047266(A080029(n+1))` -/
def P1149017410846490285.Spec : Prop :=
  ∀ n, P1149017410846490285.a n = A367705 n

end A367705

/-! ## A367705.P10510309014493264560

`A007310(A087627(2*n))`
-/

namespace A367705.P10510309014493264560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A087627 (2 * n)).toNat

end

end A367705.P10510309014493264560

namespace A367705

/-- `A007310(A087627(2*n))` -/
def P10510309014493264560.Spec : Prop :=
  ∀ n, P10510309014493264560.a n = A367705 n

end A367705

/-! ## A367705.P2919427108236000804

`filter[A080031(n), A093719(#)]`
-/

namespace A367705.P2919427108236000804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A367705.P2919427108236000804

namespace A367705

/-- `filter[A080031(n), A093719(#)]` -/
def P2919427108236000804.Spec : Prop :=
  ∀ n, P2919427108236000804.a n = A367705 n

end A367705

/-!
# A367706: Number of degree 5 vertices in the n-Menger sponge graph.

The programs for A367706, the canonical program `A367706.P13184903918680954553` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367706 has offset 1).

The definition of A367706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367706.P13184903918680954553

`20*a(n-1)-3/5*8^(n+1)+288/5*3^(n+1)-456` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367706

/-- `20*a(n-1)-3/5*8^(n+1)+288/5*3^(n+1)-456` -/
def P13184903918680954553.Spec : Prop :=
  ∀ n, P13184903918680954553.a n = (A367706 (n + 1) : ℚ)

end A367706

/-! ## A367706.P5823270986912749232

`14/85*20^(n+1)+2/5*8^(n+1)-864/85*3^(n+1)+24`
-/

namespace A367706.P5823270986912749232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) / 85 * (20 ^ (n + 1) : ℚ) + (2 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) - (864 : ℚ) / 85 * (3 ^ (n + 1) : ℚ) + 24

end

end A367706.P5823270986912749232

namespace A367706

/-- `14/85*20^(n+1)+2/5*8^(n+1)-864/85*3^(n+1)+24` -/
def P5823270986912749232.Spec : Prop :=
  ∀ n, P5823270986912749232.a n = (A367706 (n + 1) : ℚ)

end A367706

/-!
# A367707: Number of degree 6 vertices in the n-Menger sponge graph.

The programs for A367707, the canonical program `A367707.P7116135640919201533` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367707 has offset 1).

The definition of A367707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367707.P7116135640919201533

`20*a(n-1)+9/5*8^(n+1)-144/5*3^(n+1)+152` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367707

/-- `20*a(n-1)+9/5*8^(n+1)-144/5*3^(n+1)+152` -/
def P7116135640919201533.Spec : Prop :=
  ∀ n, P7116135640919201533.a n = (A367707 (n + 1) : ℚ)

end A367707

/-! ## A367707.P10851268572851555531

`2/17*20^(n+1)-6/5*8^(n+1)+432/85*3^(n+1)-8`
-/

namespace A367707.P10851268572851555531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 17 * (20 ^ (n + 1) : ℚ) - (6 : ℚ) / 5 * (8 ^ (n + 1) : ℚ) + (432 : ℚ) / 85 * (3 ^ (n + 1) : ℚ) - 8

end

end A367707.P10851268572851555531

namespace A367707

/-- `2/17*20^(n+1)-6/5*8^(n+1)+432/85*3^(n+1)-8` -/
def P10851268572851555531.Spec : Prop :=
  ∀ n, P10851268572851555531.a n = (A367707 (n + 1) : ℚ)

end A367707

/-!
# A367708: Numbers k that are neither squarefree nor prime powers such that max(A119288(k), A053669(k)) <= A003557(k) < A007947(k).

The programs for A367708, there is no canonical definition to state claims against.
-/

/-! ## A367708.P7943753772425470222

`∩[A361098(n+1), A389227(n+1)]`
-/

namespace A367708.P7943753772425470222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367708.P7943753772425470222

/-! ## A367708.P5611209238522884012

`∩[A364702(n+1), A389227(n+1)]`
-/

namespace A367708.P5611209238522884012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367708.P5611209238522884012

/-! ## A367708.P14477228017273478136

`∩[A341646(n+1), A361098(n+1)]`
-/

namespace A367708.P14477228017273478136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367708.P14477228017273478136

/-! ## A367708.P10183839939223956403

`∩[A341646(n+1), A364702(n+1)]`
-/

namespace A367708.P10183839939223956403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367708.P10183839939223956403

/-! ## A367708.P4489222548592990230

`∩[A364702(n+1), A390538(n+1)]`
-/

namespace A367708.P4489222548592990230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367708.P4489222548592990230

/-!
# A367713: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * (1 + x) * A(x^2))).

The programs for A367713, there is no canonical definition to state claims against.
-/

/-! ## A367713.P11099164404251995290

`A025441(A181315(n))+A006958(n+1)`
-/

namespace A367713.P11099164404251995290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A181315 n).toNat + A006958 (n + 1)

end

end A367713.P11099164404251995290

/-! ## A367713.P10966434272748831512

`A239657(A320921(n))+A006958(n+1)`
-/

namespace A367713.P10966434272748831512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (A320921 n).toNat + A006958 (n + 1)

end

end A367713.P10966434272748831512

/-! ## A367713.P4457859294677223431

`A057417(n+1)-A102683(A032555(n+1))`
-/

namespace A367713.P4457859294677223431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (n + 1) - A102683 (A032555 (n + 1)).toNat

end

end A367713.P4457859294677223431

/-! ## A367713.P6016844626329623731

`A057417(n+1)-A102683(A032559(n+1))`
-/

namespace A367713.P6016844626329623731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057417 (n + 1) - A102683 (A032559 (n + 1)).toNat

end

end A367713.P6016844626329623731

/-! ## A367713.P8847991314127315219

`A343380(A097212(n+2))+A006958(n+1)`
-/

namespace A367713.P8847991314127315219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A097212 (n + 2)).toNat + A006958 (n + 1)

end

end A367713.P8847991314127315219

/-!
# A367714: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * (1 + x + x^2) * A(x^3))).

The programs for A367714, there is no canonical definition to state claims against.
-/

/-! ## A367714.P16554385164545484721

`A038572(A288260(n))`
-/

namespace A367714.P16554385164545484721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A288260 n).toNat

end

end A367714.P16554385164545484721

/-! ## A367714.P13062976272306474233

`A288260(n)/A022912(A247594(n))`
-/

namespace A367714.P13062976272306474233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288260 n : ℚ) / (A022912 (A247594 n).toNat : ℚ)

end

end A367714.P13062976272306474233

/-! ## A367714.P2383972568694093043

`A288260(n)/A053669(A297891(n+1))`
-/

namespace A367714.P2383972568694093043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288260 n : ℚ) / (A053669 (A297891 (n + 1)).toNat : ℚ)

end

end A367714.P2383972568694093043

/-! ## A367714.P14367516598716634381

`A226729(A084192(∑[n]))`
-/

namespace A367714.P14367516598716634381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226729 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367714.P14367516598716634381

/-! ## A367714.P18371937114495761366

`A226729(A084193(∑[n]))`
-/

namespace A367714.P18371937114495761366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226729 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367714.P18371937114495761366

/-!
# A367715: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * (1 + x + x^2 + x^3) * A(x^4))).

The programs for A367715, there is no canonical definition to state claims against.
-/

/-! ## A367715.P14870072108528684027

`A080542(A367660(n)%A056654(n+4))`
-/

namespace A367715.P14870072108528684027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (Int.tmod (A367660 n) (A056654 (n + 4))).toNat

end

end A367715.P14870072108528684027

/-! ## A367715.P1272039852624620847

`A157271(8*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A367715.P1272039852624620847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A157271 (8 * (a (n - 1) - a (n - 2))).toNat

end

end A367715.P1272039852624620847

/-! ## A367715.P15134456977685341115

`A185283(A356280(n))`
-/

namespace A367715.P15134456977685341115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A356280 n).toNat

end

end A367715.P15134456977685341115

/-! ## A367715.P10388864315000111106

`A185283(∑[A001077(n)])`
-/

namespace A367715.P10388864315000111106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367715.P10388864315000111106

/-! ## A367715.P3759821197091132126

`A098588(A004892(n+1))`
-/

namespace A367715.P3759821197091132126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098588 (A004892 (n + 1)).toNat

end

end A367715.P3759821197091132126

/-!
# A367716: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - x * (1 + x) * A(x^2))).

The programs for A367716, there is no canonical definition to state claims against.
-/

/-! ## A367716.P9760233885513410485

`A003056(xor(A001055(2*n+5), A365696(2*(n+1))))`
-/

namespace A367716.P9760233885513410485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A001055 (2 * n + 5)) (A365696 (2 * (n + 1)))).toNat

end

end A367716.P9760233885513410485

/-! ## A367716.P16753027807871109367

`A139143(A036378(n))-A139141(n)`
-/

namespace A367716.P16753027807871109367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139143 (A036378 n).toNat - A139141 n

end

end A367716.P16753027807871109367

/-! ## A367716.P14469060172239606903

`A168258(A171199(n))+A008683(3*n+4)`
-/

namespace A367716.P14469060172239606903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168258 (A171199 n).toNat + A008683 (3 * n + 4)

end

end A367716.P14469060172239606903

/-! ## A367716.P2263065598054484202

`Δ[A002024(A287968(n)+A000005(3*(n+1)))]`
-/

namespace A367716.P2263065598054484202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A287968 n + A000005 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367716.P2263065598054484202

/-! ## A367716.P13780774249394230433

`A373810(A000577(n+2))-A008683(2*(n+2))`
-/

namespace A367716.P13780774249394230433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A000577 (n + 2)).toNat - A008683 (2 * (n + 2))

end

end A367716.P13780774249394230433

/-!
# A367717: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - x * (1 + x + x^2) * A(x^3))).

The programs for A367717, there is no canonical definition to state claims against.
-/

/-! ## A367717.P10261094315481758194

`A357864(A240523(n))-A001687(n)`
-/

namespace A367717.P10261094315481758194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (A240523 n).toNat - A001687 n

end

end A367717.P10261094315481758194

/-! ## A367717.P8038961883944505950

`A000196(A199803(n)+A192207(n))`
-/

namespace A367717.P8038961883944505950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A199803 n + A192207 n).toNat

end

end A367717.P8038961883944505950

/-! ## A367717.P3789214056697933430

`A374249(A000032(n))-A140106(n+1)`
-/

namespace A367717.P3789214056697933430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A000032 n).toNat - A140106 (n + 1)

end

end A367717.P3789214056697933430

/-! ## A367717.P13545501571133559796

`A135665(A234943(2*n+5)+A006190(n))`
-/

namespace A367717.P13545501571133559796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A234943 (2 * n + 5) + A006190 n).toNat

end

end A367717.P13545501571133559796

/-! ## A367717.P8775914535909570647

`A000196(A191970(n+1)-A332402(2*(n+1)))`
-/

namespace A367717.P8775914535909570647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A191970 (n + 1) - A332402 (2 * (n + 1))).toNat

end

end A367717.P8775914535909570647

/-!
# A367718: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - x * (1 + x + x^2 + x^3) * A(x^4))).

The programs for A367718, there is no canonical definition to state claims against.
-/

/-! ## A367718.P14848147997669894312

`A066062(n)-A074290(A259376(n+3))`
-/

namespace A367718.P14848147997669894312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 n - A074290 (A259376 (n + 3)).toNat

end

end A367718.P14848147997669894312

/-! ## A367718.P17084650024123927999

`A180447(A165716(n))`
-/

namespace A367718.P17084650024123927999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A165716 n).toNat

end

end A367718.P17084650024123927999

/-! ## A367718.P15009452138750622634

`A000196(A006078(n+2)-A094556(n))`
-/

namespace A367718.P15009452138750622634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006078 (n + 2) - A094556 n).toNat

end

end A367718.P15009452138750622634

/-! ## A367718.P6405335768620053815

`A066062(n)-A072670(A213348(n+6))`
-/

namespace A367718.P6405335768620053815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066062 n - A072670 (A213348 (n + 6)).toNat

end

end A367718.P6405335768620053815

/-!
# A367721: E.g.f. satisfies A(x) = exp(x*A(-x^2)).

The programs for A367721, there is no canonical definition to state claims against.
-/

/-! ## A367721.P5414974840744268756

`A337750(n^A131198(n))`
-/

namespace A367721.P5414974840744268756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337750 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A131198 n : ℤ))).toNat

end

end A367721.P5414974840744268756

/-! ## A367721.P5631813014408657743

`A337750(n^A173018(n))`
-/

namespace A367721.P5631813014408657743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337750 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A173018 n : ℤ))).toNat

end

end A367721.P5631813014408657743

/-! ## A367721.P7649855219539937206

`A337750(n^A238129(n))`
-/

namespace A367721.P7649855219539937206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337750 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A238129 n : ℤ))).toNat

end

end A367721.P7649855219539937206

/-!
# A367724: Expansion of g.f. A(x) satisfying x = A(x) * (1 - A(x)) / (1 - A(x) - A(x)^4) such that A(0) = 1.

The programs for A367724, there is no canonical definition to state claims against.
-/

/-! ## A367724.P17777314781971060906

`A177244(2^n)-A144602(n)`
-/

namespace A367724.P17777314781971060906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177244 (2 ^ n) - A144602 n

end

end A367724.P17777314781971060906

/-! ## A367724.P1356542444753093465

`A350474(n+1)+A215020(∑{d}[n+1, #^5])`
-/

namespace A367724.P1356542444753093465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350474 (n + 1) + A215020 (∑ d ∈ Nat.divisors (f1 n), d ^ 5)

end

end A367724.P1356542444753093465

/-!
# A367725: Expansion of g.f. A(x) satisfying x = A(x) * (1 - A(x)) / (1 - A(x) - A(x)^5) such that A(0) = 1.

The programs for A367725, there is no canonical definition to state claims against.
-/

/-! ## A367725.P1581305556354795590

`A241447(n)+A003159(A270665(n))`
-/

namespace A367725.P1581305556354795590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241447 n + A003159 (A270665 n).toNat

end

end A367725.P1581305556354795590

/-! ## A367725.P16027175357069098816

`A053868(A128322(n))-A128322(n)`
-/

namespace A367725.P16027175357069098816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053868 (A128322 n).toNat - A128322 n

end

end A367725.P16027175357069098816

/-!
# A367727: a(n) is the numerator of (R(n) - 1)/(n + 1), where R(n) is the digit reversal of n.

The programs for A367727, there is no canonical definition to state claims against.
-/

/-! ## A367727.P16575591938792849841

`A367824(∑[n+1]+1)`
-/

namespace A367727.P16575591938792849841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A367727.P16575591938792849841

/-! ## A367727.P701178968604363467

`A004185(n)-A000120(A156232(n+3))`
-/

namespace A367727.P701178968604363467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n - A000120 (A156232 (n + 3)).toNat

end

end A367727.P701178968604363467

/-!
# A367728: a(n) is the denominator of (R(n) - 1)/(n + 1), where R(n) is the digit reversal of n.

The programs for A367728, there is no canonical definition to state claims against.
-/

/-! ## A367728.P16290327748415808267

`(n+1)/gcd(n+1, A056964(n))`
-/

namespace A367728.P16290327748415808267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A056964 n) : ℚ)

end

end A367728.P16290327748415808267

/-! ## A367728.P10602413365720528069

`A367825(∑[n+1]+1)`
-/

namespace A367728.P10602413365720528069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A367728.P10602413365720528069

/-! ## A367728.P8853682397189575414

`gcd(lcm(n, A378350(n))+1, ∑[n])`
-/

namespace A367728.P8853682397189575414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Int.lcm (n : ℤ) (A378350 n) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367728.P8853682397189575414

/-! ## A367728.P10269943560726948094

`gcd(n+1, A249818(A063522(n+1)))`
-/

namespace A367728.P10269943560726948094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A249818 (A063522 (n + 1)).toNat)

end

end A367728.P10269943560726948094

/-! ## A367728.P9343798629620725062

`A026741(n+1)%A067188(A059268(n))`
-/

namespace A367728.P9343798629620725062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (n + 1)) (A067188 (A059268 n).toNat)

end

end A367728.P9343798629620725062

/-!
# A367733: Numbers k such that the sum of digits of k is equal to the sum of digits of k+9.

The programs for A367733, the canonical program `A367733.P5596006491334651101` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367733 has offset 1).

The definition of A367733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367733.P5596006491334651101

`n+1+floor(n/9)+floor(n/81)*10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367733

/-- `n+1+floor(n/9)+floor(n/81)*10` -/
def P5596006491334651101.Spec : Prop :=
  ∀ n, P5596006491334651101.a n = A367733 (n + 1)

theorem P5596006491334651101.correct : P5596006491334651101.Spec := by
  intro n
  simp only [A367733, Nat.add_sub_cancel]

end A367733

/-! ## A367733.P1323607617057254339

`record[A235049(A263254(n))+1]`
-/

namespace A367733.P1323607617057254339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A263254 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367733.P1323607617057254339

namespace A367733

/-- `record[A235049(A263254(n))+1]` -/
def P1323607617057254339.Spec : Prop :=
  ∀ n, P1323607617057254339.a n = A367733 (n + 1)

end A367733

/-! ## A367733.P14415931754716316482

`record[A235049(A025638(n+1))+1]`
-/

namespace A367733.P14415931754716316482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A025638 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367733.P14415931754716316482

namespace A367733

/-- `record[A235049(A025638(n+1))+1]` -/
def P14415931754716316482.Spec : Prop :=
  ∀ n, P14415931754716316482.a n = A367733 (n + 1)

end A367733

/-!
# A367734: Numbers that have no balanced divisors except for 1.

The programs for A367734, the canonical program `A367734.P11864866630321712959` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367734 has offset 1).

The definition of A367734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367734.P11864866630321712959

`eq[1, A351113(n+1)]+1`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A367734

/-- `eq[1, A351113(n+1)]+1` -/
def P11864866630321712959.Spec : Prop :=
  ∀ n, (P11864866630321712959.a n : ℤ) = A367734 (n + 1)

theorem P11864866630321712959.correct : P11864866630321712959.Spec := by
  intro n
  simp only [A367734, Nat.add_sub_cancel]

end A367734

/-! ## A367734.P13628917647173439520

`lt[A351113(A000027(n+1)), 2]+1`
-/

namespace A367734.P13628917647173439520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367734.P13628917647173439520

namespace A367734

/-- `lt[A351113(A000027(n+1)), 2]+1` -/
def P13628917647173439520.Spec : Prop :=
  ∀ n, (P13628917647173439520.a n : ℤ) = A367734 (n + 1)

end A367734

/-! ## A367734.P15976499347288623587

`A005408(lt[A351113(2*n+1), 2])`
-/

namespace A367734.P15976499347288623587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A367734.P15976499347288623587

namespace A367734

/-- `A005408(lt[A351113(2*n+1), 2])` -/
def P15976499347288623587.Spec : Prop :=
  ∀ n, P15976499347288623587.a n = A367734 (n + 1)

end A367734

/-! ## A367734.P11877132917792122775

`eq[1, A351112(n+1)]+1`
-/

namespace A367734.P11877132917792122775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367734.P11877132917792122775

namespace A367734

/-- `eq[1, A351112(n+1)]+1` -/
def P11877132917792122775.Spec : Prop :=
  ∀ n, (P11877132917792122775.a n : ℤ) = A367734 (n + 1)

end A367734

/-! ## A367734.P11163114843218177675

`lt[sqrt(C(n, 2)+1), A225530(n)]`
-/

namespace A367734.P11163114843218177675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose n 2 + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A367734.P11163114843218177675

namespace A367734

/-- `lt[sqrt(C(n, 2)+1), A225530(n)]` -/
def P11163114843218177675.Spec : Prop :=
  ∀ n, (P11163114843218177675.a n : ℤ) = A367734 (n + 1)

end A367734

/-! ## A367734.P18110995327411961530

`lt[A000124(n), A225530(n)²+n]`
-/

namespace A367734.P18110995327411961530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367734.P18110995327411961530

namespace A367734

/-- `lt[A000124(n), A225530(n)²+n]` -/
def P18110995327411961530.Spec : Prop :=
  ∀ n, (P18110995327411961530.a n : ℤ) = A367734 (n + 1)

end A367734

/-!
# A367735: Prime numbers wherein digit values increase, decrease, and finally increase.

The programs for A367735, there is no canonical definition to state claims against.
-/

/-! ## A367735.P11669766326698450402

`A303918(A207671(n+1))`
-/

namespace A367735.P11669766326698450402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303918 (A207671 (n + 1)).toNat

end

end A367735.P11669766326698450402

/-!
# A367736: a(0) = 1; for n > 0, a(n) is the coefficient of x^a(n-1) in the expansion of Product_{k=0..n-1} (x^a(k) + 1 + 1/x^a(k)).

The programs for A367736, there is no canonical definition to state claims against.
-/

/-! ## A367736.P8732797161513737970

`A026757(n)-A216600(A000051(n))`
-/

namespace A367736.P8732797161513737970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026757 n - A216600 (A000051 n).toNat

end

end A367736.P8732797161513737970

/-! ## A367736.P3101968771452437504

`A002024(A073947(n+1))-A325686(n)`
-/

namespace A367736.P3101968771452437504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A073947 (n + 1)).toNat - A325686 n

end

end A367736.P3101968771452437504

/-! ## A367736.P15708030651427719105

`A130148(A052528(n))`
-/

namespace A367736.P15708030651427719105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A052528 n).toNat

end

end A367736.P15708030651427719105

/-! ## A367736.P158858799382826484

`A195083(A026385(n))`
-/

namespace A367736.P158858799382826484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (A026385 n).toNat

end

end A367736.P158858799382826484

/-! ## A367736.P14646053692526349449

`A328335(A014216(n))`
-/

namespace A367736.P14646053692526349449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A014216 n).toNat

end

end A367736.P14646053692526349449

/-!
# A367739: Table read by ascending antidiagonals: T(n,k) is the number of k-bit numbers m such that m*prime(n)# is the average of a twin prime pair, where prime(n)# is the n-th primorial A002110(n).

The programs for A367739, there is no canonical definition to state claims against.
-/

/-! ## A367739.P4691751309046114796

`A081396(A124613(n+1))`
-/

namespace A367739.P4691751309046114796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081396 (A124613 (n + 1)).toNat

end

end A367739.P4691751309046114796

/-! ## A367739.P3770132923104517132

`A056169(A185100(n)+A023857(n+1))`
-/

namespace A367739.P3770132923104517132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A185100 n + A023857 (n + 1)).toNat

end

end A367739.P3770132923104517132

/-! ## A367739.P2341003059343126135

`A381577(A163633(n+1))`
-/

namespace A367739.P2341003059343126135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381577 (A163633 (n + 1)).toNat

end

end A367739.P2341003059343126135

/-! ## A367739.P14301426098219702669

`A098550(A137874(n+1))%3`
-/

namespace A367739.P14301426098219702669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (A137874 (n + 1)).toNat) 3

end

end A367739.P14301426098219702669

/-! ## A367739.P5272673544232272904

`A071858(A217498(n+2)-(2*n+1))`
-/

namespace A367739.P5272673544232272904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A217498 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A367739.P5272673544232272904

/-!
# A367745: Numbers which occur anywhere in A367795, i.e. in lists L(k) where L(1) = [1,0] and L(k+1) is obtained from L(k) by inserting their binary concatenation between elements x,y.

The programs for A367745, there is no canonical definition to state claims against.
-/

/-! ## A367745.P13757865542251463459

`∪[A274170(n+1), A001017(n)]`
-/

namespace A367745.P13757865542251463459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P13757865542251463459

/-! ## A367745.P9423338314541284366

`∪[A008454(n), A274170(n+1)]`
-/

namespace A367745.P9423338314541284366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P9423338314541284366

/-! ## A367745.P9552025070142875285

`∪[A008455(n), A274170(n+1)]`
-/

namespace A367745.P9552025070142875285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P9552025070142875285

/-! ## A367745.P14264686075135866804

`∪[A060530(n), A274170(n+1)]`
-/

namespace A367745.P14264686075135866804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P14264686075135866804

/-! ## A367745.P16387259268954131281

`∪[A274170(n+1), A117084(n)]`
-/

namespace A367745.P16387259268954131281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117084 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P16387259268954131281

/-! ## A367745.P2157607784442466356

`∪[A274170(n+1), A131577(n)]`
-/

namespace A367745.P2157607784442466356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P2157607784442466356

/-! ## A367745.P13558147179443884205

`∪[A274170(n+1), A162840(n)]`
-/

namespace A367745.P13558147179443884205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P13558147179443884205

/-! ## A367745.P11928860093416722343

`∪[A274170(n+1), A167149(n)]`
-/

namespace A367745.P11928860093416722343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167149 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P11928860093416722343

/-! ## A367745.P15560462691709917793

`∪[A274170(n+1), A168372(n)]`
-/

namespace A367745.P15560462691709917793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168372 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P15560462691709917793

/-! ## A367745.P5295112346611033565

`∪[A168627(n), A274170(n+1)]`
-/

namespace A367745.P5295112346611033565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367745.P5295112346611033565

/-!
# A367747: E.g.f. satisfies A(x) = exp(x * (1 + x) * A(x^2)).

The programs for A367747, there is no canonical definition to state claims against.
-/

/-! ## A367747.P6200796638389687590

`∏{p}[A162161(n)², #]`
-/

namespace A367747.P6200796638389687590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162161 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A367747.P6200796638389687590

/-! ## A367747.P1964400095044353170

`A063954(A071742(n))`
-/

namespace A367747.P1964400095044353170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (A071742 n).toNat

end

end A367747.P1964400095044353170

/-!
# A367752: Number of shapes of labeled rooted hypertrees with n vertices.

The programs for A367752, there is no canonical definition to state claims against.
-/

/-! ## A367752.P4079763754741622325

`A291934(n^n)`
-/

namespace A367752.P4079763754741622325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (n ^ n)

end

end A367752.P4079763754741622325

/-!
# A367753: Number of shapes of labeled forest of rooted hypertrees with n vertices.

The programs for A367753, there is no canonical definition to state claims against.
-/

/-! ## A367753.P13295169481043229919

`A342498((n+5)*(n+1)*n²/12)+n`
-/

namespace A367753.P13295169481043229919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (SequenceMachineLib.roundAway (((n + 5) * ((n + 1) * n ^ 2) : ℚ) / 12)).toNat + (n : ℤ)

end

end A367753.P13295169481043229919

/-!
# A367754: E.g.f. satisfies A(x) = exp(x * (1 + x) * A(x^2/2)).

The programs for A367754, there is no canonical definition to state claims against.
-/

/-! ## A367754.P7467593573693364230

`A161208(A001997(n))`
-/

namespace A367754.P7467593573693364230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (A001997 n).toNat

end

end A367754.P7467593573693364230

/-! ## A367754.P1269423157053391045

`A277192(A032020(∑[n]))`
-/

namespace A367754.P1269423157053391045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A032020 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367754.P1269423157053391045

/-!
# A367755: E.g.f. satisfies A(x) = exp(x * (1 + x + x^2) * A(x^3/6)).

The programs for A367755, there is no canonical definition to state claims against.
-/

/-! ## A367755.P4082077517481579286

`A002330(A258301(n))`
-/

namespace A367755.P4082077517481579286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A258301 n).toNat

end

end A367755.P4082077517481579286

/-! ## A367755.P8831720239960391240

`A162226(A007526(n)+A001764(n))`
-/

namespace A367755.P8831720239960391240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A007526 n + A001764 n).toNat

end

end A367755.P8831720239960391240

/-!
# A367756: E.g.f. satisfies A(x) = exp(x * (1 + x + x^2 + x^3) * A(x^4/24)).

The programs for A367756, there is no canonical definition to state claims against.
-/

/-! ## A367756.P3429699705368426678

`A210570(A049124(n))`
-/

namespace A367756.P3429699705368426678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210570 (A049124 n).toNat

end

end A367756.P3429699705368426678

/-! ## A367756.P17062410624059472714

`A210570(A000707(n+1))`
-/

namespace A367756.P17062410624059472714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210570 (A000707 (n + 1)).toNat

end

end A367756.P17062410624059472714

/-!
# A367758: Least number of inequivalent cells in a polyomino with n cells.

The programs for A367758, there is no canonical definition to state claims against.
-/

/-! ## A367758.P15156241850831597948

`A341041(A225368(n+1))`
-/

namespace A367758.P15156241850831597948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341041 (A225368 (n + 1)).toNat

end

end A367758.P15156241850831597948

/-! ## A367758.P2086496526675286374

`A303536(A032235(n+2))`
-/

namespace A367758.P2086496526675286374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A032235 (n + 2)).toNat

end

end A367758.P2086496526675286374

/-! ## A367758.P14641419360367338997

`A115623(xor(A006325(n), A048250(n+1)))`
-/

namespace A367758.P14641419360367338997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (Int.xor (A006325 n) (A048250 (n + 1))).toNat

end

end A367758.P14641419360367338997

/-! ## A367758.P16863339295267511468

`A059169(n+1)+A046765(A051767(n+1))`
-/

namespace A367758.P16863339295267511468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) + A046765 (A051767 (n + 1)).toNat

end

end A367758.P16863339295267511468

/-! ## A367758.P17313752134838910921

`A329320(A281759(n+1))`
-/

namespace A367758.P17313752134838910921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A281759 (n + 1)).toNat

end

end A367758.P17313752134838910921

/-!
# A367760: a(n) is the numerator of the probability that the free polyomino with binary code A246521(n+1) appears in the Eden growth model on the square lattice, when n square cells have been added.

The programs for A367760, there is no canonical definition to state claims against.
-/

/-! ## A367760.P11740015187570259283

`A367764(n+1)+char[2]+char[9]`
-/

namespace A367760.P11740015187570259283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367764 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A367760.P11740015187570259283

/-!
# A367761: a(n) is the denominator of the probability that the free polyomino with binary code A246521(n+1) appears in the Eden growth model on the square lattice, when n square cells have been added.

The programs for A367761, there is no canonical definition to state claims against.
-/

/-! ## A367761.P2767334890226776705

`A367760(n+1)/(A367764(n+1)/A367765(n+1)*A335573(n+2))`
-/

namespace A367761.P2767334890226776705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367760 (n + 1) : ℚ) / ((A367764 (n + 1) : ℚ) / (A367765 (n + 1) : ℚ) * (A335573 (n + 2) : ℚ))

end

end A367761.P2767334890226776705

/-!
# A367762: Numerator of the greatest probability that a particular free polyomino with n cells appears in the Eden growth model (see A367760).

The programs for A367762, there is no canonical definition to state claims against.
-/

/-! ## A367762.P289220295216444856

`A340054(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A367762.P289220295216444856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  A340054 (a (n - 1)).toNat

end

end A367762.P289220295216444856

/-! ## A367762.P17557731155942969271

`A252793(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A367762.P17557731155942969271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 2] fun n a =>
  A252793 ((n : ℤ) * a (n - 1)).toNat

end

end A367762.P17557731155942969271

/-!
# A367763: Denominator of the greatest probability that a particular free polyomino with n cells appears in the Eden growth model (see A367760).

The programs for A367763, there is no canonical definition to state claims against.
-/

/-! ## A367763.P7859920089450749636

`or(1, n)*A220122(A001003(n))`
-/

namespace A367763.P7859920089450749636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A220122 (A001003 n).toNat

end

end A367763.P7859920089450749636

/-! ## A367763.P17060719038736009702

`A367761(A053120(n)+A000085(n))`
-/

namespace A367763.P17060719038736009702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367761 (A053120 n + A000085 n).toNat

end

end A367763.P17060719038736009702

/-!
# A367764: a(n) is the numerator of the probability that a particular one of the A335573(n+1) fixed polyominoes corresponding to the free polyomino with binary code A246521(n+1) appears in the Eden growth model on the square lattice (see A367760), when n square cells have been added.

The programs for A367764, there is no canonical definition to state claims against.
-/

/-! ## A367764.P10650620464010816327

`lcm(2, A367760(n+1))/2`
-/

namespace A367764.P10650620464010816327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A367760 (n + 1)) : ℚ) / 2

end

end A367764.P10650620464010816327

/-! ## A367764.P13386632791279713923

`A000265(A367760(n+1))`
-/

namespace A367764.P13386632791279713923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A367760 (n + 1)).toNat

end

end A367764.P13386632791279713923

/-! ## A367764.P3982586673328787566

`A367760(n%A053979(n)+1)`
-/

namespace A367764.P3982586673328787566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367760 (Int.tmod (n : ℤ) (A053979 n) + 1).toNat

end

end A367764.P3982586673328787566

/-! ## A367764.P6044472730429205843

`gcd(A014460(n), A367760(n+1))`
-/

namespace A367764.P6044472730429205843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014460 n) (A367760 (n + 1))

end

end A367764.P6044472730429205843

/-! ## A367764.P11072168079493756405

`A367760(A367760(n+1)%2+n)`
-/

namespace A367764.P11072168079493756405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367760 (Int.tmod (A367760 (n + 1)) 2 + (n : ℤ)).toNat

end

end A367764.P11072168079493756405

/-! ## A367764.P11252301186108664678

`A367760(n+1)^A057428(A308921(n))²`
-/

namespace A367764.P11252301186108664678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367760 (n + 1) : ℚ) ^ (A057428 (A308921 n).toNat ^ 2 : ℤ)

end

end A367764.P11252301186108664678

/-! ## A367764.P16437105983317004174

`A060819(2*A367760(n+1))`
-/

namespace A367764.P16437105983317004174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A367760 (n + 1)).toNat

end

end A367764.P16437105983317004174

/-! ## A367764.P5938729819241541793

`A364491(2*A367760(n+1))`
-/

namespace A367764.P5938729819241541793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364491 (2 * A367760 (n + 1)).toNat

end

end A367764.P5938729819241541793

/-!
# A367766: Numerator of the greatest probability that a particular fixed polyomino with n cells appears in the Eden growth model (see A367760).

The programs for A367766, there is no canonical definition to state claims against.
-/

/-! ## A367766.P14210287398746227824

`A367764(A392044(n))`
-/

namespace A367766.P14210287398746227824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367764 (A392044 n).toNat

end

end A367766.P14210287398746227824

/-! ## A367766.P12988032106435198736

`A367764(xor(3, A007598(n)))`
-/

namespace A367766.P12988032106435198736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367764 (Int.xor 3 (A007598 n)).toNat

end

end A367766.P12988032106435198736

/-! ## A367766.P8248977128439586112

`A367760(A210111(n)+n)`
-/

namespace A367766.P8248977128439586112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367760 (A210111 n + (n : ℤ)).toNat

end

end A367766.P8248977128439586112

/-!
# A367767: Denominator of the greatest probability that a particular fixed polyomino with n cells appears in the Eden growth model (see A367760).

The programs for A367767, there is no canonical definition to state claims against.
-/

/-! ## A367767.P16409619482560050681

`A104557(A046062(n+1))`
-/

namespace A367767.P16409619482560050681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104557 (A046062 (n + 1)).toNat

end

end A367767.P16409619482560050681

/-! ## A367767.P14507928994670752792

`A367765(A007327(n+2)+n+1)`
-/

namespace A367767.P14507928994670752792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367765 (A007327 (n + 2) + (n + 1 : ℤ)).toNat

end

end A367767.P14507928994670752792

/-!
# A367768: Numbers k such that MMK(k) = MMK(i) for some i < k, where MMK is multiset multiplicity kernel A367580.

The programs for A367768, there is no canonical definition to state claims against.
-/

/-! ## A367768.P7982043590592193511

`comp[A367585(n+1)-1]+1`
-/

namespace A367768.P7982043590592193511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367585 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367768.P7982043590592193511

/-! ## A367768.P17858583965762842525

`comp[A367585(n-a(2%n))]` with `a(0)=0`
-/

namespace A367768.P17858583965762842525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A367585 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367768.P17858583965762842525

/-! ## A367768.P3974212994120244682

`A193166(lt[A262501(3*(n+1)), A153672(n+1)])`
-/

namespace A367768.P3974212994120244682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367768.P3974212994120244682

/-!
# A367769: Number of finite sets of nonempty non-singleton subsets of {1..n} contradicting a strict version of the axiom of choice.

The programs for A367769, there is no canonical definition to state claims against.
-/

/-! ## A367769.P13571645162393123425

`2^(2^n-n-1)-A367770(n)`
-/

namespace A367769.P13571645162393123425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - (n : ℤ) - 1 : ℤ) - (A367770 n : ℚ)

end

end A367769.P13571645162393123425

/-!
# A367770: Number of sets of nonempty non-singleton subsets of {1..n} satisfying a strict version of the axiom of choice.

The programs for A367770, there is no canonical definition to state claims against.
-/

/-! ## A367770.P17513796455508515503

`A016031(n+1)-A367769(n)`
-/

namespace A367770.P17513796455508515503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016031 (n + 1) - A367769 n

end

end A367770.P17513796455508515503

/-! ## A367770.P52154087290788273

`A000079(A000295(n))-A367769(n)`
-/

namespace A367770.P52154087290788273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000295 n).toNat - A367769 n

end

end A367770.P52154087290788273

/-!
# A367771: Number of ways to choose a different prime index of each prime index of 2n + 1.

The programs for A367771, there is no canonical definition to state claims against.
-/

/-! ## A367771.P16063576776291255115

`A121444(A135080(2*n+1)+A024320(n+1))`
-/

namespace A367771.P16063576776291255115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (A135080 (2 * n + 1) + A024320 (n + 1)).toNat

end

end A367771.P16063576776291255115

/-! ## A367771.P15500956111026427530

`and(A324117(2*n+3), A351496(A215366(3*n)))`
-/

namespace A367771.P15500956111026427530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324117 (2 * n + 3)) (A351496 (A215366 (3 * n)).toNat)

end

end A367771.P15500956111026427530

/-! ## A367771.P11328606241067810088

`A036373(A027907(3*n+1))%A000005(2*n+3)`
-/

namespace A367771.P11328606241067810088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036373 (A027907 (3 * n + 1)).toNat) (A000005 (2 * n + 3))

end

end A367771.P11328606241067810088

/-! ## A367771.P10162195976177251912

`A054390(n)%A070344(A286769(n))`
-/

namespace A367771.P10162195976177251912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054390 n) (A070344 (A286769 n).toNat)

end

end A367771.P10162195976177251912

/-! ## A367771.P13505520165217309460

`A366091(n)%A004020(A002863(n+1))`
-/

namespace A367771.P13505520165217309460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366091 n) (A004020 (A002863 (n + 1)).toNat)

end

end A367771.P13505520165217309460

/-!
# A367772: Number of sets of nonempty subsets of {1..n} satisfying a strict version of the axiom of choice in more than one way.

The programs for A367772, there is no canonical definition to state claims against.
-/

/-! ## A367772.P6117944711923216275

`A367902(n)-A367904(n)`
-/

namespace A367772.P6117944711923216275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367902 n - A367904 n

end

end A367772.P6117944711923216275

/-!
# A367775: a(n) = Sum_{k=0..n} (-1)^(n - k) * A011971(n, k).

The programs for A367775, there is no canonical definition to state claims against.
-/

/-! ## A367775.P9837624285002819244

`abs(A136790(∑[n]))`
-/

namespace A367775.P9837624285002819244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136790 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A367775.P9837624285002819244

/-! ## A367775.P11976312953897070001

`A165196(A001045(n+1))`
-/

namespace A367775.P11976312953897070001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165196 (A001045 (n + 1)).toNat

end

end A367775.P11976312953897070001

/-! ## A367775.P16575770233151285014

`A165196(A152046(n+1))`
-/

namespace A367775.P16575770233151285014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165196 (A152046 (n + 1)).toNat

end

end A367775.P16575770233151285014

/-! ## A367775.P12122787781287996607

`A165196(A167167(n+1))`
-/

namespace A367775.P12122787781287996607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165196 (A167167 (n + 1)).toNat

end

end A367775.P12122787781287996607

/-!
# A367776: a(n) = binomial(2*n, n - 1)*(2*n + 1)! / n!.

The programs for A367776, the canonical program `A367776.P3027205742086758766` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367776 has offset 0).

The definition of A367776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367776.P3027205742086758766

`n*A000108(n)*(2*n+1)!/n!`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367776

/-- `n*A000108(n)*(2*n+1)!/n!` -/
def P3027205742086758766.Spec : Prop :=
  ∀ n, P3027205742086758766.a n = (A367776 n : ℚ)

end A367776

/-! ## A367776.P11783238895684291302

`A343581(Δ[n²])`
-/

namespace A367776.P11783238895684291302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343581 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A367776.P11783238895684291302

namespace A367776

/-- `A343581(Δ[n²])` -/
def P11783238895684291302.Spec : Prop :=
  ∀ n, P11783238895684291302.a n = A367776 n

end A367776

/-! ## A367776.P10445202841188241986

`n*A248045(n+1)`
-/

namespace A367776.P10445202841188241986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A248045 (n + 1)

end

end A367776.P10445202841188241986

namespace A367776

/-- `n*A248045(n+1)` -/
def P10445202841188241986.Spec : Prop :=
  ∀ n, P10445202841188241986.a n = A367776 n

end A367776

/-! ## A367776.P12505178539997433759

`lcm(2, A343581(2*n+1))`
-/

namespace A367776.P12505178539997433759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A343581 (2 * n + 1))

end

end A367776.P12505178539997433759

namespace A367776

/-- `lcm(2, A343581(2*n+1))` -/
def P12505178539997433759.Spec : Prop :=
  ∀ n, (P12505178539997433759.a n : ℤ) = A367776 n

end A367776

/-! ## A367776.P11721595668538399744

`A005430(n)*A006963(n+2)`
-/

namespace A367776.P11721595668538399744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A006963 (n + 2)

end

end A367776.P11721595668538399744

namespace A367776

/-- `A005430(n)*A006963(n+2)` -/
def P11721595668538399744.Spec : Prop :=
  ∀ n, P11721595668538399744.a n = A367776 n

end A367776

/-!
# A367777: a(n) = |Stirling1(2*n + 1, n)|.

The programs for A367777, there is no canonical definition to state claims against.
-/

/-! ## A367777.P5612691756921084769

`abs(A154415(2*n+1))`
-/

namespace A367777.P5612691756921084769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154415 (2 * n + 1)|

end

end A367777.P5612691756921084769

/-! ## A367777.P1900727036405772077

`A033999(n+1)*A154415(2*n+1)`
-/

namespace A367777.P1900727036405772077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A154415 (2 * n + 1)

end

end A367777.P1900727036405772077

/-! ## A367777.P14474964650639544803

`gcd(A151935(n+1), A154415(2*n+1))`
-/

namespace A367777.P14474964650639544803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151935 (n + 1)) (A154415 (2 * n + 1))

end

end A367777.P14474964650639544803

/-! ## A367777.P13973400518492371700

`A132393(A056220(n+1))`
-/

namespace A367777.P13973400518492371700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A056220 (n + 1)).toNat

end

end A367777.P13973400518492371700

/-! ## A367777.P2022191604022761877

`A132393(A054000(n+1)+1)`
-/

namespace A367777.P2022191604022761877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A054000 (n + 1) + 1).toNat

end

end A367777.P2022191604022761877

/-!
# A367778: a(n) is the sum of the squares of the areas under Motzkin paths of length n.

The programs for A367778, there is no canonical definition to state claims against.
-/

/-! ## A367778.P15607566183628642886

`A003101(n)*A072649(A047797(n))`
-/

namespace A367778.P15607566183628642886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n * A072649 (A047797 n).toNat

end

end A367778.P15607566183628642886

/-!
# A367779: a(n) is the sum of the cubed areas under Motzkin paths of length n.

The programs for A367779, there is no canonical definition to state claims against.
-/

/-! ## A367779.P4777293719773244282

`A363527(A301266(n))`
-/

namespace A367779.P4777293719773244282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363527 (A301266 n).toNat

end

end A367779.P4777293719773244282

/-! ## A367779.P12774790053888301807

`A363527(A001359(n+1)+A000041(n))`
-/

namespace A367779.P12774790053888301807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363527 (A001359 (n + 1) + A000041 n).toNat

end

end A367779.P12774790053888301807

/-!
# A367780: a(n) is the sum of the squares of the area under Dyck paths of length 2*n.

The programs for A367780, there is no canonical definition to state claims against.
-/

/-! ## A367780.P10114369978711258789

`n*A060648(A292190(n))`
-/

namespace A367780.P10114369978711258789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060648 (A292190 n).toNat

end

end A367780.P10114369978711258789

/-!
# A367782: Numbers k such that binomial(2*k,k) mod k is odd.

The programs for A367782, the canonical program `A367782.P17228893178319578665` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367782 has offset 1).

The definition of A367782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367782.P17228893178319578665

`lt[n, A000035(n)*A053214(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367782

/-- `lt[n, A000035(n)*A053214(n)]` -/
def P17228893178319578665.Spec : Prop :=
  ∀ n, (P17228893178319578665.a n : ℤ) = A367782 (n + 1)

theorem P17228893178319578665.correct : P17228893178319578665.Spec := by
  intro n
  simp only [A367782, Nat.add_sub_cancel]

end A367782

/-!
# A367783: Number of subsets of the integer lattice Z^2 of cardinality n such that there is no monotone lattice path which splits the set in half, up to shifts.

The programs for A367783, there is no canonical definition to state claims against.
-/

/-! ## A367783.P1184869633620108207

`A064532(3^A032742(n+1))`
-/

namespace A367783.P1184869633620108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A032742 (n + 1) : ℤ))).toNat

end

end A367783.P1184869633620108207

/-! ## A367783.P3739587537314192695

`A064532(3^A280497(n+1))`
-/

namespace A367783.P3739587537314192695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A280497 (n + 1) : ℤ))).toNat

end

end A367783.P3739587537314192695

/-! ## A367783.P4038625890290420951

`A124766(A053707(n+1))*A369382(n+1)`
-/

namespace A367783.P4038625890290420951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A053707 (n + 1)).toNat * A369382 (n + 1)

end

end A367783.P4038625890290420951

/-! ## A367783.P3332035270192358218

`A181670(A020639(n+2))%A079106(n+1)`
-/

namespace A367783.P3332035270192358218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181670 (A020639 (n + 2)).toNat) (A079106 (n + 1))

end

end A367783.P3332035270192358218

/-!
# A367785: Expansion of e.g.f. exp(exp(3*x) - x - 1).

The programs for A367785, there is no canonical definition to state claims against.
-/

/-! ## A367785.P16553249999906512978

`A049988(xor(n, A127129(n+2)))`
-/

namespace A367785.P16553249999906512978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (Int.xor (n : ℤ) (A127129 (n + 2))).toNat

end

end A367785.P16553249999906512978

/-!
# A367786: Expansion of e.g.f. exp(exp(4*x) - x - 1).

The programs for A367786, there is no canonical definition to state claims against.
-/

/-! ## A367786.P11263067960635035523

`A051532(A078456(n+1))`
-/

namespace A367786.P11263067960635035523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (A078456 (n + 1)).toNat

end

end A367786.P11263067960635035523

/-!
# A367788: Let b(0) = 1, b(n) = Sum_{k=0..n-1} b(k) / b(n-k-1), then a(n) is the denominator of b(n).

The programs for A367788, there is no canonical definition to state claims against.
-/

/-! ## A367788.P1894731227377595376

`A121424(∏[ceil(sqrt(n))!])`
-/

namespace A367788.P1894731227377595376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A367788.P1894731227377595376

/-! ## A367788.P16525039251347079388

`A321721(xor(1, n*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A367788.P16525039251347079388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A321721 (Int.xor 1 ((n : ℤ) * a (n - 1))).toNat

end

end A367788.P16525039251347079388

/-!
# A367789: E.g.f. satisfies A(x) = exp( x/(1-x)^3 * A(x) ).

The programs for A367789, there is no canonical definition to state claims against.
-/

/-! ## A367789.P15212138987488715891

`A285676(A008548(n))`
-/

namespace A367789.P15212138987488715891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285676 (A008548 n).toNat

end

end A367789.P15212138987488715891

/-!
# A367790: E.g.f. satisfies A(x) = exp( x/(1-x)^4 * A(x) ).

The programs for A367790, there is no canonical definition to state claims against.
-/

/-! ## A367790.P16133010485707923305

`A331948(A078678(n))-∏{e}[n+1, #+1]`
-/

namespace A367790.P16133010485707923305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331948 (A078678 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A367790.P16133010485707923305

/-!
# A367792: Centered 10-gonal numbers which are products of two primes.

The programs for A367792, there is no canonical definition to state claims against.
-/

/-! ## A367792.P672810947177244525

`filter[A032527(n+2), A356163(#)]`
-/

namespace A367792.P672810947177244525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A367792.P672810947177244525

/-! ## A367792.P10108091784382378197

`filter[A032527(n+2), A359170(#)]`
-/

namespace A367792.P10108091784382378197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A367792.P10108091784382378197

/-! ## A367792.P17445267287313872546

`filter[A032527(n+2), A359370(#)]`
-/

namespace A367792.P17445267287313872546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A367792.P17445267287313872546

/-! ## A367792.P18167340098318914780

`filter[A032527(n+2), A359595(#)]`
-/

namespace A367792.P18167340098318914780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A367792.P18167340098318914780

/-! ## A367792.P7747843476965382503

`filter[A032527(n+2), A359764(#)]`
-/

namespace A367792.P7747843476965382503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A367792.P7747843476965382503

/-! ## A367792.P540628339518487914

`filter[A032527(n+2), A359774(#)]`
-/

namespace A367792.P540628339518487914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A367792.P540628339518487914

/-! ## A367792.P15260205852024319930

`filter[A032527(n+2), A359820(#)]`
-/

namespace A367792.P15260205852024319930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A367792.P15260205852024319930

/-! ## A367792.P8241323922090732355

`filter[A032527(n+2), A359824(#)]`
-/

namespace A367792.P8241323922090732355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A367792.P8241323922090732355

/-! ## A367792.P7856883589626734398

`filter[A032527(n+2), A370124(#)]`
-/

namespace A367792.P7856883589626734398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A367792.P7856883589626734398

/-! ## A367792.P655000589916141150

`filter[A032527(n+2), A373374(#)]`
-/

namespace A367792.P655000589916141150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A367792.P655000589916141150

/-!
# A367793: Primes p such that the sum of p and its reversal is a semiprime.

The programs for A367793, there is no canonical definition to state claims against.
-/

/-! ## A367793.P4770915833340813352

`A046704(A046100(n+1)%A213106(2*(n+3)))`
-/

namespace A367793.P4770915833340813352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (Int.tmod (A046100 (n + 1)) (A213106 (2 * (n + 3)))).toNat

end

end A367793.P4770915833340813352

/-!
# A367794: G.f. A(x) satisfies A(x) = 1 / (1 - x * A(x^4)).

The programs for A367794, there is no canonical definition to state claims against.
-/

/-! ## A367794.P7032154611756157124

`A352043(n)%∑[A354265(3*n)]`
-/

namespace A367794.P7032154611756157124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354265 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352043 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367794.P7032154611756157124

/-! ## A367794.P6811528359438701072

`A352043(floor(1/A352016(3*n+4)+n))`
-/

namespace A367794.P6811528359438701072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352043 ⌊1 / (A352016 (3 * n + 4) : ℚ) + (n : ℚ)⌋.toNat

end

end A367794.P6811528359438701072

/-! ## A367794.P12614100061060218250

`A055641(A113177(n+1))+A003269(n)`
-/

namespace A367794.P12614100061060218250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A113177 (n + 1)).toNat + A003269 n

end

end A367794.P12614100061060218250

/-! ## A367794.P17602303463003352157

`A352043(n)+A000007(A000043(n+1))`
-/

namespace A367794.P17602303463003352157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352043 n + A000007 (A000043 (n + 1)).toNat

end

end A367794.P17602303463003352157

/-! ## A367794.P5556098344609031068

`A352043(n)+A000007(A006128(n+1))`
-/

namespace A367794.P5556098344609031068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352043 n + A000007 (A006128 (n + 1)).toNat

end

end A367794.P5556098344609031068

/-!
# A367796: Primes p such that the sum of p and its reversal is the square of a prime.

The programs for A367796, there is no canonical definition to state claims against.
-/

/-! ## A367796.P6637978886842923226

`∩[A059799(n+1), A192585(n+1)]`
-/

namespace A367796.P6637978886842923226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367796.P6637978886842923226

/-!
# A367797: The successive digits of the number k are the successive "inside Levenshtein distances" of k (except for the last digit of k). See the Comment section for the definition of an "inside Levenshtein distance".

The programs for A367797, there is no canonical definition to state claims against.
-/

/-! ## A367797.P12854137727511847415

`eq[A154781(n), A349315(n)]`
-/

namespace A367797.P12854137727511847415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367797.P12854137727511847415

/-!
# A367799: Ordinal transform of the final nonzero digit of the factorial numbers.

The programs for A367799, there is no canonical definition to state claims against.
-/

/-! ## A367799.P13656787432004721051

`gcd(A104246(A338349(n+1)), A236299(2*n+5))`
-/

namespace A367799.P13656787432004721051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104246 (A338349 (n + 1)).toNat) (A236299 (2 * n + 5))

end

end A367799.P13656787432004721051

