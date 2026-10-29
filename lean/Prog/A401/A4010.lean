import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A401000: Number of free left-handed polymarquises with n cells.

The programs for A401000, there is no canonical definition to state claims against.
-/

/-! ## A401000.P7155116213849568759

`A267301(A295136(n))`
-/

namespace A401000.P7155116213849568759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A295136 n).toNat

end

end A401000.P7155116213849568759

/-!
# A401002: Pythagorean primes p = x^2 + y^2 with integers x > y > 0 for which one Pell-type recurrence step (x, y) -> (2*x + y, x) gives another Pythagorean prime q = (2*x + y)^2 + x^2.

The programs for A401002, there is no canonical definition to state claims against.
-/

/-! ## A401002.P7281469083249528619

`A093413(A074339(n+1))`
-/

namespace A401002.P7281469083249528619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A074339 (n + 1)).toNat

end

end A401002.P7281469083249528619

/-!
# A401003: Sum of two squares obtained from the n-th Pythagorean prime by one Pell-type recurrence step: a(n) = (2*x + y)^2 + x^2, where x > y > 0 are integers and x^2 + y^2 = A002144(n).

The programs for A401003, there is no canonical definition to state claims against.
-/

/-! ## A401003.P5495022570999495814

`(2*A002330(n+2)+A002331(n+2))²+A002330(n+2)²`
-/

namespace A401003.P5495022570999495814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002330 (n + 2) + A002331 (n + 2)) ^ 2 + A002330 (n + 2) ^ 2

end

end A401003.P5495022570999495814

/-! ## A401003.P2251095579857488300

`A401004(n+1)/A080109(n+1)`
-/

namespace A401003.P2251095579857488300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / (A080109 (n + 1) : ℚ)

end

end A401003.P2251095579857488300

/-! ## A401003.P10070778121306571242

`A401004(n+1)/(A002144(n+1)*A002144(n+1))`
-/

namespace A401003.P10070778121306571242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / (A002144 (n + 1) * A002144 (n + 1) : ℚ)

end

end A401003.P10070778121306571242

/-!
# A401004: Square roots of the central entries in a six-square 3 X 3 magic-square construction from Pythagorean primes using a Pell-type recurrence.

The programs for A401004, there is no canonical definition to state claims against.
-/

/-! ## A401004.P2644609200185116423

`A002144(n+1)²*A401003(n+1)`
-/

namespace A401004.P2644609200185116423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 2 * A401003 (n + 1)

end

end A401004.P2644609200185116423

/-! ## A401004.P2678108300751232267

`A080109(n+1)*A401003(n+1)`
-/

namespace A401004.P2678108300751232267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080109 (n + 1) * A401003 (n + 1)

end

end A401004.P2678108300751232267

/-! ## A401004.P4835348270474562892

`A002313(n+2)*A002313(n+2)*A401003(n+1)`
-/

namespace A401004.P4835348270474562892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A002313 (n + 2) * A401003 (n + 1)

end

end A401004.P4835348270474562892

/-!
# A401008: a(n) = the number of odd non-divisors of n in 1..n.

The programs for A401008, the canonical program `A401008.P3884751415526295586` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401008 has offset 1).

The definition of A401008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401008.P12053481493114813733

`A049820(n+1)-A401009(n+1)`
-/

namespace A401008.P12053481493114813733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A401009 (n + 1)

end

end A401008.P12053481493114813733

namespace A401008

/-- `A049820(n+1)-A401009(n+1)` -/
def P12053481493114813733.Spec : Prop :=
  ∀ n, P12053481493114813733.a n = A401008 (n + 1)

theorem P12053481493114813733.correct : P12053481493114813733.Spec := by
  intro n
  simp only [A401008, Nat.add_sub_cancel, A401008.P12053481493114813733.a, A401008.P3884751415526295586.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A049820, A049820.P9428372222244335888.a, A065033, A065033.P13150710762287634520.a, A401009, A401009.P808647470638771537.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401008

/-! ## A401008.P3884751415526295586

`A065033(n+1)-A001227(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401008

/-- `A065033(n+1)-A001227(n+1)` -/
def P3884751415526295586.Spec : Prop :=
  ∀ n, P3884751415526295586.a n = A401008 (n + 1)

theorem P3884751415526295586.correct : P3884751415526295586.Spec := by
  intro n
  simp only [A401008, Nat.add_sub_cancel]

end A401008

/-! ## A401008.P14699005641388298400

`A008619(n)-A001227(n+1)`
-/

namespace A401008.P14699005641388298400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A001227 (n + 1)

end

end A401008.P14699005641388298400

namespace A401008

/-- `A008619(n)-A001227(n+1)` -/
def P14699005641388298400.Spec : Prop :=
  ∀ n, P14699005641388298400.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P15649439265844745270

`A110654(n)-A091954(n+1)`
-/

namespace A401008.P15649439265844745270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A091954 (n + 1)

end

end A401008.P15649439265844745270

namespace A401008

/-- `A110654(n)-A091954(n+1)` -/
def P15649439265844745270.Spec : Prop :=
  ∀ n, P15649439265844745270.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P14202637006524616308

`A347286(n+1)-A110654(n)`
-/

namespace A401008.P14202637006524616308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (n + 1) - A110654 n

end

end A401008.P14202637006524616308

namespace A401008

/-- `A347286(n+1)-A110654(n)` -/
def P14202637006524616308.Spec : Prop :=
  ∀ n, P14202637006524616308.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P1628139158564513371

`A347286(n+1)%A065033(n)`
-/

namespace A401008.P1628139158564513371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347286 (n + 1)) (A065033 n)

end

end A401008.P1628139158564513371

namespace A401008

/-- `A347286(n+1)%A065033(n)` -/
def P1628139158564513371.Spec : Prop :=
  ∀ n, P1628139158564513371.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P7304193086554171897

`A004526(n)+1-A001227(n+1)`
-/

namespace A401008.P7304193086554171897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 - A001227 (n + 1)

end

end A401008.P7304193086554171897

namespace A401008

/-- `A004526(n)+1-A001227(n+1)` -/
def P7304193086554171897.Spec : Prop :=
  ∀ n, P7304193086554171897.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P11222361927850504389

`A110654(n+1)-A001227(n+1)`
-/

namespace A401008.P11222361927850504389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) - A001227 (n + 1)

end

end A401008.P11222361927850504389

namespace A401008

/-- `A110654(n+1)-A001227(n+1)` -/
def P11222361927850504389.Spec : Prop :=
  ∀ n, P11222361927850504389.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P998077876078578963

`A088922(n+1)-A069930(n+1)`
-/

namespace A401008.P998077876078578963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) - A069930 (n + 1)

end

end A401008.P998077876078578963

namespace A401008

/-- `A088922(n+1)-A069930(n+1)` -/
def P998077876078578963.Spec : Prop :=
  ∀ n, P998077876078578963.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P1185645001292330363

`A234306(n+1)-A003165(n+1)`
-/

namespace A401008.P1185645001292330363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234306 (n + 1) - A003165 (n + 1)

end

end A401008.P1185645001292330363

namespace A401008

/-- `A234306(n+1)-A003165(n+1)` -/
def P1185645001292330363.Spec : Prop :=
  ∀ n, P1185645001292330363.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P13303999307169144504

`A140106(n+1)-A111775(n+1)`
-/

namespace A401008.P13303999307169144504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) - A111775 (n + 1)

end

end A401008.P13303999307169144504

namespace A401008

/-- `A140106(n+1)-A111775(n+1)` -/
def P13303999307169144504.Spec : Prop :=
  ∀ n, P13303999307169144504.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P7135737489657608168

`A361003(n+1)-A066660(n+1)`
-/

namespace A401008.P7135737489657608168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (n + 1) - A066660 (n + 1)

end

end A401008.P7135737489657608168

namespace A401008

/-- `A361003(n+1)-A066660(n+1)` -/
def P7135737489657608168.Spec : Prop :=
  ∀ n, P7135737489657608168.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P6012089498156251217

`A183063(n+1)+A049820(n+1)-A004526(n+1)`
-/

namespace A401008.P6012089498156251217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A049820 (n + 1) - A004526 (n + 1)

end

end A401008.P6012089498156251217

namespace A401008

/-- `A183063(n+1)+A049820(n+1)-A004526(n+1)` -/
def P6012089498156251217.Spec : Prop :=
  ∀ n, P6012089498156251217.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P16375509442860797824

`A123108(n+2)-A001227(n+1)`
-/

namespace A401008.P16375509442860797824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 2) - A001227 (n + 1)

end

end A401008.P16375509442860797824

namespace A401008

/-- `A123108(n+2)-A001227(n+1)` -/
def P16375509442860797824.Spec : Prop :=
  ∀ n, P16375509442860797824.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P4949787271247974365

`A003165(2*(n+1))-A003165(n+1)`
-/

namespace A401008.P4949787271247974365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (2 * (n + 1)) - A003165 (n + 1)

end

end A401008.P4949787271247974365

namespace A401008

/-- `A003165(2*(n+1))-A003165(n+1)` -/
def P4949787271247974365.Spec : Prop :=
  ∀ n, P4949787271247974365.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P15473457844874396418

`A401009(2*(n+1))-A401009(n+1)`
-/

namespace A401008.P15473457844874396418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401009 (2 * (n + 1)) - A401009 (n + 1)

end

end A401008.P15473457844874396418

namespace A401008

/-- `A401009(2*(n+1))-A401009(n+1)` -/
def P15473457844874396418.Spec : Prop :=
  ∀ n, P15473457844874396418.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P110101287354582532

`(n+1-A086374(n+1))/2`
-/

namespace A401008.P110101287354582532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A086374 (n + 1) : ℚ) / 2

end

end A401008.P110101287354582532

namespace A401008

/-- `(n+1-A086374(n+1))/2` -/
def P110101287354582532.Spec : Prop :=
  ∀ n, P110101287354582532.a n = (A401008 (n + 1) : ℚ)

end A401008

/-!
# A401009: a(n) = the number of even non-divisors of n in 1..n.

The programs for A401009, the canonical program `A401009.P808647470638771537` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401009 has offset 1).

The definition of A401009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401009.P808647470638771537

`A049820(n+1)-A401008(n+1)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A401009

/-- `A049820(n+1)-A401008(n+1)` -/
def P808647470638771537.Spec : Prop :=
  ∀ n, P808647470638771537.a n = A401009 (n + 1)

theorem P808647470638771537.correct : P808647470638771537.Spec := by
  intro n
  simp only [A401009, Nat.add_sub_cancel]

end A401009

/-! ## A401009.P9789977449157073131

`A004526(n+1)-A183063(n+1)`
-/

namespace A401009.P9789977449157073131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A183063 (n + 1)

end

end A401009.P9789977449157073131

namespace A401009

/-- `A004526(n+1)-A183063(n+1)` -/
def P9789977449157073131.Spec : Prop :=
  ∀ n, P9789977449157073131.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P2362431168100496771

`A110654(n)-A183063(n+1)`
-/

namespace A401009.P2362431168100496771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A183063 (n + 1)

end

end A401009.P2362431168100496771

namespace A401009

/-- `A110654(n)-A183063(n+1)` -/
def P2362431168100496771.Spec : Prop :=
  ∀ n, P2362431168100496771.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P13856891197804413919

`A049820(n+1)+A001227(n+1)-A008619(n)`
-/

namespace A401009.P13856891197804413919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001227 (n + 1) - A008619 n

end

end A401009.P13856891197804413919

namespace A401009

/-- `A049820(n+1)+A001227(n+1)-A008619(n)` -/
def P13856891197804413919.Spec : Prop :=
  ∀ n, P13856891197804413919.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P12689956694763346524

`A048272(n+1)+A004526(n+1)-A001227(n+1)`
-/

namespace A401009.P12689956694763346524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + A004526 (n + 1) - A001227 (n + 1)

end

end A401009.P12689956694763346524

namespace A401009

/-- `A048272(n+1)+A004526(n+1)-A001227(n+1)` -/
def P12689956694763346524.Spec : Prop :=
  ∀ n, P12689956694763346524.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P12637143157176366507

`A049820(n+1)+A001227(n+1)-A065033(n+1)`
-/

namespace A401009.P12637143157176366507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001227 (n + 1) - A065033 (n + 1)

end

end A401009.P12637143157176366507

namespace A401009

/-- `A049820(n+1)+A001227(n+1)-A065033(n+1)` -/
def P12637143157176366507.Spec : Prop :=
  ∀ n, P12637143157176366507.a n = A401009 (n + 1)

theorem P12637143157176366507.correct : P12637143157176366507.Spec := by
  intro n
  simp only [A401009, Nat.add_sub_cancel, A401009.P12637143157176366507.a, A401009.P808647470638771537.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A049820, A049820.P9428372222244335888.a, A065033, A065033.P13150710762287634520.a, A401008, A401008.P3884751415526295586.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401009

/-! ## A401009.P3361829307828545306

`A048272(2*(n+1))+A004526(n+1)`
-/

namespace A401009.P3361829307828545306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (2 * (n + 1)) + A004526 (n + 1)

end

end A401009.P3361829307828545306

namespace A401009

/-- `A048272(2*(n+1))+A004526(n+1)` -/
def P3361829307828545306.Spec : Prop :=
  ∀ n, P3361829307828545306.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P15323726254243621811

`A308167(n+1)+A177236(n+1)`
-/

namespace A401009.P15323726254243621811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308167 (n + 1) + A177236 (n + 1)

end

end A401009.P15323726254243621811

namespace A401009

/-- `A308167(n+1)+A177236(n+1)` -/
def P15323726254243621811.Spec : Prop :=
  ∀ n, P15323726254243621811.a n = A401009 (n + 1)

end A401009

/-!
# A401014: Maximum number of distinct prime divisors of n+k greater than k, over all integers k >= 1.

The programs for A401014, there is no canonical definition to state claims against.
-/

/-! ## A401014.P14177661081704746490

`A043537(A087712(n+2))`
-/

namespace A401014.P14177661081704746490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A087712 (n + 2)).toNat

end

end A401014.P14177661081704746490

/-! ## A401014.P14147831274625686464

`A043537(A127668(n+2))`
-/

namespace A401014.P14147831274625686464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A127668 (n + 2)).toNat

end

end A401014.P14147831274625686464

/-! ## A401014.P10239315429028543124

`A293460(A090106(n+1))`
-/

namespace A401014.P10239315429028543124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293460 (A090106 (n + 1)).toNat

end

end A401014.P10239315429028543124

/-! ## A401014.P13259581049237914056

`A175409(A079892(n+2))`
-/

namespace A401014.P13259581049237914056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175409 (A079892 (n + 2)).toNat

end

end A401014.P13259581049237914056

/-! ## A401014.P11304603896010119910

`A032556(A329025(n+2))`
-/

namespace A401014.P11304603896010119910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032556 (A329025 (n + 2)).toNat

end

end A401014.P11304603896010119910

/-!
# A401015: Digital roots of A006527(n), the number of unit tetrahedra in a regular tetrahedron subdivided into a tetrahedral-octahedral lattice.

The programs for A401015, the canonical program `A401015.P7410585718763402089` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401015 has offset 0).

The definition of A401015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401015.P7410585718763402089

`1+((n^3+2*n)/3-1)%9`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401015

/-- `1+((n^3+2*n)/3-1)%9` -/
def P7410585718763402089.Spec : Prop :=
  ∀ n, P7410585718763402089.a n = A401015 n

theorem P7410585718763402089.correct : P7410585718763402089.Spec := by
  intro n
  simp only [A401015]

end A401015

/-!
# A401016: Period 4: repeat [1, 3, 2, 4].

The programs for A401016, the canonical program `A401016.P10902171059879580111` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401016 has offset 0).

The definition of A401016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401016.P10902171059879580111

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401016

/-- `a(n-4)` -/
def P10902171059879580111.Spec : Prop :=
  ∀ n, (P10902171059879580111.a n : ℤ) = A401016 n

theorem P10902171059879580111.correct : P10902171059879580111.Spec := by
  intro n
  simp only [A401016]

end A401016

/-!
# A401017: Sprague-Grundy values of the take-away game in which a player may remove between 1 and floor(sqrt(n)) stones from a pile of n stones.

The programs for A401017, there is no canonical definition to state claims against.
-/

/-! ## A401017.P12252709923957331736

`A025480(A199474(n+1))`
-/

namespace A401017.P12252709923957331736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A199474 (n + 1)).toNat

end

end A401017.P12252709923957331736

/-! ## A401017.P16163226432953396573

`A065339(A003598(n+2))`
-/

namespace A401017.P16163226432953396573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003598 (n + 2)).toNat

end

end A401017.P16163226432953396573

/-! ## A401017.P14585182050956775104

`A046080(A107710(n+2))`
-/

namespace A401017.P14585182050956775104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A107710 (n + 2)).toNat

end

end A401017.P14585182050956775104

/-! ## A401017.P16257378831377961651

`A022337(A055457(A195760(n+1))+n)`
-/

namespace A401017.P16257378831377961651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (A055457 (A195760 (n + 1)).toNat + (n : ℤ)).toNat

end

end A401017.P16257378831377961651

/-! ## A401017.P4880215153072984299

`A022337(A112765(A195760(n+1))+n+1)`
-/

namespace A401017.P4880215153072984299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (A112765 (A195760 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A401017.P4880215153072984299

/-!
# A401018: Half the number of changes in the cyclic column words of the Gosper-Lafitte triangle.

The programs for A401018, there is no canonical definition to state claims against.
-/

/-! ## A401018.P15327782402619098147

`A100260(A321898(n+1))`
-/

namespace A401018.P15327782402619098147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A321898 (n + 1)).toNat

end

end A401018.P15327782402619098147

/-! ## A401018.P8731774816902597136

`A340691(A372166(n+1))`
-/

namespace A401018.P8731774816902597136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (A372166 (n + 1)).toNat

end

end A401018.P8731774816902597136

/-!
# A401020: a(n) is the least prime p such that there are exactly n numbers k such that A175508(k) = p.

The programs for A401020, there is no canonical definition to state claims against.
-/

/-! ## A401020.P1917541448084246763

`A227828(A041811(n+1))`
-/

namespace A401020.P1917541448084246763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227828 (A041811 (n + 1)).toNat

end

end A401020.P1917541448084246763

/-!
# A401022: Largest 3-smooth divisor of n*(n+1).

The programs for A401022, the canonical program `A401022.P16118425534443193509` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401022 has offset 1).

The definition of A401022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401022.P6768020743559926942

`2^val((n+1)*(n+2), 2)*3^val((n+1)*(n+2), 3)`
-/

namespace A401022.P6768020743559926942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2 * 3 ^ SequenceMachineLib.valuation ((n + 1) * (n + 2)) 3

end

end A401022.P6768020743559926942

namespace A401022

/-- `2^val((n+1)*(n+2), 2)*3^val((n+1)*(n+2), 3)` -/
def P6768020743559926942.Spec : Prop :=
  ∀ n, (P6768020743559926942.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P16118425534443193509

`A065331(n+1)*A065331(n+2)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401022

/-- `A065331(n+1)*A065331(n+2)` -/
def P16118425534443193509.Spec : Prop :=
  ∀ n, P16118425534443193509.a n = A401022 (n + 1)

theorem P16118425534443193509.correct : P16118425534443193509.Spec := by
  intro n
  simp only [A401022, Nat.add_sub_cancel]

end A401022

/-! ## A401022.P5794116699033027402

`A065331((n+1)*(n+2))`
-/

namespace A401022.P5794116699033027402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 ((n + 1) * (n + 2))

end

end A401022.P5794116699033027402

namespace A401022

/-- `A065331((n+1)*(n+2))` -/
def P5794116699033027402.Spec : Prop :=
  ∀ n, P5794116699033027402.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P8069818484528314985

`gcd(A157056(n+1), A249227(n+1))`
-/

namespace A401022.P8069818484528314985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157056 (n + 1)) (A249227 (n + 1))

end

end A401022.P8069818484528314985

namespace A401022

/-- `gcd(A157056(n+1), A249227(n+1))` -/
def P8069818484528314985.Spec : Prop :=
  ∀ n, (P8069818484528314985.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P5742567411211596510

`A003586(A322026((n+1)*(n+2)))`
-/

namespace A401022.P5742567411211596510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A322026 ((n + 1) * (n + 2))).toNat

end

end A401022.P5742567411211596510

namespace A401022

/-- `A003586(A322026((n+1)*(n+2)))` -/
def P5742567411211596510.Spec : Prop :=
  ∀ n, P5742567411211596510.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P8453191176437644635

`A118381(n+2)/(A060818(n)*A060828(n))`
-/

namespace A401022.P8453191176437644635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118381 (n + 2) : ℚ) / (A060818 n * A060828 n : ℚ)

end

end A401022.P8453191176437644635

namespace A401022

/-- `A118381(n+2)/(A060818(n)*A060828(n))` -/
def P8453191176437644635.Spec : Prop :=
  ∀ n, P8453191176437644635.a n = (A401022 (n + 1) : ℚ)

end A401022

/-! ## A401022.P3430108839551934844

`gcd((n+1)*(n+2), 6^(n+1))`
-/

namespace A401022.P3430108839551934844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (n + 2)) (6 ^ (n + 1))

end

end A401022.P3430108839551934844

namespace A401022

/-- `gcd((n+1)*(n+2), 6^(n+1))` -/
def P3430108839551934844.Spec : Prop :=
  ∀ n, (P3430108839551934844.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P4983299216625799933

`A284255(2*∑[n+1])`
-/

namespace A401022.P4983299216625799933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401022.P4983299216625799933

namespace A401022

/-- `A284255(2*∑[n+1])` -/
def P4983299216625799933.Spec : Prop :=
  ∀ n, P4983299216625799933.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P12061965534667983868

`A066262(A066262((n+1)*(n+2)))`
-/

namespace A401022.P12061965534667983868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066262 (A066262 ((n + 1) * (n + 2))).toNat

end

end A401022.P12061965534667983868

namespace A401022

/-- `A066262(A066262((n+1)*(n+2)))` -/
def P12061965534667983868.Spec : Prop :=
  ∀ n, P12061965534667983868.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P6364654587325675369

`A355582(A132739((n+1)*(n+2)))`
-/

namespace A401022.P6364654587325675369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A132739 ((n + 1) * (n + 2))).toNat

end

end A401022.P6364654587325675369

namespace A401022

/-- `A355582(A132739((n+1)*(n+2)))` -/
def P6364654587325675369.Spec : Prop :=
  ∀ n, P6364654587325675369.a n = A401022 (n + 1)

end A401022

/-!
# A401024: Primes p such that A075255(k) = p for some k.

The programs for A401024, there is no canonical definition to state claims against.
-/

/-! ## A401024.P15647856298627856160

`eq[A240205(n), A340988(n)]`
-/

namespace A401024.P15647856298627856160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 (n + 91)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401024.P15647856298627856160

/-! ## A401024.P13860962081160996014

`A139637(A095074(n+2))`
-/

namespace A401024.P13860962081160996014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A095074 (n + 2)).toNat

end

end A401024.P13860962081160996014

/-!
# A401030: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = NAND(T(n-1,k-1), T(n-1,k)) for 0 < k < n, where NAND is the Boolean logic gate.

The programs for A401030, the canonical program `A401030.P17939284489485883793` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401030 has offset 0).

The definition of A401030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401030.P17939284489485883793

`1-T(n-1,k)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401030

/-- `1-T(n-1,k)*T(n-1,k-1)` -/
def P17939284489485883793.Spec : Prop :=
  ∀ n, P17939284489485883793.a n = A401030 n

theorem P17939284489485883793.correct : P17939284489485883793.Spec := by
  intro n
  simp only [A401030]

end A401030

/-! ## A401030.P2793449910810655688

`A318274(n)%2`
-/

namespace A401030.P2793449910810655688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318274 n) 2

end

end A401030.P2793449910810655688

namespace A401030

/-- `A318274(n)%2` -/
def P2793449910810655688.Spec : Prop :=
  ∀ n, P2793449910810655688.a n = A401030 n

end A401030

/-! ## A401030.P2904003112292989714

`A140081(A157654(n))`
-/

namespace A401030.P2904003112292989714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (A157654 n).toNat

end

end A401030.P2904003112292989714

namespace A401030

/-- `A140081(A157654(n))` -/
def P2904003112292989714.Spec : Prop :=
  ∀ n, P2904003112292989714.a n = A401030 n

end A401030

/-! ## A401030.P6450876595301700634

`A000035(A318274(n))`
-/

namespace A401030.P6450876595301700634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A318274 n).toNat

end

end A401030.P6450876595301700634

namespace A401030

/-- `A000035(A318274(n))` -/
def P6450876595301700634.Spec : Prop :=
  ∀ n, P6450876595301700634.a n = A401030 n

end A401030

/-! ## A401030.P6115030496895084751

`A128174(A177990(n+1)+n)`
-/

namespace A401030.P6115030496895084751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A177990 (n + 1) + (n : ℤ)).toNat

end

end A401030.P6115030496895084751

namespace A401030

/-- `A128174(A177990(n+1)+n)` -/
def P6115030496895084751.Spec : Prop :=
  ∀ n, P6115030496895084751.a n = A401030 n

end A401030

/-! ## A401030.P9912344919571675331

`A128174(A376583(n+2)+n)`
-/

namespace A401030.P9912344919571675331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A376583 (n + 2) + (n : ℤ)).toNat

end

end A401030.P9912344919571675331

namespace A401030

/-- `A128174(A376583(n+2)+n)` -/
def P9912344919571675331.Spec : Prop :=
  ∀ n, P9912344919571675331.a n = A401030 n

end A401030

/-! ## A401030.P568877756231387279

`A128174(n+1-A060510(n+1))`
-/

namespace A401030.P568877756231387279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 ((n + 1 : ℤ) - A060510 (n + 1)).toNat

end

end A401030.P568877756231387279

namespace A401030

/-- `A128174(n+1-A060510(n+1))` -/
def P568877756231387279.Spec : Prop :=
  ∀ n, P568877756231387279.a n = A401030 n

end A401030

/-! ## A401030.P4372047776768838177

`A391747(A073060(n))`
-/

namespace A401030.P4372047776768838177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391747 (A073060 n).toNat

end

end A401030.P4372047776768838177

namespace A401030

/-- `A391747(A073060(n))` -/
def P4372047776768838177.Spec : Prop :=
  ∀ n, P4372047776768838177.a n = A401030 n

end A401030

/-! ## A401030.P2876838321389115108

`and(1, A127080(n+1))`
-/

namespace A401030.P2876838321389115108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127080 (n + 1))

end

end A401030.P2876838321389115108

namespace A401030

/-- `and(1, A127080(n+1))` -/
def P2876838321389115108.Spec : Prop :=
  ∀ n, P2876838321389115108.a n = A401030 n

end A401030

/-! ## A401030.P6328031751034635494

`A118102(A133280(n))`
-/

namespace A401030.P6328031751034635494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A133280 n).toNat

end

end A401030.P6328031751034635494

namespace A401030

/-- `A118102(A133280(n))` -/
def P6328031751034635494.Spec : Prop :=
  ∀ n, P6328031751034635494.a n = A401030 n

end A401030

/-! ## A401030.P12384811405414933446

`A266300(A176693(A329547(A128201(n+1))))`
-/

namespace A401030.P12384811405414933446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A176693 (A329547 (A128201 (n + 1)).toNat).toNat).toNat

end

end A401030.P12384811405414933446

namespace A401030

/-- `A266300(A176693(A329547(A128201(n+1))))` -/
def P12384811405414933446.Spec : Prop :=
  ∀ n, P12384811405414933446.a n = A401030 n

end A401030

/-! ## A401030.P9344887770499957374

`A354034(A081344(A329547(A128201(n+2))))`
-/

namespace A401030.P9344887770499957374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 (A081344 (A329547 (A128201 (n + 2)).toNat).toNat).toNat

end

end A401030.P9344887770499957374

namespace A401030

/-- `A354034(A081344(A329547(A128201(n+2))))` -/
def P9344887770499957374.Spec : Prop :=
  ∀ n, P9344887770499957374.a n = A401030 n

end A401030

/-! ## A401030.P8956602331147273725

`A266840(A266282(2*n+1)+2*n)`
-/

namespace A401030.P8956602331147273725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 (A266282 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A401030.P8956602331147273725

namespace A401030

/-- `A266840(A266282(2*n+1)+2*n)` -/
def P8956602331147273725.Spec : Prop :=
  ∀ n, P8956602331147273725.a n = A401030 n

end A401030

/-! ## A401030.P5758870419354553637

`A118102(A195437(n))`
-/

namespace A401030.P5758870419354553637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A195437 n).toNat

end

end A401030.P5758870419354553637

namespace A401030

/-- `A118102(A195437(n))` -/
def P5758870419354553637.Spec : Prop :=
  ∀ n, P5758870419354553637.a n = A401030 n

end A401030

/-! ## A401030.P11244540275975097220

`A156354(n)%2`
-/

namespace A401030.P11244540275975097220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156354 n) 2

end

end A401030.P11244540275975097220

namespace A401030

/-- `A156354(n)%2` -/
def P11244540275975097220.Spec : Prop :=
  ∀ n, P11244540275975097220.a n = A401030 n

end A401030

/-! ## A401030.P8609096682066085024

`A084061(n+1)%2`
-/

namespace A401030.P8609096682066085024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084061 (n + 1)) 2

end

end A401030.P8609096682066085024

namespace A401030

/-- `A084061(n+1)%2` -/
def P8609096682066085024.Spec : Prop :=
  ∀ n, P8609096682066085024.a n = A401030 n

end A401030

/-! ## A401030.P7370758478563716670

`A157192(n)%2`
-/

namespace A401030.P7370758478563716670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157192 n) 2

end

end A401030.P7370758478563716670

namespace A401030

/-- `A157192(n)%2` -/
def P7370758478563716670.Spec : Prop :=
  ∀ n, P7370758478563716670.a n = A401030 n

end A401030

/-! ## A401030.P16358957054600236480

`and(A156354(n), A195744(n))`
-/

namespace A401030.P16358957054600236480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156354 n) (A195744 n)

end

end A401030.P16358957054600236480

namespace A401030

/-- `and(A156354(n), A195744(n))` -/
def P16358957054600236480.Spec : Prop :=
  ∀ n, P16358957054600236480.a n = A401030 n

end A401030

/-! ## A401030.P10288396427021516865

`and(A157192(n), A195744(n))`
-/

namespace A401030.P10288396427021516865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157192 n) (A195744 n)

end

end A401030.P10288396427021516865

namespace A401030

/-- `and(A157192(n), A195744(n))` -/
def P10288396427021516865.Spec : Prop :=
  ∀ n, P10288396427021516865.a n = A401030 n

end A401030

/-! ## A401030.P14351566042111266293

`and(A156354(n), A196657(n))`
-/

namespace A401030.P14351566042111266293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156354 n) (A196657 n)

end

end A401030.P14351566042111266293

namespace A401030

/-- `and(A156354(n), A196657(n))` -/
def P14351566042111266293.Spec : Prop :=
  ∀ n, P14351566042111266293.a n = A401030 n

end A401030

/-!
# A401031: Number of compositions of n using 1's and 2's such that the number of 1's and 2's differ by 0 or 1.

The programs for A401031, the canonical program `A401031.P18122269830751302283` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401031 has offset 0).

The definition of A401031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401031.P18122269830751302283

`A001405(floor((1+2*n)/3))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401031

/-- `A001405(floor((1+2*n)/3))` -/
def P18122269830751302283.Spec : Prop :=
  ∀ n, P18122269830751302283.a n = A401031 n

theorem P18122269830751302283.correct : P18122269830751302283.Spec := by
  intro n
  simp only [A401031]

end A401031

/-! ## A401031.P17401014786967102446

`A210736(A322042(n+2))`
-/

namespace A401031.P17401014786967102446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A322042 (n + 2)).toNat

end

end A401031.P17401014786967102446

namespace A401031

/-- `A210736(A322042(n+2))` -/
def P17401014786967102446.Spec : Prop :=
  ∀ n, P17401014786967102446.a n = A401031 n

end A401031

/-! ## A401031.P1949099910066297899

`A129570(A251599(n+1))`
-/

namespace A401031.P1949099910066297899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129570 (A251599 (n + 1)).toNat

end

end A401031.P1949099910066297899

namespace A401031

/-- `A129570(A251599(n+1))` -/
def P1949099910066297899.Spec : Prop :=
  ∀ n, P1949099910066297899.a n = A401031 n

end A401031

/-! ## A401031.P2664326729397129933

`A194005(A111097(n+1))`
-/

namespace A401031.P2664326729397129933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A111097 (n + 1)).toNat

end

end A401031.P2664326729397129933

namespace A401031

/-- `A194005(A111097(n+1))` -/
def P2664326729397129933.Spec : Prop :=
  ∀ n, P2664326729397129933.a n = A401031 n

end A401031

/-! ## A401031.P17297711693880422754

`A194005(A389142(n+1))`
-/

namespace A401031.P17297711693880422754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A389142 (n + 1)).toNat

end

end A401031.P17297711693880422754

namespace A401031

/-- `A194005(A389142(n+1))` -/
def P17297711693880422754.Spec : Prop :=
  ∀ n, P17297711693880422754.a n = A401031 n

end A401031

/-! ## A401031.P2889104488829860945

`A052553(A171452(n+1))`
-/

namespace A401031.P2889104488829860945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A171452 (n + 1)).toNat

end

end A401031.P2889104488829860945

namespace A401031

/-- `A052553(A171452(n+1))` -/
def P2889104488829860945.Spec : Prop :=
  ∀ n, P2889104488829860945.a n = A401031 n

end A401031

/-! ## A401031.P15787410839900837770

`A046854(A024401(n+1))`
-/

namespace A401031.P15787410839900837770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A024401 (n + 1)).toNat

end

end A401031.P15787410839900837770

namespace A401031

/-- `A046854(A024401(n+1))` -/
def P15787410839900837770.Spec : Prop :=
  ∀ n, P15787410839900837770.a n = A401031 n

end A401031

/-! ## A401031.P11123572601500080407

`A152828(A143978(n+1))`
-/

namespace A401031.P11123572601500080407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 (A143978 (n + 1)).toNat

end

end A401031.P11123572601500080407

namespace A401031

/-- `A152828(A143978(n+1))` -/
def P11123572601500080407.Spec : Prop :=
  ∀ n, P11123572601500080407.a n = A401031 n

end A401031

/-! ## A401031.P12246609233915332254

`A152847(4*∑[n+1])`
-/

namespace A401031.P12246609233915332254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401031.P12246609233915332254

namespace A401031

/-- `A152847(4*∑[n+1])` -/
def P12246609233915332254.Spec : Prop :=
  ∀ n, P12246609233915332254.a n = A401031 n

end A401031

/-!
# A401033: Let m = prime(n), then a(n) is the smallest prime p for which (p^m-(q-p)^m)/(2*p-q) is prime where q is the next prime after p; or -1 if no such prime exists.

The programs for A401033, there is no canonical definition to state claims against.
-/

/-! ## A401033.P14003536091869996052

`A295510(A249768(n+1))`
-/

namespace A401033.P14003536091869996052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295510 (A249768 (n + 1)).toNat

end

end A401033.P14003536091869996052

/-!
# A401034: a(n) = n + x + y where x and y are the coordinates of n in the square spiral.

The programs for A401034, the canonical program `A401034.P16809251032672177720` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401034 has offset 1).

The definition of A401034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401034.P14854403763803228033

`n+1+A180714(n)`
-/

namespace A401034.P14854403763803228033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A180714 n

end

end A401034.P14854403763803228033

namespace A401034

/-- `n+1+A180714(n)` -/
def P14854403763803228033.Spec : Prop :=
  ∀ n, P14854403763803228033.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P16809251032672177720

`n+1+A174344(n+1)+A274923(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401034

/-- `n+1+A174344(n+1)+A274923(n+1)` -/
def P16809251032672177720.Spec : Prop :=
  ∀ n, P16809251032672177720.a n = A401034 (n + 1)

theorem P16809251032672177720.correct : P16809251032672177720.Spec := by
  intro n
  simp only [A401034, Nat.add_sub_cancel]

end A401034

/-! ## A401034.P5214206653925345647

`A359217(2*n)+n+1`
-/

namespace A401034.P5214206653925345647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359217 (2 * n) + (n + 1 : ℤ)

end

end A401034.P5214206653925345647

namespace A401034

/-- `A359217(2*n)+n+1` -/
def P5214206653925345647.Spec : Prop :=
  ∀ n, P5214206653925345647.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P15620743656226147366

`A274923(A217294(A090861(n+1)))+n+1`
-/

namespace A401034.P15620743656226147366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A217294 (A090861 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A401034.P15620743656226147366

namespace A401034

/-- `A274923(A217294(A090861(n+1)))+n+1` -/
def P15620743656226147366.Spec : Prop :=
  ∀ n, P15620743656226147366.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P16461355229430790609

`n+1-A274923(A217292(A217010(n+1)))`
-/

namespace A401034.P16461355229430790609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A274923 (A217292 (A217010 (n + 1)).toNat).toNat

end

end A401034.P16461355229430790609

namespace A401034

/-- `n+1-A274923(A217292(A217010(n+1)))` -/
def P16461355229430790609.Spec : Prop :=
  ∀ n, P16461355229430790609.a n = A401034 (n + 1)

end A401034

/-!
# A401038: a(1)=2, a(n)=(a(n-1)+prime(n))*prime(n) for n > 1.

The programs for A401038, the canonical program `A401038.P13661554946352965378` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401038 has offset 1).

The definition of A401038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401038.P13661554946352965378

`(a(n-1)+A000040(n+1))*A000040(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401038

/-- `(a(n-1)+A000040(n+1))*A000040(n+1)` -/
def P13661554946352965378.Spec : Prop :=
  ∀ n, P13661554946352965378.a n = A401038 (n + 1)

theorem P13661554946352965378.correct : P13661554946352965378.Spec := by
  intro n
  simp only [A401038, Nat.add_sub_cancel]

end A401038

/-! ## A401038.P12439759823672844111

`A098206(n+1)+A070826(n+1)`
-/

namespace A401038.P12439759823672844111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098206 (n + 1) + A070826 (n + 1)

end

end A401038.P12439759823672844111

namespace A401038

/-- `A098206(n+1)+A070826(n+1)` -/
def P12439759823672844111.Spec : Prop :=
  ∀ n, P12439759823672844111.a n = A401038 (n + 1)

end A401038

/-!
# A401039: Number of partitions of n into consecutive initial prime numbers.

The programs for A401039, there is no canonical definition to state claims against.
-/

/-! ## A401039.P16116818332893395293

`A035386(A187829(n+1))`
-/

namespace A401039.P16116818332893395293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (A187829 (n + 1)).toNat

end

end A401039.P16116818332893395293

/-! ## A401039.P16439320344286860228

`A035386(A077168(n))`
-/

namespace A401039.P16439320344286860228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (A077168 n).toNat

end

end A401039.P16439320344286860228

/-! ## A401039.P336359034123666644

`A379672(A380343(2*n+1)+n)`
-/

namespace A401039.P336359034123666644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A380343 (2 * n + 1) + (n : ℤ)).toNat

end

end A401039.P336359034123666644

/-!
# A401040: Irregular triangle read by rows: T(n,k) is the number of integers in [1,n] having no prime factor <= prime(k), for n >= 2 and 1 <= k <= pi(n).

The programs for A401040, there is no canonical definition to state claims against.
-/

/-! ## A401040.P15956059668278922602

`A097849(A119440(n+1))`
-/

namespace A401040.P15956059668278922602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A119440 (n + 1)).toNat

end

end A401040.P15956059668278922602

/-! ## A401040.P17231871438589577886

`A082091(A173279(n+1))`
-/

namespace A401040.P17231871438589577886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A173279 (n + 1)).toNat

end

end A401040.P17231871438589577886

/-! ## A401040.P6098719550270748094

`A372406(A029666(n+1))`
-/

namespace A401040.P6098719550270748094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372406 (A029666 (n + 1)).toNat

end

end A401040.P6098719550270748094

/-! ## A401040.P18452827284046804

`A231335(A173284(n+1))`
-/

namespace A401040.P18452827284046804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231335 (A173284 (n + 1)).toNat

end

end A401040.P18452827284046804

/-! ## A401040.P12628962019638900572

`A309806(A173108(n+1))`
-/

namespace A401040.P12628962019638900572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309806 (A173108 (n + 1)).toNat

end

end A401040.P12628962019638900572

/-!
# A401041: a(n) = Sum_{k=4..n, k composite} (pi(lpf(k)) - 1), where lpf(k) = A020639(k) is the least prime factor of k.

The programs for A401041, the canonical program `A401041.P2622199044534407254` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401041 has offset 1).

The definition of A401041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A182843, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401041.P2622199044534407254

`A182843(n+2)-C(A000720(n+1)+1, 2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A401041

/-- `A182843(n+2)-C(A000720(n+1)+1, 2)` -/
def P2622199044534407254.Spec : Prop :=
  ∀ n, P2622199044534407254.a n = A401041 (n + 1)

theorem P2622199044534407254.correct : P2622199044534407254.Spec := by
  intro n
  simp only [A401041, Nat.add_sub_cancel]

end A401041

/-! ## A401041.P4032051202711020643

`∑[A319689((n+1)²)]-n`
-/

namespace A401041.P4032051202711020643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A401041.P4032051202711020643

namespace A401041

/-- `∑[A319689((n+1)²)]-n` -/
def P4032051202711020643.Spec : Prop :=
  ∀ n, P4032051202711020643.a n = A401041 (n + 1)

end A401041

/-!
# A401045: Sexy roots: Numbers k such that k^2 is the sum of a pair of sexy primes (p,p'=p+6).

The programs for A401045, there is no canonical definition to state claims against.
-/

/-! ## A401045.P17908166425281109449

`sqrt(2*A086776(n+1)+6)`
-/

namespace A401045.P17908166425281109449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A086776 (n + 1) + 6 : ℝ)

end

end A401045.P17908166425281109449

/-! ## A401045.P11348791345233672879

`sqrt(A401046(n+1))`
-/

namespace A401045.P11348791345233672879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A401046 (n + 1) : ℝ)

end

end A401045.P11348791345233672879

/-!
# A401046: Sexy squares: squares that are the sum of two primes differing by 6.

The programs for A401046, there is no canonical definition to state claims against.
-/

/-! ## A401046.P3534575328182608918

`2*A086776(n+1)+6`
-/

namespace A401046.P3534575328182608918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086776 (n + 1) + 6

end

end A401046.P3534575328182608918

/-! ## A401046.P546481218877208920

`A401045(n+1)²`
-/

namespace A401046.P546481218877208920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401045 (n + 1) ^ 2

end

end A401046.P546481218877208920

/-! ## A401046.P13209663595265111374

`2*(A086776(n+1)+3)`
-/

namespace A401046.P13209663595265111374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086776 (n + 1) + 3)

end

end A401046.P13209663595265111374

/-! ## A401046.P8377934770480755091

`A000290(A401045(A000290(n+1)/(n+1)))`
-/

namespace A401046.P8377934770480755091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A401045 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A401046.P8377934770480755091

/-!
# A401050: Let p = prime(1+n); a(n) is the number of odd primes q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401050, there is no canonical definition to state claims against.
-/

/-! ## A401050.P10505396328011304855

`and(A302129(n), A401053(n))`
-/

namespace A401050.P10505396328011304855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302129 n) (A401053 n)

end

end A401050.P10505396328011304855

/-! ## A401050.P6436483121177387930

`and(A367218(n), A401053(n))`
-/

namespace A401050.P6436483121177387930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A367218 n) (A401053 n)

end

end A401050.P6436483121177387930

/-! ## A401050.P5576164997246107395

`and(A175399(n), A401053(n))`
-/

namespace A401050.P5576164997246107395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175399 n) (A401053 n)

end

end A401050.P5576164997246107395

/-! ## A401050.P10823181572649793359

`and(A130284(n+1), A401053(n))`
-/

namespace A401050.P10823181572649793359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130284 (n + 1)) (A401053 n)

end

end A401050.P10823181572649793359

/-! ## A401050.P10932939559864220248

`and(A161561(n+1), A401053(n))`
-/

namespace A401050.P10932939559864220248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161561 (n + 1)) (A401053 n)

end

end A401050.P10932939559864220248

/-!
# A401052: Largest such q listed for each prime p (A400842) for which there exists an odd prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401052, there is no canonical definition to state claims against.
-/

/-! ## A401052.P14534451066924974264

`A400838(A400839(n+1))`
-/

namespace A401052.P14534451066924974264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (A400839 (n + 1)).toNat

end

end A401052.P14534451066924974264

/-! ## A401052.P8217401756506669919

`p?[A400838(n+1)]`
-/

namespace A401052.P8217401756506669919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A401052.P8217401756506669919

/-! ## A401052.P17375197490396874431

`filter[A400838(n+1), A011558(#)]`
-/

namespace A401052.P17375197490396874431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A401052.P17375197490396874431

/-! ## A401052.P11015341046443742573

`filter[A400838(n+1), A014306(#)]`
-/

namespace A401052.P11015341046443742573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A401052.P11015341046443742573

/-! ## A401052.P10806208555692642343

`filter[A401062(n+1), A035263(#)]`
-/

namespace A401052.P10806208555692642343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A401052.P10806208555692642343

/-! ## A401052.P328449695559848050

`filter[A401062(n+1), A039982(#)]`
-/

namespace A401052.P328449695559848050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A401052.P328449695559848050

/-! ## A401052.P674789244611104030

`filter[A401062(n+1), A093719(#)]`
-/

namespace A401052.P674789244611104030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A401052.P674789244611104030

/-! ## A401052.P13810655503694857664

`filter[A400838(n+1), A098725(#)]`
-/

namespace A401052.P13810655503694857664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A401052.P13810655503694857664

/-! ## A401052.P13614842831878235566

`filter[A401062(n+1), A105234(#)]`
-/

namespace A401052.P13614842831878235566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A401052.P13614842831878235566

/-! ## A401052.P849254593688477491

`filter[A400838(n+1), A115971(#)]`
-/

namespace A401052.P849254593688477491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A401052.P849254593688477491

/-! ## A401052.P17042631157780703462

`filter[A401062(n+1), A115971(#)]`
-/

namespace A401052.P17042631157780703462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A401052.P17042631157780703462

/-! ## A401052.P5760795302863298607

`filter[A401062(n+1), A127254(#)]`
-/

namespace A401052.P5760795302863298607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A401052.P5760795302863298607

/-! ## A401052.P263338856149799738

`filter[A400838(n+1), A097325(#)]`
-/

namespace A401052.P263338856149799738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A401052.P263338856149799738

/-! ## A401052.P14596898996025216540

`filter[A400838(n+1), A000035(#)]`
-/

namespace A401052.P14596898996025216540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A401052.P14596898996025216540

/-! ## A401052.P13497716220103904235

`filter[A401062(n+1), A000035(#)]`
-/

namespace A401052.P13497716220103904235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A401052.P13497716220103904235

/-! ## A401052.P11456909080920386913

`filter[A400838(n+1), A023532(#)]`
-/

namespace A401052.P11456909080920386913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A401052.P11456909080920386913

/-! ## A401052.P10198624010593463089

`filter[A401062(n+1), A023532(#)]`
-/

namespace A401052.P10198624010593463089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A401052.P10198624010593463089

/-! ## A401052.P14926736071303661078

`filter[A401062(n+1), A080545(#)]`
-/

namespace A401052.P14926736071303661078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A401052.P14926736071303661078

/-! ## A401052.P12713390529822171417

`filter[A401062(n+1), A102863(#)]`
-/

namespace A401052.P12713390529822171417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A401052.P12713390529822171417

/-! ## A401052.P11544575516727901716

`filter[A401062(n+1), A104106(#)]`
-/

namespace A401052.P11544575516727901716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A401052.P11544575516727901716

/-!
# A401053: Let p = prime(1+n); a(n) is the number of primes q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401053, there is no canonical definition to state claims against.
-/

/-! ## A401053.P15340582859058319106

`A102024(n+1)%A054546(n+1)`
-/

namespace A401053.P15340582859058319106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102024 (n + 1)) (A054546 (n + 1))

end

end A401053.P15340582859058319106

/-! ## A401053.P2262229738132169371

`and(A083639(n+1), A400522(n+1))`
-/

namespace A401053.P2262229738132169371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083639 (n + 1)) (A400522 (n + 1))

end

end A401053.P2262229738132169371

/-!
# A401054: a(n) = 2*(product of first n primes) modulo prime(n+1).

The programs for A401054, there is no canonical definition to state claims against.
-/

/-! ## A401054.P9995003466733290399

`A391928(A227547(n+1))`
-/

namespace A401054.P9995003466733290399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A227547 (n + 1)).toNat

end

end A401054.P9995003466733290399

/-! ## A401054.P4261615774520217955

`A401066(A001248(n+1))`
-/

namespace A401054.P4261615774520217955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A001248 (n + 1)).toNat

end

end A401054.P4261615774520217955

/-! ## A401054.P18327701766091297776

`A401066(A359757(n+1))`
-/

namespace A401054.P18327701766091297776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A359757 (n + 1)).toNat

end

end A401054.P18327701766091297776

/-! ## A401054.P2134398715975095590

`A401066(A280076(n+2))`
-/

namespace A401054.P2134398715975095590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A280076 (n + 2)).toNat

end

end A401054.P2134398715975095590

/-! ## A401054.P16657849402251748772

`A401066(A000040(n+1)²)`
-/

namespace A401054.P16657849402251748772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A000040 (n + 1) ^ 2).toNat

end

end A401054.P16657849402251748772

/-!
# A401058: Let p = prime(1+n); a(n) is the number of primes q < p such that ((p#/p) / (q#/q)) == +1 mod p, where p# = A034386(p).

The programs for A401058, there is no canonical definition to state claims against.
-/

/-! ## A401058.P12179371422045861637

`A117943(A367481(n+2))`
-/

namespace A401058.P12179371422045861637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A367481 (n + 2)).toNat

end

end A401058.P12179371422045861637

/-! ## A401058.P11198222663578823323

`A341612(A103049(n+1))`
-/

namespace A401058.P11198222663578823323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (A103049 (n + 1)).toNat

end

end A401058.P11198222663578823323

/-! ## A401058.P5633469829695188398

`A080887(A272703(n))`
-/

namespace A401058.P5633469829695188398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (A272703 n).toNat

end

end A401058.P5633469829695188398

/-! ## A401058.P2577306369335703357

`A374045(A023485(n+2))`
-/

namespace A401058.P2577306369335703357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (A023485 (n + 2)).toNat

end

end A401058.P2577306369335703357

/-!
# A401059: Numbers k such that for p = prime(1+k), there is at least one prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401059, there is no canonical definition to state claims against.
-/

/-! ## A401059.P11757860884597643986

`A000720(A400843(n+1))-1`
-/

namespace A401059.P11757860884597643986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400843 (n + 1)).toNat - 1

end

end A401059.P11757860884597643986

/-! ## A401059.P10130239869652975814

`A000720(A400843(n+1)-1)`
-/

namespace A401059.P10130239869652975814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400843 (n + 1) - 1).toNat

end

end A401059.P10130239869652975814

/-! ## A401059.P8939642294345577398

`A033270(A400843(n+1))`
-/

namespace A401059.P8939642294345577398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A400843 (n + 1)).toNat

end

end A401059.P8939642294345577398

/-! ## A401059.P11506090940297263542

`eq[A252940(n+1), A401053(n)]`
-/

namespace A401059.P11506090940297263542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401059.P11506090940297263542

/-! ## A401059.P16493797904969177729

`eq[A262079(n+1), A401053(n)]`
-/

namespace A401059.P16493797904969177729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401059.P16493797904969177729

/-!
# A401060: Primes p for which there exists an odd prime q < p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401060, there is no canonical definition to state claims against.
-/

/-! ## A401060.P7190611983145892071

`∩[A342378(n+1), A401061(n+1)]`
-/

namespace A401060.P7190611983145892071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P7190611983145892071

/-! ## A401060.P13621915434908829667

`∩[A391927(n+1), A401061(n+1)]`
-/

namespace A401060.P13621915434908829667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P13621915434908829667

/-! ## A401060.P6717913199063733245

`∩[A391938(n+1), A401061(n+1)]`
-/

namespace A401060.P6717913199063733245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P6717913199063733245

/-! ## A401060.P1112804129156204898

`∩[A089017(n+1), A401061(n+1)]`
-/

namespace A401060.P1112804129156204898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P1112804129156204898

/-! ## A401060.P2161991906480279095

`∩[A156902(n+1), A401061(n+1)]`
-/

namespace A401060.P2161991906480279095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P2161991906480279095

/-!
# A401061: Primes p for which there exists a prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401061, there is no canonical definition to state claims against.
-/

/-! ## A401061.P692492960065066177

`A000040(A401065(n+1)+1)`
-/

namespace A401061.P692492960065066177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A401065 (n + 1) + 1).toNat

end

end A401061.P692492960065066177

/-! ## A401061.P16022078040708269792

`A008578(A401065(n+1)+2)`
-/

namespace A401061.P16022078040708269792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401065 (n + 1) + 2).toNat

end

end A401061.P16022078040708269792

/-!
# A401064: Largest such q listed for each prime p (A401061) for which there exists a prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401064, there is no canonical definition to state claims against.
-/

/-! ## A401064.P15051641196816173885

`A000040(1+A400837(A401065(n+1)))`
-/

namespace A401064.P15051641196816173885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A400837 (A401065 (n + 1)).toNat).toNat

end

end A401064.P15051641196816173885

/-!
# A401065: Numbers k such that for p = prime(1+k), there is at least one prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401065, there is no canonical definition to state claims against.
-/

/-! ## A401065.P16256045209855438496

`A000720(A401061(n+1))-1`
-/

namespace A401065.P16256045209855438496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401061 (n + 1)).toNat - 1

end

end A401065.P16256045209855438496

/-! ## A401065.P9918729902730431869

`A000720(A401061(n+1)-1)`
-/

namespace A401065.P9918729902730431869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401061 (n + 1) - 1).toNat

end

end A401065.P9918729902730431869

/-! ## A401065.P13746655280099620858

`A329622(A401061(n+1))`
-/

namespace A401065.P13746655280099620858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A401061 (n + 1)).toNat

end

end A401065.P13746655280099620858

/-! ## A401065.P8579870680872772241

`A033270(A401061(n+1))`
-/

namespace A401065.P8579870680872772241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A401061 (n + 1)).toNat

end

end A401065.P8579870680872772241

/-!
# A401066: a(n) = A276085(n) mod A006530(n), where A276085 is fully additive with a(p) = p#/p, and A006530(n) is the largest prime dividing n.

The programs for A401066, the canonical program `A401066.P9367389379466931953` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401066 has offset 1).

The definition of A401066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401066.P9367389379466931953

`A276085(n+1)%A006530(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A401066

/-- `A276085(n+1)%A006530(n+1)` -/
def P9367389379466931953.Spec : Prop :=
  ∀ n, P9367389379466931953.a n = A401066 (n + 1)

theorem P9367389379466931953.correct : P9367389379466931953.Spec := by
  intro n
  simp only [A401066, Nat.add_sub_cancel]

end A401066

/-! ## A401066.P18303361543052866937

`A071412(A130783(n))`
-/

namespace A401066.P18303361543052866937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071412 (A130783 n).toNat

end

end A401066.P18303361543052866937

namespace A401066

/-- `A071412(A130783(n))` -/
def P18303361543052866937.Spec : Prop :=
  ∀ n, P18303361543052866937.a n = A401066 (n + 1)

end A401066

/-! ## A401066.P15798397799055605065

`A244215(A007633(n+1))`
-/

namespace A401066.P15798397799055605065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 (A007633 (n + 1)).toNat

end

end A401066.P15798397799055605065

namespace A401066

/-- `A244215(A007633(n+1))` -/
def P15798397799055605065.Spec : Prop :=
  ∀ n, P15798397799055605065.a n = A401066 (n + 1)

end A401066

/-! ## A401066.P738395720285177601

`A115201(A298015(n+1))`
-/

namespace A401066.P738395720285177601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (A298015 (n + 1)).toNat

end

end A401066.P738395720285177601

namespace A401066

/-- `A115201(A298015(n+1))` -/
def P738395720285177601.Spec : Prop :=
  ∀ n, P738395720285177601.a n = A401066 (n + 1)

end A401066

/-! ## A401066.P1991072595251794004

`A260648(A166467(n+1))`
-/

namespace A401066.P1991072595251794004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260648 (A166467 (n + 1)).toNat

end

end A401066.P1991072595251794004

namespace A401066

/-- `A260648(A166467(n+1))` -/
def P1991072595251794004.Spec : Prop :=
  ∀ n, P1991072595251794004.a n = A401066 (n + 1)

end A401066

/-!
# A401073: Number of n X n (0,1)-matrices of rank 2 over the real numbers.

The programs for A401073, the canonical program `A401073.P2485690032411973571` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401073 has offset 0).

The definition of A401073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401073.P2485690032411973571

`(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401073

/-- `(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2` -/
def P2485690032411973571.Spec : Prop :=
  ∀ n, P2485690032411973571.a n = (A401073 n : ℚ)

end A401073

/-! ## A401073.P579701561069241720

`(A134057(n)+A032263(n+1))*A028243(n+1)`
-/

namespace A401073.P579701561069241720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134057 n + A032263 (n + 1)) * A028243 (n + 1)

end

end A401073.P579701561069241720

namespace A401073

/-- `(A134057(n)+A032263(n+1))*A028243(n+1)` -/
def P579701561069241720.Spec : Prop :=
  ∀ n, P579701561069241720.a n = A401073 n

end A401073

/-!
# A401078: a(1)=2, a(2)=3, thereafter a(n) is the sum of the two largest primes <= a(n-1).

The programs for A401078, the canonical program `A401078.P8694535385630549604` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401078 has offset 1).

The definition of A401078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401078.P8694535385630549604

`A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401078

/-- `A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` -/
def P8694535385630549604.Spec : Prop :=
  ∀ n, P8694535385630549604.a n = A401078 (n + 1)

theorem P8694535385630549604.correct : P8694535385630549604.Spec := by
  intro n
  simp only [A401078, Nat.add_sub_cancel]

end A401078

/-!
# A401083: The total number of exponentially odd divisors of the exponentially odd divisors of n.

The programs for A401083, the canonical program `A401083.P2325488339389485643` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401083 has offset 1).

The definition of A401083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401083.P2325488339389485643

`A007425(A019554(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A401083

/-- `A007425(A019554(n+1))` -/
def P2325488339389485643.Spec : Prop :=
  ∀ n, P2325488339389485643.a n = A401083 (n + 1)

theorem P2325488339389485643.correct : P2325488339389485643.Spec := by
  intro n
  simp only [A401083, Nat.add_sub_cancel]

end A401083

/-! ## A401083.P12305964366541335754

`A401086(A350390(n+1))`
-/

namespace A401083.P12305964366541335754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401086 (A350390 (n + 1)).toNat

end

end A401083.P12305964366541335754

namespace A401083

/-- `A401086(A350390(n+1))` -/
def P12305964366541335754.Spec : Prop :=
  ∀ n, P12305964366541335754.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P6709548822090833846

`A388067(A053143(n+1))`
-/

namespace A401083.P6709548822090833846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (A053143 (n + 1)).toNat

end

end A401083.P6709548822090833846

namespace A401083

/-- `A388067(A053143(n+1))` -/
def P6709548822090833846.Spec : Prop :=
  ∀ n, P6709548822090833846.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P3009324388504169308

`A388067(A064549(n+1))`
-/

namespace A401083.P3009324388504169308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (A064549 (n + 1)).toNat

end

end A401083.P3009324388504169308

namespace A401083

/-- `A388067(A064549(n+1))` -/
def P3009324388504169308.Spec : Prop :=
  ∀ n, P3009324388504169308.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P9858786481613665363

`A368977(A254521(n+1))`
-/

namespace A401083.P9858786481613665363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A254521 (n + 1)).toNat

end

end A401083.P9858786481613665363

namespace A401083

/-- `A368977(A254521(n+1))` -/
def P9858786481613665363.Spec : Prop :=
  ∀ n, P9858786481613665363.a n = A401083 (n + 1)

end A401083

/-!
# A401085: The total sum of square divisors of the square divisors of n.

The programs for A401085, the canonical program `A401085.P16377491220029045574` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401085 has offset 1).

The definition of A401085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401085.P7958389766270836053

`A007433(A000188(n+1))`
-/

namespace A401085.P7958389766270836053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007433 (A000188 (n + 1)).toNat

end

end A401085.P7958389766270836053

namespace A401085

/-- `A007433(A000188(n+1))` -/
def P7958389766270836053.Spec : Prop :=
  ∀ n, P7958389766270836053.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P14036267632635099459

`∑{d}[n+1, A061020(#)*A076752((n+1)/#)]`
-/

namespace A401085.P14036267632635099459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P14036267632635099459

namespace A401085

/-- `∑{d}[n+1, A061020(#)*A076752((n+1)/#)]` -/
def P14036267632635099459.Spec : Prop :=
  ∀ n, P14036267632635099459.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P16377491220029045574

`∑{d}[n+1, A008833(#)*A369308((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401085

/-- `∑{d}[n+1, A008833(#)*A369308((n+1)/#)]` -/
def P16377491220029045574.Spec : Prop :=
  ∀ n, P16377491220029045574.a n = A401085 (n + 1)

theorem P16377491220029045574.correct : P16377491220029045574.Spec := by
  intro n
  simp only [A401085, Nat.add_sub_cancel]

end A401085

/-! ## A401085.P4285430729824523597

`∑{d}[n+1, A008836(#)*A383795((n+1)/#)]`
-/

namespace A401085.P4285430729824523597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P4285430729824523597

namespace A401085

/-- `∑{d}[n+1, A008836(#)*A383795((n+1)/#)]` -/
def P4285430729824523597.Spec : Prop :=
  ∀ n, P4285430729824523597.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P1623839916325031162

`∑{d}[n+1, A061019(#)*A332844((n+1)/#)]`
-/

namespace A401085.P1623839916325031162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P1623839916325031162

namespace A401085

/-- `∑{d}[n+1, A061019(#)*A332844((n+1)/#)]` -/
def P1623839916325031162.Spec : Prop :=
  ∀ n, P1623839916325031162.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P11077714008862154644

`∑{d}[n+1, A124315(#)*A358272((n+1)/#)]`
-/

namespace A401085.P11077714008862154644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P11077714008862154644

namespace A401085

/-- `∑{d}[n+1, A124315(#)*A358272((n+1)/#)]` -/
def P11077714008862154644.Spec : Prop :=
  ∀ n, P11077714008862154644.a n = A401085 (n + 1)

end A401085

/-!
# A401086: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a divisor of n.

The programs for A401086, the canonical program `A401086.P5847087061507170082` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401086 has offset 1).

The definition of A401086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401086.P5847087061507170082

`∑{d}[n+1, A369307(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A401086

/-- `∑{d}[n+1, A369307(#)]` -/
def P5847087061507170082.Spec : Prop :=
  ∀ n, P5847087061507170082.a n = A401086 (n + 1)

theorem P5847087061507170082.correct : P5847087061507170082.Spec := by
  intro n
  simp only [A401086, Nat.add_sub_cancel]

end A401086

/-! ## A401086.P10239161968441167671

`∑{d}[n+1, A295316(#)*A322483((n+1)/#)]`
-/

namespace A401086.P10239161968441167671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401086.P10239161968441167671

namespace A401086

/-- `∑{d}[n+1, A295316(#)*A322483((n+1)/#)]` -/
def P10239161968441167671.Spec : Prop :=
  ∀ n, P10239161968441167671.a n = A401086 (n + 1)

end A401086

/-! ## A401086.P11820712230587767007

`A000005(A321874(n+1))`
-/

namespace A401086.P11820712230587767007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A321874 (n + 1)).toNat

end

end A401086.P11820712230587767007

namespace A401086

/-- `A000005(A321874(n+1))` -/
def P11820712230587767007.Spec : Prop :=
  ∀ n, P11820712230587767007.a n = A401086 (n + 1)

end A401086

/-! ## A401086.P8651130639128341383

`A399828(A379481(n+1))`
-/

namespace A401086.P8651130639128341383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399828 (A379481 (n + 1)).toNat

end

end A401086.P8651130639128341383

namespace A401086

/-- `A399828(A379481(n+1))` -/
def P8651130639128341383.Spec : Prop :=
  ∀ n, P8651130639128341383.a n = A401086 (n + 1)

end A401086

/-!
# A401087: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a multiple of n.

The programs for A401087, there is no canonical definition to state claims against.
-/

/-! ## A401087.P1541851990346041966

`gcd(A343443(n+1), A360355(n+1))`
-/

namespace A401087.P1541851990346041966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343443 (n + 1)) (A360355 (n + 1))

end

end A401087.P1541851990346041966

/-! ## A401087.P12224439645315625159

`gcd(A324898(n+1), A343443(n+1))`
-/

namespace A401087.P12224439645315625159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324898 (n + 1)) (A343443 (n + 1))

end

end A401087.P12224439645315625159

/-! ## A401087.P4216518268576598899

`gcd(A359085(n+1), A374902(n+1))`
-/

namespace A401087.P4216518268576598899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A359085 (n + 1)) (A374902 (n + 1))

end

end A401087.P4216518268576598899

/-! ## A401087.P6884977647731370870

`A175506(A265390(n+1))`
-/

namespace A401087.P6884977647731370870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175506 (A265390 (n + 1)).toNat

end

end A401087.P6884977647731370870

/-! ## A401087.P12750231143771366458

`A292685(A383657(n+1))`
-/

namespace A401087.P12750231143771366458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292685 (A383657 (n + 1)).toNat

end

end A401087.P12750231143771366458

/-!
# A401088: 

The programs for A401088, there is no canonical definition to state claims against.
-/

/-! ## A401088.P12727730506049994159

`∏{e}[n+1, A007879(#)]`
-/

namespace A401088.P12727730506049994159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007879 (Nat.factorization (f1 n) p)

end

end A401088.P12727730506049994159

/-! ## A401088.P12399589789905493355

`∏{e}[A071975(n+1), #]`
-/

namespace A401088.P12399589789905493355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401088.P12399589789905493355

/-! ## A401088.P15811774365694157380

`A325837(A350389(n+1))`
-/

namespace A401088.P15811774365694157380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A350389 (n + 1)).toNat

end

end A401088.P15811774365694157380

/-! ## A401088.P2578981805791049056

`A325837(A368167(n+1))`
-/

namespace A401088.P2578981805791049056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A368167 (n + 1)).toNat

end

end A401088.P2578981805791049056

/-! ## A401088.P17313266712030790329

`A046951(n+1)/A367987(n+1)`
-/

namespace A401088.P17313266712030790329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) / (A367987 (n + 1) : ℚ)

end

end A401088.P17313266712030790329

/-! ## A401088.P4147410557572868269

`∑{d}[n+1, A008836(#)*A322483((n+1)/#)]`
-/

namespace A401088.P4147410557572868269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P4147410557572868269

/-! ## A401088.P1686263228000013898

`∑{d}[n+1, A158522(#)*A332730((n+1)/#)]`
-/

namespace A401088.P1686263228000013898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P1686263228000013898

/-! ## A401088.P11702027222030790395

`∑{d}[n+1, A189021(#)*A369308((n+1)/#)]`
-/

namespace A401088.P11702027222030790395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189021 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P11702027222030790395

/-! ## A401088.P293792452500143997

`∑{d}[n+1, A329484(#)*A343443((n+1)/#)]`
-/

namespace A401088.P293792452500143997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329484 d * A343443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P293792452500143997

/-!
# A401091: Total number of (non-null) connected induced subgraphs in all labeled trees on n vertices.

The programs for A401091, there is no canonical definition to state claims against.
-/

/-! ## A401091.P7390722633637284427

`A401092(n+1)-A000272(n+1)`
-/

namespace A401091.P7390722633637284427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401092 (n + 1) - A000272 (n + 1)

end

end A401091.P7390722633637284427

/-! ## A401091.P14072703300047455857

`A292633(n+1)/(n+1)`
-/

namespace A401091.P14072703300047455857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292633 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A401091.P14072703300047455857

/-!
# A401092: Total number of mutual visibility sets in all labeled trees on n vertices.

The programs for A401092, there is no canonical definition to state claims against.
-/

/-! ## A401092.P15181314822170696461

`A401091(n+1)+A000272(n+1)`
-/

namespace A401092.P15181314822170696461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401091 (n + 1) + A000272 (n + 1)

end

end A401092.P15181314822170696461

/-!
# A401093: Number of rooted bicolored trees on n unlabeled vertices in which the black vertices form a nonempty connected subset.

The programs for A401093, there is no canonical definition to state claims against.
-/

/-! ## A401093.P6797343803746470725

`A401095(n+1)-A000081(n+1)`
-/

namespace A401093.P6797343803746470725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401095 (n + 1) - A000081 (n + 1)

end

end A401093.P6797343803746470725

/-! ## A401093.P281753906913275227

`A050296(A098912(n+2))`
-/

namespace A401093.P281753906913275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A098912 (n + 2)).toNat

end

end A401093.P281753906913275227

/-!
# A401094: Number of bicolored trees on n unlabeled vertices in which the black vertices form a nonempty connected subset.

The programs for A401094, there is no canonical definition to state claims against.
-/

/-! ## A401094.P7617621936316376775

`A401096(n+1)-A000055(n+1)`
-/

namespace A401094.P7617621936316376775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401096 (n + 1) - A000055 (n + 1)

end

end A401094.P7617621936316376775

/-! ## A401094.P16889831087313499378

`A087834(A049155(n+1))`
-/

namespace A401094.P16889831087313499378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A049155 (n + 1)).toNat

end

end A401094.P16889831087313499378

/-! ## A401094.P1688330839473712456

`A087834(A049172(n+2))`
-/

namespace A401094.P1688330839473712456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A049172 (n + 2)).toNat

end

end A401094.P1688330839473712456

/-!
# A401095: Number of rooted bicolored trees on n unlabeled vertices in which every path between two black vertices contains no other black vertices.

The programs for A401095, there is no canonical definition to state claims against.
-/

/-! ## A401095.P12586015653084588602

`A401093(n+1)+A000081(n+1)`
-/

namespace A401095.P12586015653084588602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401093 (n + 1) + A000081 (n + 1)

end

end A401095.P12586015653084588602

/-! ## A401095.P2493418886512435483

`A247915(A124431(n))`
-/

namespace A401095.P2493418886512435483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (A124431 n).toNat

end

end A401095.P2493418886512435483

/-!
# A401096: Number of bicolored trees on n unlabeled vertices in which every path between two black vertices contains no other black vertices.

The programs for A401096, there is no canonical definition to state claims against.
-/

/-! ## A401096.P5834585026387810279

`A401094(n+1)+A000055(n+1)`
-/

namespace A401096.P5834585026387810279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401094 (n + 1) + A000055 (n + 1)

end

end A401096.P5834585026387810279

