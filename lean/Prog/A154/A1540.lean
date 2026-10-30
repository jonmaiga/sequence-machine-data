import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C003
import Seq.B002.C006
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A154000: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 13 ones in any 5 X 5 X 5 subtriangle.

The programs for A154000, there is no canonical definition to state claims against.
-/

/-! ## A154000.P6049149966457112604

`A002487(A036733(n))+ceil(n/2)-char[6]`
-/

namespace A154000.P6049149966457112604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036733 n).toNat + ⌈(n : ℚ) / 2⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A154000.P6049149966457112604

/-! ## A154000.P10129568804460016906

`A199238(A153995(n))+A153997(n)`
-/

namespace A154000.P10129568804460016906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (A153995 n).toNat + A153997 n

end

end A154000.P10129568804460016906

/-! ## A154000.P1889687307173733345

`A154003(n)-A286804(A153954(n))`
-/

namespace A154000.P1889687307173733345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154003 n - A286804 (A153954 n).toNat

end

end A154000.P1889687307173733345

/-!
# A154001: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 13 ones in any 5 X 5 X 5 subtriangle.

The programs for A154001, there is no canonical definition to state claims against.
-/

/-! ## A154001.P7694585266672876055

`A133024(A330937(n))`
-/

namespace A154001.P7694585266672876055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133024 (A330937 n).toNat

end

end A154001.P7694585266672876055

/-! ## A154001.P8327949479231428624

`A154440(∑[A088311(n)])`
-/

namespace A154001.P8327949479231428624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154001.P8327949479231428624

/-!
# A154002: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 13 ones in any 5 X 5 X 5 subtriangle.

The programs for A154002, there is no canonical definition to state claims against.
-/

/-! ## A154002.P6464978855448687370

`A123578(C(A003410(n), A123578(n)))`
-/

namespace A154002.P6464978855448687370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Nat.choose (A003410 n).toNat (A123578 n).toNat)

end

end A154002.P6464978855448687370

/-!
# A154003: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 14 ones in any 5 X 5 X 5 subtriangle.

The programs for A154003, there is no canonical definition to state claims against.
-/

/-! ## A154003.P13258263080125592333

`A008619(or(A020116(n), A046631(n)))`
-/

namespace A154003.P13258263080125592333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A020116 n) (A046631 n)).toNat

end

end A154003.P13258263080125592333

/-! ## A154003.P9772779990012517326

`A155900(A398093(n+2))`
-/

namespace A154003.P9772779990012517326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155900 (A398093 (n + 2)).toNat

end

end A154003.P9772779990012517326

/-! ## A154003.P12928010869857179250

`A002487(A036733(n))+ceil(n/2)`
-/

namespace A154003.P12928010869857179250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036733 n).toNat + ⌈(n : ℚ) / 2⌉

end

end A154003.P12928010869857179250

/-!
# A154004: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 14 ones in any 5 X 5 X 5 subtriangle.

The programs for A154004, there is no canonical definition to state claims against.
-/

/-! ## A154004.P2264562257207313240

`A028310(or(A153998(n), A154001(n)))`
-/

namespace A154004.P2264562257207313240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A153998 n) (A154001 n)).toNat

end

end A154004.P2264562257207313240

/-! ## A154004.P15200593505274122393

`A075169(A098501(n))`
-/

namespace A154004.P15200593505274122393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075169 (A098501 n).toNat

end

end A154004.P15200593505274122393

/-!
# A154005: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 14 ones in any 5 X 5 X 5 subtriangle.

The programs for A154005, there is no canonical definition to state claims against.
-/

/-! ## A154005.P15931973874682828428

`A065710(A015521(n))+A000041(n)`
-/

namespace A154005.P15931973874682828428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A015521 n).toNat + A000041 n

end

end A154005.P15931973874682828428

/-! ## A154005.P7264657970841662032

`A365663(A162208(n)+A000111(n))`
-/

namespace A154005.P7264657970841662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365663 (A162208 n + A000111 n).toNat

end

end A154005.P7264657970841662032

/-! ## A154005.P7521315201799810929

`lcm(A000194(A149603(n)), A131556(n))`
-/

namespace A154005.P7521315201799810929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000194 (A149603 n).toNat) (A131556 n)

end

end A154005.P7521315201799810929

/-! ## A154005.P12565773780194725364

`lcm(A131713(n), A137735(A150019(n)))`
-/

namespace A154005.P12565773780194725364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131713 n) (A137735 (A150019 n).toNat)

end

end A154005.P12565773780194725364

/-!
# A154007: Decimal expansion of log_24(8).

The programs for A154007, there is no canonical definition to state claims against.
-/

/-! ## A154007.P5750568378909016484

`9-A153100(n)`
-/

namespace A154007.P5750568378909016484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153100 n

end

end A154007.P5750568378909016484

/-!
# A154012: Decimal expansion of log_12 (9).

The programs for A154012, there is no canonical definition to state claims against.
-/

/-! ## A154012.P1671394838419809955

`9-A154802(n+1)`
-/

namespace A154012.P1671394838419809955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154802 (n + 1 + 1)

end

end A154012.P1671394838419809955

/-!
# A154017: Decimal expansion of log_18 (9).

The programs for A154017, there is no canonical definition to state claims against.
-/

/-! ## A154017.P4373687984575551300

`9-A152812(n)`
-/

namespace A154017.P4373687984575551300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152812 n

end

end A154017.P4373687984575551300

/-!
# A154021: a(n+2) = 16*a(n+1) - a(n), with a(1)=0, a(2)=4.

The programs for A154021, the canonical program `A154021.P730330555151222283` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154021 has offset 1).

The definition of A154021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154021.P730330555151222283

`ogf(4x/(1-16x+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154021

/-- `ogf(4x/(1-16x+x^2))` -/
def P730330555151222283.Spec : Prop :=
  ∀ n, P730330555151222283.a n = A154021 (n + 1)

theorem P730330555151222283.correct : P730330555151222283.Spec := by
  intro n
  simp only [A154021, Nat.add_sub_cancel]

end A154021

/-! ## A154021.P8316124491561871942

`16*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A154021.P8316124491561871942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  16 * a (n - 1) - a (n - 2)

end

end A154021.P8316124491561871942

namespace A154021

/-- `16*a(n-1)-a(n-2)` -/
def P8316124491561871942.Spec : Prop :=
  ∀ n, P8316124491561871942.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P14482767893401195893

`a(n-1)/(1/4)²-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A154021.P14482767893401195893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)

end

end A154021.P14482767893401195893

namespace A154021

/-- `a(n-1)/(1/4)²-a(n-2)` -/
def P14482767893401195893.Spec : Prop :=
  ∀ n, P14482767893401195893.a n = (A154021 (n + 1) : ℚ)

end A154021

/-! ## A154021.P13815332763064343933

`4/3*A001080(n)`
-/

namespace A154021.P13815332763064343933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A001080 n : ℚ)

end

end A154021.P13815332763064343933

namespace A154021

/-- `4/3*A001080(n)` -/
def P13815332763064343933.Spec : Prop :=
  ∀ n, P13815332763064343933.a n = (A154021 (n + 1) : ℚ)

end A154021

/-! ## A154021.P4929642511945858940

`A307173(n+1)-A077412(n)`
-/

namespace A154021.P4929642511945858940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307173 (n + 1) - A077412 n

end

end A154021.P4929642511945858940

namespace A154021

/-- `A307173(n+1)-A077412(n)` -/
def P4929642511945858940.Spec : Prop :=
  ∀ n, P4929642511945858940.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P3584441451046939340

`4*(A159678(n+1)-A077412(n))`
-/

namespace A154021.P3584441451046939340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A159678 (n + 1) - A077412 n)

end

end A154021.P3584441451046939340

namespace A154021

/-- `4*(A159678(n+1)-A077412(n))` -/
def P3584441451046939340.Spec : Prop :=
  ∀ n, P3584441451046939340.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P13001176760378055916

`2*(A159678(n+1)-A157456(n+1))`
-/

namespace A154021.P13001176760378055916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159678 (n + 1) - A157456 (n + 1))

end

end A154021.P13001176760378055916

namespace A154021

/-- `2*(A159678(n+1)-A157456(n+1))` -/
def P13001176760378055916.Spec : Prop :=
  ∀ n, P13001176760378055916.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P13230465082342368832

`(A041111(2*n+1)-A041111(2*n))*4`
-/

namespace A154021.P13230465082342368832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041111 (2 * n + 1) - A041111 (2 * n)) * 4

end

end A154021.P13230465082342368832

namespace A154021

/-- `(A041111(2*n+1)-A041111(2*n))*4` -/
def P13230465082342368832.Spec : Prop :=
  ∀ n, P13230465082342368832.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P15911258045841096520

`A159678(n+1)+A001080(n)-A077412(n)`
-/

namespace A154021.P15911258045841096520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1) + (A001080 n - A077412 n)

end

end A154021.P15911258045841096520

namespace A154021

/-- `A159678(n+1)+A001080(n)-A077412(n)` -/
def P15911258045841096520.Spec : Prop :=
  ∀ n, P15911258045841096520.a n = A154021 (n + 1)

end A154021

/-! ## A154021.P14325023520785787782

`∑[A157456(n+1)]+A001080(n)-A157456(n+1)`
-/

namespace A154021.P14325023520785787782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001080 n - A157456 (n + 1))

end

end A154021.P14325023520785787782

namespace A154021

/-- `∑[A157456(n+1)]+A001080(n)-A157456(n+1)` -/
def P14325023520785787782.Spec : Prop :=
  ∀ n, P14325023520785787782.a n = A154021 (n + 1)

end A154021

/-!
# A154022: a(n) = 5*A097780(n-2).

The programs for A154022, the canonical program `A154022.P5395958641103266710` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154022 has offset 1).

The definition of A154022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154022.P13957662133705309441

`ogf(5x/(1-25x+x^2))`
-/

namespace A154022.P13957662133705309441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -25, 1] n

end

end A154022.P13957662133705309441

namespace A154022

/-- `ogf(5x/(1-25x+x^2))` -/
def P13957662133705309441.Spec : Prop :=
  ∀ n, P13957662133705309441.a n = A154022 (n + 1)

end A154022

/-! ## A154022.P5395958641103266710

`25*a(n-1)-a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154022

/-- `25*a(n-1)-a(n-2)` -/
def P5395958641103266710.Spec : Prop :=
  ∀ n, P5395958641103266710.a n = A154022 (n + 1)

theorem P5395958641103266710.correct : P5395958641103266710.Spec := by
  intro n
  simp only [A154022, Nat.add_sub_cancel]

end A154022

/-! ## A154022.P11802104785368020879

`a(n-1)/(1/5)²-a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A154022.P11802104785368020879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2 - a (n - 2)

end

end A154022.P11802104785368020879

namespace A154022

/-- `a(n-1)/(1/5)²-a(n-2)` -/
def P11802104785368020879.Spec : Prop :=
  ∀ n, P11802104785368020879.a n = (A154022 (n + 1) : ℚ)

end A154022

/-!
# A154023: a(n+2) = 36*a(n+1) - a(n), a(1)=0, a(2)=6.

The programs for A154023, the canonical program `A154023.P17470481812666660240` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154023 has offset 1).

The definition of A154023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154023.P7077311200155966796

`ogf(6x/(1-36x+x^2))`
-/

namespace A154023.P7077311200155966796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -36, 1] n

end

end A154023.P7077311200155966796

namespace A154023

/-- `ogf(6x/(1-36x+x^2))` -/
def P7077311200155966796.Spec : Prop :=
  ∀ n, P7077311200155966796.a n = A154023 (n + 1)

end A154023

/-! ## A154023.P17470481812666660240

`36*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154023

/-- `36*a(n-1)-a(n-2)` -/
def P17470481812666660240.Spec : Prop :=
  ∀ n, P17470481812666660240.a n = A154023 (n + 1)

theorem P17470481812666660240.correct : P17470481812666660240.Spec := by
  intro n
  simp only [A154023, Nat.add_sub_cancel]

end A154023

/-!
# A154024: a(n+2) = 49*a(n+1) - a(n), a(1)=0, a(2)=7.

The programs for A154024, the canonical program `A154024.P11505294084722459531` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154024 has offset 1).

The definition of A154024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154024.P11505294084722459531

`ogf(7x/(1-49x+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154024

/-- `ogf(7x/(1-49x+x^2))` -/
def P11505294084722459531.Spec : Prop :=
  ∀ n, P11505294084722459531.a n = A154024 (n + 1)

theorem P11505294084722459531.correct : P11505294084722459531.Spec := by
  intro n
  simp only [A154024, Nat.add_sub_cancel]

end A154024

/-! ## A154024.P3340569715639322186

`49*a(n-1)-a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A154024.P3340569715639322186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  49 * a (n - 1) - a (n - 2)

end

end A154024.P3340569715639322186

namespace A154024

/-- `49*a(n-1)-a(n-2)` -/
def P3340569715639322186.Spec : Prop :=
  ∀ n, P3340569715639322186.a n = A154024 (n + 1)

end A154024

/-!
# A154025: a(n+2) = 64*a(n+1) - a(n), a(1)=0, a(2)=8.

The programs for A154025, the canonical program `A154025.P1623511361234913272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154025 has offset 1).

The definition of A154025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154025.P1623511361234913272

`ogf(8x/(1-64x+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154025

/-- `ogf(8x/(1-64x+x^2))` -/
def P1623511361234913272.Spec : Prop :=
  ∀ n, P1623511361234913272.a n = A154025 (n + 1)

theorem P1623511361234913272.correct : P1623511361234913272.Spec := by
  intro n
  simp only [A154025, Nat.add_sub_cancel]

end A154025

/-! ## A154025.P11909341616773412841

`64*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A154025.P11909341616773412841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  64 * a (n - 1) - a (n - 2)

end

end A154025.P11909341616773412841

namespace A154025

/-- `64*a(n-1)-a(n-2)` -/
def P11909341616773412841.Spec : Prop :=
  ∀ n, P11909341616773412841.a n = A154025 (n + 1)

end A154025

/-!
# A154026: a(n+2) = 81*a(n+1) - a(n), a(1)=0, a(2)=9.

The programs for A154026, the canonical program `A154026.P15570036329028032714` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154026 has offset 1).

The definition of A154026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154026.P15570036329028032714

`ogf(9x/(1-81x+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154026

/-- `ogf(9x/(1-81x+x^2))` -/
def P15570036329028032714.Spec : Prop :=
  ∀ n, P15570036329028032714.a n = A154026 (n + 1)

theorem P15570036329028032714.correct : P15570036329028032714.Spec := by
  intro n
  simp only [A154026, Nat.add_sub_cancel]

end A154026

/-! ## A154026.P2363525900772421086

`81*a(n-1)-a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A154026.P2363525900772421086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  81 * a (n - 1) - a (n - 2)

end

end A154026.P2363525900772421086

namespace A154026

/-- `81*a(n-1)-a(n-2)` -/
def P2363525900772421086.Spec : Prop :=
  ∀ n, P2363525900772421086.a n = A154026 (n + 1)

end A154026

/-!
# A154027: a(n+2) = 100*a(n+1) - a(n), a(1)=0, a(2)=10.

The programs for A154027, the canonical program `A154027.P17783534428407381272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154027 has offset 1).

The definition of A154027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154027.P17783534428407381272

`ogf(10x/(1-100x+x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154027

/-- `ogf(10x/(1-100x+x^2))` -/
def P17783534428407381272.Spec : Prop :=
  ∀ n, P17783534428407381272.a n = A154027 (n + 1)

theorem P17783534428407381272.correct : P17783534428407381272.Spec := by
  intro n
  simp only [A154027, Nat.add_sub_cancel]

end A154027

/-! ## A154027.P10579671157193376638

`10*10*a(n-1)-a(n-2)` with `a(0)=0, a(1)=10`
-/

namespace A154027.P10579671157193376638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 * (10 * a (n - 1)) - a (n - 2)

end

end A154027.P10579671157193376638

namespace A154027

/-- `10*10*a(n-1)-a(n-2)` -/
def P10579671157193376638.Spec : Prop :=
  ∀ n, P10579671157193376638.a n = A154027 (n + 1)

end A154027

/-!
# A154028: a(2n) = n*(n+1)/2, a(2n+1) = n!.

The programs for A154028, the canonical program `A154028.P7192645698628401841` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154028 has offset 0).

The definition of A154028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154028.P7192645698628401841

`A057979(n)!*C(A057979(n+1)+1, 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154028

/-- `A057979(n)!*C(A057979(n+1)+1, 2)` -/
def P7192645698628401841.Spec : Prop :=
  ∀ n, (P7192645698628401841.a n : ℤ) = A154028 n

theorem P7192645698628401841.correct : P7192645698628401841.Spec := by
  intro n
  simp only [A154028]

end A154028

/-! ## A154028.P1118386803611173907

`lcm(A057979(n)!, A000217(A078898(n)))`
-/

namespace A154028.P1118386803611173907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A057979 n).toNat : ℤ) (A000217 (A078898 n).toNat)

end

end A154028.P1118386803611173907

namespace A154028

/-- `lcm(A057979(n)!, A000217(A078898(n)))` -/
def P1118386803611173907.Spec : Prop :=
  ∀ n, (P1118386803611173907.a n : ℤ) = A154028 n

end A154028

/-! ## A154028.P6365049454219447431

`A057979(n)!*A000217(A057979(n+1))`
-/

namespace A154028.P6365049454219447431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057979 n).toNat : ℤ) * A000217 (A057979 (n + 1)).toNat

end

end A154028.P6365049454219447431

namespace A154028

/-- `A057979(n)!*A000217(A057979(n+1))` -/
def P6365049454219447431.Spec : Prop :=
  ∀ n, P6365049454219447431.a n = A154028 n

end A154028

/-!
# A154029: List of pairs of numbers: {n^2-1, (2*n-1)!!} such that F((2*n-1)!!) = n^2 - 1.

The programs for A154029, there is no canonical definition to state claims against.
-/

/-! ## A154029.P5427437695924739016

`A315032(A148936(n))%(2^n)`
-/

namespace A154029.P5427437695924739016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315032 (A148936 n).toNat) (2 ^ n : ℤ)

end

end A154029.P5427437695924739016

/-! ## A154029.P15337960982175840541

`A250120(3*n+1)%A191429(A168264(n+1))`
-/

namespace A154029.P15337960982175840541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (3 * n + 1)) (A191429 (A168264 (n + 1)).toNat)

end

end A154029.P15337960982175840541

/-!
# A154030: Sequence defined by a(2*n) = 2*(n^2 + 2*n) and a(2*n-1) = (2*n)!/n!.

The programs for A154030, there is no canonical definition to state claims against.
-/

/-! ## A154030.P913538755396144169

`record[(10*n)%A320573(n+1)]`
-/

namespace A154030.P913538755396144169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * n : ℤ) (A320573 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154030.P913538755396144169

/-! ## A154030.P4492412876174795862

`lcm(n, A001462(2^lt[and(n, n+2), 2]))`
-/

namespace A154030.P4492412876174795862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A001462 (2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n))

end

end A154030.P4492412876174795862

/-!
# A154031: Number of planar triangular n X n X n nonnegative integer grids with every similarly oriented 4 X 4 X 4 subtriangle summing to 2.

The programs for A154031, the canonical program `A154031.P16340118998919883522` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154031 has offset 4).

The definition of A154031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154031.P16340118998919883522

`ogf((55+63x+20x^2-41x^3-60x^4-16x^5-6x^6)/(1-x))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154031

/-- `ogf((55+63x+20x^2-41x^3-60x^4-16x^5-6x^6)/(1-x))` -/
def P16340118998919883522.Spec : Prop :=
  ∀ n, P16340118998919883522.a n = A154031 (n + 4)

theorem P16340118998919883522.correct : P16340118998919883522.Spec := by
  intro n
  simp only [A154031, Nat.add_sub_cancel]

end A154031

/-!
# A154033: Number of planar triangular n X n X n nonnegative integer grids with every similarly oriented 2 X 2 X 2 subtriangle summing to 3.

The programs for A154033, there is no canonical definition to state claims against.
-/

/-! ## A154033.P12388234797000146319

`A085311(a(n-1))+19` with `a(0)=10`
-/

namespace A154033.P12388234797000146319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A085311 (a (n - 1)).toNat + 19

end

end A154033.P12388234797000146319

/-!
# A154052: Number of planar triangular n X n X n nonnegative integer grids symmetric both under 120 degree rotation and reflection with every similarly oriented 5 X 5 X 5 subtriangle summing to 5.

The programs for A154052, there is no canonical definition to state claims against.
-/

/-! ## A154052.P7810406724222357988

`ceil(A154050(n+5)/∑[n+2])`
-/

namespace A154052.P7810406724222357988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154050 (n + 5) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A154052.P7810406724222357988

/-!
# A154097: A rational based combinatorial triangular sequence: f(n) = Product[Prime[a]*k + Prime[b],{k,0,n}]; a = 2; b = 1; t(n,m) = Denominator[f(n)/(f(n-m)*f(m))].

The programs for A154097, there is no canonical definition to state claims against.
-/

/-! ## A154097.P8695620493256564826

`A089898(A202906(n+1)%A305416(n+1))`
-/

namespace A154097.P8695620493256564826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (Int.tmod (A202906 (n + 1)) (A305416 (n + 1))).toNat

end

end A154097.P8695620493256564826

/-! ## A154097.P11714748501305066306

`A089898(A202906(n+1))%A153714(n+4)`
-/

namespace A154097.P11714748501305066306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089898 (A202906 (n + 1)).toNat) (A153714 (n + 4))

end

end A154097.P11714748501305066306

/-!
# A154099: Maximal number of primes in intervals of size n containing the n-th prime.

The programs for A154099, there is no canonical definition to state claims against.
-/

/-! ## A154099.P11264177535235142831

`A003056(∑[and(2, A207976(n+1))])`
-/

namespace A154099.P11264177535235142831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A207976 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154099.P11264177535235142831

/-! ## A154099.P13341494574168935366

`A132292(lt[A280249(n+2), A349933(n)])`
-/

namespace A154099.P13341494574168935366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154099.P13341494574168935366

/-! ## A154099.P3491228843362500970

`A054897(lt[A102430(n+2)+1, A306418(n)])`
-/

namespace A154099.P3491228843362500970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102430 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154099.P3491228843362500970

/-! ## A154099.P1850547307420616908

`A054897(lt[A089080(3*(n+1)), A306418(n)])`
-/

namespace A154099.P1850547307420616908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154099.P1850547307420616908

