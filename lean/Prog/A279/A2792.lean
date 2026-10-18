import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A279200: Number of square permutations of 2n things.

The programs for A279200, there is no canonical definition to state claims against.
-/

/-! ## A279200.P3430789850086822942

`A076409(n+1)*A122423(A276086(n))`
-/

namespace A279200.P3430789850086822942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076409 (n + 1) * A122423 (A276086 n).toNat

end

end A279200.P3430789850086822942

/-!
# A279201: Number of Wilf-equivalence classes of square permutations of 2n things that avoid 123.

The programs for A279201, there is no canonical definition to state claims against.
-/

/-! ## A279201.P12798125832917928069

`A038722(∑[A236962(n+1)])`
-/

namespace A279201.P12798125832917928069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279201.P12798125832917928069

/-!
# A279202: Number of Wilf-equivalence classes of square permutations of 2n things that avoid 132.

The programs for A279202, there is no canonical definition to state claims against.
-/

/-! ## A279202.P4231323040197170751

`A299167(∑[A219644(n)])+A055861(n)`
-/

namespace A279202.P4231323040197170751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A055861 n

end

end A279202.P4231323040197170751

/-!
# A279203: Number of square permutations of 2n things modulo the operations of mirror image, complement, and inverse.

The programs for A279203, there is no canonical definition to state claims against.
-/

/-! ## A279203.P11640933414351878202

`A257019(A144004(n))-2`
-/

namespace A279203.P11640933414351878202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257019 (A144004 n).toNat - 2

end

end A279203.P11640933414351878202

/-!
# A279204: Numbers whose decimal expansion is a concatenation of 4 consecutive increasing nonnegative numbers.

The programs for A279204, there is no canonical definition to state claims against.
-/

/-! ## A279204.P4769970859870639623

`A360287(A020714(n+1))`
-/

namespace A279204.P4769970859870639623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (A020714 (n + 1)).toNat

end

end A279204.P4769970859870639623

/-! ## A279204.P15720276653453985368

`A360287(2*A020714(n))`
-/

namespace A279204.P15720276653453985368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (2 * A020714 n).toNat

end

end A279204.P15720276653453985368

/-! ## A279204.P6764355583572381432

`A048794(15*2^n)`
-/

namespace A279204.P6764355583572381432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (15 * 2 ^ n)

end

end A279204.P6764355583572381432

/-!
# A279205: Length of second run of 1's in binary representation of Catalan(n).

The programs for A279205, there is no canonical definition to state claims against.
-/

/-! ## A279205.P969083039642100414

`A005087(or(A000046(n), A003056(n)))`
-/

namespace A279205.P969083039642100414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.lor (A000046 n) (A003056 n)).toNat

end

end A279205.P969083039642100414

/-! ## A279205.P15995491892130066718

`A102673(A025487(A008619(∑[n])))`
-/

namespace A279205.P15995491892130066718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A025487 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A279205.P15995491892130066718

/-! ## A279205.P6928873178438453405

`A065339(A000123(n)*A018819(n))`
-/

namespace A279205.P6928873178438453405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A000123 n * A018819 n).toNat

end

end A279205.P6928873178438453405

/-! ## A279205.P16692576517157259533

`A065339(A018819(2*n)*A018819(n))`
-/

namespace A279205.P16692576517157259533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A018819 (2 * n) * A018819 n).toNat

end

end A279205.P16692576517157259533

/-! ## A279205.P1970516586697033096

`A001221(A207879(2*n+1)+A001045(n+1))-1`
-/

namespace A279205.P1970516586697033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A207879 (2 * n + 1) + A001045 (n + 1)).toNat - 1

end

end A279205.P1970516586697033096

/-!
# A279207: Number of analytic chord diagrams with n chords.

The programs for A279207, there is no canonical definition to state claims against.
-/

/-! ## A279207.P4414006631702710402

`∑[A027923(A155806(n))]`
-/

namespace A279207.P4414006631702710402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A155806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279207.P4414006631702710402

/-! ## A279207.P3577958972403597481

`A005378(∑[∑[A211210(n)]])`
-/

namespace A279207.P3577958972403597481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279207.P3577958972403597481

/-!
# A279208: Number of analytic chord diagrams with n chords, up to symmetry.

The programs for A279208, there is no canonical definition to state claims against.
-/

/-! ## A279208.P14193373085060777950

`A032544(a(n-1))+n*a(n-1)` with `a(0)=1`
-/

namespace A279208.P14193373085060777950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032544 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A279208.P14193373085060777950

/-! ## A279208.P4927203584647395855

`A247911(A159596(n))+n`
-/

namespace A279208.P4927203584647395855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A159596 n).toNat + (n : ℤ)

end

end A279208.P4927203584647395855

/-!
# A279209: Length of first run of 0's in binary expansion of n.

The programs for A279209, the canonical program `A279209.P393407883981076372` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279209 has offset 0).

The definition of A279209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279209.P307218153618053532

`A089309(A036044(n))`
-/

namespace A279209.P307218153618053532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A036044 n).toNat

end

end A279209.P307218153618053532

namespace A279209

/-- `A089309(A036044(n))` -/
def P307218153618053532.Spec : Prop :=
  ∀ n, P307218153618053532.a n = A279209 n

end A279209

/-! ## A279209.P393407883981076372

`A090996(A035327(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A279209

/-- `A090996(A035327(n))` -/
def P393407883981076372.Spec : Prop :=
  ∀ n, P393407883981076372.a n = A279209 n

theorem P393407883981076372.correct : P393407883981076372.Spec := by
  intro n
  simp only [A279209]

end A279209

/-! ## A279209.P7193299673839296294

`A090996(xor(1, A261693(n)))`
-/

namespace A279209.P7193299673839296294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.xor 1 (A261693 n)).toNat

end

end A279209.P7193299673839296294

namespace A279209

/-- `A090996(xor(1, A261693(n)))` -/
def P7193299673839296294.Spec : Prop :=
  ∀ n, P7193299673839296294.a n = A279209 n

end A279209

/-! ## A279209.P4795952781730753029

`A090996(A004755(n+1)%A205006(n+1))`
-/

namespace A279209.P4795952781730753029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.tmod (A004755 (n + 1)) (A205006 (n + 1))).toNat

end

end A279209.P4795952781730753029

namespace A279209

/-- `A090996(A004755(n+1)%A205006(n+1))` -/
def P4795952781730753029.Spec : Prop :=
  ∀ n, P4795952781730753029.a n = A279209 n

end A279209

/-! ## A279209.P15835739115290846502

`A023416(n)-A023416(A005408(A087734(n)))`
-/

namespace A279209.P15835739115290846502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A023416 (A005408 (A087734 n).toNat).toNat

end

end A279209.P15835739115290846502

namespace A279209

/-- `A023416(n)-A023416(A005408(A087734(n)))` -/
def P15835739115290846502.Spec : Prop :=
  ∀ n, P15835739115290846502.a n = A279209 n

end A279209

/-! ## A279209.P2040066196310506560

`A023416(A087734(A035327(n))+n)`
-/

namespace A279209.P2040066196310506560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A087734 (A035327 n).toNat + (n : ℤ)).toNat

end

end A279209.P2040066196310506560

namespace A279209

/-- `A023416(A087734(A035327(n))+n)` -/
def P2040066196310506560.Spec : Prop :=
  ∀ n, P2040066196310506560.a n = A279209 n

end A279209

/-! ## A279209.P14650890593008424078

`A090996(xor(2*n+1, A003817(2*n)))`
-/

namespace A279209.P14650890593008424078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Int.xor (2 * n + 1 : ℤ) (A003817 (2 * n))).toNat

end

end A279209.P14650890593008424078

namespace A279209

/-- `A090996(xor(2*n+1, A003817(2*n)))` -/
def P14650890593008424078.Spec : Prop :=
  ∀ n, P14650890593008424078.a n = A279209 n

end A279209

/-! ## A279209.P5529983063233642897

`A000120(A342126(A035327(n))²)`
-/

namespace A279209.P5529983063233642897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342126 (A035327 n).toNat ^ 2).toNat

end

end A279209.P5529983063233642897

namespace A279209

/-- `A000120(A342126(A035327(n))²)` -/
def P5529983063233642897.Spec : Prop :=
  ∀ n, P5529983063233642897.a n = A279209 n

end A279209

/-!
# A279210: Length of second run of 1's in binary expansion of n.

The programs for A279210, the canonical program `A279210.P556875708574037845` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279210 has offset 0).

The definition of A279210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279210.P556875708574037845

`A090996(A087734(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A279210

/-- `A090996(A087734(n))` -/
def P556875708574037845.Spec : Prop :=
  ∀ n, P556875708574037845.a n = A279210 n

theorem P556875708574037845.correct : P556875708574037845.Spec := by
  intro n
  simp only [A279210]

end A279210

/-! ## A279210.P12487835521075429781

`A090996(n-A342126(n))`
-/

namespace A279210.P12487835521075429781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 ((n : ℤ) - A342126 n).toNat

end

end A279210.P12487835521075429781

namespace A279210

/-- `A090996(n-A342126(n))` -/
def P12487835521075429781.Spec : Prop :=
  ∀ n, P12487835521075429781.a n = A279210 n

end A279210

/-! ## A279210.P11524137635257889155

`A089309(A342126(n-A342126(n)))`
-/

namespace A279210.P11524137635257889155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A342126 ((n : ℤ) - A342126 n).toNat).toNat

end

end A279210.P11524137635257889155

namespace A279210

/-- `A089309(A342126(n-A342126(n)))` -/
def P11524137635257889155.Spec : Prop :=
  ∀ n, P11524137635257889155.a n = A279210 n

end A279210

/-! ## A279210.P8983366301418500043

`A089310(A030101(n))`
-/

namespace A279210.P8983366301418500043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A030101 n).toNat

end

end A279210.P8983366301418500043

namespace A279210

/-- `A089310(A030101(n))` -/
def P8983366301418500043.Spec : Prop :=
  ∀ n, P8983366301418500043.a n = A279210 n

end A279210

/-! ## A279210.P12759100344861453432

`A089310(A057889(n))`
-/

namespace A279210.P12759100344861453432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A057889 n).toNat

end

end A279210.P12759100344861453432

namespace A279210

/-- `A089310(A057889(n))` -/
def P12759100344861453432.Spec : Prop :=
  ∀ n, P12759100344861453432.a n = A279210 n

end A279210

/-! ## A279210.P17280352871263628583

`A089310(A366389(n))`
-/

namespace A279210.P17280352871263628583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A366389 n).toNat

end

end A279210.P17280352871263628583

namespace A279210

/-- `A089310(A366389(n))` -/
def P17280352871263628583.Spec : Prop :=
  ∀ n, P17280352871263628583.a n = A279210 n

end A279210

/-! ## A279210.P18290016807702635846

`A089310(A322464(n))`
-/

namespace A279210.P18290016807702635846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A322464 n).toNat

end

end A279210.P18290016807702635846

namespace A279210

/-- `A089310(A322464(n))` -/
def P18290016807702635846.Spec : Prop :=
  ∀ n, P18290016807702635846.a n = A279210 n

end A279210

/-! ## A279210.P15528689437799019135

`A285097(A385889(n))`
-/

namespace A279210.P15528689437799019135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A385889 n).toNat

end

end A279210.P15528689437799019135

namespace A279210

/-- `A285097(A385889(n))` -/
def P15528689437799019135.Spec : Prop :=
  ∀ n, P15528689437799019135.a n = A279210 n

end A279210

/-! ## A279210.P12947974020065107177

`A000120(A342126(A087734(2*n)))`
-/

namespace A279210.P12947974020065107177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342126 (A087734 (2 * n)).toNat).toNat

end

end A279210.P12947974020065107177

namespace A279210

/-- `A000120(A342126(A087734(2*n)))` -/
def P12947974020065107177.Spec : Prop :=
  ∀ n, P12947974020065107177.a n = A279210 n

end A279210

/-! ## A279210.P13982775837329729856

`A090996(A035327(A035327(2*n)))`
-/

namespace A279210.P13982775837329729856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A035327 (A035327 (2 * n)).toNat).toNat

end

end A279210.P13982775837329729856

namespace A279210

/-- `A090996(A035327(A035327(2*n)))` -/
def P13982775837329729856.Spec : Prop :=
  ∀ n, P13982775837329729856.a n = A279210 n

end A279210

/-! ## A279210.P2738257538345300865

`A000120(A342126(A087734(n))²)`
-/

namespace A279210.P2738257538345300865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342126 (A087734 n).toNat ^ 2).toNat

end

end A279210.P2738257538345300865

namespace A279210

/-- `A000120(A342126(A087734(n))²)` -/
def P2738257538345300865.Spec : Prop :=
  ∀ n, P2738257538345300865.a n = A279210 n

end A279210

/-! ## A279210.P16978897483169378781

`A089310(A160638(n))`
-/

namespace A279210.P16978897483169378781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A160638 n).toNat

end

end A279210.P16978897483169378781

namespace A279210

/-- `A089310(A160638(n))` -/
def P16978897483169378781.Spec : Prop :=
  ∀ n, P16978897483169378781.a n = A279210 n

end A279210

/-!
# A279211: Fill an array by antidiagonals upwards; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

The programs for A279211, the canonical program `A279211.P6609687660226102696` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279211 has offset 0).

The definition of A279211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279211.P18092157991191778788

`A051162(A004197(n)+n)`
-/

namespace A279211.P18092157991191778788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A004197 n + (n : ℤ)).toNat

end

end A279211.P18092157991191778788

namespace A279211

/-- `A051162(A004197(n)+n)` -/
def P18092157991191778788.Spec : Prop :=
  ∀ n, P18092157991191778788.a n = A279211 n

end A279211

/-! ## A279211.P6056670550797953451

`A051162(A003983(n+1)-1+n)`
-/

namespace A279211.P6056670550797953451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A003983 (n + 1) - 1 + (n : ℤ)).toNat

end

end A279211.P6056670550797953451

namespace A279211

/-- `A051162(A003983(n+1)-1+n)` -/
def P6056670550797953451.Spec : Prop :=
  ∀ n, P6056670550797953451.a n = A279211 n

end A279211

/-! ## A279211.P2964174558101308595

`A134483(n+1)-A051125(n+1)`
-/

namespace A279211.P2964174558101308595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) - A051125 (n + 1)

end

end A279211.P2964174558101308595

namespace A279211

/-- `A134483(n+1)-A051125(n+1)` -/
def P2964174558101308595.Spec : Prop :=
  ∀ n, P2964174558101308595.a n = A279211 n

end A279211

/-! ## A279211.P7398691551511503509

`A108872(n+1)+A004197(n)-2`
-/

namespace A279211.P7398691551511503509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + (A004197 n - 2)

end

end A279211.P7398691551511503509

namespace A279211

/-- `A108872(n+1)+A004197(n)-2` -/
def P7398691551511503509.Spec : Prop :=
  ∀ n, P7398691551511503509.a n = A279211 n

end A279211

/-! ## A279211.P6609687660226102696

`A002260(n+1)+A204002(n+1)-4`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A279211

/-- `A002260(n+1)+A204002(n+1)-4` -/
def P6609687660226102696.Spec : Prop :=
  ∀ n, P6609687660226102696.a n = A279211 n

theorem P6609687660226102696.correct : P6609687660226102696.Spec := by
  intro n
  simp only [A279211]

end A279211

/-! ## A279211.P1495528404614939973

`A002262(n)+A004197(n)+A003056(n)`
-/

namespace A279211.P1495528404614939973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A004197 n + A003056 n)

end

end A279211.P1495528404614939973

namespace A279211

/-- `A002262(n)+A004197(n)+A003056(n)` -/
def P1495528404614939973.Spec : Prop :=
  ∀ n, P1495528404614939973.a n = A279211 n

end A279211

/-! ## A279211.P16776618071714385958

`A003984(A292564(n)-A003984(n))`
-/

namespace A279211.P16776618071714385958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A292564 n - A003984 n).toNat

end

end A279211.P16776618071714385958

namespace A279211

/-- `A003984(A292564(n)-A003984(n))` -/
def P16776618071714385958.Spec : Prop :=
  ∀ n, P16776618071714385958.a n = A279211 n

end A279211

/-! ## A279211.P12787576662436856942

`A051162(n)+A001222(A158565(n))`
-/

namespace A279211.P12787576662436856942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A001222 (A158565 n).toNat

end

end A279211.P12787576662436856942

namespace A279211

/-- `A051162(n)+A001222(A158565(n))` -/
def P12787576662436856942.Spec : Prop :=
  ∀ n, P12787576662436856942.a n = A279211 n

end A279211

/-!
# A279212: Fill an array by antidiagonals upwards; in the top left cell enter a(0)=1; thereafter, in the n-th cell, enter the sum of the entries of those earlier cells that can be seen from that cell.

The programs for A279212, there is no canonical definition to state claims against.
-/

/-! ## A279212.P13230666860358614873

`A000119(A291000(n)-A245196(2*n+1))`
-/

namespace A279212.P13230666860358614873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A291000 n - A245196 (2 * n + 1)).toNat

end

end A279212.P13230666860358614873

/-!
# A279213: Primes formed by concatenating n with n-3.

The programs for A279213, there is no canonical definition to state claims against.
-/

/-! ## A279213.P18039979210488043036

`p?[A127423(n+3)-2]`
-/

namespace A279213.P18039979210488043036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279213.P18039979210488043036

/-! ## A279213.P5426170561240840700

`p?[A248378(2*n+3)-2]`
-/

namespace A279213.P5426170561240840700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (2 * n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279213.P5426170561240840700

/-! ## A279213.P698716166473140856

`p?[A111708(n+2)+2*n+3]`
-/

namespace A279213.P698716166473140856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 (n + 2) + (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279213.P698716166473140856

/-! ## A279213.P13137176464269554226

`p?[abs(A248378(A005131(n)+3)-2)]`
-/

namespace A279213.P13137176464269554226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A248378 (A005131 n + 3).toNat - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279213.P13137176464269554226

/-! ## A279213.P17236088111930737516

`p?[A000035(n)+A248378(n+3)-2]`
-/

namespace A279213.P17236088111930737516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A248378 (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279213.P17236088111930737516

/-!
# A279214: Number of permutations sigma such that |sigma(i+1)-sigma(i)| >= 3 for 1 <= i <= n - 1 and |sigma(i+2)-sigma(i)| >= 3 for 1 <= i <= n - 2.

The programs for A279214, there is no canonical definition to state claims against.
-/

/-! ## A279214.P17490074837379131144

`A098852(lcm(n, 1-a(n-1))+n)` with `a(0)=1, a(1)=1`
-/

namespace A279214.P17490074837379131144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098852 (Int.lcm (n : ℤ) (1 - a (n - 1)) + n)

end

end A279214.P17490074837379131144

/-! ## A279214.P16600765041252510743

`A002264(ceil(a(n-1)+(2*n+1)/9)!)` with `a(0)=1, a(1)=1`
-/

namespace A279214.P16600765041252510743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002264 (Nat.factorial ⌈(a (n - 1) : ℚ) + (2 * n + 1 : ℚ) / 9⌉.toNat)

end

end A279214.P16600765041252510743

/-! ## A279214.P7872637167927517721

`A051907(A054473(n))`
-/

namespace A279214.P7872637167927517721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (A054473 n).toNat

end

end A279214.P7872637167927517721

/-! ## A279214.P9775427054083202384

`A051907(A191792(n))`
-/

namespace A279214.P9775427054083202384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (A191792 n).toNat

end

end A279214.P9775427054083202384

/-! ## A279214.P3686898381357174207

`A094315(A290632(n+2))`
-/

namespace A279214.P3686898381357174207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A290632 (n + 2)).toNat

end

end A279214.P3686898381357174207

/-!
# A279215: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k+1)*(2*k+1)/6).

The programs for A279215, there is no canonical definition to state claims against.
-/

/-! ## A279215.P1038299467370594247

`A294651(A000088(n))`
-/

namespace A279215.P1038299467370594247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294651 (A000088 n).toNat

end

end A279215.P1038299467370594247

/-! ## A279215.P7137738683780518112

`A294651(A108530(n))`
-/

namespace A279215.P7137738683780518112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294651 (A108530 n).toNat

end

end A279215.P7137738683780518112

/-!
# A279216: Expansion of Product_{k>=1} 1/(1 - x^k)^(k^2*(k+1)/2).

The programs for A279216, there is no canonical definition to state claims against.
-/

/-! ## A279216.P10335270144962713881

`A058809(n)+A000943(A035481(n))`
-/

namespace A279216.P10335270144962713881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058809 n + A000943 (A035481 n).toNat

end

end A279216.P10335270144962713881

/-! ## A279216.P9618217384837976657

`A124820(n)-A001222(A371776(n))`
-/

namespace A279216.P9618217384837976657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124820 n - A001222 (A371776 n).toNat

end

end A279216.P9618217384837976657

/-!
# A279217: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k+1)*(4*k-1)/6).

The programs for A279217, there is no canonical definition to state claims against.
-/

/-! ## A279217.P17562421878571698896

`A330226(A304677(n))+A304629(n)`
-/

namespace A279217.P17562421878571698896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330226 (A304677 n).toNat + A304629 n

end

end A279217.P17562421878571698896

/-!
# A279218: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k+1)*(5*k-2)/6).

The programs for A279218, there is no canonical definition to state claims against.
-/

/-! ## A279218.P11153444844188454724

`A162223(A118096(n+1)+A082138(n))`
-/

namespace A279218.P11153444844188454724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162223 (A118096 (n + 1) + A082138 n).toNat

end

end A279218.P11153444844188454724

/-! ## A279218.P7529346366804402902

`A340764(A036239(n+2)-A064544(n))`
-/

namespace A279218.P7529346366804402902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A036239 (n + 2) - A064544 n).toNat

end

end A279218.P7529346366804402902

/-!
# A279219: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(k+1)*(2*k-1)/2).

The programs for A279219, there is no canonical definition to state claims against.
-/

/-! ## A279219.P6278797167962997677

`A097916(A077442(n))`
-/

namespace A279219.P6278797167962997677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097916 (A077442 n).toNat

end

end A279219.P6278797167962997677

/-!
# A279220: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)*(2*k+1)/6)).

The programs for A279220, there is no canonical definition to state claims against.
-/

/-! ## A279220.P8357199182265070335

`A167661(A265227(n+1))-A167688(A212122(n+1))`
-/

namespace A279220.P8357199182265070335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (A265227 (n + 1)).toNat - A167688 (A212122 (n + 1)).toNat

end

end A279220.P8357199182265070335

/-!
# A279221: Expansion of Product_{k>=1} 1/(1 - x^(k^2*(k+1)/2)).

The programs for A279221, there is no canonical definition to state claims against.
-/

/-! ## A279221.P7214804238090079944

`A062051(∑{e}[2^floor(n/2), #])`
-/

namespace A279221.P7214804238090079944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A279221.P7214804238090079944

/-! ## A279221.P17161054417958449428

`A062051(∏{e}[2^floor(n/2), #])`
-/

namespace A279221.P17161054417958449428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A279221.P17161054417958449428

/-! ## A279221.P2787240704147320201

`A008649(∑{e}[A016116(n), #])`
-/

namespace A279221.P2787240704147320201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008649 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279221.P2787240704147320201

/-! ## A279221.P6086925224294561700

`A008650(∑{e}[A016116(n), #])`
-/

namespace A279221.P6086925224294561700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008650 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279221.P6086925224294561700

/-! ## A279221.P17715568751331702206

`A008649(∏{e}[A016116(n), #])`
-/

namespace A279221.P17715568751331702206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008649 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A279221.P17715568751331702206

/-!
# A279222: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)*(4*k-1)/6)).

The programs for A279222, there is no canonical definition to state claims against.
-/

/-! ## A279222.P7022327760437795955

`∑[A003849(A303590(A004277(n)))]`
-/

namespace A279222.P7022327760437795955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A303590 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279222.P7022327760437795955

/-! ## A279222.P9200006481578434259

`A025770(A090702(n+2))`
-/

namespace A279222.P9200006481578434259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A090702 (n + 2)).toNat

end

end A279222.P9200006481578434259

/-! ## A279222.P1601557746742262053

`A279757(A224998(n+1)%A324697(2*n+1))`
-/

namespace A279222.P1601557746742262053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279757 (Int.tmod (A224998 (n + 1)) (A324697 (2 * n + 1))).toNat

end

end A279222.P1601557746742262053

/-!
# A279223: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)*(5*k-2)/6)).

The programs for A279223, there is no canonical definition to state claims against.
-/

/-! ## A279223.P2357960442817648003

`A003108(or(n, A074937(2*n+5)))`
-/

namespace A279223.P2357960442817648003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.lor (n : ℤ) (A074937 (2 * n + 5))).toNat

end

end A279223.P2357960442817648003

/-! ## A279223.P3022118418029831891

`A003108(A109613(n)%A087884(n+4))`
-/

namespace A279223.P3022118418029831891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.tmod (A109613 n) (A087884 (n + 4))).toNat

end

end A279223.P3022118418029831891

/-! ## A279223.P12145493502905700

`A003108(A151692(2*n+3)+n-1)`
-/

namespace A279223.P12145493502905700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A151692 (2 * n + 3) + ((n : ℤ) - 1)).toNat

end

end A279223.P12145493502905700

/-! ## A279223.P15649415297651431295

`A003108(A004525(2*n+1)%A342341(2*n))`
-/

namespace A279223.P15649415297651431295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.tmod (A004525 (2 * n + 1)) (A342341 (2 * n))).toNat

end

end A279223.P15649415297651431295

/-! ## A279223.P16785671886353940335

`A003108(or(n, A138904(2*n)))`
-/

namespace A279223.P16785671886353940335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.lor (n : ℤ) (A138904 (2 * n))).toNat

end

end A279223.P16785671886353940335

/-! ## A279223.P15833194719683629771

`A003108(or(1, n)%A128156(n+1))`
-/

namespace A279223.P15833194719683629771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.tmod (Nat.lor 1 n : ℤ) (A128156 (n + 1))).toNat

end

end A279223.P15833194719683629771

/-! ## A279223.P15898068795458253182

`A003108(A109613(n)%A132327(n))`
-/

namespace A279223.P15898068795458253182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (Int.tmod (A109613 n) (A132327 n)).toNat

end

end A279223.P15898068795458253182

/-!
# A279224: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)*(2*k-1)/2)).

The programs for A279224, there is no canonical definition to state claims against.
-/

/-! ## A279224.P10167836967671955947

`A025770(floor(n/3))%A074303(A058187(n))`
-/

namespace A279224.P10167836967671955947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025770 ⌊(n : ℚ) / 3⌋.toNat) (A074303 (A058187 n).toNat)

end

end A279224.P10167836967671955947

/-! ## A279224.P13173138744544663896

`A342098(floor(n/3)+1)%A007970(2*n+3)`
-/

namespace A279224.P13173138744544663896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342098 (⌊(n : ℚ) / 3⌋ + 1).toNat) (A007970 (2 * n + 3))

end

end A279224.P13173138744544663896

/-! ## A279224.P11810266112573180726

`A342098(floor(n/3)+1)%A294132(n+1)`
-/

namespace A279224.P11810266112573180726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342098 (⌊(n : ℚ) / 3⌋ + 1).toNat) (A294132 (n + 1))

end

end A279224.P11810266112573180726

/-! ## A279224.P121800458439227778

`A000700(A001462(2*n+3)%A095335(n+1))`
-/

namespace A279224.P121800458439227778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A001462 (2 * n + 3)) (A095335 (n + 1))).toNat

end

end A279224.P121800458439227778

/-! ## A279224.P8529111174562381285

`A043543(A095830(n))`
-/

namespace A279224.P8529111174562381285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043543 (A095830 n).toNat

end

end A279224.P8529111174562381285

/-!
# A279225: Expansion of Product_{k>=1} 1/(1 - x^(k^2))^2.

The programs for A279225, there is no canonical definition to state claims against.
-/

/-! ## A279225.P8708985182201123189

`∑[A280453(n)-A185284(A026810(n))]`
-/

namespace A279225.P8708985182201123189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280453 n - A185284 (A026810 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279225.P8708985182201123189

/-! ## A279225.P2205889165997016185

`∑[A007967(A280453(n)²)]`
-/

namespace A279225.P2205889165997016185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A280453 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279225.P2205889165997016185

/-! ## A279225.P9697954464118258209

`A331362(∑[A280453(n)]²)`
-/

namespace A279225.P9697954464118258209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A279225.P9697954464118258209

/-! ## A279225.P5466001176175992508

`∑[A001222(2^A280453(n))]`
-/

namespace A279225.P5466001176175992508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A280453 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279225.P5466001176175992508

/-! ## A279225.P11966266968906274491

`∑[A280453(n)%A053303(n+1)]`
-/

namespace A279225.P11966266968906274491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280453 n) (A053303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279225.P11966266968906274491

/-!
# A279228: Number of unit steps that are shared by the smallest and largest Dyck path of the symmetric representation of sigma(n).

The programs for A279228, there is no canonical definition to state claims against.
-/

/-! ## A279228.P648264683614885018

`2*(n+1-A244361(n+1))`
-/

namespace A279228.P648264683614885018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A244361 (n + 1))

end

end A279228.P648264683614885018

/-! ## A279228.P17270704594541422600

`2*(n+1)-A244363(n+1)`
-/

namespace A279228.P17270704594541422600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A244363 (n + 1)

end

end A279228.P17270704594541422600

/-! ## A279228.P4050116808061805639

`A008586(n+1)-A348705(n+1)`
-/

namespace A279228.P4050116808061805639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A348705 (n + 1)

end

end A279228.P4050116808061805639

/-! ## A279228.P10028260087727738864

`(4*(n+1))%A348854(n+1)`
-/

namespace A279228.P10028260087727738864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 1) : ℤ) (A348854 (n + 1))

end

end A279228.P10028260087727738864

/-! ## A279228.P4498222484994542440

`Δ[A002378(n)]%A244363(n+1)`
-/

namespace A279228.P4498222484994542440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A244363 (n + 1))

end

end A279228.P4498222484994542440

/-!
# A279229: Odd orders n for which a complete dihedral Hamiltonian cycle system of the cocktail graph exists.

The programs for A279229, there is no canonical definition to state claims against.
-/

/-! ## A279229.P9281227942359374465

`filter[A175614(n+1), A143731(#)]`
-/

namespace A279229.P9281227942359374465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A279229.P9281227942359374465

/-! ## A279229.P7037817332655273722

`∩[A077425(n+1), A093513(n+1)]`
-/

namespace A279229.P7037817332655273722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279229.P7037817332655273722

/-! ## A279229.P7062411241278624134

`∩[A077425(n+1), A345945(n+1)]`
-/

namespace A279229.P7062411241278624134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279229.P7062411241278624134

/-! ## A279229.P10027029935814856832

`∩[A155474(n+1), A274918(n+1)]`
-/

namespace A279229.P10027029935814856832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279229.P10027029935814856832

/-! ## A279229.P5550912002868741305

`∩[A077425(n+1), A392500(n+1)]`
-/

namespace A279229.P5550912002868741305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279229.P5550912002868741305

/-!
# A279230: Expansion of 1/((1-x)^2*(1-2*x+2*x^2)).

The programs for A279230, the canonical program `A279230.P14083479386099499548` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279230 has offset 0).

The definition of A279230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+7x^2-6x^3+2x^4))` (program `A279230.P14083479386099499548`, by `A279230.P14083479386099499548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279230.P3751936771203337762

`2*a(n-1)-2*a(n-2)+n+1` with `a(0)=1, a(1)=4`
-/

namespace A279230.P3751936771203337762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + (n + 1 : ℤ)

end

end A279230.P3751936771203337762

namespace A279230

/-- `2*a(n-1)-2*a(n-2)+n+1` -/
def P3751936771203337762.Spec : Prop :=
  ∀ n, P3751936771203337762.a n = A279230 n

end A279230

/-! ## A279230.P14083479386099499548

`ogf(1/(1-4x+7x^2-6x^3+2x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279230

/-- `ogf(1/(1-4x+7x^2-6x^3+2x^4))` -/
def P14083479386099499548.Spec : Prop :=
  ∀ n, P14083479386099499548.a n = A279230 n

theorem P14083479386099499548.correct : P14083479386099499548.Spec := by
  intro n
  simp only [A279230]

end A279230

/-! ## A279230.P15025416136373446401

`∑[5-4*a(n-4)]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A279230.P15025416136373446401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n f1 =>
  5 - 4 * f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P15025416136373446401

namespace A279230

/-- `∑[5-4*a(n-4)]` -/
def P15025416136373446401.Spec : Prop :=
  ∀ n, P15025416136373446401.a n = A279230 n

end A279230

/-! ## A279230.P6015574533420880303

`2*(a(n-1)-a(n-2))+1+n` with `a(0)=1, a(1)=4`
-/

namespace A279230.P6015574533420880303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) - a (n - 2)) + 1 + (n : ℤ)

end

end A279230.P6015574533420880303

namespace A279230

/-- `2*(a(n-1)-a(n-2))+1+n` -/
def P6015574533420880303.Spec : Prop :=
  ∀ n, P6015574533420880303.a n = A279230 n

end A279230

/-! ## A279230.P15994690639597255842

`1-(2*(a(n-2)-a(n-1))-n)` with `a(0)=1, a(1)=4`
-/

namespace A279230.P15994690639597255842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 - (2 * (a (n - 2) - a (n - 1)) - (n : ℤ))

end

end A279230.P15994690639597255842

namespace A279230

/-- `1-(2*(a(n-2)-a(n-1))-n)` -/
def P15994690639597255842.Spec : Prop :=
  ∀ n, P15994690639597255842.a n = A279230 n

end A279230

/-! ## A279230.P9666134601693613111

`∑[∑[a(n-1)-a(n-3)-a(n-3)]]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A279230.P9666134601693613111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  f2 (n - 1) - f2 (n - 3) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P9666134601693613111

namespace A279230

/-- `∑[∑[a(n-1)-a(n-3)-a(n-3)]]` -/
def P9666134601693613111.Spec : Prop :=
  ∀ n, P9666134601693613111.a n = A279230 n

end A279230

/-! ## A279230.P12239453863329299841

`∑[∑[A099087(n)]]`
-/

namespace A279230.P12239453863329299841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P12239453863329299841

namespace A279230

/-- `∑[∑[A099087(n)]]` -/
def P12239453863329299841.Spec : Prop :=
  ∀ n, P12239453863329299841.a n = A279230 n

end A279230

/-! ## A279230.P13762897179118194422

`∑[∑[∑[A146559(n)]]]`
-/

namespace A279230.P13762897179118194422
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P13762897179118194422

namespace A279230

/-- `∑[∑[∑[A146559(n)]]]` -/
def P13762897179118194422.Spec : Prop :=
  ∀ n, P13762897179118194422.a n = A279230 n

end A279230

/-! ## A279230.P5567377281384926106

`∑[∑[A009545(n+1)]]`
-/

namespace A279230.P5567377281384926106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P5567377281384926106

namespace A279230

/-- `∑[∑[A009545(n+1)]]` -/
def P5567377281384926106.Spec : Prop :=
  ∀ n, P5567377281384926106.a n = A279230 n

end A279230

/-! ## A279230.P1749161543878066031

`3-A099087(n+2)+n`
-/

namespace A279230.P1749161543878066031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A099087 (n + 2) + (n : ℤ)

end

end A279230.P1749161543878066031

namespace A279230

/-- `3-A099087(n+2)+n` -/
def P1749161543878066031.Spec : Prop :=
  ∀ n, P1749161543878066031.a n = A279230 n

end A279230

/-! ## A279230.P10828337077571008410

`3-A009545(n+3)+n`
-/

namespace A279230.P10828337077571008410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A009545 (n + 3) + (n : ℤ)

end

end A279230.P10828337077571008410

namespace A279230

/-- `3-A009545(n+3)+n` -/
def P10828337077571008410.Spec : Prop :=
  ∀ n, P10828337077571008410.a n = A279230 n

end A279230

/-! ## A279230.P11269590482781099123

`Δ[A146559(n+3)]+n+3`
-/

namespace A279230.P11269590482781099123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 3 : ℤ)

end

end A279230.P11269590482781099123

namespace A279230

/-- `Δ[A146559(n+3)]+n+3` -/
def P11269590482781099123.Spec : Prop :=
  ∀ n, P11269590482781099123.a n = A279230 n

end A279230

/-! ## A279230.P9613247654479754704

`n+3-2*A146559(n+1)`
-/

namespace A279230.P9613247654479754704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A146559 (n + 1)

end

end A279230.P9613247654479754704

namespace A279230

/-- `n+3-2*A146559(n+1)` -/
def P9613247654479754704.Spec : Prop :=
  ∀ n, P9613247654479754704.a n = A279230 n

end A279230

/-! ## A279230.P14875764683977032017

`∑[A077860(n)]`
-/

namespace A279230.P14875764683977032017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P14875764683977032017

namespace A279230

/-- `∑[A077860(n)]` -/
def P14875764683977032017.Spec : Prop :=
  ∀ n, P14875764683977032017.a n = A279230 n

end A279230

/-! ## A279230.P13651078865137772916

`n+3-A132723(n+2)/2`
-/

namespace A279230.P13651078865137772916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (A132723 (n + 2) : ℚ) / 2

end

end A279230.P13651078865137772916

namespace A279230

/-- `n+3-A132723(n+2)/2` -/
def P13651078865137772916.Spec : Prop :=
  ∀ n, P13651078865137772916.a n = (A279230 n : ℚ)

end A279230

/-! ## A279230.P16928902880339562155

`n+3-Δ[A077860(n+1)]`
-/

namespace A279230.P16928902880339562155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A279230.P16928902880339562155

namespace A279230

/-- `n+3-Δ[A077860(n+1)]` -/
def P16928902880339562155.Spec : Prop :=
  ∀ n, P16928902880339562155.a n = A279230 n

end A279230

/-! ## A279230.P2929486624872820949

`∑[∑[∑[A138231(2*n+1)]]]`
-/

namespace A279230.P2929486624872820949
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P2929486624872820949

namespace A279230

/-- `∑[∑[∑[A138231(2*n+1)]]]` -/
def P2929486624872820949.Spec : Prop :=
  ∀ n, P2929486624872820949.a n = A279230 n

end A279230

/-! ## A279230.P12306966360598833729

`∑[∑[A138231(2*(n+1))]]`
-/

namespace A279230.P12306966360598833729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279230.P12306966360598833729

namespace A279230

/-- `∑[∑[A138231(2*(n+1))]]` -/
def P12306966360598833729.Spec : Prop :=
  ∀ n, P12306966360598833729.a n = A279230 n

end A279230

/-! ## A279230.P4544890759188220263

`n+3-2*A138232(2*n)`
-/

namespace A279230.P4544890759188220263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A138232 (2 * n)

end

end A279230.P4544890759188220263

namespace A279230

/-- `n+3-2*A138232(2*n)` -/
def P4544890759188220263.Spec : Prop :=
  ∀ n, P4544890759188220263.a n = A279230 n

end A279230

/-!
# A279231: Expansion of g.f. 1/((1 - x)^2*(1 - 3*x + 3*x^2)).

The programs for A279231, the canonical program `A279231.P478188268719128082` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279231 has offset 0).

The definition of A279231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-9x^3+3x^4))` (program `A279231.P478188268719128082`, by `A279231.P478188268719128082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279231.P11817580741368380476

`3*a(n-1)-3*a(n-2)+n+1` with `a(0)=1, a(1)=5`
-/

namespace A279231.P11817580741368380476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + (n + 1 : ℤ)

end

end A279231.P11817580741368380476

namespace A279231

/-- `3*a(n-1)-3*a(n-2)+n+1` -/
def P11817580741368380476.Spec : Prop :=
  ∀ n, P11817580741368380476.a n = A279231 n

end A279231

/-! ## A279231.P478188268719128082

`ogf(1/(1-5x+10x^2-9x^3+3x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279231

/-- `ogf(1/(1-5x+10x^2-9x^3+3x^4))` -/
def P478188268719128082.Spec : Prop :=
  ∀ n, P478188268719128082.a n = A279231 n

theorem P478188268719128082.correct : P478188268719128082.Spec := by
  intro n
  simp only [A279231]

end A279231

/-! ## A279231.P6526922861141392652

`∑[∑[3*(a(n-1)-a(n-2))]]` with `a(0)=1, a(1)=3`
-/

namespace A279231.P6526922861141392652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  3 * (f2 (n - 1) - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P6526922861141392652

namespace A279231

/-- `∑[∑[3*(a(n-1)-a(n-2))]]` -/
def P6526922861141392652.Spec : Prop :=
  ∀ n, P6526922861141392652.a n = A279231 n

end A279231

/-! ## A279231.P10962428070203780495

`3*(a(n-1)-a(n-2))+n+1` with `a(0)=1, a(1)=5`
-/

namespace A279231.P10962428070203780495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * (a (n - 1) - a (n - 2)) + (n + 1 : ℤ)

end

end A279231.P10962428070203780495

namespace A279231

/-- `3*(a(n-1)-a(n-2))+n+1` -/
def P10962428070203780495.Spec : Prop :=
  ∀ n, P10962428070203780495.a n = A279231 n

end A279231

/-! ## A279231.P16283609262027067714

`∑[A307395(n)]`
-/

namespace A279231.P16283609262027067714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P16283609262027067714

namespace A279231

/-- `∑[A307395(n)]` -/
def P16283609262027067714.Spec : Prop :=
  ∀ n, P16283609262027067714.a n = A279231 n

end A279231

/-! ## A279231.P1551263029827606738

`∑[∑[A057083(n)]]`
-/

namespace A279231.P1551263029827606738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P1551263029827606738

namespace A279231

/-- `∑[∑[A057083(n)]]` -/
def P1551263029827606738.Spec : Prop :=
  ∀ n, P1551263029827606738.a n = A279231 n

end A279231

/-! ## A279231.P1174223441478280297

`∑[∑[∑[∑[A057681(n)]]]]`
-/

namespace A279231.P1174223441478280297
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P1174223441478280297

namespace A279231

/-- `∑[∑[∑[∑[A057681(n)]]]]` -/
def P1174223441478280297.Spec : Prop :=
  ∀ n, P1174223441478280297.a n = A279231 n

end A279231

/-! ## A279231.P17677097207569425097

`∑[∑[∑[A057682(n+1)]]]`
-/

namespace A279231.P17677097207569425097
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P17677097207569425097

namespace A279231

/-- `∑[∑[∑[A057682(n+1)]]]` -/
def P17677097207569425097.Spec : Prop :=
  ∀ n, P17677097207569425097.a n = A279231 n

end A279231

/-! ## A279231.P12935371126977851112

`∑[A307394(∑[n+3])]`
-/

namespace A279231.P12935371126977851112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307394 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P12935371126977851112

namespace A279231

/-- `∑[A307394(∑[n+3])]` -/
def P12935371126977851112.Spec : Prop :=
  ∀ n, P12935371126977851112.a n = A279231 n

end A279231

/-! ## A279231.P2280983983617117420

`∑[∑[A306914(∑[n+3])]]`
-/

namespace A279231.P2280983983617117420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279231.P2280983983617117420

namespace A279231

/-- `∑[∑[A306914(∑[n+3])]]` -/
def P2280983983617117420.Spec : Prop :=
  ∀ n, P2280983983617117420.a n = A279231 n

end A279231

/-!
# A279233: Denominators of coefficients in expansion of 1/(2 + cos(sqrt(x))).

The programs for A279233, there is no canonical definition to state claims against.
-/

/-! ## A279233.P14472398249401383961

`3*A279234(n)`
-/

namespace A279233.P14472398249401383961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279234 n

end

end A279233.P14472398249401383961

/-!
# A279234: Denominators of coefficients in expansion of 3/(2 + cos(sqrt(x))).

The programs for A279234, there is no canonical definition to state claims against.
-/

/-! ## A279234.P11651329710521140465

`A279233(n)/3`
-/

namespace A279234.P11651329710521140465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279233 n : ℚ) / 3

end

end A279234.P11651329710521140465

/-! ## A279234.P5372568911416453005

`record[ratio[A279233(A279209(2*n+1))]]`
-/

namespace A279234.P5372568911416453005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279233 (A279209 (2 * n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279234.P5372568911416453005

/-!
# A279235: Numerators of coefficients in expansion of 1/(2 - cos(sqrt(x))).

The programs for A279235, there is no canonical definition to state claims against.
-/

/-! ## A279235.P6835228459987505222

`A033999(n^6)*A094088(n)`
-/

namespace A279235.P6835228459987505222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n ^ 6) * A094088 n

end

end A279235.P6835228459987505222

/-!
# A279236: Denominators of coefficients in expansion of 1/(2 - cos(sqrt(x))).

The programs for A279236, there is no canonical definition to state claims against.
-/

/-! ## A279236.P4015204641160683419

`(2*n)!/A051700(A154657(n))`
-/

namespace A279236.P4015204641160683419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A051700 (A154657 n).toNat : ℚ)

end

end A279236.P4015204641160683419

/-! ## A279236.P10802076124632647949

`A010050(n)/A345000(2*4^n-1)`
-/

namespace A279236.P10802076124632647949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A345000 (2 * 4 ^ n - 1) : ℚ)

end

end A279236.P10802076124632647949

/-! ## A279236.P11214449075411548227

`A000142(2*n)/A127789(A208615(2*(n+1)))`
-/

namespace A279236.P11214449075411548227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (A127789 (A208615 (2 * (n + 1))).toNat : ℚ)

end

end A279236.P11214449075411548227

/-!
# A279237: Let k_i be the multiplicity of prime(i) in the prime factorization of the n-th composite number C_n, and let k_i=0 if prime(i) is not a factor of C_n. Then a(n)=1*k_1+10*k_2+100*k_3+...+10^N*k_N, where N is the index of the largest prime factor in C_n.

The programs for A279237, there is no canonical definition to state claims against.
-/

/-! ## A279237.P6746421014791114595

`A054841(A002808(n+1))`
-/

namespace A279237.P6746421014791114595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A002808 (n + 1)).toNat

end

end A279237.P6746421014791114595

/-! ## A279237.P16788241112463712366

`A054841(A018252(n+2))`
-/

namespace A279237.P16788241112463712366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A018252 (n + 2)).toNat

end

end A279237.P16788241112463712366

/-! ## A279237.P8433260756103401587

`A054841(A072668(n+1)+1)`
-/

namespace A279237.P8433260756103401587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A072668 (n + 1) + 1).toNat

end

end A279237.P8433260756103401587

/-! ## A279237.P8177371605488786311

`A054841(A060462(n+2)+1)`
-/

namespace A279237.P8177371605488786311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A060462 (n + 2) + 1).toNat

end

end A279237.P8177371605488786311

/-! ## A279237.P5283312005656358405

`∑{d}[A002808(n+1), A276379(A014963(#))]`
-/

namespace A279237.P5283312005656358405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276379 (A014963 d).toNat

end

end A279237.P5283312005656358405

/-!
# A279239: Denominators of coefficients in expansion of (cos x)/(1 + cos(sqrt(x))).

The programs for A279239, there is no canonical definition to state claims against.
-/

/-! ## A279239.P8551171683471845997

`2*A279240(n)`
-/

namespace A279239.P8551171683471845997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279240 n

end

end A279239.P8551171683471845997

/-! ## A279239.P1701108658070994734

`lcm(A046161(n+1), A279240(n))`
-/

namespace A279239.P1701108658070994734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046161 (n + 1)) (A279240 n)

end

end A279239.P1701108658070994734

/-! ## A279239.P17498042880708870547

`A279240(A002837(n+1))+A279240(n)`
-/

namespace A279239.P17498042880708870547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279240 (A002837 (n + 1)).toNat + A279240 n

end

end A279239.P17498042880708870547

/-! ## A279239.P5550758437631183887

`A279240(A258069(n+1))+A279240(n)`
-/

namespace A279239.P5550758437631183887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279240 (A258069 (n + 1)).toNat + A279240 n

end

end A279239.P5550758437631183887

/-! ## A279239.P6691352499658590302

`A279240(n)+A279240(A351870(n))`
-/

namespace A279239.P6691352499658590302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279240 n + A279240 (A351870 n).toNat

end

end A279239.P6691352499658590302

/-!
# A279240: Denominators of coefficients in expansion of (2 cos x)/(1 + cos(sqrt(x))).

The programs for A279240, there is no canonical definition to state claims against.
-/

/-! ## A279240.P12715529028669805264

`A279239(n)/2`
-/

namespace A279240.P12715529028669805264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279239 n : ℚ) / 2

end

end A279240.P12715529028669805264

/-! ## A279240.P9447466665626618684

`2^A008683(A020484(n))*A279239(n)`
-/

namespace A279240.P9447466665626618684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A279239 n : ℚ)

end

end A279240.P9447466665626618684

/-! ## A279240.P10119413556033483646

`A006519(A004467(2*(n+1)))*A010050(n)`
-/

namespace A279240.P10119413556033483646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A004467 (2 * (n + 1))).toNat * A010050 n

end

end A279240.P10119413556033483646

/-!
# A279241: Let f(n) = 4*n^2 + 2*n + 41. The values |f(n)| are primes for all n in the range -20 to 19 (but not for n=-21 or 20). The sequence lists this maximal run of primes in the order in which they appear.

The programs for A279241, there is no canonical definition to state claims against.
-/

/-! ## A279241.P8757681971681717006

`p?[or(1, n)+(40-n)²]`
-/

namespace A279241.P8757681971681717006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (40 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279241.P8757681971681717006

/-! ## A279241.P15752665902510724033

`Δ[n²]+(2*(20-n))²`
-/

namespace A279241.P15752665902510724033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * (20 - (n : ℤ))) ^ 2

end

end A279241.P15752665902510724033

/-! ## A279241.P1809508426994685931

`p?[(2*(20-n))²+2*n+1]`
-/

namespace A279241.P1809508426994685931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (20 - (n : ℤ))) ^ 2 + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279241.P1809508426994685931

/-! ## A279241.P15503152766466977899

`A060566(2*n)`
-/

namespace A279241.P15503152766466977899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (2 * n)

end

end A279241.P15503152766466977899

/-! ## A279241.P12567226110644263996

`∏{d}[A060566(record[and(n, n-1)]), #]`
-/

namespace A279241.P12567226110644263996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A279241.P12567226110644263996

/-!
# A279242: Numerators of coefficients in expansion of (sin x)/(1 + cos(sqrt(x))).

The programs for A279242, there is no canonical definition to state claims against.
-/

/-! ## A279242.P7787946494773740072

`Δ[n²]-∑[A037234(n!)]`
-/

namespace A279242.P7787946494773740072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A279242.P7787946494773740072

/-!
# A279243: Denominators of coefficients in expansion of (sin x)/(1 + cos(sqrt(x))).

The programs for A279243, there is no canonical definition to state claims against.
-/

/-! ## A279243.P12998812786993602222

`A222089(∪[A068789(n+1), A055219(n)])`
-/

namespace A279243.P12998812786993602222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055219 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A279243.P12998812786993602222

/-! ## A279243.P1239431541772376565

`lcm(2^n*n!/A109007(2^n*n!), A306343(A005384(n+1)))`
-/

namespace A279243.P1239431541772376565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) / (A109007 (2 ^ n * Nat.factorial n) : ℚ))) (A306343 (A005384 (n + 1)).toNat)

end

end A279243.P1239431541772376565

/-!
# A279244: Numbers k with the property that both the smallest and the largest Dyck path of the symmetric representation of sigma(k) share some line segments.

The programs for A279244, there is no canonical definition to state claims against.
-/

/-! ## A279244.P12751201856055149626

`comp[lt[A245192(n+1), 2]]`
-/

namespace A279244.P12751201856055149626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245192 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A279244.P12751201856055149626

/-! ## A279244.P10114796279782682185

`eq[0, A379968(n+1)]+1`
-/

namespace A279244.P10114796279782682185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279244.P10114796279782682185

/-! ## A279244.P399606888659411064

`lt[3, A318441(n+1)]+1`
-/

namespace A279244.P399606888659411064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A279244.P399606888659411064

/-! ## A279244.P10845225805761595393

`lt[A241558(n+1), n]+1`
-/

namespace A279244.P10845225805761595393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279244.P10845225805761595393

/-! ## A279244.P10202030668026980093

`lt[A241838(n+1), n]+1`
-/

namespace A279244.P10202030668026980093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241838 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A279244.P10202030668026980093

/-! ## A279244.P10937571789564414114

`lt[n, 8*(A093411(n)-4)]`
-/

namespace A279244.P10937571789564414114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A093411 n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A279244.P10937571789564414114

/-! ## A279244.P9877068403599688350

`comp[A279029(n+1)-1]+1`
-/

namespace A279244.P9877068403599688350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A279244.P9877068403599688350

/-! ## A279244.P10037815957562708803

`A237287(floor(sqrt(A104675(n))))`
-/

namespace A279244.P10037815957562708803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (Int.sqrt (A104675 n)).toNat

end

end A279244.P10037815957562708803

/-! ## A279244.P14054800661811044250

`A237287(A293754(n+1)+1)`
-/

namespace A279244.P14054800661811044250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (A293754 (n + 1) + 1).toNat

end

end A279244.P14054800661811044250

/-! ## A279244.P12165708921571791045

`∩[A136447(n+1), A165513(n+1)]`
-/

namespace A279244.P12165708921571791045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279244.P12165708921571791045

/-!
# A279245: Number of subsets of {1, 2, 3, ..., n} that include no consecutive odd integers.

The programs for A279245, the canonical program `A279245.P14443063640520345698` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279245 has offset 0).

The definition of A279245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279245.P14443063640520345698

`2*a(n-2)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279245

/-- `2*a(n-2)+4*a(n-4)` -/
def P14443063640520345698.Spec : Prop :=
  ∀ n, (P14443063640520345698.a n : ℤ) = A279245 n

theorem P14443063640520345698.correct : P14443063640520345698.Spec := by
  intro n
  simp only [A279245]

end A279245

/-! ## A279245.P17204642124405901082

`ogf((1+2x+2x^2+2x^3)/(1-2x^2-4x^4))`
-/

namespace A279245.P17204642124405901082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 2] [1, 0, -2, 0, -4] n

end

end A279245.P17204642124405901082

namespace A279245

/-- `ogf((1+2x+2x^2+2x^3)/(1-2x^2-4x^4))` -/
def P17204642124405901082.Spec : Prop :=
  ∀ n, P17204642124405901082.a n = A279245 n

end A279245

/-! ## A279245.P13828911930917175782

`Δ[A238374(n)]*A016116(n)`
-/

namespace A279245.P13828911930917175782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016116 n

end

end A279245.P13828911930917175782

namespace A279245

/-- `Δ[A238374(n)]*A016116(n)` -/
def P13828911930917175782.Spec : Prop :=
  ∀ n, P13828911930917175782.a n = A279245 n

end A279245

/-! ## A279245.P16531185030388335569

`A016116(n)*A103609(n+5)`
-/

namespace A279245.P16531185030388335569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A103609 (n + 5)

end

end A279245.P16531185030388335569

namespace A279245

/-- `A016116(n)*A103609(n+5)` -/
def P16531185030388335569.Spec : Prop :=
  ∀ n, P16531185030388335569.a n = A279245 n

end A279245

/-! ## A279245.P13379631100497746198

`A000045(ceil(n/2)+2)*A016116(n)`
-/

namespace A279245.P13379631100497746198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈(n : ℚ) / 2⌉ + 2).toNat * A016116 n

end

end A279245.P13379631100497746198

namespace A279245

/-- `A000045(ceil(n/2)+2)*A016116(n)` -/
def P13379631100497746198.Spec : Prop :=
  ∀ n, P13379631100497746198.a n = A279245 n

end A279245

/-! ## A279245.P2963401544926799432

`∪[A087206(n)+A063727(n), A087206(n)]`
-/

namespace A279245.P2963401544926799432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n + A063727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A279245.P2963401544926799432

namespace A279245

/-- `∪[A087206(n)+A063727(n), A087206(n)]` -/
def P2963401544926799432.Spec : Prop :=
  ∀ n, (P2963401544926799432.a n : ℤ) = A279245 n

end A279245

/-! ## A279245.P1335337796312666287

`A000045(A008619(n+3))*Δ[A164090(n+1)]`
-/

namespace A279245.P1335337796312666287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 (n + 3)).toNat * (f1 (n + 1) - f1 n)

end

end A279245.P1335337796312666287

namespace A279245

/-- `A000045(A008619(n+3))*Δ[A164090(n+1)]` -/
def P1335337796312666287.Spec : Prop :=
  ∀ n, P1335337796312666287.a n = A279245 n

end A279245

/-! ## A279245.P11256567623222099370

`A000045(A008619(n+3))*A000079(A004526(n))`
-/

namespace A279245.P11256567623222099370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 (n + 3)).toNat * A000079 (A004526 n).toNat

end

end A279245.P11256567623222099370

namespace A279245

/-- `A000045(A008619(n+3))*A000079(A004526(n))` -/
def P11256567623222099370.Spec : Prop :=
  ∀ n, P11256567623222099370.a n = A279245 n

end A279245

/-! ## A279245.P17435427538825480235

`A279312(n+1)/2`
-/

namespace A279245.P17435427538825480235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279312 (n + 1) : ℚ) / 2

end

end A279245.P17435427538825480235

namespace A279245

/-- `A279312(n+1)/2` -/
def P17435427538825480235.Spec : Prop :=
  ∀ n, P17435427538825480235.a n = (A279245 n : ℚ)

end A279245

/-! ## A279245.P17059133029200139677

`A171648(n+4)/4`
-/

namespace A279245.P17059133029200139677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171648 (n + 4) : ℚ) / 4

end

end A279245.P17059133029200139677

namespace A279245

/-- `A171648(n+4)/4` -/
def P17059133029200139677.Spec : Prop :=
  ∀ n, P17059133029200139677.a n = (A279245 n : ℚ)

end A279245

/-! ## A279245.P2035912934257534194

`record[A059268(n)*A108035(n+1)]`
-/

namespace A279245.P2035912934257534194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A108035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279245.P2035912934257534194

namespace A279245

/-- `record[A059268(n)*A108035(n+1)]` -/
def P2035912934257534194.Spec : Prop :=
  ∀ n, P2035912934257534194.a n = A279245 n

end A279245

/-! ## A279245.P11686876893185290359

`record[A059268(n)*A128540(n+2)]`
-/

namespace A279245.P11686876893185290359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A128540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279245.P11686876893185290359

namespace A279245

/-- `record[A059268(n)*A128540(n+2)]` -/
def P11686876893185290359.Spec : Prop :=
  ∀ n, P11686876893185290359.a n = A279245 n

end A279245

/-! ## A279245.P9250855000156473488

`record[A059268(n)*A117501(n+2)]`
-/

namespace A279245.P9250855000156473488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A117501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279245.P9250855000156473488

namespace A279245

/-- `record[A059268(n)*A117501(n+2)]` -/
def P9250855000156473488.Spec : Prop :=
  ∀ n, P9250855000156473488.a n = A279245 n

end A279245

/-!
# A279246: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A279246, there is no canonical definition to state claims against.
-/

/-! ## A279246.P14011257841832649088

`A007088(A279248(n))`
-/

namespace A279246.P14011257841832649088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279248 n).toNat

end

end A279246.P14011257841832649088

/-! ## A279246.P10106052442431515733

`A185544(2*A279248(n))`
-/

namespace A279246.P10106052442431515733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279248 n).toNat

end

end A279246.P10106052442431515733

/-! ## A279246.P8314105790701786611

`A283600(n)-A071178(A062569(n))`
-/

namespace A279246.P8314105790701786611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283600 n - A071178 (A062569 n).toNat

end

end A279246.P8314105790701786611

/-!
# A279247: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A279247, there is no canonical definition to state claims against.
-/

/-! ## A279247.P3996575366222253226

`A007088(A279249(n))`
-/

namespace A279247.P3996575366222253226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279249 n).toNat

end

end A279247.P3996575366222253226

/-! ## A279247.P6565805171028050969

`A305989(A279248(n)/A179051(n))`
-/

namespace A279247.P6565805171028050969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279248 n : ℚ) / (A179051 n : ℚ))).toNat

end

end A279247.P6565805171028050969

/-! ## A279247.P15566138133286359783

`A305989(A279248(n))`
-/

namespace A279247.P15566138133286359783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A279248 n).toNat

end

end A279247.P15566138133286359783

/-! ## A279247.P11387878098164904578

`A185544(2*A279249(n))`
-/

namespace A279247.P11387878098164904578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279249 n).toNat

end

end A279247.P11387878098164904578

/-! ## A279247.P13220335915691651979

`A185544(lcm(2, A279249(n)))`
-/

namespace A279247.P13220335915691651979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A279249 n))

end

end A279247.P13220335915691651979

/-!
# A279248: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A279248, there is no canonical definition to state claims against.
-/

/-! ## A279248.P9585946389143429182

`A284538(n)+A070750(A149606(n))`
-/

namespace A279248.P9585946389143429182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284538 n + A070750 (A149606 n).toNat

end

end A279248.P9585946389143429182

/-!
# A279249: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A279249, there is no canonical definition to state claims against.
-/

/-! ## A279249.P10779394470938334482

`A030101(A000265(A279248(n)))`
-/

namespace A279249.P10779394470938334482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000265 (A279248 n).toNat).toNat

end

end A279249.P10779394470938334482

/-! ## A279249.P15408995757430304164

`A325401(A279248(n)/A055642(n))`
-/

namespace A279249.P15408995757430304164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A279248 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A279249.P15408995757430304164

/-! ## A279249.P11851389016138511525

`A325401(A279248(n)/A179051(n))`
-/

namespace A279249.P11851389016138511525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A279248 n : ℚ) / (A179051 n : ℚ))).toNat

end

end A279249.P11851389016138511525

/-! ## A279249.P2239719134175065954

`A325401(A279248(n))`
-/

namespace A279249.P2239719134175065954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A279248 n).toNat

end

end A279249.P2239719134175065954

/-! ## A279249.P3868496097074853607

`A281589(lcm(2, A279248(n)))`
-/

namespace A279249.P3868496097074853607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A279248 n))

end

end A279249.P3868496097074853607

/-!
# A279250: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A279250, there is no canonical definition to state claims against.
-/

/-! ## A279250.P12106110642675860994

`A007088(A279252(n))`
-/

namespace A279250.P12106110642675860994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279252 n).toNat

end

end A279250.P12106110642675860994

/-! ## A279250.P17531777071382633196

`A007088(xor(A284139(n+1), A285475(n+1)))`
-/

namespace A279250.P17531777071382633196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A284139 (n + 1)) (A285475 (n + 1))).toNat

end

end A279250.P17531777071382633196

/-! ## A279250.P11916130465694892823

`A185544(2*A279252(n))`
-/

namespace A279250.P11916130465694892823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279252 n).toNat

end

end A279250.P11916130465694892823

/-! ## A279250.P10721377573960872956

`A185544(A279252(n)+A279252(n))`
-/

namespace A279250.P10721377573960872956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279252 n + A279252 n).toNat

end

end A279250.P10721377573960872956

/-! ## A279250.P984899783479406311

`A185544(2*xor(A284139(n+1), A285475(n+1)))`
-/

namespace A279250.P984899783479406311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.xor (A284139 (n + 1)) (A285475 (n + 1))).toNat

end

end A279250.P984899783479406311

/-!
# A279251: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A279251, there is no canonical definition to state claims against.
-/

/-! ## A279251.P4064603697875764971

`A007088(A279253(n))`
-/

namespace A279251.P4064603697875764971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279253 n).toNat

end

end A279251.P4064603697875764971

/-! ## A279251.P783043954439467788

`A185544(2*A279253(n))`
-/

namespace A279251.P783043954439467788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279253 n).toNat

end

end A279251.P783043954439467788

/-!
# A279252: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A279252, there is no canonical definition to state claims against.
-/

/-! ## A279252.P11057370676038817131

`xor(A284139(n+1), A285475(n+1))`
-/

namespace A279252.P11057370676038817131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284139 (n + 1)) (A285475 (n + 1))

end

end A279252.P11057370676038817131

/-! ## A279252.P16383460193895036814

`A279957(n*(Δ[lt[(n+1)%∑{digits}[n+1, #], 1]]^8)²)`
-/

namespace A279252.P16383460193895036814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279957 ((n : ℤ) * (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 8) ^ 2).toNat

end

end A279252.P16383460193895036814

/-! ## A279252.P3787758966795917257

`A279957(A004892(n+1))`
-/

namespace A279252.P3787758966795917257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279957 (A004892 (n + 1)).toNat

end

end A279252.P3787758966795917257

/-! ## A279252.P14872692830114666464

`A279957(A004903(n+1))`
-/

namespace A279252.P14872692830114666464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279957 (A004903 (n + 1)).toNat

end

end A279252.P14872692830114666464

/-! ## A279252.P3009651221860416905

`A279957(A004914(n+1))`
-/

namespace A279252.P3009651221860416905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279957 (A004914 (n + 1)).toNat

end

end A279252.P3009651221860416905

/-!
# A279253: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A279253, there is no canonical definition to state claims against.
-/

/-! ## A279253.P2597634336193873921

`A279958(n*(Δ[lt[(n+1)%∑{digits}[n+1, #], 1]]^8)²)`
-/

namespace A279253.P2597634336193873921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279958 ((n : ℤ) * (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 8) ^ 2).toNat

end

end A279253.P2597634336193873921

/-! ## A279253.P18115168236815218206

`A279958(A004892(n+1))`
-/

namespace A279253.P18115168236815218206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279958 (A004892 (n + 1)).toNat

end

end A279253.P18115168236815218206

/-! ## A279253.P15318862611923569757

`A279958(A004903(n+1))`
-/

namespace A279253.P15318862611923569757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279958 (A004903 (n + 1)).toNat

end

end A279253.P15318862611923569757

/-! ## A279253.P23440838865117349

`A279958(A004914(n+1))`
-/

namespace A279253.P23440838865117349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279958 (A004914 (n + 1)).toNat

end

end A279253.P23440838865117349

/-! ## A279253.P5982409804339157553

`A279958(A032563(n+1)-1)`
-/

namespace A279253.P5982409804339157553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279958 (A032563 (n + 1) - 1).toNat

end

end A279253.P5982409804339157553

/-!
# A279254: Positive integers that have a record number of divisors in Gaussian integers.

The programs for A279254, there is no canonical definition to state claims against.
-/

/-! ## A279254.P4327146715596017049

`A302252(A302249(n+1))`
-/

namespace A279254.P4327146715596017049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302252 (A302249 (n + 1)).toNat

end

end A279254.P4327146715596017049

/-! ## A279254.P1055052218746883052

`A302252(record[A062327(n+1)])`
-/

namespace A279254.P1055052218746883052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279254.P1055052218746883052

/-! ## A279254.P1824420280383577002

`A302252(record[A035154(n+1)*A069735(n+1)])`
-/

namespace A279254.P1824420280383577002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A069735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A279254.P1824420280383577002

/-! ## A279254.P13600818390401607603

`record[A265541(A034851(n))]`
-/

namespace A279254.P13600818390401607603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A034851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279254.P13600818390401607603

/-! ## A279254.P2621971656357852055

`record[A265541(A275735(n))]`
-/

namespace A279254.P2621971656357852055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A275735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279254.P2621971656357852055

/-!
# A279255: Expansion of chi(x) * chi(-x^3) * chi(-x^8) * chi(-x^24) in powers of x where chi() is a Ramanujan theta function.

The programs for A279255, there is no canonical definition to state claims against.
-/

/-! ## A279255.P5188084686229557145

`A133872(n)*A134178(n)`
-/

namespace A279255.P5188084686229557145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A134178 n

end

end A279255.P5188084686229557145

/-! ## A279255.P17079883527625681991

`∑[A056594(n)]*A134178(n)`
-/

namespace A279255.P17079883527625681991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A134178 n

end

end A279255.P17079883527625681991

/-! ## A279255.P646326833109588608

`A052938(n)%2*A134178(n)`
-/

namespace A279255.P646326833109588608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 n) 2 * A134178 n

end

end A279255.P646326833109588608

/-! ## A279255.P6493878209901121585

`A176593(n+1)%2*A134178(n)`
-/

namespace A279255.P6493878209901121585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176593 (n + 1)) 2 * A134178 n

end

end A279255.P6493878209901121585

/-! ## A279255.P17523452545736903018

`A027379(n+1)%2*A134178(n)`
-/

namespace A279255.P17523452545736903018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 (n + 1)) 2 * A134178 n

end

end A279255.P17523452545736903018

/-! ## A279255.P1249958008742000265

`A134178((n+1)*and(2, n)+n)`
-/

namespace A279255.P1249958008742000265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 ((n + 1) * Nat.land 2 n + n)

end

end A279255.P1249958008742000265

/-!
# A279257: Numerators of coefficients in expansion of 1/(cos x - sin x).

The programs for A279257, there is no canonical definition to state claims against.
-/

/-! ## A279257.P6462947517749086464

`A001586(n)/gcd(A000165(n), A001586(n))`
-/

namespace A279257.P6462947517749086464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (Int.gcd (A000165 n) (A001586 n) : ℚ)

end

end A279257.P6462947517749086464

/-! ## A279257.P8100046309309182175

`lcm(A000165(n), A212435(n))/A000165(n)`
-/

namespace A279257.P8100046309309182175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000165 n) (A212435 n) : ℚ) / (A000165 n : ℚ)

end

end A279257.P8100046309309182175

/-! ## A279257.P12347421696311598527

`A001586(n)/A032552(A027642(n))`
-/

namespace A279257.P12347421696311598527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (A032552 (A027642 n).toNat : ℚ)

end

end A279257.P12347421696311598527

/-! ## A279257.P6904700423647932695

`A001586(n)/A116445(A116395(n))`
-/

namespace A279257.P6904700423647932695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (A116445 (A116395 n).toNat : ℚ)

end

end A279257.P6904700423647932695

/-!
# A279258: Denominators of coefficients in expansion of 1/(cos x - sin x).

The programs for A279258, there is no canonical definition to state claims against.
-/

/-! ## A279258.P9414053617392901568

`n!/gcd(A000165(n), A001586(n))`
-/

namespace A279258.P9414053617392901568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A000165 n) (A001586 n) : ℚ)

end

end A279258.P9414053617392901568

/-! ## A279258.P7825347076641117461

`lcm(A000165(n), A001586(n))/A079858(n)`
-/

namespace A279258.P7825347076641117461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000165 n) (A001586 n) : ℚ) / (A079858 n : ℚ)

end

end A279258.P7825347076641117461

/-! ## A279258.P5668314427396449038

`n!/A032552(A027642(n))`
-/

namespace A279258.P5668314427396449038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A032552 (A027642 n).toNat : ℚ)

end

end A279258.P5668314427396449038

/-! ## A279258.P11750982637207452982

`A000142(n)/A032552(A027642(n))`
-/

namespace A279258.P11750982637207452982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A032552 (A027642 n).toNat : ℚ)

end

end A279258.P11750982637207452982

/-! ## A279258.P3780894875161923230

`A000142(n)/A116445(A116395(n))`
-/

namespace A279258.P3780894875161923230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A116445 (A116395 n).toNat : ℚ)

end

end A279258.P3780894875161923230

/-!
# A279260: Numbers which are cyclops palindromic in their binary reflected Gray code representation.

The programs for A279260, the canonical program `A279260.P12155716219962346154` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279260 has offset 0).

The definition of A279260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279260.P12155716219962346154

`6*A084175(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A279260

/-- `6*A084175(n)` -/
def P12155716219962346154.Spec : Prop :=
  ∀ n, P12155716219962346154.a n = A279260 n

theorem P12155716219962346154.correct : P12155716219962346154.Spec := by
  intro n
  simp only [A279260]

end A279260

/-! ## A279260.P9862949765625711971

`∑[4^n-(-2)^n]`
-/

namespace A279260.P9862949765625711971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279260.P9862949765625711971

namespace A279260

/-- `∑[4^n-(-2)^n]` -/
def P9862949765625711971.Spec : Prop :=
  ∀ n, P9862949765625711971.a n = A279260 n

end A279260

/-! ## A279260.P6940046065799609381

`ogf(6x/(1-3x-6x^2+8x^3))`
-/

namespace A279260.P6940046065799609381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -3, -6, 8] n

end

end A279260.P6940046065799609381

namespace A279260

/-- `ogf(6x/(1-3x-6x^2+8x^3))` -/
def P6940046065799609381.Spec : Prop :=
  ∀ n, P6940046065799609381.a n = A279260 n

end A279260

/-! ## A279260.P4235252010688465920

`xor(∑[2^n], ∑[4^n])`
-/

namespace A279260.P4235252010688465920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A279260.P4235252010688465920

namespace A279260

/-- `xor(∑[2^n], ∑[4^n])` -/
def P4235252010688465920.Spec : Prop :=
  ∀ n, (P4235252010688465920.a n : ℤ) = A279260 n

end A279260

/-! ## A279260.P16605237013918963106

`6*C(ceil(2^(n+1)/3), 2)`
-/

namespace A279260.P16605237013918963106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose ⌈(2 ^ (n + 1) : ℚ) / 3⌉.toNat 2

end

end A279260.P16605237013918963106

namespace A279260

/-- `6*C(ceil(2^(n+1)/3), 2)` -/
def P16605237013918963106.Spec : Prop :=
  ∀ n, (P16605237013918963106.a n : ℤ) = A279260 n

end A279260

/-! ## A279260.P3972000607283563733

`2*(4^n-(a(n-1)+1))` with `a(0)=0`
-/

namespace A279260.P3972000607283563733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((4 ^ n : ℤ) - (a (n - 1) + 1))

end

end A279260.P3972000607283563733

namespace A279260

/-- `2*(4^n-(a(n-1)+1))` -/
def P3972000607283563733.Spec : Prop :=
  ∀ n, P3972000607283563733.a n = A279260 n

end A279260

/-! ## A279260.P3656287975891519471

`2*(4^n-1-a(n-1))` with `a(0)=0`
-/

namespace A279260.P3656287975891519471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((4 ^ n : ℤ) - 1 - a (n - 1))

end

end A279260.P3656287975891519471

namespace A279260

/-- `2*(4^n-1-a(n-1))` -/
def P3656287975891519471.Spec : Prop :=
  ∀ n, P3656287975891519471.a n = A279260 n

end A279260

/-! ## A279260.P10208936299658061849

`A245489(n+1)-1`
-/

namespace A279260.P10208936299658061849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245489 (n + 1) - 1

end

end A279260.P10208936299658061849

namespace A279260

/-- `A245489(n+1)-1` -/
def P10208936299658061849.Spec : Prop :=
  ∀ n, P10208936299658061849.a n = A279260 n

end A279260

/-! ## A279260.P16669066125472980057

`6*A084152(n+1)`
-/

namespace A279260.P16669066125472980057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A084152 (n + 1)

end

end A279260.P16669066125472980057

namespace A279260

/-- `6*A084152(n+1)` -/
def P16669066125472980057.Spec : Prop :=
  ∀ n, P16669066125472980057.a n = A279260 n

end A279260

/-! ## A279260.P9036435779072854996

`6*A138477(2*n)`
-/

namespace A279260.P9036435779072854996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138477 (2 * n)

end

end A279260.P9036435779072854996

namespace A279260

/-- `6*A138477(2*n)` -/
def P9036435779072854996.Spec : Prop :=
  ∀ n, P9036435779072854996.a n = A279260 n

end A279260

/-! ## A279260.P2482586295772315838

`6*A138495(2*n)`
-/

namespace A279260.P2482586295772315838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138495 (2 * n)

end

end A279260.P2482586295772315838

namespace A279260

/-- `6*A138495(2*n)` -/
def P2482586295772315838.Spec : Prop :=
  ∀ n, P2482586295772315838.a n = A279260 n

end A279260

/-! ## A279260.P11325862705269381703

`2*A136401(2*(n+1))`
-/

namespace A279260.P11325862705269381703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136401 (2 * (n + 1))

end

end A279260.P11325862705269381703

namespace A279260

/-- `2*A136401(2*(n+1))` -/
def P11325862705269381703.Spec : Prop :=
  ∀ n, P11325862705269381703.a n = A279260 n

end A279260

/-! ## A279260.P3432379796531943826

`∑[2*A071930(n+1)]/2`
-/

namespace A279260.P3432379796531943826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071930 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A279260.P3432379796531943826

namespace A279260

/-- `∑[2*A071930(n+1)]/2` -/
def P3432379796531943826.Spec : Prop :=
  ∀ n, P3432379796531943826.a n = (A279260 n : ℚ)

end A279260

/-! ## A279260.P11461688604352227499

`A002446(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A279260.P11461688604352227499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002446 n - (a (n - 1) + a (n - 1))

end

end A279260.P11461688604352227499

namespace A279260

/-- `A002446(n)-(a(n-1)+a(n-1))` -/
def P11461688604352227499.Spec : Prop :=
  ∀ n, P11461688604352227499.a n = A279260 n

end A279260

/-! ## A279260.P12506225455114576802

`A246030(n)-A047849(n)`
-/

namespace A279260.P12506225455114576802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246030 n - A047849 n

end

end A279260.P12506225455114576802

namespace A279260

/-- `A246030(n)-A047849(n)` -/
def P12506225455114576802.Spec : Prop :=
  ∀ n, P12506225455114576802.a n = A279260 n

end A279260

/-! ## A279260.P11348588604256830015

`A246036(n)-A151575(n)`
-/

namespace A279260.P11348588604256830015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n - A151575 n

end

end A279260.P11348588604256830015

namespace A279260

/-- `A246036(n)-A151575(n)` -/
def P11348588604256830015.Spec : Prop :=
  ∀ n, P11348588604256830015.a n = A279260 n

end A279260

/-! ## A279260.P93375160019799086

`A002450(n+1)-A077925(n)`
-/

namespace A279260.P93375160019799086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) - A077925 n

end

end A279260.P93375160019799086

namespace A279260

/-- `A002450(n+1)-A077925(n)` -/
def P93375160019799086.Spec : Prop :=
  ∀ n, P93375160019799086.a n = A279260 n

end A279260

/-! ## A279260.P4273001828336340686

`A037576(n+1)-A249993(n)`
-/

namespace A279260.P4273001828336340686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037576 (n + 1) - A249993 n

end

end A279260.P4273001828336340686

namespace A279260

/-- `A037576(n+1)-A249993(n)` -/
def P4273001828336340686.Spec : Prop :=
  ∀ n, P4273001828336340686.a n = A279260 n

end A279260

/-! ## A279260.P15230614816207160967

`A014113(n+1)*A062510(n)`
-/

namespace A279260.P15230614816207160967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 1) * A062510 n

end

end A279260.P15230614816207160967

namespace A279260

/-- `A014113(n+1)*A062510(n)` -/
def P15230614816207160967.Spec : Prop :=
  ∀ n, P15230614816207160967.a n = A279260 n

end A279260

/-! ## A279260.P10339289581592900100

`A001045(n)*A092297(n+2)`
-/

namespace A279260.P10339289581592900100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A092297 (n + 2)

end

end A279260.P10339289581592900100

namespace A279260

/-- `A001045(n)*A092297(n+2)` -/
def P10339289581592900100.Spec : Prop :=
  ∀ n, P10339289581592900100.a n = A279260 n

end A279260

/-!
# A279261: Expansion of q^(-1/3) * eta(q)^3 * eta(q^3)^3 / eta(q^2)^2 in powers of q.

The programs for A279261, there is no canonical definition to state claims against.
-/

/-! ## A279261.P17386496296284656609

`A260301(3*n+1)/3`
-/

namespace A279261.P17386496296284656609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260301 (3 * n + 1) : ℚ) / 3

end

end A279261.P17386496296284656609

/-! ## A279261.P3161254981635355328

`A266684(9*n+3)/3`
-/

namespace A279261.P3161254981635355328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 (9 * n + 3) : ℚ) / 3

end

end A279261.P3161254981635355328

/-!
# A279262: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279262, the canonical program `A279262.P434213535527223328` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279262 has offset 1).

The definition of A279262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279262.P434213535527223328

`2*(A029907(n)+A001911(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A279262

/-- `2*(A029907(n)+A001911(n))` -/
def P434213535527223328.Spec : Prop :=
  ∀ n, P434213535527223328.a n = A279262 (n + 1)

theorem P434213535527223328.correct : P434213535527223328.Spec := by
  intro n
  simp only [A279262, Nat.add_sub_cancel]

end A279262

/-! ## A279262.P10315921483957292669

`∑[A022087(n)]+2*A001629(n)`
-/

namespace A279262.P10315921483957292669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A001629 n

end

end A279262.P10315921483957292669

namespace A279262

/-- `∑[A022087(n)]+2*A001629(n)` -/
def P10315921483957292669.Spec : Prop :=
  ∀ n, P10315921483957292669.a n = A279262 (n + 1)

end A279262

/-! ## A279262.P6777249972073323807

`A279742(n+2)-A006355(n+2)`
-/

namespace A279262.P6777249972073323807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279742 (n + 2) - A006355 (n + 2)

end

end A279262.P6777249972073323807

namespace A279262

/-- `A279742(n+2)-A006355(n+2)` -/
def P6777249972073323807.Spec : Prop :=
  ∀ n, P6777249972073323807.a n = A279262 (n + 1)

end A279262

/-! ## A279262.P17314798533624115134

`2*(A001629(n)+∑[A006355(n+1)])`
-/

namespace A279262.P17314798533624115134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001629 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279262.P17314798533624115134

namespace A279262

/-- `2*(A001629(n)+∑[A006355(n+1)])` -/
def P17314798533624115134.Spec : Prop :=
  ∀ n, P17314798533624115134.a n = A279262 (n + 1)

end A279262

/-! ## A279262.P14839686588370469389

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=10, a(3)=20, a(4)=38`
-/

namespace A279262.P14839686588370469389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 10, 20, 38] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A279262.P14839686588370469389

namespace A279262

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P14839686588370469389.Spec : Prop :=
  ∀ n, P14839686588370469389.a n = A279262 (n + 1)

end A279262

/-!
# A279263: Number of n X 3 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279263, there is no canonical definition to state claims against.
-/

/-! ## A279263.P10848728183127685395

`A279268(∑[n+2]+4)`
-/

namespace A279263.P10848728183127685395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279263.P10848728183127685395

/-! ## A279263.P10311143699734440360

`A279268(A167614(n+1))+char[17]`
-/

namespace A279263.P10311143699734440360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279263.P10311143699734440360

/-! ## A279263.P10413189493268477293

`A279268(A167614(n+1))%A017117(n)`
-/

namespace A279263.P10413189493268477293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279268 (A167614 (n + 1)).toNat) (A017117 n)

end

end A279263.P10413189493268477293

/-! ## A279263.P14292041442397867367

`lcm(A064179(n+1), A279268(A167614(n+1)))`
-/

namespace A279263.P14292041442397867367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064179 (n + 1)) (A279268 (A167614 (n + 1)).toNat)

end

end A279263.P14292041442397867367

/-! ## A279263.P4020244002154048497

`A007318(C(n, 2))*A279268(A167614(n+1))`
-/

namespace A279263.P4020244002154048497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A279268 (A167614 (n + 1)).toNat

end

end A279263.P4020244002154048497

/-!
# A279264: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279264, there is no canonical definition to state claims against.
-/

/-! ## A279264.P16596131887145002414

`A279268(∑[n+3]+7)`
-/

namespace A279264.P16596131887145002414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A279264.P16596131887145002414

/-! ## A279264.P87724815418091373

`lcm(2, A279268(A167499(n+2)-1))`
-/

namespace A279264.P87724815418091373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279268 (A167499 (n + 2) - 1).toNat)

end

end A279264.P87724815418091373

/-! ## A279264.P17906257240661037687

`A007318(C(2, n))*A279268(A167499(n+2)-1)`
-/

namespace A279264.P17906257240661037687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A279268 (A167499 (n + 2) - 1).toNat

end

end A279264.P17906257240661037687

/-! ## A279264.P3672564113861051963

`A279268(A167499(n+2)-1)+A008683(4*(n+1))`
-/

namespace A279264.P3672564113861051963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A167499 (n + 2) - 1).toNat + A008683 (4 * (n + 1))

end

end A279264.P3672564113861051963

/-! ## A279264.P1064907348137916564

`A000108(C(2, n+2))*A279268(A167499(n+2)-1)`
-/

namespace A279264.P1064907348137916564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A279268 (A167499 (n + 2) - 1).toNat

end

end A279264.P1064907348137916564

/-!
# A279265: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279265, there is no canonical definition to state claims against.
-/

/-! ## A279265.P18162455641238961361

`A279268(A374005(n+1))`
-/

namespace A279265.P18162455641238961361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A374005 (n + 1)).toNat

end

end A279265.P18162455641238961361

/-! ## A279265.P7231449808258040823

`A279268(A167499(n+3))`
-/

namespace A279265.P7231449808258040823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A167499 (n + 3)).toNat

end

end A279265.P7231449808258040823

/-! ## A279265.P14368769620729963224

`A279268(A155212(n)+13)`
-/

namespace A279265.P14368769620729963224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A155212 n + 13).toNat

end

end A279265.P14368769620729963224

/-! ## A279265.P16098272496642836188

`A279268(A056000(n)+15)`
-/

namespace A279265.P16098272496642836188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A056000 n + 15).toNat

end

end A279265.P16098272496642836188

/-! ## A279265.P12386882590988128148

`A279268(eq[7, A066657(n)])`
-/

namespace A279265.P12386882590988128148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279265.P12386882590988128148

/-!
# A279266: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279266, there is no canonical definition to state claims against.
-/

/-! ## A279266.P13663480022803098467

`A279268(A374007(n+1))`
-/

namespace A279266.P13663480022803098467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A374007 (n + 1)).toNat

end

end A279266.P13663480022803098467

/-! ## A279266.P8378960747751687808

`A279268(A166136(n+4))`
-/

namespace A279266.P8378960747751687808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A166136 (n + 4)).toNat

end

end A279266.P8378960747751687808

/-! ## A279266.P7621014305236797411

`A279268(A056115(n)+21)`
-/

namespace A279266.P7621014305236797411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A056115 n + 21).toNat

end

end A279266.P7621014305236797411

/-! ## A279266.P9764054792619343904

`A279268(A167499(n+4)+1)`
-/

namespace A279266.P9764054792619343904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A167499 (n + 4) + 1).toNat

end

end A279266.P9764054792619343904

/-! ## A279266.P12756498228096130266

`A279268(eq[7, A131818(n+1)])`
-/

namespace A279266.P12756498228096130266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279266.P12756498228096130266

/-!
# A279267: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279267, there is no canonical definition to state claims against.
-/

/-! ## A279267.P13835400440306364814

`A279268(A374008(n+1))`
-/

namespace A279267.P13835400440306364814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A374008 (n + 1)).toNat

end

end A279267.P13835400440306364814

/-! ## A279267.P18002992613699383930

`A279268(A056119(n)+28)`
-/

namespace A279267.P18002992613699383930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A056119 n + 28).toNat

end

end A279267.P18002992613699383930

/-! ## A279267.P11173261593725802592

`A279268(eq[11, A066657(n)])`
-/

namespace A279267.P11173261593725802592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279267.P11173261593725802592

/-! ## A279267.P18207672983889966200

`A279268(A167499(n+5)+2)`
-/

namespace A279267.P18207672983889966200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A167499 (n + 5) + 2).toNat

end

end A279267.P18207672983889966200

/-! ## A279267.P2041839551176361495

`A279268(A000096(n+5)+8)`
-/

namespace A279267.P2041839551176361495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279268 (A000096 (n + 5) + 8).toNat

end

end A279267.P2041839551176361495

/-!
# A279269: a(n) = floor( (4 + sqrt(11))^n ).

The programs for A279269, the canonical program `A279269.P9788200859802379049` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279269 has offset 0).

The definition of A279269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279269.P9788200859802379049

`8*a(n-1)-5*a(n-2)+2` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279269

/-- `8*a(n-1)-5*a(n-2)+2` -/
def P9788200859802379049.Spec : Prop :=
  ∀ n, P9788200859802379049.a n = A279269 n

theorem P9788200859802379049.correct : P9788200859802379049.Spec := by
  intro n
  simp only [A279269]

end A279269

/-! ## A279269.P4925650713432928518

`∑[ogf((1-2x+3x^2)/(1-8x+5x^2))]`
-/

namespace A279269.P4925650713432928518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -8, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279269.P4925650713432928518

namespace A279269

/-- `∑[ogf((1-2x+3x^2)/(1-8x+5x^2))]` -/
def P4925650713432928518.Spec : Prop :=
  ∀ n, P4925650713432928518.a n = A279269 n

end A279269

/-! ## A279269.P4810629986523999237

`floor(A138513(2*(n+1))/A138513(n+2))`
-/

namespace A279269.P4810629986523999237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138513 (2 * (n + 1)) : ℚ) / (A138513 (n + 2) : ℚ)⌋

end

end A279269.P4810629986523999237

namespace A279269

/-- `floor(A138513(2*(n+1))/A138513(n+2))` -/
def P4810629986523999237.Spec : Prop :=
  ∀ n, P4810629986523999237.a n = A279269 n

end A279269

/-! ## A279269.P5507844603997094826

`floor((A000005(A143206(n+1))+sqrt(11))^n)`
-/

namespace A279269.P5507844603997094826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000005 (A143206 (n + 1)).toNat : ℝ) + Real.sqrt (11 : ℝ)) ^ n⌋

end

end A279269.P5507844603997094826

namespace A279269

/-- `floor((A000005(A143206(n+1))+sqrt(11))^n)` -/
def P5507844603997094826.Spec : Prop :=
  ∀ n, P5507844603997094826.a n = A279269 n

end A279269

/-! ## A279269.P15826663006783244892

`floor((A167873(A167882(n))+sqrt(11))^n)`
-/

namespace A279269.P15826663006783244892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A167873 (A167882 n).toNat : ℝ) + Real.sqrt (11 : ℝ)) ^ n⌋

end

end A279269.P15826663006783244892

namespace A279269

/-- `floor((A167873(A167882(n))+sqrt(11))^n)` -/
def P15826663006783244892.Spec : Prop :=
  ∀ n, P15826663006783244892.a n = A279269 n

end A279269

/-!
# A279270: Expansion of phi(-x) * chi(-x)^2 * f(-x^6)^3 in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A279270, there is no canonical definition to state claims against.
-/

/-! ## A279270.P7506041905266301777

`A260301(3*n+2)/3`
-/

namespace A279270.P7506041905266301777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260301 (3 * n + 2) : ℚ) / 3

end

end A279270.P7506041905266301777

/-! ## A279270.P9968454954728908728

`A266684(9*n+6)/3`
-/

namespace A279270.P9968454954728908728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 (9 * n + 6) : ℚ) / 3

end

end A279270.P9968454954728908728

/-!
# A279271: Exponential transform of the Pell numbers.

The programs for A279271, there is no canonical definition to state claims against.
-/

/-! ## A279271.P10918141752425742913

`A222241(A125276(n)-A000332(n))`
-/

namespace A279271.P10918141752425742913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A125276 n - A000332 n).toNat

end

end A279271.P10918141752425742913

/-! ## A279271.P1598278732680482410

`A321378(∑[4*n]+10)`
-/

namespace A279271.P1598278732680482410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A279271.P1598278732680482410

/-!
# A279272: Numbers k such that k^7 - 1 and k^7 + 1 are semiprimes.

The programs for A279272, there is no canonical definition to state claims against.
-/

/-! ## A279272.P4484273143779798991

`∩[A105041(n+1), A261436(n+1)]`
-/

namespace A279272.P4484273143779798991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279272.P4484273143779798991

/-!
# A279273: Number of 2 X 2 matrices having entries in {0,1,...,n} and determinant in the open interval (-n,n) with no entry repeated.

The programs for A279273, there is no canonical definition to state claims against.
-/

/-! ## A279273.P17900882834925309473

`and(-8, A342853(2*n+1))`
-/

namespace A279273.P17900882834925309473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-8) (A342853 (2 * n + 1))

end

end A279273.P17900882834925309473

/-! ## A279273.P18327729127951524818

`∑[and(n*(2*n²-3*n+4)/3, A115613(n+1))]`
-/

namespace A279273.P18327729127951524818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n : ℚ) * (((2 * n ^ 2 : ℤ) - (3 * n : ℤ) + 4 : ℚ) / 3))) (A115613 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279273.P18327729127951524818

/-! ## A279273.P13034224948200367464

`lcm(8, A055941(A000311(n)))`
-/

namespace A279273.P13034224948200367464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A055941 (A000311 n).toNat)

end

end A279273.P13034224948200367464

/-!
# A279277: Composition of Lucas numbers A000032 with Fibonacci numbers A000045.

The programs for A279277, the canonical program `A279277.P17274515351100874044` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279277 has offset 1).

The definition of A279277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279277.P17274515351100874044

`3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=37`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279277

/-- `3*a(n-1)+a(n-2)-3*a(n-3)-a(n-4)` -/
def P17274515351100874044.Spec : Prop :=
  ∀ n, P17274515351100874044.a n = A279277 (n + 1)

theorem P17274515351100874044.correct : P17274515351100874044.Spec := by
  intro n
  simp only [A279277, Nat.add_sub_cancel]

end A279277

/-! ## A279277.P1899507187110467646

`ogf((1+x-x^2)/(1-3x-x^2+3x^3+x^4))`
-/

namespace A279277.P1899507187110467646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, -1, 3, 1] n

end

end A279277.P1899507187110467646

namespace A279277

/-- `ogf((1+x-x^2)/(1-3x-x^2+3x^3+x^4))` -/
def P1899507187110467646.Spec : Prop :=
  ∀ n, P1899507187110467646.a n = A279277 (n + 1)

end A279277

/-! ## A279277.P10182540418421967750

`A047565(A026164(n+1))`
-/

namespace A279277.P10182540418421967750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (A026164 (n + 1)).toNat

end

end A279277.P10182540418421967750

namespace A279277

/-- `A047565(A026164(n+1))` -/
def P10182540418421967750.Spec : Prop :=
  ∀ n, P10182540418421967750.a n = A279277 (n + 1)

end A279277

/-!
# A279278: Expansion of Product_{k>=1} (1 + x^(k*(k+1)*(k+2)/6)).

The programs for A279278, there is no canonical definition to state claims against.
-/

/-! ## A279278.P1574545725930330270

`A034968(A331919(n))`
-/

namespace A279278.P1574545725930330270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331919 n).toNat

end

end A279278.P1574545725930330270

/-! ## A279278.P16544778327044231762

`A055091(A331919(n)%A001576(n))`
-/

namespace A279278.P16544778327044231762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.tmod (A331919 n) (A001576 n)).toNat

end

end A279278.P16544778327044231762

/-! ## A279278.P8566840292329351663

`A261185(A017041(n))+A055091(A331919(n))`
-/

namespace A279278.P8566840292329351663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261185 (A017041 n).toNat + A055091 (A331919 n).toNat

end

end A279278.P8566840292329351663

/-! ## A279278.P8203396800858666783

`A050347(A290427(n+1))*A055091(A331919(n))`
-/

namespace A279278.P8203396800858666783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (A290427 (n + 1)).toNat * A055091 (A331919 n).toNat

end

end A279278.P8203396800858666783

/-! ## A279278.P10519893845451367604

`A055091(A331919(n))^A050347(A290427(n+2))`
-/

namespace A279278.P10519893845451367604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055091 (A331919 n).toNat : ℚ) ^ (A050347 (A290427 (n + 2)).toNat : ℤ)

end

end A279278.P10519893845451367604

/-! ## A279278.P12742232327163609436

`C(A055091(A331919(n)), A340199(n+3)%2)`
-/

namespace A279278.P12742232327163609436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055091 (A331919 n).toNat).toNat (Int.tmod (A340199 (n + 3)) 2).toNat

end

end A279278.P12742232327163609436

/-! ## A279278.P6592701288161075945

`A054868(lcm(4^∑{e}[n+1, #], A331919(n)))`
-/

namespace A279278.P6592701288161075945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (Int.lcm (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A331919 n))

end

end A279278.P6592701288161075945

/-!
# A279279: Expansion of Product_{k>=1} (1 + x^(k*(2*k-1))).

The programs for A279279, there is no canonical definition to state claims against.
-/

/-! ## A279279.P9079086768696283480

`ceil(∑{digits}[A332014(n), #]/6)`
-/

namespace A279279.P9079086768696283480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / 6⌉

end

end A279279.P9079086768696283480

/-! ## A279279.P14446054974013240680

`A034968(A332014(n))`
-/

namespace A279279.P14446054974013240680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A332014 n).toNat

end

end A279279.P14446054974013240680

/-! ## A279279.P2251165097927002911

`A193330(A332014(n)²)`
-/

namespace A279279.P2251165097927002911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A332014 n ^ 2).toNat

end

end A279279.P2251165097927002911

/-! ## A279279.P7803915270906186483

`A060130(2*A332014(n))`
-/

namespace A279279.P7803915270906186483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (2 * A332014 n).toNat

end

end A279279.P7803915270906186483

/-! ## A279279.P1539262909718467216

`A193330(A332014(n)^2)`
-/

namespace A279279.P1539262909718467216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A332014 n ^ 2).toNat

end

end A279279.P1539262909718467216

/-! ## A279279.P8994654579928720595

`A060502(lcm(4, A332014(n)))`
-/

namespace A279279.P8994654579928720595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Int.lcm 4 (A332014 n))

end

end A279279.P8994654579928720595

/-! ## A279279.P5567389654348730402

`A055091(∑{digits}[A332014(n), #])`
-/

namespace A279279.P5567389654348730402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A279279.P5567389654348730402

/-! ## A279279.P24631460722222304

`A060502(∑{digits}[A332014(n), #])`
-/

namespace A279279.P24631460722222304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A279279.P24631460722222304

/-! ## A279279.P10200820302575115508

`A001221(∑{digits}[A332014(n), #]²+1)`
-/

namespace A279279.P10200820302575115508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2 + 1)

end

end A279279.P10200820302575115508

/-! ## A279279.P15217589175596209612

`A001221(A007064(A332014(n)+1))`
-/

namespace A279279.P15217589175596209612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007064 (A332014 n + 1).toNat).toNat

end

end A279279.P15217589175596209612

/-!
# A279280: Expansion of Product_{k>=1} (1 + x^(k*(5*k-3)/2)).

The programs for A279280, there is no canonical definition to state claims against.
-/

/-! ## A279280.P10745195362422806920

`A060502(A332015(n))`
-/

namespace A279280.P10745195362422806920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A332015 n).toNat

end

end A279280.P10745195362422806920

/-! ## A279280.P1272437314866791372

`A001221(A332015(n)+1)`
-/

namespace A279280.P1272437314866791372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332015 n + 1).toNat

end

end A279280.P1272437314866791372

/-! ## A279280.P11305401704066512012

`A056924(A332015(n)+1)`
-/

namespace A279280.P11305401704066512012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A332015 n + 1).toNat

end

end A279280.P11305401704066512012

/-! ## A279280.P5242502680156672094

`A064547(A332015(n)+1)`
-/

namespace A279280.P5242502680156672094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A332015 n + 1).toNat

end

end A279280.P5242502680156672094

/-! ## A279280.P278386056006007647

`A091222(A332015(n)+1)`
-/

namespace A279280.P278386056006007647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A332015 n + 1).toNat

end

end A279280.P278386056006007647

/-! ## A279280.P3285257723111373506

`A124010(A332015(n)+1)`
-/

namespace A279280.P3285257723111373506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A332015 n + 1).toNat

end

end A279280.P3285257723111373506

/-! ## A279280.P9275552012280025722

`A287170(A332015(n)+1)`
-/

namespace A279280.P9275552012280025722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A332015 n + 1).toNat

end

end A279280.P9275552012280025722

/-! ## A279280.P10025255748981545115

`A302031(A332015(n)+1)`
-/

namespace A279280.P10025255748981545115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (A332015 n + 1).toNat

end

end A279280.P10025255748981545115

/-! ## A279280.P950276604216249527

`A294623(A332015(n)+6)`
-/

namespace A279280.P950276604216249527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294623 (A332015 n + 6).toNat

end

end A279280.P950276604216249527

/-! ## A279280.P3564403551335296720

`A332040(A332015(n)+45)`
-/

namespace A279280.P3564403551335296720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332040 (A332015 n + 45).toNat

end

end A279280.P3564403551335296720

/-!
# A279281: Expansion of Product_{k>=1} (1 + x^(k*(3*k-2))).

The programs for A279281, there is no canonical definition to state claims against.
-/

/-! ## A279281.P14253767546195689261

`ceil(A332016(n)/28)`
-/

namespace A279281.P14253767546195689261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332016 n : ℚ) / 28⌉

end

end A279281.P14253767546195689261

/-! ## A279281.P1874714111861394500

`A034968(A332016(n))`
-/

namespace A279281.P1874714111861394500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A332016 n).toNat

end

end A279281.P1874714111861394500

/-! ## A279281.P12274481047611424356

`A090996(A332016(n)²)`
-/

namespace A279281.P12274481047611424356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A332016 n ^ 2).toNat

end

end A279281.P12274481047611424356

/-! ## A279281.P2031899530719557427

`A316831(A332016(n)²)`
-/

namespace A279281.P2031899530719557427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (A332016 n ^ 2).toNat

end

end A279281.P2031899530719557427

/-! ## A279281.P7978098507274049566

`A001221(A332016(n)+1)`
-/

namespace A279281.P7978098507274049566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332016 n + 1).toNat

end

end A279281.P7978098507274049566

/-! ## A279281.P7766636870796470235

`A014306(A332016(n)+1)`
-/

namespace A279281.P7766636870796470235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A332016 n + 1).toNat

end

end A279281.P7766636870796470235

/-! ## A279281.P14656786863958119805

`A064547(A332016(n)+1)`
-/

namespace A279281.P14656786863958119805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A332016 n + 1).toNat

end

end A279281.P14656786863958119805

/-! ## A279281.P3617252140358808826

`A101040(A332016(n)+1)`
-/

namespace A279281.P3617252140358808826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A332016 n + 1).toNat

end

end A279281.P3617252140358808826

/-! ## A279281.P15514452135407722648

`A257000(A332016(n)+1)`
-/

namespace A279281.P15514452135407722648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A332016 n + 1).toNat

end

end A279281.P15514452135407722648

/-!
# A279282: Self-composition of the cubes; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A000578.

The programs for A279282, there is no canonical definition to state claims against.
-/

/-! ## A279282.P7192408613251971463

`A276128(A000040(n!*∑[1/n!])-1)`
-/

namespace A279282.P7192408613251971463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276128 (A000040 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat - 1).toNat

end

end A279282.P7192408613251971463

/-!
# A279283: Self-composition of the tetrahedral (or triangular pyramidal) numbers; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A000292.

The programs for A279283, there is no canonical definition to state claims against.
-/

/-! ## A279283.P13511066696179931747

`A326783(∑[n²]+1)`
-/

namespace A279283.P13511066696179931747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279283.P13511066696179931747

/-!
# A279284: Self-composition of the pentagonal numbers; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A000326.

The programs for A279284, there is no canonical definition to state claims against.
-/

/-! ## A279284.P7231160703696268510

`A053464(n)-A281116(A187540(n))`
-/

namespace A279284.P7231160703696268510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 n - A281116 (A187540 n).toNat

end

end A279284.P7231160703696268510

/-!
# A279285: Self-composition of the Pell numbers; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A000129.

The programs for A279285, the canonical program `A279285.P3450592709507168876` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279285 has offset 0).

The definition of A279285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279285.P3450592709507168876

`6*a(n-1)-5*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=18`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A279285

/-- `6*a(n-1)-5*a(n-2)-6*a(n-3)-a(n-4)` -/
def P3450592709507168876.Spec : Prop :=
  ∀ n, P3450592709507168876.a n = A279285 n

theorem P3450592709507168876.correct : P3450592709507168876.Spec := by
  intro n
  simp only [A279285]

end A279285

/-! ## A279285.P3579513959467636056

`∑[A123108(∑[A186085(3*n)])]`
-/

namespace A279285.P3579513959467636056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186085 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279285.P3579513959467636056

namespace A279285

/-- `∑[A123108(∑[A186085(3*n)])]` -/
def P3579513959467636056.Spec : Prop :=
  ∀ n, P3579513959467636056.a n = A279285 n

end A279285

/-! ## A279285.P2104811810209305895

`A189631(abs(A344105(n+1)-A151318(n))+1)`
-/

namespace A279285.P2104811810209305895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (|A344105 (n + 1) - A151318 n| + 1).toNat

end

end A279285.P2104811810209305895

namespace A279285

/-- `A189631(abs(A344105(n+1)-A151318(n))+1)` -/
def P2104811810209305895.Spec : Prop :=
  ∀ n, P2104811810209305895.a n = A279285 n

end A279285

/-!
# A279286: a(n) = d if the point (d,d) is shared by a record of different Dyck paths in the main diagonal of the diagram of the symmetries of sigma described in A237593.

The programs for A279286, there is no canonical definition to state claims against.
-/

/-! ## A279286.P18136567076282459506

`A282197(∑[A028412(A186746(n))])`
-/

namespace A279286.P18136567076282459506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A186746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279286.P18136567076282459506

/-! ## A279286.P79299107904816103

`A282197(∑[A336865(A134626(3*(n+1)))])`
-/

namespace A279286.P79299107904816103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336865 (A134626 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279286.P79299107904816103

/-! ## A279286.P7251267434974620519

`A282197(∑[gcd(19, n+1)])`
-/

namespace A279286.P7251267434974620519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 19 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279286.P7251267434974620519

/-! ## A279286.P8372318734973341485

`A282197(A076084(n+1))`
-/

namespace A279286.P8372318734973341485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (A076084 (n + 1)).toNat

end

end A279286.P8372318734973341485

/-! ## A279286.P11226700863942167362

`A282197(A151764(n+1))`
-/

namespace A279286.P11226700863942167362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (A151764 (n + 1)).toNat

end

end A279286.P11226700863942167362

/-!
# A279287: a(n) = numerator of (phi(n)/tau(n)).

The programs for A279287, the canonical program `A279287.P12267829467651088072` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279287 has offset 1).

The definition of A279287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279287.P3387729092678152977

`A009279(n+1)/Δ[A006218(n)]`
-/

namespace A279287.P3387729092678152977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009279 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A279287.P3387729092678152977

namespace A279287

/-- `A009279(n+1)/Δ[A006218(n)]` -/
def P3387729092678152977.Spec : Prop :=
  ∀ n, P3387729092678152977.a n = (A279287 (n + 1) : ℚ)

end A279287

/-! ## A279287.P3098079067360041709

`A000010(n+1)/A009213(n+1)`
-/

namespace A279287.P3098079067360041709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009213 (n + 1) : ℚ)

end

end A279287.P3098079067360041709

namespace A279287

/-- `A000010(n+1)/A009213(n+1)` -/
def P3098079067360041709.Spec : Prop :=
  ∀ n, P3098079067360041709.a n = (A279287 (n + 1) : ℚ)

end A279287

/-! ## A279287.P12221344394425062271

`A009279(n+1)/A000005(n+1)`
-/

namespace A279287.P12221344394425062271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009279 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A279287.P12221344394425062271

namespace A279287

/-- `A009279(n+1)/A000005(n+1)` -/
def P12221344394425062271.Spec : Prop :=
  ∀ n, P12221344394425062271.a n = (A279287 (n + 1) : ℚ)

end A279287

/-! ## A279287.P17773580009462522999

`A000010(n+1)/A000005(n+1)*A279288(n+1)`
-/

namespace A279287.P17773580009462522999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A279288 (n + 1) : ℚ)

end

end A279287.P17773580009462522999

namespace A279287

/-- `A000010(n+1)/A000005(n+1)*A279288(n+1)` -/
def P17773580009462522999.Spec : Prop :=
  ∀ n, P17773580009462522999.a n = (A279287 (n + 1) : ℚ)

end A279287

/-! ## A279287.P12267829467651088072

`A062354(n+1)/gcd(A062354(n+1), A064840(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A279287

/-- `A062354(n+1)/gcd(A062354(n+1), A064840(n+1))` -/
def P12267829467651088072.Spec : Prop :=
  ∀ n, P12267829467651088072.a n = (A279287 (n + 1) : ℚ)

end A279287

/-! ## A279287.P300618134830661465

`A299822(n+1)/gcd(A299822(n+1), A304409(n+1))`
-/

namespace A279287.P300618134830661465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (Int.gcd (A299822 (n + 1)) (A304409 (n + 1)) : ℚ)

end

end A279287.P300618134830661465

namespace A279287

/-- `A299822(n+1)/gcd(A299822(n+1), A304409(n+1))` -/
def P300618134830661465.Spec : Prop :=
  ∀ n, P300618134830661465.a n = (A279287 (n + 1) : ℚ)

end A279287

/-!
# A279288: a(n) = denominator of (phi(n)/tau(n)).

The programs for A279288, the canonical program `A279288.P12363136388556004692` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279288 has offset 1).

The definition of A279288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279288.P6409795869286056818

`A009279(n+1)/Δ[A002088(n)]`
-/

namespace A279288.P6409795869286056818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009279 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A279288.P6409795869286056818

namespace A279288

/-- `A009279(n+1)/Δ[A002088(n)]` -/
def P6409795869286056818.Spec : Prop :=
  ∀ n, P6409795869286056818.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P875748247563105591

`A009279(n+1)/Δ[A005728(n)]`
-/

namespace A279288.P875748247563105591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009279 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A279288.P875748247563105591

namespace A279288

/-- `A009279(n+1)/Δ[A005728(n)]` -/
def P875748247563105591.Spec : Prop :=
  ∀ n, P875748247563105591.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P16410692811963292280

`Δ[A006218(n)]/A009213(n+1)`
-/

namespace A279288.P16410692811963292280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009213 (n + 1) : ℚ)

end

end A279288.P16410692811963292280

namespace A279288

/-- `Δ[A006218(n)]/A009213(n+1)` -/
def P16410692811963292280.Spec : Prop :=
  ∀ n, P16410692811963292280.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P11990251229902693665

`A000005(n+1)/A009213(n+1)`
-/

namespace A279288.P11990251229902693665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009213 (n + 1) : ℚ)

end

end A279288.P11990251229902693665

namespace A279288

/-- `A000005(n+1)/A009213(n+1)` -/
def P11990251229902693665.Spec : Prop :=
  ∀ n, P11990251229902693665.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P10887863961106815286

`A009279(n+1)/A000010(n+1)`
-/

namespace A279288.P10887863961106815286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009279 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A279288.P10887863961106815286

namespace A279288

/-- `A009279(n+1)/A000010(n+1)` -/
def P10887863961106815286.Spec : Prop :=
  ∀ n, P10887863961106815286.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P6519770242389265248

`A001227(n+1)*A001511(n+1)/A009213(n+1)`
-/

namespace A279288.P6519770242389265248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) * A001511 (n + 1) : ℚ) / (A009213 (n + 1) : ℚ)

end

end A279288.P6519770242389265248

namespace A279288

/-- `A001227(n+1)*A001511(n+1)/A009213(n+1)` -/
def P6519770242389265248.Spec : Prop :=
  ∀ n, P6519770242389265248.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P6789509179979560456

`A000005(n+1)/A000010(n+1)*A279287(n+1)`
-/

namespace A279288.P6789509179979560456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A279287 (n + 1) : ℚ)

end

end A279288.P6789509179979560456

namespace A279288

/-- `A000005(n+1)/A000010(n+1)*A279287(n+1)` -/
def P6789509179979560456.Spec : Prop :=
  ∀ n, P6789509179979560456.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P12363136388556004692

`A064840(n+1)/gcd(A062354(n+1), A064840(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A279288

/-- `A064840(n+1)/gcd(A062354(n+1), A064840(n+1))` -/
def P12363136388556004692.Spec : Prop :=
  ∀ n, P12363136388556004692.a n = (A279288 (n + 1) : ℚ)

end A279288

/-! ## A279288.P12355520963645831932

`A304409(n+1)/gcd(A299822(n+1), A304409(n+1))`
-/

namespace A279288.P12355520963645831932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304409 (n + 1) : ℚ) / (Int.gcd (A299822 (n + 1)) (A304409 (n + 1)) : ℚ)

end

end A279288.P12355520963645831932

namespace A279288

/-- `A304409(n+1)/gcd(A299822(n+1), A304409(n+1))` -/
def P12355520963645831932.Spec : Prop :=
  ∀ n, P12355520963645831932.a n = (A279288 (n + 1) : ℚ)

end A279288

/-!
# A279289: Numbers k such that phi(k) > tau(k).

The programs for A279289, there is no canonical definition to state claims against.
-/

/-! ## A279289.P16715889070516331101

`lt[A121373(2*(n+2)), A100950(n+1)]+1`
-/

namespace A279289.P16715889070516331101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A279289.P16715889070516331101

/-!
# A279290: Sum of cubes of nonprime divisors of n.

The programs for A279290, the canonical program `A279290.P4214688874557127316` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279290 has offset 1).

The definition of A279290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, A005064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279290.P4214688874557127316

`A001158(n+1)-A005064(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279290

/-- `A001158(n+1)-A005064(n+1)` -/
def P4214688874557127316.Spec : Prop :=
  ∀ n, P4214688874557127316.a n = A279290 (n + 1)

theorem P4214688874557127316.correct : P4214688874557127316.Spec := by
  intro n
  simp only [A279290, Nat.add_sub_cancel]

end A279290

/-! ## A279290.P4566569746927034157

`∑{d}[n+1, (#-A061397(#))^3]`
-/

namespace A279290.P4566569746927034157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A061397 d) ^ 3

end

end A279290.P4566569746927034157

namespace A279290

/-- `∑{d}[n+1, (#-A061397(#))^3]` -/
def P4566569746927034157.Spec : Prop :=
  ∀ n, P4566569746927034157.a n = A279290 (n + 1)

end A279290

/-! ## A279290.P1252073961402931599

`∑{d}[n+1, A000578(A191558(#))]`
-/

namespace A279290.P1252073961402931599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (A191558 d).toNat

end

end A279290.P1252073961402931599

namespace A279290

/-- `∑{d}[n+1, A000578(A191558(#))]` -/
def P1252073961402931599.Spec : Prop :=
  ∀ n, P1252073961402931599.a n = A279290 (n + 1)

end A279290

/-! ## A279290.P6674707594718450152

`∑{d}[n+1, A000578(#%A007918(#))]`
-/

namespace A279290.P6674707594718450152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (Int.tmod (d : ℤ) (A007918 d)).toNat

end

end A279290.P6674707594718450152

namespace A279290

/-- `∑{d}[n+1, A000578(#%A007918(#))]` -/
def P6674707594718450152.Spec : Prop :=
  ∀ n, P6674707594718450152.a n = A279290 (n + 1)

end A279290

/-! ## A279290.P4656226586426879279

`A001158(n+1)-∑{p}[n+1, A000578(#)]`
-/

namespace A279290.P4656226586426879279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A000578 p

end

end A279290.P4656226586426879279

namespace A279290

/-- `A001158(n+1)-∑{p}[n+1, A000578(#)]` -/
def P4656226586426879279.Spec : Prop :=
  ∀ n, P4656226586426879279.a n = A279290 (n + 1)

end A279290

/-!
# A279291: a(n) = floor((k/phi(k) - (e^gamma)*loglog(k))*sqrt(log(k))) where k = A100966(n).

The programs for A279291, there is no canonical definition to state claims against.
-/

/-! ## A279291.P5331694467102188387

`A047654(A332673(3*(n+1))+2)`
-/

namespace A279291.P5331694467102188387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047654 (A332673 (3 * (n + 1)) + 2).toNat

end

end A279291.P5331694467102188387

/-! ## A279291.P12798340154969505169

`A000010(A143565(3*(n+1)))%4`
-/

namespace A279291.P12798340154969505169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A143565 (3 * (n + 1))).toNat) 4

end

end A279291.P12798340154969505169

/-! ## A279291.P11153262961325317172

`A133112(3*(n+1))%A194304(n+2)`
-/

namespace A279291.P11153262961325317172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133112 (3 * (n + 1))) (A194304 (n + 2))

end

end A279291.P11153262961325317172

/-! ## A279291.P5948863204433569993

`and(A204690(n), A335434(A250120(n)))`
-/

namespace A279291.P5948863204433569993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204690 n) (A335434 (A250120 n).toNat)

end

end A279291.P5948863204433569993

/-! ## A279291.P3743660515161705939

`and(A326568(A103182(n+1)), A349271(3*n+2))`
-/

namespace A279291.P3743660515161705939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326568 (A103182 (n + 1)).toNat) (A349271 (3 * n + 2))

end

end A279291.P3743660515161705939

/-!
# A279292: Number of permutations of [n] having exactly three (possibly overlapping) doubledescents.

The programs for A279292, there is no canonical definition to state claims against.
-/

/-! ## A279292.P7937451351733505628

`A162975(A167499(n+2))`
-/

namespace A279292.P7937451351733505628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A167499 (n + 2)).toNat

end

end A279292.P7937451351733505628

/-! ## A279292.P1495735594656557754

`A162975(A052905(n)+10)`
-/

namespace A279292.P1495735594656557754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A052905 n + 10).toNat

end

end A279292.P1495735594656557754

/-! ## A279292.P7790927012264836805

`A162975(A055999(n)+11)`
-/

namespace A279292.P7790927012264836805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A055999 n + 11).toNat

end

end A279292.P7790927012264836805

/-! ## A279292.P2833523847275902810

`A162975(A166136(n+2)-1)`
-/

namespace A279292.P2833523847275902810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A166136 (n + 2) - 1).toNat

end

end A279292.P2833523847275902810

/-! ## A279292.P16373861025693151799

`A162975(A167614(n+2)+2)`
-/

namespace A279292.P16373861025693151799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A167614 (n + 2) + 2).toNat

end

end A279292.P16373861025693151799

/-! ## A279292.P16843105171552434232

`A162975(A166136(n+1)+2+n)`
-/

namespace A279292.P16843105171552434232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A166136 (n + 1) + 2 + (n : ℤ)).toNat

end

end A279292.P16843105171552434232

/-! ## A279292.P5420281402636098792

`A162975(eq[8, A057728(n+1)]-2*n)`
-/

namespace A279292.P5420281402636098792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A279292.P5420281402636098792

/-!
# A279293: Number of permutations of [n] having exactly four (possibly overlapping) doubledescents.

The programs for A279293, there is no canonical definition to state claims against.
-/

/-! ## A279293.P6154583505060439416

`A162975(A155212(n)+14)`
-/

namespace A279293.P6154583505060439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A155212 n + 14).toNat

end

end A279293.P6154583505060439416

/-! ## A279293.P349586666754440070

`A162975(A056000(n)+16)`
-/

namespace A279293.P349586666754440070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A056000 n + 16).toNat

end

end A279293.P349586666754440070

/-! ## A279293.P13957130027798354117

`A162975(A000124(n+4)+5)`
-/

namespace A279293.P13957130027798354117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000124 (n + 4) + 5).toNat

end

end A279293.P13957130027798354117

/-! ## A279293.P13480954915028141844

`A162975(eq[5, A193592(n)]-2*n)`
-/

namespace A279293.P13480954915028141844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A279293.P13480954915028141844

/-! ## A279293.P11804602446462277289

`A162975(A133263(n+6)-7-2*n)`
-/

namespace A279293.P11804602446462277289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A133263 (n + 6) - 7 - (2 * n : ℤ)).toNat

end

end A279293.P11804602446462277289

/-! ## A279293.P2610264505201197919

`A162975(A166136(n+1)+A020742(n))`
-/

namespace A279293.P2610264505201197919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A166136 (n + 1) + A020742 n).toNat

end

end A279293.P2610264505201197919

/-!
# A279294: Number of permutations of [n] having exactly five (possibly overlapping) doubledescents.

The programs for A279294, there is no canonical definition to state claims against.
-/

/-! ## A279294.P14125279881291285645

`A162975(A056115(n)+22)`
-/

namespace A279294.P14125279881291285645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A056115 n + 22).toNat

end

end A279294.P14125279881291285645

/-! ## A279294.P1716735390907598764

`A162975(A166136(n+4)+1)`
-/

namespace A279294.P1716735390907598764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A166136 (n + 4) + 1).toNat

end

end A279294.P1716735390907598764

/-! ## A279294.P1685472195856022487

`A162975(A167499(n+4)+2)`
-/

namespace A279294.P1685472195856022487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A167499 (n + 4) + 2).toNat

end

end A279294.P1685472195856022487

/-! ## A279294.P236999258800909239

`A162975(A000217(n+5)+7)`
-/

namespace A279294.P236999258800909239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000217 (n + 5) + 7).toNat

end

end A279294.P236999258800909239

/-! ## A279294.P10920208028415252595

`A162975(A055999(n+2)+13)`
-/

namespace A279294.P10920208028415252595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A055999 (n + 2) + 13).toNat

end

end A279294.P10920208028415252595

/-!
# A279295: Number of permutations of [n] having exactly six (possibly overlapping) doubledescents.

The programs for A279295, there is no canonical definition to state claims against.
-/

/-! ## A279295.P4250166057861374013

`A162975(A000096(n+5)+9)`
-/

namespace A279295.P4250166057861374013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000096 (n + 5) + 9).toNat

end

end A279295.P4250166057861374013

/-! ## A279295.P15093758629372406696

`A162975(A161680(n+7)+8)`
-/

namespace A279295.P15093758629372406696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A161680 (n + 7) + 8).toNat

end

end A279295.P15093758629372406696

/-! ## A279295.P17783286025023847587

`A162975(A000217(n+7)+1-n)`
-/

namespace A279295.P17783286025023847587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000217 (n + 7) + 1 - (n : ℤ)).toNat

end

end A279295.P17783286025023847587

/-!
# A279296: Number of permutations of [n] having exactly seven (possibly overlapping) doubledescents.

The programs for A279296, there is no canonical definition to state claims against.
-/

/-! ## A279296.P16094288261809650502

`A162975(eq[7, A002262(n)]+2)`
-/

namespace A279296.P16094288261809650502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A279296.P16094288261809650502

/-! ## A279296.P18091761726771986248

`A162975(eq[7, A144328(n+1)]+2)`
-/

namespace A279296.P18091761726771986248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A279296.P18091761726771986248

/-!
# A279297: Number of permutations of [n] having exactly eight (possibly overlapping) doubledescents.

The programs for A279297, there is no canonical definition to state claims against.
-/

/-! ## A279297.P7479935848429416552

`A162975(A000124(n+8)+9)`
-/

namespace A279297.P7479935848429416552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000124 (n + 8) + 9).toNat

end

end A279297.P7479935848429416552

/-! ## A279297.P11294798670599986980

`A162975(eq[17, A066657(n)]+1)`
-/

namespace A279297.P11294798670599986980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A279297.P11294798670599986980

/-! ## A279297.P12199869742657340181

`A162975(A000217(n+9)+1-n)`
-/

namespace A279297.P12199869742657340181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000217 (n + 9) + 1 - (n : ℤ)).toNat

end

end A279297.P12199869742657340181

/-!
# A279298: Number of permutations of [n] having exactly nine (possibly overlapping) doubledescents.

The programs for A279298, there is no canonical definition to state claims against.
-/

/-! ## A279298.P13916435191091452620

`A162975(A133263(n+10)-(n+1))`
-/

namespace A279298.P13916435191091452620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A133263 (n + 10) - (n + 1 : ℤ)).toNat

end

end A279298.P13916435191091452620

/-!
# A279299: Number of permutations of [n] having exactly ten (possibly overlapping) doubledescents.

The programs for A279299, there is no canonical definition to state claims against.
-/

/-! ## A279299.P5641485471891984279

`A162975(A166136(n+9)+6)`
-/

namespace A279299.P5641485471891984279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A166136 (n + 9) + 6).toNat

end

end A279299.P5641485471891984279

/-! ## A279299.P4326091226418007633

`A162975(A000124(n+11)-n)`
-/

namespace A279299.P4326091226418007633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A000124 (n + 11) - (n : ℤ)).toNat

end

end A279299.P4326091226418007633

