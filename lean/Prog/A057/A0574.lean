import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A057406: Number of self-avoiding polygons of area n with one (self-avoiding polygon) hole on square lattice (not allowing rotations).

The programs for A057406, there is no canonical definition to state claims against.
-/

/-! ## A057406.P6102351705085283360

`A311230(A001652(n))`
-/

namespace A057406.P6102351705085283360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 (A001652 n).toNat

end

end A057406.P6102351705085283360

/-!
# A057409: Number of self-avoiding polygons of area n with any number of (self-avoiding polygon) holes on square lattice (not allowing rotations).

The programs for A057409, there is no canonical definition to state claims against.
-/

/-! ## A057409.P6881983834798994186

`A025456(A037481(n))+A006724(n+1)`
-/

namespace A057409.P6881983834798994186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A037481 n).toNat + A006724 (n + 1)

end

end A057409.P6881983834798994186

/-! ## A057409.P15459048031233759753

`A070109(A000142(n))+A006724(n+1)`
-/

namespace A057409.P15459048031233759753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (A000142 n).toNat + A006724 (n + 1)

end

end A057409.P15459048031233759753

/-! ## A057409.P5421404487573103498

`A031286(A051249(n))+A006724(n+1)`
-/

namespace A057409.P5421404487573103498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A051249 n).toNat + A006724 (n + 1)

end

end A057409.P5421404487573103498

/-! ## A057409.P9540267007929028709

`A006758(A165655(n))+A006724(n+1)`
-/

namespace A057409.P9540267007929028709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006758 (A165655 n).toNat + A006724 (n + 1)

end

end A057409.P9540267007929028709

/-!
# A057410: Number of staircase polygons of perimeter 2n with one (staircase polygon) hole on square lattice (not allowing rotations).

The programs for A057410, there is no canonical definition to state claims against.
-/

/-! ## A057410.P2578633966818673791

`A241466(A116601(n+4))+A073913(n+8)`
-/

namespace A057410.P2578633966818673791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A116601 (n + 4)).toNat + A073913 (n + 8)

end

end A057410.P2578633966818673791

/-!
# A057413: Number of staircase polygons of perimeter 2n with any number of (staircase polygon) holes on square lattice (not allowing rotations).

The programs for A057413, there is no canonical definition to state claims against.
-/

/-! ## A057413.P14787175166743215334

`xor(A034432(A016969(n)), A125501(n))`
-/

namespace A057413.P14787175166743215334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034432 (A016969 n).toNat) (A125501 n)

end

end A057413.P14787175166743215334

/-! ## A057413.P14998504588407481685

`A133508(A212385(n))+A000108(n+1)`
-/

namespace A057413.P14998504588407481685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133508 (A212385 n).toNat + A000108 (n + 1)

end

end A057413.P14998504588407481685

/-! ## A057413.P16583058785735643876

`A126569(n)-A325817(A201826(n)+1)`
-/

namespace A057413.P16583058785735643876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A325817 (A201826 n + 1).toNat

end

end A057413.P16583058785735643876

/-! ## A057413.P11709364731884806297

`A126567(n)-A350139(A350143(n+1))`
-/

namespace A057413.P11709364731884806297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126567 n - A350139 (A350143 (n + 1)).toNat

end

end A057413.P11709364731884806297

/-!
# A057414: Number of staircase polygons of area n with one (staircase polygon) hole on square lattice (not allowing rotations).

The programs for A057414, there is no canonical definition to state claims against.
-/

/-! ## A057414.P943984018779536978

`A210380(A180238(n))`
-/

namespace A057414.P943984018779536978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A180238 n).toNat

end

end A057414.P943984018779536978

/-!
# A057415: Number of staircase polygons of area n with 2 (staircase polygon) holes on square lattice (not allowing rotations).

The programs for A057415, there is no canonical definition to state claims against.
-/

/-! ## A057415.P3972225331786651152

`A062132(A089097(n+2))`
-/

namespace A057415.P3972225331786651152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062132 (A089097 (n + 2)).toNat

end

end A057415.P3972225331786651152

/-!
# A057417: Number of staircase polygons of area n with any number of (staircase polygon) holes on square lattice (not allowing rotations).

The programs for A057417, there is no canonical definition to state claims against.
-/

/-! ## A057417.P10597088708461475765

`A130891(A007902(n+2))`
-/

namespace A057417.P10597088708461475765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A007902 (n + 2)).toNat

end

end A057417.P10597088708461475765

/-! ## A057417.P14600156428540014454

`A007902(∑[A340219(n)!])`
-/

namespace A057417.P14600156428540014454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A340219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057417.P14600156428540014454

/-! ## A057417.P12737889509040047639

`A007902(A032555(n+1)+1)`
-/

namespace A057417.P12737889509040047639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007902 (A032555 (n + 1) + 1).toNat

end

end A057417.P12737889509040047639

/-! ## A057417.P17819338449814009526

`A007902(A032557(n+1)+1)`
-/

namespace A057417.P17819338449814009526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007902 (A032557 (n + 1) + 1).toNat

end

end A057417.P17819338449814009526

/-! ## A057417.P1357603311405166416

`A007902(A032559(n+1)+1)`
-/

namespace A057417.P1357603311405166416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007902 (A032559 (n + 1) + 1).toNat

end

end A057417.P1357603311405166416

/-!
# A057418: Number of n-celled free polyominoes with 1 hole.

The programs for A057418, there is no canonical definition to state claims against.
-/

/-! ## A057418.P11955862819352930066

`A020888(A282327(n))`
-/

namespace A057418.P11955862819352930066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (A282327 n).toNat

end

end A057418.P11955862819352930066

/-!
# A057420: Axially symmetric n-celled polyominoes with 1 hole.

The programs for A057420, there is no canonical definition to state claims against.
-/

/-! ## A057420.P5411312562001039532

`∑[∑[A048250(A120709(n))]]`
-/

namespace A057420.P5411312562001039532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A120709 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057420.P5411312562001039532

/-! ## A057420.P6448626703731509665

`∑[∑[A048250(A051252(n+2))]]`
-/

namespace A057420.P6448626703731509665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A051252 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057420.P6448626703731509665

/-!
# A057421: Consider the solutions to k = a+b = x*y and a*b = k*(x+y) where k, a, b, x, and y are all positive integers, ordered by increasing k and, in case of ties, by increasing x. Sequence gives values of a*b.

The programs for A057421, there is no canonical definition to state claims against.
-/

/-! ## A057421.P3891143481907109822

`A057370(A029503(n+1))`
-/

namespace A057421.P3891143481907109822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057370 (A029503 (n + 1)).toNat

end

end A057421.P3891143481907109822

/-! ## A057421.P16807695690981883700

`∩[A023898(n+1), A057370(n+1)]`
-/

namespace A057421.P16807695690981883700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057421.P16807695690981883700

/-!
# A057422: Number of 2n-celled free polyominoes with 1 hole that are symmetric about two orthogonal axes (and therefore centrally symmetric) but have no other symmetries.

The programs for A057422, there is no canonical definition to state claims against.
-/

/-! ## A057422.P17869642623569810772

`A349570(n+2)+A010051(A076542(n+1))`
-/

namespace A057422.P17869642623569810772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349570 (n + 2) + A010051 (A076542 (n + 1)).toNat

end

end A057422.P17869642623569810772

/-! ## A057422.P12140201716952245894

`A265705(A319028(n+2))-A144224(n+1)`
-/

namespace A057422.P12140201716952245894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A319028 (n + 2)).toNat - A144224 (n + 1)

end

end A057422.P12140201716952245894

/-! ## A057422.P9905099560100560436

`A292373(xor(A058958(2*n+1), A282004(2*n+1)))`
-/

namespace A057422.P9905099560100560436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.xor (A058958 (2 * n + 1)) (A282004 (2 * n + 1))).toNat

end

end A057422.P9905099560100560436

/-!
# A057425: Number of 2n-celled free polyominoes with 1 hole that have the 180-degree rotation symmetry and no others.

The programs for A057425, there is no canonical definition to state claims against.
-/

/-! ## A057425.P8783199752952522732

`A291636(A080041(n))+A000217(2*n)`
-/

namespace A057425.P8783199752952522732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (A080041 n).toNat + A000217 (2 * n)

end

end A057425.P8783199752952522732

/-!
# A057426: Number of asymmetric n-celled polyominoes with 1 hole.

The programs for A057426, there is no canonical definition to state claims against.
-/

/-! ## A057426.P267704305971842586

`A025460(2*A120260(n))`
-/

namespace A057426.P267704305971842586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (2 * A120260 n).toNat

end

end A057426.P267704305971842586

/-! ## A057426.P15437333430987067113

`∑[A243187(A137747(n)+1)]`
-/

namespace A057426.P15437333430987067113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243187 (A137747 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057426.P15437333430987067113

/-! ## A057426.P14116237044860617531

`floor(A081158(n)/A174602(n+1))`
-/

namespace A057426.P14116237044860617531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081158 n : ℚ) / (A174602 (n + 1) : ℚ)⌋

end

end A057426.P14116237044860617531

/-! ## A057426.P8072193410605891116

`A006749(n+1)-A106612(A056884(n+1))`
-/

namespace A057426.P8072193410605891116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) - A106612 (A056884 (n + 1)).toNat

end

end A057426.P8072193410605891116

/-! ## A057426.P15164617949940851009

`A305151(C(n+1, 7))`
-/

namespace A057426.P15164617949940851009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305151 (Nat.choose (n + 1) 7)

end

end A057426.P15164617949940851009

/-!
# A057427: a(n) = 1 if n > 0, a(n) = 0 if n = 0; series expansion of x/(1-x).

The programs for A057427, the canonical program `A057427.P3058147525557661423` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057427 has offset 0).

The definition of A057427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057427.P3058147525557661423

`1-A000007(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057427

/-- `1-A000007(n)` -/
def P3058147525557661423.Spec : Prop :=
  ∀ n, P3058147525557661423.a n = A057427 n

theorem P3058147525557661423.correct : P3058147525557661423.Spec := by
  intro n
  simp only [A057427]

end A057427

/-!
# A057428: Sign(-n): a(n) = 1 if -n > 0, = -1 if -n < 0, = 0 if n = 0.

The programs for A057428, the canonical program `A057428.P2999489532230392221` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057428 has offset 0).

The definition of A057428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057428.P2999489532230392221

`-A057427(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057428

/-- `-A057427(n)` -/
def P2999489532230392221.Spec : Prop :=
  ∀ n, P2999489532230392221.a n = A057428 n

theorem P2999489532230392221.correct : P2999489532230392221.Spec := by
  intro n
  simp only [A057428]

end A057428

/-!
# A057429: Numbers n such that (1+i)^n - 1 times its conjugate is prime.

The programs for A057429, there is no canonical definition to state claims against.
-/

/-! ## A057429.P14819223239356127284

`Δ[A172512(A028310(n))%(2^(n+1))]`
-/

namespace A057429.P14819223239356127284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172512 (A028310 n).toNat) (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057429.P14819223239356127284

/-! ## A057429.P15340739739478969986

`A000038(n)+Δ[A172512(A028310(n))]`
-/

namespace A057429.P15340739739478969986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172512 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A057429.P15340739739478969986

/-! ## A057429.P12968098547030591985

`Δ[A057427(n)*A172512(A028310(n))]`
-/

namespace A057429.P12968098547030591985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A172512 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057429.P12968098547030591985

/-! ## A057429.P9222868265535082268

`Δ[A019425(2*n)*A172512(A028310(n))]`
-/

namespace A057429.P9222868265535082268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A172512 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057429.P9222868265535082268

/-! ## A057429.P4090573188714304314

`Δ[A112773(n+2)%2*A172512(A028310(n))]`
-/

namespace A057429.P4090573188714304314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 2)) 2 * A172512 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057429.P4090573188714304314

/-!
# A057430: Number of days in months of Baha'i calendar.

The programs for A057430, there is no canonical definition to state claims against.
-/

/-! ## A057430.P5525669572015076227

`A089294(char[A041710(n)]*A134232(n))`
-/

namespace A057430.P5525669572015076227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041710 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A134232 n).toNat

end

end A057430.P5525669572015076227

/-! ## A057430.P12955731195798135944

`A089294(A134232(n)*A324179(n+1))`
-/

namespace A057430.P12955731195798135944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (A134232 n * A324179 (n + 1)).toNat

end

end A057430.P12955731195798135944

/-! ## A057430.P8720093029167056991

`A089294(A162997(n)*A324179(n+1))`
-/

namespace A057430.P8720093029167056991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (A162997 n * A324179 (n + 1)).toNat

end

end A057430.P8720093029167056991

/-! ## A057430.P5188015285719747349

`A089294(lcm(A134232(n), A324179(n+1)))`
-/

namespace A057430.P5188015285719747349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089294 (Int.lcm (A134232 n) (A324179 (n + 1)))

end

end A057430.P5188015285719747349

/-! ## A057430.P11748034381239351940

`A040355(char[A041710(n)]*A306977(n+1))`
-/

namespace A057430.P11748034381239351940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041710 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040355 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A306977 (n + 1)).toNat

end

end A057430.P11748034381239351940

/-!
# A057431: Obtained by reading first the numerator then the denominator of fractions in full Stern-Brocot tree (A007305/A047679).

The programs for A057431, there is no canonical definition to state claims against.
-/

/-! ## A057431.P6606375292771361324

`A001221(and(A019299(n), A049226(n+1)))`
-/

namespace A057431.P6606375292771361324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land (A019299 n) (A049226 (n + 1))).toNat

end

end A057431.P6606375292771361324

/-! ## A057431.P6963732565075913894

`A037800(A306293(A325351(n+1))+A005836(n+1))`
-/

namespace A057431.P6963732565075913894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A306293 (A325351 (n + 1)).toNat + A005836 (n + 1)).toNat

end

end A057431.P6963732565075913894

/-! ## A057431.P2184426719347251390

`A102442(A094299(n))+A010060(n)`
-/

namespace A057431.P2184426719347251390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102442 (A094299 n).toNat + A010060 n

end

end A057431.P2184426719347251390

/-! ## A057431.P9385335927989668424

`A244231(A034386(n))-A010059(n)`
-/

namespace A057431.P9385335927989668424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (A034386 n).toNat - A010059 n

end

end A057431.P9385335927989668424

/-! ## A057431.P1848319432932117213

`A106799(lcm(A053351(n+1), A054242(n)))`
-/

namespace A057431.P1848319432932117213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (Int.lcm (A053351 (n + 1)) (A054242 n))

end

end A057431.P1848319432932117213

/-!
# A057432: Obtained by reading first the numerator then the denominator of fractions in left-hand half of Stern-Brocot tree (A007305/A007306).

The programs for A057432, the canonical program `A057432.P5177693450754276207` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057432 has offset 0).

The definition of A057432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057432.P17460887460971620271

`A324338(xor(1, A341915(n)))`
-/

namespace A057432.P17460887460971620271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (Int.xor 1 (A341915 n)).toNat

end

end A057432.P17460887460971620271

namespace A057432

/-- `A324338(xor(1, A341915(n)))` -/
def P17460887460971620271.Spec : Prop :=
  ∀ n, P17460887460971620271.a n = A057432 n

end A057432

/-! ## A057432.P5887156359619243553

`A114214(A093178(A053645(n+1))*A093178(n))`
-/

namespace A057432.P5887156359619243553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A093178 (A053645 (n + 1)).toNat * A093178 n).toNat

end

end A057432.P5887156359619243553

namespace A057432

/-- `A114214(A093178(A053645(n+1))*A093178(n))` -/
def P5887156359619243553.Spec : Prop :=
  ∀ n, P5887156359619243553.a n = A057432 n

end A057432

/-! ## A057432.P4679068703356630267

`A002487(A163807(A028310(n)))`
-/

namespace A057432.P4679068703356630267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A163807 (A028310 n).toNat).toNat

end

end A057432.P4679068703356630267

namespace A057432

/-- `A002487(A163807(A028310(n)))` -/
def P4679068703356630267.Spec : Prop :=
  ∀ n, P4679068703356630267.a n = A057432 n

end A057432

/-! ## A057432.P5177693450754276207

`A007305(A038572(n)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057432

/-- `A007305(A038572(n)+1)` -/
def P5177693450754276207.Spec : Prop :=
  ∀ n, P5177693450754276207.a n = A057432 n

theorem P5177693450754276207.correct : P5177693450754276207.Spec := by
  intro n
  simp only [A057432]

end A057432

/-! ## A057432.P12080929550380853025

`A002487(A004442(A056539(n))+1)`
-/

namespace A057432.P12080929550380853025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A004442 (A056539 n).toNat + 1).toNat

end

end A057432.P12080929550380853025

namespace A057432

/-- `A002487(A004442(A056539(n))+1)` -/
def P12080929550380853025.Spec : Prop :=
  ∀ n, P12080929550380853025.a n = A057432 n

end A057432

/-! ## A057432.P7931711590858485180

`A057431(A053644(n)+2+n)`
-/

namespace A057432.P7931711590858485180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (A053644 n + 2 + (n : ℤ)).toNat

end

end A057432.P7931711590858485180

namespace A057432

/-- `A057431(A053644(n)+2+n)` -/
def P7931711590858485180.Spec : Prop :=
  ∀ n, P7931711590858485180.a n = A057432 n

end A057432

/-! ## A057432.P17926120919614526432

`A057431(2*(A038572(n)+1))`
-/

namespace A057432.P17926120919614526432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * (A038572 n + 1)).toNat

end

end A057432.P17926120919614526432

namespace A057432

/-- `A057431(2*(A038572(n)+1))` -/
def P17926120919614526432.Spec : Prop :=
  ∀ n, P17926120919614526432.a n = A057432 n

end A057432

/-! ## A057432.P16557004702478423063

`A057431(A038572(n)+A038572(n)+2)`
-/

namespace A057432.P16557004702478423063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (A038572 n + (A038572 n + 2)).toNat

end

end A057432.P16557004702478423063

namespace A057432

/-- `A057431(A038572(n)+A038572(n)+2)` -/
def P16557004702478423063.Spec : Prop :=
  ∀ n, P16557004702478423063.a n = A057432 n

end A057432

/-!
# A057434: a(n) = Sum_{k=1..n} phi(k)^2.

The programs for A057434, the canonical program `A057434.P11510506966022849158` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057434 has offset 1).

The definition of A057434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057434.P6060401076338451784

`∑[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²]`
-/

namespace A057434.P6060401076338451784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P6060401076338451784

namespace A057434

/-- `∑[((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²]` -/
def P6060401076338451784.Spec : Prop :=
  ∀ n, P6060401076338451784.a n = (A057434 (n + 1) : ℚ)

end A057434

/-! ## A057434.P2995931451770164317

`∑[A127473(n+1)]`
-/

namespace A057434.P2995931451770164317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P2995931451770164317

namespace A057434

/-- `∑[A127473(n+1)]` -/
def P2995931451770164317.Spec : Prop :=
  ∀ n, P2995931451770164317.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P158521961548413555

`∑[Δ[A002088(n)]²]`
-/

namespace A057434.P158521961548413555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P158521961548413555

namespace A057434

/-- `∑[Δ[A002088(n)]²]` -/
def P158521961548413555.Spec : Prop :=
  ∀ n, P158521961548413555.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P1350825291802042089

`∑[Δ[A005728(n)]²]`
-/

namespace A057434.P1350825291802042089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P1350825291802042089

namespace A057434

/-- `∑[Δ[A005728(n)]²]` -/
def P1350825291802042089.Spec : Prop :=
  ∀ n, P1350825291802042089.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P17562638276676476961

`∑[A000010(n+1)²]`
-/

namespace A057434.P17562638276676476961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P17562638276676476961

namespace A057434

/-- `∑[A000010(n+1)²]` -/
def P17562638276676476961.Spec : Prop :=
  ∀ n, P17562638276676476961.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P2589911018236492109

`∑[sqrt(A361148(n+1))]`
-/

namespace A057434.P2589911018236492109
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361148 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P2589911018236492109

namespace A057434

/-- `∑[sqrt(A361148(n+1))]` -/
def P2589911018236492109.Spec : Prop :=
  ∀ n, P2589911018236492109.a n = (A057434 (n + 1) : ℝ)

end A057434

/-! ## A057434.P1839455083351808923

`∑[(A109606(n+1)+1)²]`
-/

namespace A057434.P1839455083351808923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P1839455083351808923

namespace A057434

/-- `∑[(A109606(n+1)+1)²]` -/
def P1839455083351808923.Spec : Prop :=
  ∀ n, P1839455083351808923.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P15980333543629446927

`∑[(1-A039649(n+1))²]`
-/

namespace A057434.P15980333543629446927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A039649 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P15980333543629446927

namespace A057434

/-- `∑[(1-A039649(n+1))²]` -/
def P15980333543629446927.Spec : Prop :=
  ∀ n, P15980333543629446927.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P14383986154727172221

`∑[A349137(2*n+1)²]`
-/

namespace A057434.P14383986154727172221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P14383986154727172221

namespace A057434

/-- `∑[A349137(2*n+1)²]` -/
def P14383986154727172221.Spec : Prop :=
  ∀ n, P14383986154727172221.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P7752519453400613264

`∑[(A200905(n+1)/3)²]`
-/

namespace A057434.P7752519453400613264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A200905 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P7752519453400613264

namespace A057434

/-- `∑[(A200905(n+1)/3)²]` -/
def P7752519453400613264.Spec : Prop :=
  ∀ n, P7752519453400613264.a n = (A057434 (n + 1) : ℚ)

end A057434

/-! ## A057434.P17070585695331742079

`∑[(A219428(n+1)-n)²]`
-/

namespace A057434.P17070585695331742079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P17070585695331742079

namespace A057434

/-- `∑[(A219428(n+1)-n)²]` -/
def P17070585695331742079.Spec : Prop :=
  ∀ n, P17070585695331742079.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P8688398932078249417

`∑[A327570(n+1)/(n+1)]`
-/

namespace A057434.P8688398932078249417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327570 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P8688398932078249417

namespace A057434

/-- `∑[A327570(n+1)/(n+1)]` -/
def P8688398932078249417.Spec : Prop :=
  ∀ n, P8688398932078249417.a n = (A057434 (n + 1) : ℚ)

end A057434

/-! ## A057434.P4073633247794079394

`∑[(n+1-A051953(n+1))²]`
-/

namespace A057434.P4073633247794079394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P4073633247794079394

namespace A057434

/-- `∑[(n+1-A051953(n+1))²]` -/
def P4073633247794079394.Spec : Prop :=
  ∀ n, P4073633247794079394.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P11510506966022849158

`∑[(n+1-A121048(n+1))²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057434

/-- `∑[(n+1-A121048(n+1))²]` -/
def P11510506966022849158.Spec : Prop :=
  ∀ n, P11510506966022849158.a n = A057434 (n + 1)

theorem P11510506966022849158.correct : P11510506966022849158.Spec := by
  intro n
  simp only [A057434, Nat.add_sub_cancel]

end A057434

/-! ## A057434.P2269971142206685799

`∑[(A002618(n+1)/(n+1))²]`
-/

namespace A057434.P2269971142206685799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P2269971142206685799

namespace A057434

/-- `∑[(A002618(n+1)/(n+1))²]` -/
def P2269971142206685799.Spec : Prop :=
  ∀ n, P2269971142206685799.a n = (A057434 (n + 1) : ℚ)

end A057434

/-! ## A057434.P18068125343808342093

`a(n-1)+A000010(lcm(2, n+1))²` with `a(0)=1`
-/

namespace A057434.P18068125343808342093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 (Nat.lcm 2 (n + 1)) ^ 2

end

end A057434.P18068125343808342093

namespace A057434

/-- `a(n-1)+A000010(lcm(2, n+1))²` -/
def P18068125343808342093.Spec : Prop :=
  ∀ n, P18068125343808342093.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P13846537880684898541

`a(n-1)+A000010(2*n-(n-1))²` with `a(0)=1`
-/

namespace A057434.P13846537880684898541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

end

end A057434.P13846537880684898541

namespace A057434

/-- `a(n-1)+A000010(2*n-(n-1))²` -/
def P13846537880684898541.Spec : Prop :=
  ∀ n, P13846537880684898541.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P12495515154788129551

`∑[(A109606(n+1)+1)*A000010(n+1)]`
-/

namespace A057434.P12495515154788129551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P12495515154788129551

namespace A057434

/-- `∑[(A109606(n+1)+1)*A000010(n+1)]` -/
def P12495515154788129551.Spec : Prop :=
  ∀ n, P12495515154788129551.a n = A057434 (n + 1)

end A057434

/-! ## A057434.P14676118482023044495

`∑[A000010(n+1)^A020639(2*(n+1))]`
-/

namespace A057434.P14676118482023044495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057434.P14676118482023044495

namespace A057434

/-- `∑[A000010(n+1)^A020639(2*(n+1))]` -/
def P14676118482023044495.Spec : Prop :=
  ∀ n, P14676118482023044495.a n = (A057434 (n + 1) : ℚ)

end A057434

/-! ## A057434.P7781665903203387004

`A049454(n+1)-1`
-/

namespace A057434.P7781665903203387004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049454 (n + 1) - 1

end

end A057434.P7781665903203387004

namespace A057434

/-- `A049454(n+1)-1` -/
def P7781665903203387004.Spec : Prop :=
  ∀ n, P7781665903203387004.a n = A057434 (n + 1)

end A057434

/-!
# A057436: Contains digits 1 through 6 only.

The programs for A057436, the canonical program `A057436.P14089435984398363739` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057436 has offset 1).

The definition of A057436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057436.P5094433846190980145

`A007093(A382412(n+1))`
-/

namespace A057436.P5094433846190980145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A382412 (n + 1)).toNat

end

end A057436.P5094433846190980145

namespace A057436

/-- `A007093(A382412(n+1))` -/
def P5094433846190980145.Spec : Prop :=
  ∀ n, P5094433846190980145.a n = A057436 (n + 1)

end A057436

/-! ## A057436.P14089435984398363739

`∩[A214677(n+1), A007093(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A057436

/-- `∩[A214677(n+1), A007093(n)]` -/
def P14089435984398363739.Spec : Prop :=
  ∀ n, (P14089435984398363739.a n : ℤ) = A057436 (n + 1)

theorem P14089435984398363739.correct : P14089435984398363739.Spec := by
  intro n
  simp only [A057436, Nat.add_sub_cancel]

end A057436

/-! ## A057436.P6011644812230406584

`∩[A214678(n+1), A007093(n)]`
-/

namespace A057436.P6011644812230406584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P6011644812230406584

namespace A057436

/-- `∩[A214678(n+1), A007093(n)]` -/
def P6011644812230406584.Spec : Prop :=
  ∀ n, (P6011644812230406584.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P11448851165762909838

`∩[A039118(n+1), A007093(n)]`
-/

namespace A057436.P11448851165762909838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P11448851165762909838

namespace A057436

/-- `∩[A039118(n+1), A007093(n)]` -/
def P11448851165762909838.Spec : Prop :=
  ∀ n, (P11448851165762909838.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P7565872603327041008

`∩[A039119(n+1), A007093(n)]`
-/

namespace A057436.P7565872603327041008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P7565872603327041008

namespace A057436

/-- `∩[A039119(n+1), A007093(n)]` -/
def P7565872603327041008.Spec : Prop :=
  ∀ n, (P7565872603327041008.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P381787517937504574

`∩[A039118(n+1), A214677(n+1)]`
-/

namespace A057436.P381787517937504574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P381787517937504574

namespace A057436

/-- `∩[A039118(n+1), A214677(n+1)]` -/
def P381787517937504574.Spec : Prop :=
  ∀ n, (P381787517937504574.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P9923645216448718165

`∩[A039153(n+1), A214677(n+1)]`
-/

namespace A057436.P9923645216448718165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P9923645216448718165

namespace A057436

/-- `∩[A039153(n+1), A214677(n+1)]` -/
def P9923645216448718165.Spec : Prop :=
  ∀ n, (P9923645216448718165.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P9322274672420507604

`∩[A039154(n+1), A214677(n+1)]`
-/

namespace A057436.P9322274672420507604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P9322274672420507604

namespace A057436

/-- `∩[A039154(n+1), A214677(n+1)]` -/
def P9322274672420507604.Spec : Prop :=
  ∀ n, (P9322274672420507604.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P6603325369431888172

`∩[A052382(n+1), A007093(n)]`
-/

namespace A057436.P6603325369431888172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P6603325369431888172

namespace A057436

/-- `∩[A052382(n+1), A007093(n)]` -/
def P6603325369431888172.Spec : Prop :=
  ∀ n, (P6603325369431888172.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P8022164158081732760

`∩[A052419(n+1), A214677(n+1)]`
-/

namespace A057436.P8022164158081732760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057436.P8022164158081732760

namespace A057436

/-- `∩[A052419(n+1), A214677(n+1)]` -/
def P8022164158081732760.Spec : Prop :=
  ∀ n, (P8022164158081732760.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P5051071390450008958

`A222249(A001729(n+1))`
-/

namespace A057436.P5051071390450008958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A001729 (n + 1)).toNat

end

end A057436.P5051071390450008958

namespace A057436

/-- `A222249(A001729(n+1))` -/
def P5051071390450008958.Spec : Prop :=
  ∀ n, P5051071390450008958.a n = A057436 (n + 1)

end A057436

/-! ## A057436.P10797028031929527363

`filter[A007093(n), A168046(#)]`
-/

namespace A057436.P10797028031929527363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A057436.P10797028031929527363

namespace A057436

/-- `filter[A007093(n), A168046(#)]` -/
def P10797028031929527363.Spec : Prop :=
  ∀ n, P10797028031929527363.a n = A057436 (n + 1)

end A057436

/-! ## A057436.P12211767496807387847

`eq[n, A222254(A222216(n))]`
-/

namespace A057436.P12211767496807387847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057436.P12211767496807387847

namespace A057436

/-- `eq[n, A222254(A222216(n))]` -/
def P12211767496807387847.Spec : Prop :=
  ∀ n, (P12211767496807387847.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P15859723737345542660

`eq[n, A222253(A222217(n))]`
-/

namespace A057436.P15859723737345542660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057436.P15859723737345542660

namespace A057436

/-- `eq[n, A222253(A222217(n))]` -/
def P15859723737345542660.Spec : Prop :=
  ∀ n, (P15859723737345542660.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P2242760173385544599

`eq[n, A222252(A222218(n))]`
-/

namespace A057436.P2242760173385544599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057436.P2242760173385544599

namespace A057436

/-- `eq[n, A222252(A222218(n))]` -/
def P2242760173385544599.Spec : Prop :=
  ∀ n, (P2242760173385544599.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P2893216582178075786

`eq[n*A102679(n), A055641(n)]`
-/

namespace A057436.P2893216582178075786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057436.P2893216582178075786

namespace A057436

/-- `eq[n*A102679(n), A055641(n)]` -/
def P2893216582178075786.Spec : Prop :=
  ∀ n, (P2893216582178075786.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P13640734032677071926

`eq[n, A222216(A004184(A004183(n)))]`
-/

namespace A057436.P13640734032677071926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A004184 (A004183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057436.P13640734032677071926

namespace A057436

/-- `eq[n, A222216(A004184(A004183(n)))]` -/
def P13640734032677071926.Spec : Prop :=
  ∀ n, (P13640734032677071926.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P13835984963673392453

`eq[n, A222217(A222216(A004184(n)))]`
-/

namespace A057436.P13835984963673392453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A222216 (A004184 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057436.P13835984963673392453

namespace A057436

/-- `eq[n, A222217(A222216(A004184(n)))]` -/
def P13835984963673392453.Spec : Prop :=
  ∀ n, (P13835984963673392453.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P16574510747089110400

`eq[A004184(n), A222216(A222252(n))]`
-/

namespace A057436.P16574510747089110400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057436.P16574510747089110400

namespace A057436

/-- `eq[A004184(n), A222216(A222252(n))]` -/
def P16574510747089110400.Spec : Prop :=
  ∀ n, (P16574510747089110400.a n : ℤ) = A057436 (n + 1)

end A057436

/-! ## A057436.P507155594895587786

`eq[A055641(n)/A059015(n), A102679(n)]`
-/

namespace A057436.P507155594895587786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 n : ℚ) / (A059015 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A057436.P507155594895587786

namespace A057436

/-- `eq[A055641(n)/A059015(n), A102679(n)]` -/
def P507155594895587786.Spec : Prop :=
  ∀ n, (P507155594895587786.a n : ℤ) = A057436 (n + 1)

end A057436

/-!
# A057438: a(1) = 1; a(n+1) = (Product_{k = 1..n} [a(k)]) * (Sum_{j = 1..n} [1/a(j)]).

The programs for A057438, there is no canonical definition to state claims against.
-/

/-! ## A057438.P6507084786034159682

`ratio[A074056(round(acot(n)+n))]`
-/

namespace A057438.P6507084786034159682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074056 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A057438.P6507084786034159682

/-! ## A057438.P8270515644458159288

`ratio[A074056(A028310(n))]`
-/

namespace A057438.P8270515644458159288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074056 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A057438.P8270515644458159288

/-! ## A057438.P15173167936800728754

`ratio[A074056(A233583(n+1))]`
-/

namespace A057438.P15173167936800728754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074056 (A233583 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A057438.P15173167936800728754

/-! ## A057438.P12514047526326064406

`A074056(n+1)/A074056(A028310(n))`
-/

namespace A057438.P12514047526326064406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074056 (n + 1) : ℚ) / (A074056 (A028310 n).toNat : ℚ)

end

end A057438.P12514047526326064406

/-! ## A057438.P17621032244420501374

`A074056(n+1)/A074056(A233583(n+1))`
-/

namespace A057438.P17621032244420501374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074056 (n + 1) : ℚ) / (A074056 (A233583 (n + 1)).toNat : ℚ)

end

end A057438.P17621032244420501374

/-!
# A057442: For the numbers k that can be expressed as k = w+x = y*z with w*x = (y+z)^2 where w, x, y, and z are all positive integers, this sequence gives the corresponding values of w*x.

The programs for A057442, there is no canonical definition to state claims against.
-/

/-! ## A057442.P8205792337690515184

`A343860(n+1)²`
-/

namespace A057442.P8205792337690515184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343860 (n + 1) ^ 2

end

end A057442.P8205792337690515184

/-! ## A057442.P7216720736628066201

`A343860(A296882(n+1))^2`
-/

namespace A057442.P7216720736628066201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343860 (A296882 (n + 1)).toNat ^ 2

end

end A057442.P7216720736628066201

/-! ## A057442.P15021749355212958204

`A343860(A008619(2*n))^2`
-/

namespace A057442.P15021749355212958204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343860 (A008619 (2 * n)).toNat ^ 2

end

end A057442.P15021749355212958204

/-! ## A057442.P8786997612096942236

`A343860(n+1)^A020639(2*(n+1))`
-/

namespace A057442.P8786997612096942236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343860 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A057442.P8786997612096942236

/-! ## A057442.P12691907687588695015

`A343860(n+1)^A000040(gcd(n, n+1))`
-/

namespace A057442.P12691907687588695015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343860 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A057442.P12691907687588695015

/-!
# A057444: For the numbers k that can be expressed as k = w + x = y*z with w*x = y^2 + z^2 where w, x, y, and z are all positive integers, this sequence gives the corresponding values of w*x.

The programs for A057444, there is no canonical definition to state claims against.
-/

/-! ## A057444.P1324822381848029378

`∩[A051370(n+1), A057369(n+1)]`
-/

namespace A057444.P1324822381848029378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057444.P1324822381848029378

/-!
# A057446: To get next term, multiply by 13, add 1 and discard any prime factors < 13.

The programs for A057446, the canonical program `A057446.P16393401506336452455` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057446 has offset 0).

The definition of A057446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057446.P16393401506336452455

`a(n-4)` with `a(0)=73, a(1)=19, a(2)=31, a(3)=101`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057446

/-- `a(n-4)` -/
def P16393401506336452455.Spec : Prop :=
  ∀ n, (P16393401506336452455.a n : ℤ) = A057446 n

theorem P16393401506336452455.correct : P16393401506336452455.Spec := by
  intro n
  simp only [A057446]

end A057446

/-!
# A057447: a(n+1) = next prime such that a(n+1)-1 | (a(1)...a(n))^3.

The programs for A057447, there is no canonical definition to state claims against.
-/

/-! ## A057447.P2838262918758830845

`p?[A130734(n+1)+A043542(n+1)]`
-/

namespace A057447.P2838262918758830845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1) + A043542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057447.P2838262918758830845

/-! ## A057447.P10763882427064660044

`∩[A046039(n+1), A242541(n+1)]`
-/

namespace A057447.P10763882427064660044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057447.P10763882427064660044

/-! ## A057447.P8422693434438188675

`A000040(lt[A244119(n), A185418(2*n)])`
-/

namespace A057447.P8422693434438188675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185418 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057447.P8422693434438188675

/-!
# A057448: a(n+1) = next prime such that a(n+1)-1 | (a(1)...a(n))^5.

The programs for A057448, there is no canonical definition to state claims against.
-/

/-! ## A057448.P1163064690782998397

`A175787(lt[A182703(n+1), A128006(n+1)])`
-/

namespace A057448.P1163064690782998397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A057448.P1163064690782998397

/-! ## A057448.P13641423978182817800

`eq[A180395(A000688(n+1)), A342651(n+2)]+2`
-/

namespace A057448.P13641423978182817800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180395 (A000688 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342651 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A057448.P13641423978182817800

/-! ## A057448.P13402782400363151517

`p?[A109680(n+1)-1]`
-/

namespace A057448.P13402782400363151517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057448.P13402782400363151517

/-! ## A057448.P15139728246877232935

`eq[A109680(n+1), A129283(n)]`
-/

namespace A057448.P15139728246877232935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057448.P15139728246877232935

/-! ## A057448.P2555541770753164935

`eq[A109680(n+1), A181549(n)]`
-/

namespace A057448.P2555541770753164935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057448.P2555541770753164935

/-! ## A057448.P4494841826332986175

`eq[A109680(n+1), A238505(n)]`
-/

namespace A057448.P4494841826332986175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057448.P4494841826332986175

/-! ## A057448.P11725412477900709446

`eq[A109680(n+1), A361655(n)]`
-/

namespace A057448.P11725412477900709446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057448.P11725412477900709446

/-!
# A057449: Product of differences between consecutive positive divisors of n.

The programs for A057449, there is no canonical definition to state claims against.
-/

/-! ## A057449.P5790967282152879238

`A003963(A000265(A328023(n+1)))`
-/

namespace A057449.P5790967282152879238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000265 (A328023 (n + 1)).toNat).toNat

end

end A057449.P5790967282152879238

/-! ## A057449.P2443581384255721998

`A003963(A328023(n+1))`
-/

namespace A057449.P2443581384255721998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A328023 (n + 1)).toNat

end

end A057449.P2443581384255721998

/-! ## A057449.P16752394759003513566

`A124758(floor(∑{d}[n+1, 2^(#-1)]/2))`
-/

namespace A057449.P16752394759003513566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 ⌊(∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)) / 2⌋.toNat

end

end A057449.P16752394759003513566

/-! ## A057449.P1300638851411470499

`A124758((A034729(n+1)-1)/2)`
-/

namespace A057449.P1300638851411470499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway ((A034729 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A057449.P1300638851411470499

/-! ## A057449.P12539978991907626226

`A124758((A074854(n+1)-1)/2)`
-/

namespace A057449.P12539978991907626226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway ((A074854 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A057449.P12539978991907626226

/-!
# A057450: Prime recurrence: a(n+1) = a(n)-th prime, with a(1) = 4.

The programs for A057450, there is no canonical definition to state claims against.
-/

/-! ## A057450.P5132439155906617740

`record[A114537(n+3)]`
-/

namespace A057450.P5132439155906617740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057450.P5132439155906617740

/-! ## A057450.P3995183047994215591

`A114537(∑[n+1]+2)`
-/

namespace A057450.P3995183047994215591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A057450.P3995183047994215591

/-! ## A057450.P14393360293475903786

`A114537(A133263(n+1))+A034582(n+1)`
-/

namespace A057450.P14393360293475903786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A133263 (n + 1)).toNat + A034582 (n + 1)

end

end A057450.P14393360293475903786

/-! ## A057450.P6973145819847736335

`A014709(4*n)*A114537(A133263(n+1))`
-/

namespace A057450.P6973145819847736335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (4 * n) * A114537 (A133263 (n + 1)).toNat

end

end A057450.P6973145819847736335

/-! ## A057450.P9299064049697224094

`A236854(A022450(n+1))`
-/

namespace A057450.P9299064049697224094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236854 (A022450 (n + 1)).toNat

end

end A057450.P9299064049697224094

/-!
# A057451: Prime recurrence: a(n+1) = a(n)-th prime, with a(1) = 6.

The programs for A057451, there is no canonical definition to state claims against.
-/

/-! ## A057451.P566538288311814172

`A114537(∑[n+2]+4)`
-/

namespace A057451.P566538288311814172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A057451.P566538288311814172

/-! ## A057451.P2496658395947210406

`A114537(A167614(n+1))+A025444(n)`
-/

namespace A057451.P2496658395947210406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A167614 (n + 1)).toNat + A025444 n

end

end A057451.P2496658395947210406

/-! ## A057451.P11082433277042611504

`A185284(n)+A114537(A167614(n+1))`
-/

namespace A057451.P11082433277042611504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A114537 (A167614 (n + 1)).toNat

end

end A057451.P11082433277042611504

/-! ## A057451.P13018160793396301646

`A114537(A167614(n+1))%A332158(n)`
-/

namespace A057451.P13018160793396301646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114537 (A167614 (n + 1)).toNat) (A332158 n)

end

end A057451.P13018160793396301646

/-! ## A057451.P17778188730413551299

`lcm(A033999(n), A114537(A167614(n+1)))`
-/

namespace A057451.P17778188730413551299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A114537 (A167614 (n + 1)).toNat)

end

end A057451.P17778188730413551299

/-!
# A057452: Prime recurrence: a(1)=8, a(n+1) = a(n)-th prime.

The programs for A057452, there is no canonical definition to state claims against.
-/

/-! ## A057452.P2692047740208293977

`A005518(n+4)`
-/

namespace A057452.P2692047740208293977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005518 (n + 4)

end

end A057452.P2692047740208293977

/-! ## A057452.P14137664961908208019

`A114537(A141214(n)+7)`
-/

namespace A057452.P14137664961908208019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A141214 n + 7).toNat

end

end A057452.P14137664961908208019

/-! ## A057452.P4912904050776844814

`A114537(A052905(n)+9)`
-/

namespace A057452.P4912904050776844814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A052905 n + 9).toNat

end

end A057452.P4912904050776844814

/-! ## A057452.P14279722729959045501

`A114537(A055999(n)+10)`
-/

namespace A057452.P14279722729959045501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A055999 n + 10).toNat

end

end A057452.P14279722729959045501

/-! ## A057452.P16698566590374249528

`A114537(A167614(n+2)+1)`
-/

namespace A057452.P16698566590374249528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A167614 (n + 2) + 1).toNat

end

end A057452.P16698566590374249528

/-!
# A057453: Prime recurrence: a(n+1) = a(n)-th prime, with a(1) = 9.

The programs for A057453, there is no canonical definition to state claims against.
-/

/-! ## A057453.P6975757840374237395

`A236854(A022451(n+1))`
-/

namespace A057453.P6975757840374237395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236854 (A022451 (n + 1)).toNat

end

end A057453.P6975757840374237395

/-! ## A057453.P8758925685268084164

`A236854(A246346(2*n+3))`
-/

namespace A057453.P8758925685268084164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236854 (A246346 (2 * n + 3)).toNat

end

end A057453.P8758925685268084164

/-! ## A057453.P902093413146197273

`A114537(A155212(n)+13)`
-/

namespace A057453.P902093413146197273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A155212 n + 13).toNat

end

end A057453.P902093413146197273

/-! ## A057453.P1248837830852806776

`A114537(A056000(n)+15)`
-/

namespace A057453.P1248837830852806776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A056000 n + 15).toNat

end

end A057453.P1248837830852806776

/-! ## A057453.P7759337791838725063

`A114537(eq[7, A066657(n)])`
-/

namespace A057453.P7759337791838725063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057453.P7759337791838725063

/-!
# A057456: Prime recurrence: a(n+1) = a(n)-th prime, with a(1) = 10.

The programs for A057456, there is no canonical definition to state claims against.
-/

/-! ## A057456.P4843857390953017123

`A114537(A253145(n+4)+6)`
-/

namespace A057456.P4843857390953017123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A253145 (n + 4) + 6).toNat

end

end A057456.P4843857390953017123

/-! ## A057456.P1323958256719655822

`A114537(A000217(n+5)+6)`
-/

namespace A057456.P1323958256719655822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A000217 (n + 5) + 6).toNat

end

end A057456.P1323958256719655822

/-! ## A057456.P14692389138271108595

`A114537(A246172(n+1)+20)`
-/

namespace A057456.P14692389138271108595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A246172 (n + 1) + 20).toNat

end

end A057456.P14692389138271108595

/-! ## A057456.P11297958753636982450

`A114537(eq[7, A131818(n+1)])`
-/

namespace A057456.P11297958753636982450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057456.P11297958753636982450

/-! ## A057456.P5030104415783470916

`A114537(A055999(n+4)-(2*n+1))`
-/

namespace A057456.P5030104415783470916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A057456.P5030104415783470916

/-!
# A057457: Prime recurrence: a(n+1) = a(n)-th prime, with a(1) = 12.

The programs for A057457, there is no canonical definition to state claims against.
-/

/-! ## A057457.P11966035549573778014

`A114537(A167487(n+5))`
-/

namespace A057457.P11966035549573778014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A167487 (n + 5)).toNat

end

end A057457.P11966035549573778014

/-! ## A057457.P14486117644977407448

`A114537(eq[11, A066657(n)])`
-/

namespace A057457.P14486117644977407448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057457.P14486117644977407448

/-! ## A057457.P7391435249561816400

`A114537(A000217(n+6)+7)`
-/

namespace A057457.P7391435249561816400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A000217 (n + 6) + 7).toNat

end

end A057457.P7391435249561816400

/-! ## A057457.P16404318010256714400

`A114537(A052905(n+3)+12)`
-/

namespace A057457.P16404318010256714400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A052905 (n + 3) + 12).toNat

end

end A057457.P16404318010256714400

/-! ## A057457.P12808672263130899637

`A114537(eq[8, A131818(n+1)])`
-/

namespace A057457.P12808672263130899637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057457.P12808672263130899637

/-!
# A057459: a(n+1) = smallest prime p in the range a(n) < p < a(1)*a(2)*...*a(n) such that p-1 divides a(1)*a(2)*...*a(n); or if no such prime p exists, then a(n+1) = smallest prime > a(n).

The programs for A057459, there is no canonical definition to state claims against.
-/

/-! ## A057459.P12294435936047954332

`∩[A229289(n+1), A229291(n+1)]`
-/

namespace A057459.P12294435936047954332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057459.P12294435936047954332

/-! ## A057459.P1528130411225227903

`∩[A039786(n+1), A229291(n+1)]`
-/

namespace A057459.P1528130411225227903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057459.P1528130411225227903

/-! ## A057459.P14996747325701012531

`∩[A075430(n+1), A229291(n+1)]`
-/

namespace A057459.P14996747325701012531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057459.P14996747325701012531

/-! ## A057459.P4864639676086284396

`∩[A052085(n+1), A229291(n+1)]`
-/

namespace A057459.P4864639676086284396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057459.P4864639676086284396

/-! ## A057459.P16202821070240265396

`∩[A079152(n+1), A229291(n+1)]`
-/

namespace A057459.P16202821070240265396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057459.P16202821070240265396

/-!
# A057460: Numbers k such that x^k + x^2 + 1 is irreducible over GF(2).

The programs for A057460, there is no canonical definition to state claims against.
-/

/-! ## A057460.P901652777058337713

`A074710(n+1)`
-/

namespace A057460.P901652777058337713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074710 (n + 1)

end

end A057460.P901652777058337713

/-! ## A057460.P10301534439710114439

`record[A074710(A033666(n))]`
-/

namespace A057460.P10301534439710114439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074710 (A033666 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057460.P10301534439710114439

/-! ## A057460.P13898850151703557683

`record[A074710(A033922(n))]`
-/

namespace A057460.P13898850151703557683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074710 (A033922 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057460.P13898850151703557683

/-! ## A057460.P13472862043277802351

`record[A074710(A126759(n))]`
-/

namespace A057460.P13472862043277802351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074710 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057460.P13472862043277802351

/-! ## A057460.P8642620016427309199

`record[A074710(A128227(n))]`
-/

namespace A057460.P8642620016427309199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074710 (A128227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057460.P8642620016427309199

/-!
# A057467: GCD of n-th and (n+1)-st term in the sequence of first differences between primes, A001223.

The programs for A057467, the canonical program `A057467.P16767717287509129443` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057467 has offset 1).

The definition of A057467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057467.P2308018109175479735

`A083550(n+1)/A083551(n+1)`
-/

namespace A057467.P2308018109175479735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083550 (n + 1) : ℚ) / (A083551 (n + 1) : ℚ)

end

end A057467.P2308018109175479735

namespace A057467

/-- `A083550(n+1)/A083551(n+1)` -/
def P2308018109175479735.Spec : Prop :=
  ∀ n, P2308018109175479735.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P8510960201338037773

`A083551(n+1)/A083552(n+1)`
-/

namespace A057467.P8510960201338037773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A083552 (n + 1) : ℚ)

end

end A057467.P8510960201338037773

namespace A057467

/-- `A083551(n+1)/A083552(n+1)` -/
def P8510960201338037773.Spec : Prop :=
  ∀ n, P8510960201338037773.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P14130473114372926174

`A109805(n+1)/A085949(n+2)`
-/

namespace A057467.P14130473114372926174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (A085949 (n + 2) : ℚ)

end

end A057467.P14130473114372926174

namespace A057467

/-- `A109805(n+1)/A085949(n+2)` -/
def P14130473114372926174.Spec : Prop :=
  ∀ n, P14130473114372926174.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P16767717287509129443

`gcd(A001223(n+1), A031131(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057467

/-- `gcd(A001223(n+1), A031131(n+1))` -/
def P16767717287509129443.Spec : Prop :=
  ∀ n, (P16767717287509129443.a n : ℤ) = A057467 (n + 1)

theorem P16767717287509129443.correct : P16767717287509129443.Spec := by
  intro n
  simp only [A057467, Nat.add_sub_cancel]

end A057467

/-! ## A057467.P15292951648013402247

`gcd(A036263(n+1), A083551(n+1))`
-/

namespace A057467.P15292951648013402247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036263 (n + 1)) (A083551 (n + 1))

end

end A057467.P15292951648013402247

namespace A057467

/-- `gcd(A036263(n+1), A083551(n+1))` -/
def P15292951648013402247.Spec : Prop :=
  ∀ n, (P15292951648013402247.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P5852707445872460207

`gcd(A056221(n+1), A205955(n+1))`
-/

namespace A057467.P5852707445872460207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056221 (n + 1)) (A205955 (n + 1))

end

end A057467.P5852707445872460207

namespace A057467

/-- `gcd(A056221(n+1), A205955(n+1))` -/
def P5852707445872460207.Spec : Prop :=
  ∀ n, (P5852707445872460207.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P17455063613022945486

`gcd(A109805(n+1), A191472(n+1))`
-/

namespace A057467.P17455063613022945486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109805 (n + 1)) (A191472 (n + 1))

end

end A057467.P17455063613022945486

namespace A057467

/-- `gcd(A109805(n+1), A191472(n+1))` -/
def P17455063613022945486.Spec : Prop :=
  ∀ n, (P17455063613022945486.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P13489595679136700543

`gcd(Δ[A001223(n+1)], A001223(n+2))`
-/

namespace A057467.P13489595679136700543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001223 (n + 2))

end

end A057467.P13489595679136700543

namespace A057467

/-- `gcd(Δ[A001223(n+1)], A001223(n+2))` -/
def P13489595679136700543.Spec : Prop :=
  ∀ n, (P13489595679136700543.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P8468409932698922414

`A001223(n+1)/A083551(n+1)*A001223(n+2)`
-/

namespace A057467.P8468409932698922414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A083551 (n + 1) : ℚ) * (A001223 (n + 2) : ℚ)

end

end A057467.P8468409932698922414

namespace A057467

/-- `A001223(n+1)/A083551(n+1)*A001223(n+2)` -/
def P8468409932698922414.Spec : Prop :=
  ∀ n, P8468409932698922414.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P12027153932996050762

`gcd(Δ[A054541(n+2)], A054541(n+2))`
-/

namespace A057467.P12027153932996050762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A054541 (n + 2))

end

end A057467.P12027153932996050762

namespace A057467

/-- `gcd(Δ[A054541(n+2)], A054541(n+2))` -/
def P12027153932996050762.Spec : Prop :=
  ∀ n, (P12027153932996050762.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P4566521355594593141

`gcd(Δ[A125266(n+2)], A125266(n+2))`
-/

namespace A057467.P4566521355594593141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A125266 (n + 2))

end

end A057467.P4566521355594593141

namespace A057467

/-- `gcd(Δ[A125266(n+2)], A125266(n+2))` -/
def P4566521355594593141.Spec : Prop :=
  ∀ n, (P4566521355594593141.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P18391624621570369376

`gcd(Δ[A000040(n+1)], Δ[A000040(n+2)])`
-/

namespace A057467.P18391624621570369376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A057467.P18391624621570369376

namespace A057467

/-- `gcd(Δ[A000040(n+1)], Δ[A000040(n+2)])` -/
def P18391624621570369376.Spec : Prop :=
  ∀ n, (P18391624621570369376.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P13192593159329097400

`gcd(A262138(2*n+1), A262138(2*(n+1)))`
-/

namespace A057467.P13192593159329097400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262138 (2 * n + 1)) (A262138 (2 * (n + 1)))

end

end A057467.P13192593159329097400

namespace A057467

/-- `gcd(A262138(2*n+1), A262138(2*(n+1)))` -/
def P13192593159329097400.Spec : Prop :=
  ∀ n, (P13192593159329097400.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P12632415146473741122

`gcd(A036263(n+1), A134735(A103517(n)))`
-/

namespace A057467.P12632415146473741122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036263 (n + 1)) (A134735 (A103517 n).toNat)

end

end A057467.P12632415146473741122

namespace A057467

/-- `gcd(A036263(n+1), A134735(A103517(n)))` -/
def P12632415146473741122.Spec : Prop :=
  ∀ n, (P12632415146473741122.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P15862132111433556323

`gcd(A134735(2*(n+1)), A134735(A103517(n+1)))`
-/

namespace A057467.P15862132111433556323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134735 (2 * (n + 1))) (A134735 (A103517 (n + 1)).toNat)

end

end A057467.P15862132111433556323

namespace A057467

/-- `gcd(A134735(2*(n+1)), A134735(A103517(n+1)))` -/
def P15862132111433556323.Spec : Prop :=
  ∀ n, (P15862132111433556323.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P14687737237189886908

`gcd(A219606(2*n+1), A219606(A005408(n+1)))`
-/

namespace A057467.P14687737237189886908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219606 (2 * n + 1)) (A219606 (A005408 (n + 1)).toNat)

end

end A057467.P14687737237189886908

namespace A057467

/-- `gcd(A219606(2*n+1), A219606(A005408(n+1)))` -/
def P14687737237189886908.Spec : Prop :=
  ∀ n, (P14687737237189886908.a n : ℤ) = A057467 (n + 1)

end A057467

/-! ## A057467.P3613455864848290948

`A001223(n+1)/A274225(n+1)`
-/

namespace A057467.P3613455864848290948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A274225 (n + 1) : ℚ)

end

end A057467.P3613455864848290948

namespace A057467

/-- `A001223(n+1)/A274225(n+1)` -/
def P3613455864848290948.Spec : Prop :=
  ∀ n, P3613455864848290948.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P17698504910624906357

`A001223(n+2)/A272863(n+1)`
-/

namespace A057467.P17698504910624906357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) : ℚ) / (A272863 (n + 1) : ℚ)

end

end A057467.P17698504910624906357

namespace A057467

/-- `A001223(n+2)/A272863(n+1)` -/
def P17698504910624906357.Spec : Prop :=
  ∀ n, P17698504910624906357.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P2535621491802826289

`A054541(n+2)/A274225(n+1)`
-/

namespace A057467.P2535621491802826289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054541 (n + 2) : ℚ) / (A274225 (n + 1) : ℚ)

end

end A057467.P2535621491802826289

namespace A057467

/-- `A054541(n+2)/A274225(n+1)` -/
def P2535621491802826289.Spec : Prop :=
  ∀ n, P2535621491802826289.a n = (A057467 (n + 1) : ℚ)

end A057467

/-! ## A057467.P13153374082720295923

`Δ[A000040(n+1)]/A274225(n+1)`
-/

namespace A057467.P13153374082720295923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A274225 (n + 1) : ℚ)

end

end A057467.P13153374082720295923

namespace A057467

/-- `Δ[A000040(n+1)]/A274225(n+1)` -/
def P13153374082720295923.Spec : Prop :=
  ∀ n, P13153374082720295923.a n = (A057467 (n + 1) : ℚ)

end A057467

/-!
# A057468: Numbers k such that 3^k - 2^k is prime.

The programs for A057468, there is no canonical definition to state claims against.
-/

/-! ## A057468.P2377511954002869265

`A283653(n+3)-char[1-n²]`
-/

namespace A057468.P2377511954002869265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283653 (n + 3) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A057468.P2377511954002869265

/-! ## A057468.P9316252744804625991

`A283653(comp[∑[ceil((-3)^(n-1))]²])`
-/

namespace A057468.P9316252744804625991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A057468.P9316252744804625991

/-! ## A057468.P12171725323057889623

`record[or(A141044(n+1), A174326(n+1))]`
-/

namespace A057468.P12171725323057889623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141044 (n + 1)) (A174326 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057468.P12171725323057889623

/-! ## A057468.P11609929898717047870

`p?[A283653(n+1)]`
-/

namespace A057468.P11609929898717047870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057468.P11609929898717047870

/-! ## A057468.P17995023864307648017

`A001748(A102808(n+1))/3`
-/

namespace A057468.P17995023864307648017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A102808 (n + 1)).toNat : ℚ) / 3

end

end A057468.P17995023864307648017

/-!
# A057469: Prime numbers k such that (2^k + 3^k)/5 is prime.

The programs for A057469, there is no canonical definition to state claims against.
-/

/-! ## A057469.P6563308123921924546

`p?[A050244(n+1)]`
-/

namespace A057469.P6563308123921924546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057469.P6563308123921924546

/-! ## A057469.P9428886156449546888

`p?[A291853(n+1)]`
-/

namespace A057469.P9428886156449546888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A057469.P9428886156449546888

/-! ## A057469.P1158057267988462615

`A291853(comp[∑[(3*n)²+1]]+1)`
-/

namespace A057469.P1158057267988462615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A057469.P1158057267988462615

/-! ## A057469.P9793440988023799629

`A000010(A291853(n+2))+1`
-/

namespace A057469.P9793440988023799629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A291853 (n + 2)).toNat + 1

end

end A057469.P9793440988023799629

/-! ## A057469.P10547247108250527781

`A006530(3*A291853(n+2))`
-/

namespace A057469.P10547247108250527781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A291853 (n + 2)).toNat

end

end A057469.P10547247108250527781

/-!
# A057470: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(P).

The programs for A057470, the canonical program `A057470.P6870654479483838036` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057470 has offset 1).

The definition of A057470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057470.P6870654479483838036

`A006450(A029707(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A057470

/-- `A006450(A029707(n+1))` -/
def P6870654479483838036.Spec : Prop :=
  ∀ n, P6870654479483838036.a n = A057470 (n + 1)

theorem P6870654479483838036.correct : P6870654479483838036.Spec := by
  intro n
  simp only [A057470, Nat.add_sub_cancel]

end A057470

/-! ## A057470.P17654988939762459896

`A006450(A107770(n+1)-1)`
-/

namespace A057470.P17654988939762459896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A107770 (n + 1) - 1).toNat

end

end A057470.P17654988939762459896

namespace A057470

/-- `A006450(A107770(n+1)-1)` -/
def P17654988939762459896.Spec : Prop :=
  ∀ n, P17654988939762459896.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P17788538442270553161

`A057473(n+1)-A096474(n+1)`
-/

namespace A057470.P17788538442270553161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1) - A096474 (n + 1)

end

end A057470.P17788538442270553161

namespace A057470

/-- `A057473(n+1)-A096474(n+1)` -/
def P17788538442270553161.Spec : Prop :=
  ∀ n, P17788538442270553161.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P2485694536458120135

`A080698(n+1)/A001359(n+1)`
-/

namespace A057470.P2485694536458120135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080698 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A057470.P2485694536458120135

namespace A057470

/-- `A080698(n+1)/A001359(n+1)` -/
def P2485694536458120135.Spec : Prop :=
  ∀ n, P2485694536458120135.a n = (A057470 (n + 1) : ℚ)

end A057470

/-! ## A057470.P4709666260791948225

`A080699(n+1)/A006512(n+1)`
-/

namespace A057470.P4709666260791948225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080699 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A057470.P4709666260791948225

namespace A057470

/-- `A080699(n+1)/A006512(n+1)` -/
def P4709666260791948225.Spec : Prop :=
  ∀ n, P4709666260791948225.a n = (A057470 (n + 1) : ℚ)

end A057470

/-! ## A057470.P13492754544680743754

`A161763(n+1)/A057473(n+1)`
-/

namespace A057470.P13492754544680743754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161763 (n + 1) : ℚ) / (A057473 (n + 1) : ℚ)

end

end A057470.P13492754544680743754

namespace A057470

/-- `A161763(n+1)/A057473(n+1)` -/
def P13492754544680743754.Spec : Prop :=
  ∀ n, P13492754544680743754.a n = (A057470 (n + 1) : ℚ)

end A057470

/-! ## A057470.P15324382102327550113

`gcd(A080698(n+1), A080699(n+1))`
-/

namespace A057470.P15324382102327550113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080698 (n + 1)) (A080699 (n + 1))

end

end A057470.P15324382102327550113

namespace A057470

/-- `gcd(A080698(n+1), A080699(n+1))` -/
def P15324382102327550113.Spec : Prop :=
  ∀ n, (P15324382102327550113.a n : ℤ) = A057470 (n + 1)

end A057470

/-! ## A057470.P14404237430325797528

`A175247(A107770(n+1))`
-/

namespace A057470.P14404237430325797528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A107770 (n + 1)).toNat

end

end A057470.P14404237430325797528

namespace A057470

/-- `A175247(A107770(n+1))` -/
def P14404237430325797528.Spec : Prop :=
  ∀ n, P14404237430325797528.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P947948822593261718

`A006450(eq[2, A125266(n+1)])`
-/

namespace A057470.P947948822593261718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057470.P947948822593261718

namespace A057470

/-- `A006450(eq[2, A125266(n+1)])` -/
def P947948822593261718.Spec : Prop :=
  ∀ n, P947948822593261718.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P13417364017088315030

`∩[A006450(n+1), A226843(n+1)]`
-/

namespace A057470.P13417364017088315030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057470.P13417364017088315030

namespace A057470

/-- `∩[A006450(n+1), A226843(n+1)]` -/
def P13417364017088315030.Spec : Prop :=
  ∀ n, (P13417364017088315030.a n : ℤ) = A057470 (n + 1)

end A057470

/-! ## A057470.P2296147876474837510

`∩[A226843(n+1), A302596(n+1)]`
-/

namespace A057470.P2296147876474837510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057470.P2296147876474837510

namespace A057470

/-- `∩[A226843(n+1), A302596(n+1)]` -/
def P2296147876474837510.Spec : Prop :=
  ∀ n, (P2296147876474837510.a n : ℤ) = A057470 (n + 1)

end A057470

/-! ## A057470.P16400437334867095870

`∩[A226843(n+1), A302590(n+1)]`
-/

namespace A057470.P16400437334867095870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057470.P16400437334867095870

namespace A057470

/-- `∩[A226843(n+1), A302590(n+1)]` -/
def P16400437334867095870.Spec : Prop :=
  ∀ n, (P16400437334867095870.a n : ℤ) = A057470 (n + 1)

end A057470

/-! ## A057470.P5769059393846031770

`∩[A076610(n+1), A226843(n+1)]`
-/

namespace A057470.P5769059393846031770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057470.P5769059393846031770

namespace A057470

/-- `∩[A076610(n+1), A226843(n+1)]` -/
def P5769059393846031770.Spec : Prop :=
  ∀ n, (P5769059393846031770.a n : ℤ) = A057470 (n + 1)

end A057470

/-! ## A057470.P15953409995915032556

`A064988(A001359(n+1))`
-/

namespace A057470.P15953409995915032556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A001359 (n + 1)).toNat

end

end A057470.P15953409995915032556

namespace A057470

/-- `A064988(A001359(n+1))` -/
def P15953409995915032556.Spec : Prop :=
  ∀ n, P15953409995915032556.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P3196254438201971675

`A031368(A040040(n+1))`
-/

namespace A057470.P3196254438201971675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A040040 (n + 1)).toNat

end

end A057470.P3196254438201971675

namespace A057470

/-- `A031368(A040040(n+1))` -/
def P3196254438201971675.Spec : Prop :=
  ∀ n, P3196254438201971675.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P3276890729543838003

`A031368(A168497(n+2))`
-/

namespace A057470.P3276890729543838003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A168497 (n + 2)).toNat

end

end A057470.P3276890729543838003

namespace A057470

/-- `A031368(A168497(n+2))` -/
def P3276890729543838003.Spec : Prop :=
  ∀ n, P3276890729543838003.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P7052427914861022663

`A120426(A124588(n+2))`
-/

namespace A057470.P7052427914861022663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A124588 (n + 2)).toNat

end

end A057470.P7052427914861022663

namespace A057470

/-- `A120426(A124588(n+2))` -/
def P7052427914861022663.Spec : Prop :=
  ∀ n, P7052427914861022663.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P3424019317623384153

`A120426(A181747(n+2))`
-/

namespace A057470.P3424019317623384153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A181747 (n + 2)).toNat

end

end A057470.P3424019317623384153

namespace A057470

/-- `A120426(A181747(n+2))` -/
def P3424019317623384153.Spec : Prop :=
  ∀ n, P3424019317623384153.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P1498681563120423627

`A064988(A006512(n+1)-2)`
-/

namespace A057470.P1498681563120423627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A006512 (n + 1) - 2).toNat

end

end A057470.P1498681563120423627

namespace A057470

/-- `A064988(A006512(n+1)-2)` -/
def P1498681563120423627.Spec : Prop :=
  ∀ n, P1498681563120423627.a n = A057470 (n + 1)

end A057470

/-! ## A057470.P10592878295845882315

`A120426(A067829(n+2)-2)`
-/

namespace A057470.P10592878295845882315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A067829 (n + 2) - 2).toNat

end

end A057470.P10592878295845882315

namespace A057470

/-- `A120426(A067829(n+2)-2)` -/
def P10592878295845882315.Spec : Prop :=
  ∀ n, P10592878295845882315.a n = A057470 (n + 1)

end A057470

/-!
# A057471: Numbers k such that (11*13^k -1)/2 is prime.

The programs for A057471, there is no canonical definition to state claims against.
-/

/-! ## A057471.P16042643466976956750

`eq[A101430(n+1), A344587(n+1)]`
-/

namespace A057471.P16042643466976956750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057471.P16042643466976956750

/-! ## A057471.P1889694505486544005

`lt[A165012(n), A180714(A196357(n+1))]`
-/

namespace A057471.P1889694505486544005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A196357 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057471.P1889694505486544005

/-! ## A057471.P2480343960965946425

`A094077(A047208(3*(n+1)))%A000079(n)`
-/

namespace A057471.P2480343960965946425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094077 (A047208 (3 * (n + 1))).toNat) (A000079 n)

end

end A057471.P2480343960965946425

/-!
# A057472: Numbers k such that 2*6^k - 1 is prime.

The programs for A057472, there is no canonical definition to state claims against.
-/

/-! ## A057472.P5936579435005497662

`lt[A055999(A225941(n+1)), 10]+1`
-/

namespace A057472.P5936579435005497662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A225941 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057472.P5936579435005497662

/-! ## A057472.P3663848581451849472

`record[A184721(2*n+1)-A184703(n+1)]`
-/

namespace A057472.P3663848581451849472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184721 (2 * n + 1) - A184703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057472.P3663848581451849472

/-!
# A057473: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(Q).

The programs for A057473, the canonical program `A057473.P10214485168046116986` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057473 has offset 1).

The definition of A057473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057473.P10214485168046116986

`A151800(A151800(A057470(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057473

/-- `A151800(A151800(A057470(n+1)))` -/
def P10214485168046116986.Spec : Prop :=
  ∀ n, P10214485168046116986.a n = A057473 (n + 1)

theorem P10214485168046116986.correct : P10214485168046116986.Spec := by
  intro n
  simp only [A057473, Nat.add_sub_cancel]

end A057473

/-! ## A057473.P6683204999171225594

`A006450(A107770(n+1))`
-/

namespace A057473.P6683204999171225594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A107770 (n + 1)).toNat

end

end A057473.P6683204999171225594

namespace A057473

/-- `A006450(A107770(n+1))` -/
def P6683204999171225594.Spec : Prop :=
  ∀ n, P6683204999171225594.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P14547761908327865080

`A006450(A029707(n+1)+1)`
-/

namespace A057473.P14547761908327865080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A029707 (n + 1) + 1).toNat

end

end A057473.P14547761908327865080

namespace A057473

/-- `A006450(A029707(n+1)+1)` -/
def P14547761908327865080.Spec : Prop :=
  ∀ n, P14547761908327865080.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P1442384445131257966

`A096474(n+1)+A057470(n+1)`
-/

namespace A057473.P1442384445131257966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096474 (n + 1) + A057470 (n + 1)

end

end A057473.P1442384445131257966

namespace A057473

/-- `A096474(n+1)+A057470(n+1)` -/
def P1442384445131257966.Spec : Prop :=
  ∀ n, P1442384445131257966.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P6950808186833593485

`A080700(n+1)/A001359(n+1)`
-/

namespace A057473.P6950808186833593485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080700 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A057473.P6950808186833593485

namespace A057473

/-- `A080700(n+1)/A001359(n+1)` -/
def P6950808186833593485.Spec : Prop :=
  ∀ n, P6950808186833593485.a n = (A057473 (n + 1) : ℚ)

end A057473

/-! ## A057473.P2647035010251528177

`A080701(n+1)/A006512(n+1)`
-/

namespace A057473.P2647035010251528177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080701 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A057473.P2647035010251528177

namespace A057473

/-- `A080701(n+1)/A006512(n+1)` -/
def P2647035010251528177.Spec : Prop :=
  ∀ n, P2647035010251528177.a n = (A057473 (n + 1) : ℚ)

end A057473

/-! ## A057473.P4825830533332494985

`A161763(n+1)/A057470(n+1)`
-/

namespace A057473.P4825830533332494985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161763 (n + 1) : ℚ) / (A057470 (n + 1) : ℚ)

end

end A057473.P4825830533332494985

namespace A057473

/-- `A161763(n+1)/A057470(n+1)` -/
def P4825830533332494985.Spec : Prop :=
  ∀ n, P4825830533332494985.a n = (A057473 (n + 1) : ℚ)

end A057473

/-! ## A057473.P16414634863308249586

`gcd(A080700(n+1), A080701(n+1))`
-/

namespace A057473.P16414634863308249586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080700 (n + 1)) (A080701 (n + 1))

end

end A057473.P16414634863308249586

namespace A057473

/-- `gcd(A080700(n+1), A080701(n+1))` -/
def P16414634863308249586.Spec : Prop :=
  ∀ n, (P16414634863308249586.a n : ℤ) = A057473 (n + 1)

end A057473

/-! ## A057473.P5078650442569482278

`A175247(A107770(n+1)+1)`
-/

namespace A057473.P5078650442569482278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A107770 (n + 1) + 1).toNat

end

end A057473.P5078650442569482278

namespace A057473

/-- `A175247(A107770(n+1)+1)` -/
def P5078650442569482278.Spec : Prop :=
  ∀ n, P5078650442569482278.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P16356934384554490491

`A064988(A006512(n+1))`
-/

namespace A057473.P16356934384554490491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A006512 (n + 1)).toNat

end

end A057473.P16356934384554490491

namespace A057473

/-- `A064988(A006512(n+1))` -/
def P16356934384554490491.Spec : Prop :=
  ∀ n, P16356934384554490491.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P10446247182462954733

`A120426(A067829(n+2))`
-/

namespace A057473.P10446247182462954733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A067829 (n + 2)).toNat

end

end A057473.P10446247182462954733

namespace A057473

/-- `A120426(A067829(n+2))` -/
def P10446247182462954733.Spec : Prop :=
  ∀ n, P10446247182462954733.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P10670194400846451382

`A120426(A094743(n+2))`
-/

namespace A057473.P10670194400846451382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A094743 (n + 2)).toNat

end

end A057473.P10670194400846451382

namespace A057473

/-- `A120426(A094743(n+2))` -/
def P10670194400846451382.Spec : Prop :=
  ∀ n, P10670194400846451382.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P595159444746946946

`A031368(A040040(n+1)+1)`
-/

namespace A057473.P595159444746946946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A040040 (n + 1) + 1).toNat

end

end A057473.P595159444746946946

namespace A057473

/-- `A031368(A040040(n+1)+1)` -/
def P595159444746946946.Spec : Prop :=
  ∀ n, P595159444746946946.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P3155098796383460851

`A064988(A001359(n+1)+2)`
-/

namespace A057473.P3155098796383460851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A001359 (n + 1) + 2).toNat

end

end A057473.P3155098796383460851

namespace A057473

/-- `A064988(A001359(n+1)+2)` -/
def P3155098796383460851.Spec : Prop :=
  ∀ n, P3155098796383460851.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P17061530718717797950

`A031368(A168497(n+2)+1)`
-/

namespace A057473.P17061530718717797950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A168497 (n + 2) + 1).toNat

end

end A057473.P17061530718717797950

namespace A057473

/-- `A031368(A168497(n+2)+1)` -/
def P17061530718717797950.Spec : Prop :=
  ∀ n, P17061530718717797950.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P16345243832907340414

`A120426(A124588(n+2)+2)`
-/

namespace A057473.P16345243832907340414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A124588 (n + 2) + 2).toNat

end

end A057473.P16345243832907340414

namespace A057473

/-- `A120426(A124588(n+2)+2)` -/
def P16345243832907340414.Spec : Prop :=
  ∀ n, P16345243832907340414.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P7266705646965989263

`A120426(A181747(n+2)+2)`
-/

namespace A057473.P7266705646965989263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A181747 (n + 2) + 2).toNat

end

end A057473.P7266705646965989263

namespace A057473

/-- `A120426(A181747(n+2)+2)` -/
def P7266705646965989263.Spec : Prop :=
  ∀ n, P7266705646965989263.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P7148026418973460419

`A055670(A077800(2*(n+1)))-1`
-/

namespace A057473.P7148026418973460419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A077800 (2 * (n + 1))).toNat - 1

end

end A057473.P7148026418973460419

namespace A057473

/-- `A055670(A077800(2*(n+1)))-1` -/
def P7148026418973460419.Spec : Prop :=
  ∀ n, P7148026418973460419.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P3124935601494063354

`A105574(A077800(2*(n+1)))`
-/

namespace A057473.P3124935601494063354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (A077800 (2 * (n + 1))).toNat

end

end A057473.P3124935601494063354

namespace A057473

/-- `A105574(A077800(2*(n+1)))` -/
def P3124935601494063354.Spec : Prop :=
  ∀ n, P3124935601494063354.a n = A057473 (n + 1)

end A057473

/-! ## A057473.P10158916213958419746

`A156037(A014574(n+1)+1)+1`
-/

namespace A057473.P10158916213958419746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A014574 (n + 1) + 1).toNat + 1

end

end A057473.P10158916213958419746

namespace A057473

/-- `A156037(A014574(n+1)+1)+1` -/
def P10158916213958419746.Spec : Prop :=
  ∀ n, P10158916213958419746.a n = A057473 (n + 1)

end A057473

/-!
# A057475: Number of k, 1 <= k <= n, such that gcd(n,k) = gcd(n+1,k) = 1.

The programs for A057475, there is no canonical definition to state claims against.
-/

/-! ## A057475.P11861624844575570513

`gcd(C(2, n), A186230(∑[n+2]))`
-/

namespace A057475.P11861624844575570513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A186230 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A057475.P11861624844575570513

/-! ## A057475.P1105305973248756115

`A028310(A186230(∑[n+2]))`
-/

namespace A057475.P1105305973248756115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A186230 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057475.P1105305973248756115

/-! ## A057475.P4657877601336386569

`A186230(∑[n+2])+A000007(n)`
-/

namespace A057475.P4657877601336386569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186230 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n

end

end A057475.P4657877601336386569

/-! ## A057475.P2164597851789475470

`A186230(∑[n+2])^A062157(n)²`
-/

namespace A057475.P2164597851789475470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186230 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A057475.P2164597851789475470

/-! ## A057475.P11264650590611231470

`A186230(∑[n+2])^A165471(n²)`
-/

namespace A057475.P11264650590611231470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186230 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A165471 (n ^ 2) : ℤ)

end

end A057475.P11264650590611231470

/-! ## A057475.P12465473208714929459

`A002024(C(A186230(∑[n+2]), 2)+1)`
-/

namespace A057475.P12465473208714929459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A186230 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2 + 1)

end

end A057475.P12465473208714929459

/-! ## A057475.P6161701309615492857

`A004736(C(A186230(∑[n+2]), 2)+1)`
-/

namespace A057475.P6161701309615492857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (A186230 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2 + 1)

end

end A057475.P6161701309615492857

/-! ## A057475.P11546952481496057450

`A057428(n)+A186230(∑[n+2])+1`
-/

namespace A057475.P11546952481496057450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A186230 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A057475.P11546952481496057450

/-! ## A057475.P10787762735058101367

`A186230(∑[n+2])+A008574(n)%2`
-/

namespace A057475.P10787762735058101367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186230 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (A008574 n) 2

end

end A057475.P10787762735058101367

/-! ## A057475.P9481812868831914628

`A186230(∑[n+2])+val(A000040(n+1), 2)`
-/

namespace A057475.P9481812868831914628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186230 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A057475.P9481812868831914628

/-!
# A057477: Numbers k such that x^k + x^7 + 1 is irreducible over GF(2).

The programs for A057477, there is no canonical definition to state claims against.
-/

/-! ## A057477.P2897156761552983157

`A077359(n+1)-A059905(A171882(2*n))`
-/

namespace A057477.P2897156761552983157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1) - A059905 (A171882 (2 * n)).toNat

end

end A057477.P2897156761552983157

/-! ## A057477.P5295393394714852435

`∑[A318882(∑[A236102(n+1)])]`
-/

namespace A057477.P5295393394714852435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057477.P5295393394714852435

/-! ## A057477.P17330678514514957509

`A219654(A080541(n+1))+A212555(n)`
-/

namespace A057477.P17330678514514957509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 (A080541 (n + 1)).toNat + A212555 n

end

end A057477.P17330678514514957509

/-! ## A057477.P12362959757345634113

`A322869(A241627(n+6))+A006218(n)`
-/

namespace A057477.P12362959757345634113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (A241627 (n + 6)).toNat + A006218 n

end

end A057477.P12362959757345634113

/-!
# A057478: Numbers k such that x^k + x^8 + 1 is irreducible over GF(2).

The programs for A057478, there is no canonical definition to state claims against.
-/

/-! ## A057478.P6794127382612666583

`A367291(A033705(n+1)-lcm(n, -1%∏{e}[n, #]))`
-/

namespace A057478.P6794127382612666583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367291 (A033705 (n + 1) - (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) : ℤ)).toNat

end

end A057478.P6794127382612666583

/-!
# A057480: Numbers k such that x^k + x^10 + 1 is irreducible over GF(2).

The programs for A057480, there is no canonical definition to state claims against.
-/

/-! ## A057480.P16886746337009615892

`A162431(A123613(n))`
-/

namespace A057480.P16886746337009615892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162431 (A123613 n).toNat

end

end A057480.P16886746337009615892

/-!
# A057486: Numbers k such that x^k + x^m + 1 is factorable over GF(2) for all m between 1 and k.

The programs for A057486, there is no canonical definition to state claims against.
-/

/-! ## A057486.P8981928918567859694

`eq[0, A057646(n+2)]+2`
-/

namespace A057486.P8981928918567859694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A057486.P8981928918567859694

/-! ## A057486.P1636646182835523277

`eq[0, A057646(A233583(n+1))]`
-/

namespace A057486.P1636646182835523277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057486.P1636646182835523277

/-! ## A057486.P8843338349196879701

`A057544(eq[0, A057646(n+2)])`
-/

namespace A057486.P8843338349196879701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057486.P8843338349196879701

/-! ## A057486.P3390933123054703979

`A057544(lt[A057646(n+2), 1])`
-/

namespace A057486.P3390933123054703979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057486.P3390933123054703979

/-! ## A057486.P1086340435274707819

`lt[A057646(n+2), atan(A061579(n))]+2`
-/

namespace A057486.P1086340435274707819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A061579 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 2

end

end A057486.P1086340435274707819

/-! ## A057486.P8199914908433390631

`lt[A057646(n+2), atan(A193692(n))]+2`
-/

namespace A057486.P8199914908433390631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A193692 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 2

end

end A057486.P8199914908433390631

/-! ## A057486.P14533946887294213984

`lt[A185511(A057646(n+2)+1), 2]+2`
-/

namespace A057486.P14533946887294213984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185511 (A057646 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A057486.P14533946887294213984

/-! ## A057486.P8993766081497080632

`lt[A057646(n+2), atan(A083548(n+1))]+2`
-/

namespace A057486.P8993766081497080632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A083548 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 2

end

end A057486.P8993766081497080632

/-! ## A057486.P9714914816630731976

`lt[(A333364(n+1)+1)*A057646(A233583(n+1)), 3]`
-/

namespace A057486.P9714914816630731976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333364 (n + 1) + 1) * A057646 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057486.P9714914816630731976

/-! ## A057486.P2429582770796166981

`lt[A057646(A233583(n+1))*A280498(n+1)*20*(n+1), 3]`
-/

namespace A057486.P2429582770796166981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057646 (A233583 (n + 1)).toNat * A280498 (n + 1) * (20 * (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057486.P2429582770796166981

/-!
# A057493: Numbers n such that n | 11^n + 10^n.

The programs for A057493, there is no canonical definition to state claims against.
-/

/-! ## A057493.P1907089434997579002

`∩[A066207(n+1), A368955(n+1)]`
-/

namespace A057493.P1907089434997579002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057493.P1907089434997579002

/-! ## A057493.P5646509856332397912

`∩[A236208(n+1), A368955(n+1)]`
-/

namespace A057493.P5646509856332397912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057493.P5646509856332397912

/-! ## A057493.P9832534761750204490

`∩[A364614(n+1), A368955(n+1)]`
-/

namespace A057493.P9832534761750204490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057493.P9832534761750204490

/-! ## A057493.P18325785852026278449

`A057263(A154562(n+1))%A154576(n+1)`
-/

namespace A057493.P18325785852026278449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057263 (A154562 (n + 1)).toNat) (A154576 (n + 1))

end

end A057493.P18325785852026278449

/-!
# A057494: a(n) = Sum_{k = 1..10^n} d(k) where d(n) = number of divisors of n (A000005).

The programs for A057494, the canonical program `A057494.P2374338064675521297` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057494 has offset 0).

The definition of A057494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057494.P2374338064675521297

`A006218(10^n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057494

/-- `A006218(10^n)` -/
def P2374338064675521297.Spec : Prop :=
  ∀ n, P2374338064675521297.a n = A057494 n

theorem P2374338064675521297.correct : P2374338064675521297.Spec := by
  intro n
  simp only [A057494]

end A057494

/-!
# A057496: Numbers n such that x^n + x^3 + x^2 + x + 1 is irreducible over GF(2).

The programs for A057496, there is no canonical definition to state claims against.
-/

/-! ## A057496.P9492491292947760181

`∑[A151966(A000792(∑{d}[n, #%#²]))]`
-/

namespace A057496.P9492491292947760181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151966 (A000792 (∑ d ∈ Nat.divisors (f2 n), d % d ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057496.P9492491292947760181

/-! ## A057496.P4853659379514994621

`lt[A072012(A338331(2*n+1)), A086353(n+1)]`
-/

namespace A057496.P4853659379514994621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (A338331 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057496.P4853659379514994621

/-!
# A057498: Number of noncommutative association schemes of order n.

The programs for A057498, there is no canonical definition to state claims against.
-/

/-! ## A057498.P7002196944298118085

`A121261(A322100(n+1))`
-/

namespace A057498.P7002196944298118085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121261 (A322100 (n + 1)).toNat

end

end A057498.P7002196944298118085

/-! ## A057498.P2653581296041368911

`A033109(3*A300509(n+1))`
-/

namespace A057498.P2653581296041368911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (3 * A300509 (n + 1)).toNat

end

end A057498.P2653581296041368911

/-! ## A057498.P7851747059046081529

`gcd(6, A238662(3*n+4))*A238660(n+1)`
-/

namespace A057498.P7851747059046081529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A238662 (3 * n + 4)) : ℤ) * A238660 (n + 1)

end

end A057498.P7851747059046081529

/-! ## A057498.P3661422838430151672

`lcm(A007814(n+5), A297041(A119104(n+1)))`
-/

namespace A057498.P3661422838430151672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007814 (n + 5)) (A297041 (A119104 (n + 1)).toNat)

end

end A057498.P3661422838430151672

/-! ## A057498.P5749258394557891747

`A057505(A016116(2*n+1))%A102627(n+1)`
-/

namespace A057498.P5749258394557891747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057505 (A016116 (2 * n + 1)).toNat) (A102627 (n + 1))

end

end A057498.P5749258394557891747

/-!
# A057499: Number of primitive association schemes of order n.

The programs for A057499, there is no canonical definition to state claims against.
-/

/-! ## A057499.P15461496582368762228

`A032741(n)+A015153(A079071(A000740(n+1)))`
-/

namespace A057499.P15461496582368762228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A015153 (A079071 (A000740 (n + 1)).toNat).toNat

end

end A057499.P15461496582368762228

/-! ## A057499.P6796693583562572671

`A286044(A129682(n))+A000005(A057237(n+1))`
-/

namespace A057499.P6796693583562572671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (A129682 n).toNat + A000005 (A057237 (n + 1)).toNat

end

end A057499.P6796693583562572671

/-! ## A057499.P18122672729700093975

`A049419(A034729(n+1)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A057499.P18122672729700093975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A034729 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A057499.P18122672729700093975

/-! ## A057499.P8342158119862404040

`A049419(A002034(∏{p}[n+1, #])+A000295(n))`
-/

namespace A057499.P8342158119862404040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A002034 (∏ p ∈ Nat.primeFactors (f1 n), p) + A000295 n).toNat

end

end A057499.P8342158119862404040

/-! ## A057499.P17343601817322668021

`A055396(n+1)-A008683(A073520(2*(n+2)))`
-/

namespace A057499.P17343601817322668021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) - A008683 (A073520 (2 * (n + 2))).toNat

end

end A057499.P17343601817322668021

