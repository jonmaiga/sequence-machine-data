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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A022100: Fibonacci sequence beginning 1, 10.

The programs for A022100, the canonical program `A022100.P15671973216480644968` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022100 has offset 0).

The definition of A022100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022100.P15671973216480644968

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022100

/-- `a(n-1)+a(n-2)` -/
def P15671973216480644968.Spec : Prop :=
  ∀ n, (P15671973216480644968.a n : ℤ) = A022100 n

theorem P15671973216480644968.correct : P15671973216480644968.Spec := by
  intro n
  simp only [A022100]

end A022100

/-! ## A022100.P5267467069442774632

`9*A000045(n)+A000045(n+1)`
-/

namespace A022100.P5267467069442774632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000045 n + A000045 (n + 1)

end

end A022100.P5267467069442774632

namespace A022100

/-- `9*A000045(n)+A000045(n+1)` -/
def P5267467069442774632.Spec : Prop :=
  ∀ n, P5267467069442774632.a n = A022100 n

end A022100

/-! ## A022100.P15750688160675906536

`ogf((1+9x)/(1-x-x^2))`
-/

namespace A022100.P15750688160675906536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -1, -1] n

end

end A022100.P15750688160675906536

namespace A022100

/-- `ogf((1+9x)/(1-x-x^2))` -/
def P15750688160675906536.Spec : Prop :=
  ∀ n, P15750688160675906536.a n = A022100 n

end A022100

/-! ## A022100.P14415539086238342959

`A022314(n)+1`
-/

namespace A022100.P14415539086238342959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + 1

end

end A022100.P14415539086238342959

namespace A022100

/-- `A022314(n)+1` -/
def P14415539086238342959.Spec : Prop :=
  ∀ n, P14415539086238342959.a n = A022100 n

end A022100

/-! ## A022100.P326683081493112363

`A022099(n)+A000045(n)`
-/

namespace A022100.P326683081493112363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A000045 n

end

end A022100.P326683081493112363

namespace A022100

/-- `A022099(n)+A000045(n)` -/
def P326683081493112363.Spec : Prop :=
  ∀ n, P326683081493112363.a n = A022100 n

end A022100

/-! ## A022100.P13992904178984654639

`A022089(n)+A000285(n)`
-/

namespace A022100.P13992904178984654639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A000285 n

end

end A022100.P13992904178984654639

namespace A022100

/-- `A022089(n)+A000285(n)` -/
def P13992904178984654639.Spec : Prop :=
  ∀ n, P13992904178984654639.a n = A022100 n

end A022100

/-! ## A022100.P16528991495915071931

`A022312(n)+A001588(n)`
-/

namespace A022100.P16528991495915071931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A001588 n

end

end A022100.P16528991495915071931

namespace A022100

/-- `A022312(n)+A001588(n)` -/
def P16528991495915071931.Spec : Prop :=
  ∀ n, P16528991495915071931.a n = A022100 n

end A022100

/-! ## A022100.P3004152542512286285

`A022313(n)+A001611(n)`
-/

namespace A022100.P3004152542512286285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A001611 n

end

end A022100.P3004152542512286285

namespace A022100

/-- `A022313(n)+A001611(n)` -/
def P3004152542512286285.Spec : Prop :=
  ∀ n, P3004152542512286285.a n = A022100 n

end A022100

/-! ## A022100.P598250047165206314

`A022095(n)+A022088(n)`
-/

namespace A022100.P598250047165206314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022088 n

end

end A022100.P598250047165206314

namespace A022100

/-- `A022095(n)+A022088(n)` -/
def P598250047165206314.Spec : Prop :=
  ∀ n, P598250047165206314.a n = A022100 n

end A022100

/-! ## A022100.P12214153899703446654

`A022096(n)+A022087(n)`
-/

namespace A022100.P12214153899703446654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022087 n

end

end A022100.P12214153899703446654

namespace A022100

/-- `A022096(n)+A022087(n)` -/
def P12214153899703446654.Spec : Prop :=
  ∀ n, P12214153899703446654.a n = A022100 n

end A022100

/-! ## A022100.P9181137246404131413

`A022097(n)+A022086(n)`
-/

namespace A022100.P9181137246404131413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022086 n

end

end A022100.P9181137246404131413

namespace A022100

/-- `A022097(n)+A022086(n)` -/
def P9181137246404131413.Spec : Prop :=
  ∀ n, P9181137246404131413.a n = A022100 n

end A022100

/-! ## A022100.P5157710552432954484

`A152163(n)+A022345(n)`
-/

namespace A022100.P5157710552432954484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022345 n

end

end A022100.P5157710552432954484

namespace A022100

/-- `A152163(n)+A022345(n)` -/
def P5157710552432954484.Spec : Prop :=
  ∀ n, P5157710552432954484.a n = A022100 n

end A022100

/-! ## A022100.P3205834026720184696

`A187891(n)+A022319(n)`
-/

namespace A022100.P3205834026720184696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022319 n

end

end A022100.P3205834026720184696

namespace A022100

/-- `A187891(n)+A022319(n)` -/
def P3205834026720184696.Spec : Prop :=
  ∀ n, P3205834026720184696.a n = A022100 n

end A022100

/-! ## A022100.P9257037354794420716

`A187892(n)+A022318(n)`
-/

namespace A022100.P9257037354794420716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022318 n

end

end A022100.P9257037354794420716

namespace A022100

/-- `A187892(n)+A022318(n)` -/
def P9257037354794420716.Spec : Prop :=
  ∀ n, P9257037354794420716.a n = A022100 n

end A022100

/-! ## A022100.P16175292450189033919

`A187893(n)+A022311(n)`
-/

namespace A022100.P16175292450189033919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022311 n

end

end A022100.P16175292450189033919

namespace A022100

/-- `A187893(n)+A022311(n)` -/
def P16175292450189033919.Spec : Prop :=
  ∀ n, P16175292450189033919.a n = A022100 n

end A022100

/-! ## A022100.P14644888699083552284

`A212804(n)+A022093(n)`
-/

namespace A022100.P14644888699083552284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022093 n

end

end A022100.P14644888699083552284

namespace A022100

/-- `A212804(n)+A022093(n)` -/
def P14644888699083552284.Spec : Prop :=
  ∀ n, P14644888699083552284.a n = A022100 n

end A022100

/-! ## A022100.P7189286097884109522

`A022101(n)-A000045(n)`
-/

namespace A022100.P7189286097884109522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - A000045 n

end

end A022100.P7189286097884109522

namespace A022100

/-- `A022101(n)-A000045(n)` -/
def P7189286097884109522.Spec : Prop :=
  ∀ n, P7189286097884109522.a n = A022100 n

end A022100

/-! ## A022100.P4206710961027534780

`A022122(n)-A118658(n)`
-/

namespace A022100.P4206710961027534780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A118658 n

end

end A022100.P4206710961027534780

namespace A022100

/-- `A022122(n)-A118658(n)` -/
def P4206710961027534780.Spec : Prop :=
  ∀ n, P4206710961027534780.a n = A022100 n

end A022100

/-! ## A022100.P2089217191335819428

`A022114(n)-A152163(n)`
-/

namespace A022100.P2089217191335819428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n - A152163 n

end

end A022100.P2089217191335819428

namespace A022100

/-- `A022114(n)-A152163(n)` -/
def P2089217191335819428.Spec : Prop :=
  ∀ n, P2089217191335819428.a n = A022100 n

end A022100

/-! ## A022100.P17105810822074018163

`A022367(n)-A212804(n)`
-/

namespace A022100.P17105810822074018163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A212804 n

end

end A022100.P17105810822074018163

namespace A022100

/-- `A022367(n)-A212804(n)` -/
def P17105810822074018163.Spec : Prop :=
  ∀ n, P17105810822074018163.a n = A022100 n

end A022100

/-!
# A022101: Fibonacci sequence beginning 1, 11.

The programs for A022101, the canonical program `A022101.P15823990390624724794` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022101 has offset 0).

The definition of A022101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022101.P15823990390624724794

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022101

/-- `a(n-1)+a(n-2)` -/
def P15823990390624724794.Spec : Prop :=
  ∀ n, (P15823990390624724794.a n : ℤ) = A022101 n

theorem P15823990390624724794.correct : P15823990390624724794.Spec := by
  intro n
  simp only [A022101]

end A022101

/-! ## A022101.P5830419176617997339

`10*A000045(n)+A000045(n+1)`
-/

namespace A022101.P5830419176617997339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n + A000045 (n + 1)

end

end A022101.P5830419176617997339

namespace A022101

/-- `10*A000045(n)+A000045(n+1)` -/
def P5830419176617997339.Spec : Prop :=
  ∀ n, P5830419176617997339.a n = A022101 n

end A022101

/-! ## A022101.P3475545828672698657

`ogf((1+10x)/(1-x-x^2))`
-/

namespace A022101.P3475545828672698657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -1, -1] n

end

end A022101.P3475545828672698657

namespace A022101

/-- `ogf((1+10x)/(1-x-x^2))` -/
def P3475545828672698657.Spec : Prop :=
  ∀ n, P3475545828672698657.a n = A022101 n

end A022101

/-! ## A022101.P5024601258310469950

`A022315(n)+1`
-/

namespace A022101.P5024601258310469950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + 1

end

end A022101.P5024601258310469950

namespace A022101

/-- `A022315(n)+1` -/
def P5024601258310469950.Spec : Prop :=
  ∀ n, P5024601258310469950.a n = A022101 n

end A022101

/-! ## A022101.P9621895657593244874

`A022100(n)+A000045(n)`
-/

namespace A022101.P9621895657593244874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A000045 n

end

end A022101.P9621895657593244874

namespace A022101

/-- `A022100(n)+A000045(n)` -/
def P9621895657593244874.Spec : Prop :=
  ∀ n, P9621895657593244874.a n = A022101 n

end A022101

/-! ## A022101.P6628372872647467207

`A022090(n)+A000285(n)`
-/

namespace A022101.P6628372872647467207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A000285 n

end

end A022101.P6628372872647467207

namespace A022101

/-- `A022090(n)+A000285(n)` -/
def P6628372872647467207.Spec : Prop :=
  ∀ n, P6628372872647467207.a n = A022101 n

end A022101

/-! ## A022101.P17697594878030992726

`A022313(n)+A001588(n)`
-/

namespace A022101.P17697594878030992726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A001588 n

end

end A022101.P17697594878030992726

namespace A022101

/-- `A022313(n)+A001588(n)` -/
def P17697594878030992726.Spec : Prop :=
  ∀ n, P17697594878030992726.a n = A022101 n

end A022101

/-! ## A022101.P17600961168744029567

`A022314(n)+A001611(n)`
-/

namespace A022101.P17600961168744029567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A001611 n

end

end A022101.P17600961168744029567

namespace A022101

/-- `A022314(n)+A001611(n)` -/
def P17600961168744029567.Spec : Prop :=
  ∀ n, P17600961168744029567.a n = A022101 n

end A022101

/-! ## A022101.P18153132557744161463

`A022095(n)+A022089(n)`
-/

namespace A022101.P18153132557744161463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022089 n

end

end A022101.P18153132557744161463

namespace A022101

/-- `A022095(n)+A022089(n)` -/
def P18153132557744161463.Spec : Prop :=
  ∀ n, P18153132557744161463.a n = A022101 n

end A022101

/-! ## A022101.P14272858370796880381

`A022096(n)+A022088(n)`
-/

namespace A022101.P14272858370796880381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022088 n

end

end A022101.P14272858370796880381

namespace A022101

/-- `A022096(n)+A022088(n)` -/
def P14272858370796880381.Spec : Prop :=
  ∀ n, P14272858370796880381.a n = A022101 n

end A022101

/-! ## A022101.P8626553378683976874

`A022097(n)+A022087(n)`
-/

namespace A022101.P8626553378683976874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022087 n

end

end A022101.P8626553378683976874

namespace A022101

/-- `A022097(n)+A022087(n)` -/
def P8626553378683976874.Spec : Prop :=
  ∀ n, P8626553378683976874.a n = A022101 n

end A022101

/-! ## A022101.P2664021972463819522

`A022098(n)+A022086(n)`
-/

namespace A022101.P2664021972463819522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022086 n

end

end A022101.P2664021972463819522

namespace A022101

/-- `A022098(n)+A022086(n)` -/
def P2664021972463819522.Spec : Prop :=
  ∀ n, P2664021972463819522.a n = A022101 n

end A022101

/-! ## A022101.P12468087325776794284

`A152163(n)+A022346(n)`
-/

namespace A022101.P12468087325776794284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022346 n

end

end A022101.P12468087325776794284

namespace A022101

/-- `A152163(n)+A022346(n)` -/
def P12468087325776794284.Spec : Prop :=
  ∀ n, P12468087325776794284.a n = A022101 n

end A022101

/-! ## A022101.P5084928926546989475

`A187891(n)+A022320(n)`
-/

namespace A022101.P5084928926546989475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022320 n

end

end A022101.P5084928926546989475

namespace A022101

/-- `A187891(n)+A022320(n)` -/
def P5084928926546989475.Spec : Prop :=
  ∀ n, P5084928926546989475.a n = A022101 n

end A022101

/-! ## A022101.P1746969013742806780

`A187892(n)+A022319(n)`
-/

namespace A022101.P1746969013742806780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022319 n

end

end A022101.P1746969013742806780

namespace A022101

/-- `A187892(n)+A022319(n)` -/
def P1746969013742806780.Spec : Prop :=
  ∀ n, P1746969013742806780.a n = A022101 n

end A022101

/-! ## A022101.P7248741104809362725

`A187893(n)+A022312(n)`
-/

namespace A022101.P7248741104809362725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022312 n

end

end A022101.P7248741104809362725

namespace A022101

/-- `A187893(n)+A022312(n)` -/
def P7248741104809362725.Spec : Prop :=
  ∀ n, P7248741104809362725.a n = A022101 n

end A022101

/-! ## A022101.P9048854274915836650

`A212804(n)+A022345(n)`
-/

namespace A022101.P9048854274915836650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022345 n

end

end A022101.P9048854274915836650

namespace A022101

/-- `A212804(n)+A022345(n)` -/
def P9048854274915836650.Spec : Prop :=
  ∀ n, P9048854274915836650.a n = A022101 n

end A022101

/-! ## A022101.P6517410168757520997

`A022367(n)-A152163(n)`
-/

namespace A022101.P6517410168757520997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A152163 n

end

end A022101.P6517410168757520997

namespace A022101

/-- `A022367(n)-A152163(n)` -/
def P6517410168757520997.Spec : Prop :=
  ∀ n, P6517410168757520997.a n = A022101 n

end A022101

/-! ## A022101.P5470915114628262410

`A022091(n)+A000032(n+1)`
-/

namespace A022101.P5470915114628262410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A000032 (n + 1)

end

end A022101.P5470915114628262410

namespace A022101

/-- `A022091(n)+A000032(n+1)` -/
def P5470915114628262410.Spec : Prop :=
  ∀ n, P5470915114628262410.a n = A022101 n

end A022101

/-! ## A022101.P6577110826178732101

`A022093(n)+A000045(n+1)`
-/

namespace A022101.P6577110826178732101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A000045 (n + 1)

end

end A022101.P6577110826178732101

namespace A022101

/-- `A022093(n)+A000045(n+1)` -/
def P6577110826178732101.Spec : Prop :=
  ∀ n, P6577110826178732101.a n = A022101 n

end A022101

/-!
# A022102: Fibonacci sequence beginning 1, 12.

The programs for A022102, the canonical program `A022102.P13140924519174479458` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022102 has offset 0).

The definition of A022102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022102.P13140924519174479458

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022102

/-- `a(n-1)+a(n-2)` -/
def P13140924519174479458.Spec : Prop :=
  ∀ n, (P13140924519174479458.a n : ℤ) = A022102 n

theorem P13140924519174479458.correct : P13140924519174479458.Spec := by
  intro n
  simp only [A022102]

end A022102

/-! ## A022102.P2828409366896474222

`11*A000045(n)+A000045(n+1)`
-/

namespace A022102.P2828409366896474222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000045 n + A000045 (n + 1)

end

end A022102.P2828409366896474222

namespace A022102

/-- `11*A000045(n)+A000045(n+1)` -/
def P2828409366896474222.Spec : Prop :=
  ∀ n, P2828409366896474222.a n = A022102 n

end A022102

/-! ## A022102.P8506874969523410721

`ogf((1+11x)/(1-x-x^2))`
-/

namespace A022102.P8506874969523410721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11] [1, -1, -1] n

end

end A022102.P8506874969523410721

namespace A022102

/-- `ogf((1+11x)/(1-x-x^2))` -/
def P8506874969523410721.Spec : Prop :=
  ∀ n, P8506874969523410721.a n = A022102 n

end A022102

/-! ## A022102.P7274184032533409153

`A022316(n)+1`
-/

namespace A022102.P7274184032533409153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + 1

end

end A022102.P7274184032533409153

namespace A022102

/-- `A022316(n)+1` -/
def P7274184032533409153.Spec : Prop :=
  ∀ n, P7274184032533409153.a n = A022102 n

end A022102

/-! ## A022102.P935967010684322538

`A022101(n)+A000045(n)`
-/

namespace A022102.P935967010684322538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A000045 n

end

end A022102.P935967010684322538

namespace A022102

/-- `A022101(n)+A000045(n)` -/
def P935967010684322538.Spec : Prop :=
  ∀ n, P935967010684322538.a n = A022102 n

end A022102

/-! ## A022102.P7338794310075010024

`A022091(n)+A000285(n)`
-/

namespace A022102.P7338794310075010024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A000285 n

end

end A022102.P7338794310075010024

namespace A022102

/-- `A022091(n)+A000285(n)` -/
def P7338794310075010024.Spec : Prop :=
  ∀ n, P7338794310075010024.a n = A022102 n

end A022102

/-! ## A022102.P13222900111865811137

`A022314(n)+A001588(n)`
-/

namespace A022102.P13222900111865811137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A001588 n

end

end A022102.P13222900111865811137

namespace A022102

/-- `A022314(n)+A001588(n)` -/
def P13222900111865811137.Spec : Prop :=
  ∀ n, P13222900111865811137.a n = A022102 n

end A022102

/-! ## A022102.P2286970596152236278

`A022315(n)+A001611(n)`
-/

namespace A022102.P2286970596152236278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + A001611 n

end

end A022102.P2286970596152236278

namespace A022102

/-- `A022315(n)+A001611(n)` -/
def P2286970596152236278.Spec : Prop :=
  ∀ n, P2286970596152236278.a n = A022102 n

end A022102

/-! ## A022102.P4834645113853500073

`A022095(n)+A022090(n)`
-/

namespace A022102.P4834645113853500073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022090 n

end

end A022102.P4834645113853500073

namespace A022102

/-- `A022095(n)+A022090(n)` -/
def P4834645113853500073.Spec : Prop :=
  ∀ n, P4834645113853500073.a n = A022102 n

end A022102

/-! ## A022102.P8875258005453170495

`A022096(n)+A022089(n)`
-/

namespace A022102.P8875258005453170495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022089 n

end

end A022102.P8875258005453170495

namespace A022102

/-- `A022096(n)+A022089(n)` -/
def P8875258005453170495.Spec : Prop :=
  ∀ n, P8875258005453170495.a n = A022102 n

end A022102

/-! ## A022102.P3489572253831909043

`A022097(n)+A022088(n)`
-/

namespace A022102.P3489572253831909043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022088 n

end

end A022102.P3489572253831909043

namespace A022102

/-- `A022097(n)+A022088(n)` -/
def P3489572253831909043.Spec : Prop :=
  ∀ n, P3489572253831909043.a n = A022102 n

end A022102

/-! ## A022102.P11133771390007223033

`A022098(n)+A022087(n)`
-/

namespace A022102.P11133771390007223033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022087 n

end

end A022102.P11133771390007223033

namespace A022102

/-- `A022098(n)+A022087(n)` -/
def P11133771390007223033.Spec : Prop :=
  ∀ n, P11133771390007223033.a n = A022102 n

end A022102

/-! ## A022102.P4945873592687059523

`A022099(n)+A022086(n)`
-/

namespace A022102.P4945873592687059523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022086 n

end

end A022102.P4945873592687059523

namespace A022102

/-- `A022099(n)+A022086(n)` -/
def P4945873592687059523.Spec : Prop :=
  ∀ n, P4945873592687059523.a n = A022102 n

end A022102

/-! ## A022102.P1989999441767220428

`A152163(n)+A022347(n)`
-/

namespace A022102.P1989999441767220428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022347 n

end

end A022102.P1989999441767220428

namespace A022102

/-- `A152163(n)+A022347(n)` -/
def P1989999441767220428.Spec : Prop :=
  ∀ n, P1989999441767220428.a n = A022102 n

end A022102

/-! ## A022102.P212235223386554057

`A187891(n)+A022321(n)`
-/

namespace A022102.P212235223386554057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022321 n

end

end A022102.P212235223386554057

namespace A022102

/-- `A187891(n)+A022321(n)` -/
def P212235223386554057.Spec : Prop :=
  ∀ n, P212235223386554057.a n = A022102 n

end A022102

/-! ## A022102.P3750841071583133397

`A187892(n)+A022320(n)`
-/

namespace A022102.P3750841071583133397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022320 n

end

end A022102.P3750841071583133397

namespace A022102

/-- `A187892(n)+A022320(n)` -/
def P3750841071583133397.Spec : Prop :=
  ∀ n, P3750841071583133397.a n = A022102 n

end A022102

/-! ## A022102.P16310034670184909962

`A187893(n)+A022313(n)`
-/

namespace A022102.P16310034670184909962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022313 n

end

end A022102.P16310034670184909962

namespace A022102

/-- `A187893(n)+A022313(n)` -/
def P16310034670184909962.Spec : Prop :=
  ∀ n, P16310034670184909962.a n = A022102 n

end A022102

/-! ## A022102.P8012408148183185398

`A212804(n)+A022346(n)`
-/

namespace A022102.P8012408148183185398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022346 n

end

end A022102.P8012408148183185398

namespace A022102

/-- `A212804(n)+A022346(n)` -/
def P8012408148183185398.Spec : Prop :=
  ∀ n, P8012408148183185398.a n = A022102 n

end A022102

/-! ## A022102.P3060045852428015587

`A022103(n)-A000045(n)`
-/

namespace A022102.P3060045852428015587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n - A000045 n

end

end A022102.P3060045852428015587

namespace A022102

/-- `A022103(n)-A000045(n)` -/
def P3060045852428015587.Spec : Prop :=
  ∀ n, P3060045852428015587.a n = A022102 n

end A022102

/-! ## A022102.P483108085328272570

`A022124(n)-A000032(n)`
-/

namespace A022102.P483108085328272570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n - A000032 n

end

end A022102.P483108085328272570

namespace A022102

/-- `A022124(n)-A000032(n)` -/
def P483108085328272570.Spec : Prop :=
  ∀ n, P483108085328272570.a n = A022102 n

end A022102

/-!
# A022103: Fibonacci sequence beginning 1, 13.

The programs for A022103, the canonical program `A022103.P11139306393898818098` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022103 has offset 0).

The definition of A022103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022103.P11139306393898818098

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022103

/-- `a(n-1)+a(n-2)` -/
def P11139306393898818098.Spec : Prop :=
  ∀ n, (P11139306393898818098.a n : ℤ) = A022103 n

theorem P11139306393898818098.correct : P11139306393898818098.Spec := by
  intro n
  simp only [A022103]

end A022103

/-! ## A022103.P332632689785791296

`12*A000045(n)+A000045(n+1)`
-/

namespace A022103.P332632689785791296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000045 n + A000045 (n + 1)

end

end A022103.P332632689785791296

namespace A022103

/-- `12*A000045(n)+A000045(n+1)` -/
def P332632689785791296.Spec : Prop :=
  ∀ n, P332632689785791296.a n = A022103 n

end A022103

/-! ## A022103.P13524330562439554880

`A000032(n+5)-5*A000032(n)`
-/

namespace A022103.P13524330562439554880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 5) - 5 * A000032 n

end

end A022103.P13524330562439554880

namespace A022103

/-- `A000032(n+5)-5*A000032(n)` -/
def P13524330562439554880.Spec : Prop :=
  ∀ n, P13524330562439554880.a n = A022103 n

end A022103

/-! ## A022103.P5122040195823869639

`ogf((1+12x)/(1-x-x^2))`
-/

namespace A022103.P5122040195823869639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12] [1, -1, -1] n

end

end A022103.P5122040195823869639

namespace A022103

/-- `ogf((1+12x)/(1-x-x^2))` -/
def P5122040195823869639.Spec : Prop :=
  ∀ n, P5122040195823869639.a n = A022103 n

end A022103

/-! ## A022103.P7027970133897406060

`A022317(n)+1`
-/

namespace A022103.P7027970133897406060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n + 1

end

end A022103.P7027970133897406060

namespace A022103

/-- `A022317(n)+1` -/
def P7027970133897406060.Spec : Prop :=
  ∀ n, P7027970133897406060.a n = A022103 n

end A022103

/-! ## A022103.P18362012092551267547

`A022102(n)+A000045(n)`
-/

namespace A022103.P18362012092551267547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A000045 n

end

end A022103.P18362012092551267547

namespace A022103

/-- `A022102(n)+A000045(n)` -/
def P18362012092551267547.Spec : Prop :=
  ∀ n, P18362012092551267547.a n = A022103 n

end A022103

/-! ## A022103.P5745373414342743768

`A022092(n)+A000285(n)`
-/

namespace A022103.P5745373414342743768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A000285 n

end

end A022103.P5745373414342743768

namespace A022103

/-- `A022092(n)+A000285(n)` -/
def P5745373414342743768.Spec : Prop :=
  ∀ n, P5745373414342743768.a n = A022103 n

end A022103

/-! ## A022103.P9970479783365777442

`A022315(n)+A001588(n)`
-/

namespace A022103.P9970479783365777442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + A001588 n

end

end A022103.P9970479783365777442

namespace A022103

/-- `A022315(n)+A001588(n)` -/
def P9970479783365777442.Spec : Prop :=
  ∀ n, P9970479783365777442.a n = A022103 n

end A022103

/-! ## A022103.P6771547531968302441

`A022316(n)+A001611(n)`
-/

namespace A022103.P6771547531968302441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + A001611 n

end

end A022103.P6771547531968302441

namespace A022103

/-- `A022316(n)+A001611(n)` -/
def P6771547531968302441.Spec : Prop :=
  ∀ n, P6771547531968302441.a n = A022103 n

end A022103

/-! ## A022103.P7803519324609615341

`A022095(n)+A022091(n)`
-/

namespace A022103.P7803519324609615341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022091 n

end

end A022103.P7803519324609615341

namespace A022103

/-- `A022095(n)+A022091(n)` -/
def P7803519324609615341.Spec : Prop :=
  ∀ n, P7803519324609615341.a n = A022103 n

end A022103

/-! ## A022103.P464614739767861862

`A022096(n)+A022090(n)`
-/

namespace A022103.P464614739767861862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022090 n

end

end A022103.P464614739767861862

namespace A022103

/-- `A022096(n)+A022090(n)` -/
def P464614739767861862.Spec : Prop :=
  ∀ n, P464614739767861862.a n = A022103 n

end A022103

/-! ## A022103.P12371102369003801091

`A022097(n)+A022089(n)`
-/

namespace A022103.P12371102369003801091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022089 n

end

end A022103.P12371102369003801091

namespace A022103

/-- `A022097(n)+A022089(n)` -/
def P12371102369003801091.Spec : Prop :=
  ∀ n, P12371102369003801091.a n = A022103 n

end A022103

/-! ## A022103.P281896023448658288

`A022098(n)+A022088(n)`
-/

namespace A022103.P281896023448658288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022088 n

end

end A022103.P281896023448658288

namespace A022103

/-- `A022098(n)+A022088(n)` -/
def P281896023448658288.Spec : Prop :=
  ∀ n, P281896023448658288.a n = A022103 n

end A022103

/-! ## A022103.P3107109949297364709

`A022099(n)+A022087(n)`
-/

namespace A022103.P3107109949297364709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022087 n

end

end A022103.P3107109949297364709

namespace A022103

/-- `A022099(n)+A022087(n)` -/
def P3107109949297364709.Spec : Prop :=
  ∀ n, P3107109949297364709.a n = A022103 n

end A022103

/-! ## A022103.P9027866323625334665

`A022100(n)+A022086(n)`
-/

namespace A022103.P9027866323625334665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022086 n

end

end A022103.P9027866323625334665

namespace A022103

/-- `A022100(n)+A022086(n)` -/
def P9027866323625334665.Spec : Prop :=
  ∀ n, P9027866323625334665.a n = A022103 n

end A022103

/-! ## A022103.P13468078487178245982

`A152163(n)+A022348(n)`
-/

namespace A022103.P13468078487178245982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022348 n

end

end A022103.P13468078487178245982

namespace A022103

/-- `A152163(n)+A022348(n)` -/
def P13468078487178245982.Spec : Prop :=
  ∀ n, P13468078487178245982.a n = A022103 n

end A022103

/-! ## A022103.P2885635769315482287

`A187891(n)+A022322(n)`
-/

namespace A022103.P2885635769315482287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022322 n

end

end A022103.P2885635769315482287

namespace A022103

/-- `A187891(n)+A022322(n)` -/
def P2885635769315482287.Spec : Prop :=
  ∀ n, P2885635769315482287.a n = A022103 n

end A022103

/-! ## A022103.P9456827095706090538

`A187892(n)+A022321(n)`
-/

namespace A022103.P9456827095706090538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022321 n

end

end A022103.P9456827095706090538

namespace A022103

/-- `A187892(n)+A022321(n)` -/
def P9456827095706090538.Spec : Prop :=
  ∀ n, P9456827095706090538.a n = A022103 n

end A022103

/-! ## A022103.P17905075127077577001

`A187893(n)+A022314(n)`
-/

namespace A022103.P17905075127077577001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022314 n

end

end A022103.P17905075127077577001

namespace A022103

/-- `A187893(n)+A022314(n)` -/
def P17905075127077577001.Spec : Prop :=
  ∀ n, P17905075127077577001.a n = A022103 n

end A022103

/-! ## A022103.P18252723498045781407

`A212804(n)+A022347(n)`
-/

namespace A022103.P18252723498045781407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022347 n

end

end A022103.P18252723498045781407

namespace A022103

/-- `A212804(n)+A022347(n)` -/
def P18252723498045781407.Spec : Prop :=
  ∀ n, P18252723498045781407.a n = A022103 n

end A022103

/-!
# A022104: Fibonacci sequence beginning 1, 14.

The programs for A022104, the canonical program `A022104.P4204111084182463687` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022104 has offset 0).

The definition of A022104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022104.P4204111084182463687

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022104

/-- `a(n-1)+a(n-2)` -/
def P4204111084182463687.Spec : Prop :=
  ∀ n, (P4204111084182463687.a n : ℤ) = A022104 n

theorem P4204111084182463687.correct : P4204111084182463687.Spec := by
  intro n
  simp only [A022104]

end A022104

/-! ## A022104.P17942396811970702168

`ogf((1+13x)/(1-x-x^2))`
-/

namespace A022104.P17942396811970702168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13] [1, -1, -1] n

end

end A022104.P17942396811970702168

namespace A022104

/-- `ogf((1+13x)/(1-x-x^2))` -/
def P17942396811970702168.Spec : Prop :=
  ∀ n, P17942396811970702168.a n = A022104 n

end A022104

/-! ## A022104.P2964700209506888958

`A022103(n)+A000045(n)`
-/

namespace A022104.P2964700209506888958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A000045 n

end

end A022104.P2964700209506888958

namespace A022104

/-- `A022103(n)+A000045(n)` -/
def P2964700209506888958.Spec : Prop :=
  ∀ n, P2964700209506888958.a n = A022104 n

end A022104

/-! ## A022104.P5838002977890200576

`A022093(n)+A000285(n)`
-/

namespace A022104.P5838002977890200576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A000285 n

end

end A022104.P5838002977890200576

namespace A022104

/-- `A022093(n)+A000285(n)` -/
def P5838002977890200576.Spec : Prop :=
  ∀ n, P5838002977890200576.a n = A022104 n

end A022104

/-! ## A022104.P4364694613802743746

`A022316(n)+A001588(n)`
-/

namespace A022104.P4364694613802743746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + A001588 n

end

end A022104.P4364694613802743746

namespace A022104

/-- `A022316(n)+A001588(n)` -/
def P4364694613802743746.Spec : Prop :=
  ∀ n, P4364694613802743746.a n = A022104 n

end A022104

/-! ## A022104.P16653532354878254233

`A022317(n)+A001611(n)`
-/

namespace A022104.P16653532354878254233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n + A001611 n

end

end A022104.P16653532354878254233

namespace A022104

/-- `A022317(n)+A001611(n)` -/
def P16653532354878254233.Spec : Prop :=
  ∀ n, P16653532354878254233.a n = A022104 n

end A022104

/-! ## A022104.P1427190050756021388

`A022095(n)+A022092(n)`
-/

namespace A022104.P1427190050756021388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022092 n

end

end A022104.P1427190050756021388

namespace A022104

/-- `A022095(n)+A022092(n)` -/
def P1427190050756021388.Spec : Prop :=
  ∀ n, P1427190050756021388.a n = A022104 n

end A022104

/-! ## A022104.P14923804358582384196

`A022096(n)+A022091(n)`
-/

namespace A022104.P14923804358582384196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022091 n

end

end A022104.P14923804358582384196

namespace A022104

/-- `A022096(n)+A022091(n)` -/
def P14923804358582384196.Spec : Prop :=
  ∀ n, P14923804358582384196.a n = A022104 n

end A022104

/-! ## A022104.P9692325606742255173

`A022097(n)+A022090(n)`
-/

namespace A022104.P9692325606742255173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022090 n

end

end A022104.P9692325606742255173

namespace A022104

/-- `A022097(n)+A022090(n)` -/
def P9692325606742255173.Spec : Prop :=
  ∀ n, P9692325606742255173.a n = A022104 n

end A022104

/-! ## A022104.P14951633677672920851

`A022098(n)+A022089(n)`
-/

namespace A022104.P14951633677672920851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022089 n

end

end A022104.P14951633677672920851

namespace A022104

/-- `A022098(n)+A022089(n)` -/
def P14951633677672920851.Spec : Prop :=
  ∀ n, P14951633677672920851.a n = A022104 n

end A022104

/-! ## A022104.P16863240744865535252

`A022099(n)+A022088(n)`
-/

namespace A022104.P16863240744865535252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022088 n

end

end A022104.P16863240744865535252

namespace A022104

/-- `A022099(n)+A022088(n)` -/
def P16863240744865535252.Spec : Prop :=
  ∀ n, P16863240744865535252.a n = A022104 n

end A022104

/-! ## A022104.P15873474476406266062

`A022100(n)+A022087(n)`
-/

namespace A022104.P15873474476406266062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022087 n

end

end A022104.P15873474476406266062

namespace A022104

/-- `A022100(n)+A022087(n)` -/
def P15873474476406266062.Spec : Prop :=
  ∀ n, P15873474476406266062.a n = A022104 n

end A022104

/-! ## A022104.P8946883845965718674

`A022101(n)+A022086(n)`
-/

namespace A022104.P8946883845965718674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022086 n

end

end A022104.P8946883845965718674

namespace A022104

/-- `A022101(n)+A022086(n)` -/
def P8946883845965718674.Spec : Prop :=
  ∀ n, P8946883845965718674.a n = A022104 n

end A022104

/-! ## A022104.P17691700095369063517

`A152163(n)+A022349(n)`
-/

namespace A022104.P17691700095369063517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022349 n

end

end A022104.P17691700095369063517

namespace A022104

/-- `A152163(n)+A022349(n)` -/
def P17691700095369063517.Spec : Prop :=
  ∀ n, P17691700095369063517.a n = A022104 n

end A022104

/-! ## A022104.P10122567604874535727

`A187891(n)+A022323(n)`
-/

namespace A022104.P10122567604874535727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022323 n

end

end A022104.P10122567604874535727

namespace A022104

/-- `A187891(n)+A022323(n)` -/
def P10122567604874535727.Spec : Prop :=
  ∀ n, P10122567604874535727.a n = A022104 n

end A022104

/-! ## A022104.P778153310656851816

`A187892(n)+A022322(n)`
-/

namespace A022104.P778153310656851816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022322 n

end

end A022104.P778153310656851816

namespace A022104

/-- `A187892(n)+A022322(n)` -/
def P778153310656851816.Spec : Prop :=
  ∀ n, P778153310656851816.a n = A022104 n

end A022104

/-! ## A022104.P10615830796917845762

`A187893(n)+A022315(n)`
-/

namespace A022104.P10615830796917845762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022315 n

end

end A022104.P10615830796917845762

namespace A022104

/-- `A187893(n)+A022315(n)` -/
def P10615830796917845762.Spec : Prop :=
  ∀ n, P10615830796917845762.a n = A022104 n

end A022104

/-! ## A022104.P12866410210637063039

`A212804(n)+A022348(n)`
-/

namespace A022104.P12866410210637063039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022348 n

end

end A022104.P12866410210637063039

namespace A022104

/-- `A212804(n)+A022348(n)` -/
def P12866410210637063039.Spec : Prop :=
  ∀ n, P12866410210637063039.a n = A022104 n

end A022104

/-! ## A022104.P958560049856241043

`A022105(n)-A000045(n)`
-/

namespace A022104.P958560049856241043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n - A000045 n

end

end A022104.P958560049856241043

namespace A022104

/-- `A022105(n)-A000045(n)` -/
def P958560049856241043.Spec : Prop :=
  ∀ n, P958560049856241043.a n = A022104 n

end A022104

/-! ## A022104.P9146382515725802725

`A022381(n)-A000032(n)`
-/

namespace A022104.P9146382515725802725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n - A000032 n

end

end A022104.P9146382515725802725

namespace A022104

/-- `A022381(n)-A000032(n)` -/
def P9146382515725802725.Spec : Prop :=
  ∀ n, P9146382515725802725.a n = A022104 n

end A022104

/-!
# A022105: Fibonacci sequence beginning 1, 15.

The programs for A022105, the canonical program `A022105.P6847273964616847296` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022105 has offset 0).

The definition of A022105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022105.P6847273964616847296

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022105

/-- `a(n-1)+a(n-2)` -/
def P6847273964616847296.Spec : Prop :=
  ∀ n, (P6847273964616847296.a n : ℤ) = A022105 n

theorem P6847273964616847296.correct : P6847273964616847296.Spec := by
  intro n
  simp only [A022105]

end A022105

/-! ## A022105.P1632977557914023817

`ogf((1+14x)/(1-x-x^2))`
-/

namespace A022105.P1632977557914023817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14] [1, -1, -1] n

end

end A022105.P1632977557914023817

namespace A022105

/-- `ogf((1+14x)/(1-x-x^2))` -/
def P1632977557914023817.Spec : Prop :=
  ∀ n, P1632977557914023817.a n = A022105 n

end A022105

/-! ## A022105.P13631677221281890300

`A022104(n)+A000045(n)`
-/

namespace A022105.P13631677221281890300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A000045 n

end

end A022105.P13631677221281890300

namespace A022105

/-- `A022104(n)+A000045(n)` -/
def P13631677221281890300.Spec : Prop :=
  ∀ n, P13631677221281890300.a n = A022105 n

end A022105

/-! ## A022105.P14379426167607029764

`A022345(n)+A000285(n)`
-/

namespace A022105.P14379426167607029764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A000285 n

end

end A022105.P14379426167607029764

namespace A022105

/-- `A022345(n)+A000285(n)` -/
def P14379426167607029764.Spec : Prop :=
  ∀ n, P14379426167607029764.a n = A022105 n

end A022105

/-! ## A022105.P463819106649832931

`A022317(n)+A001588(n)`
-/

namespace A022105.P463819106649832931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n + A001588 n

end

end A022105.P463819106649832931

namespace A022105

/-- `A022317(n)+A001588(n)` -/
def P463819106649832931.Spec : Prop :=
  ∀ n, P463819106649832931.a n = A022105 n

end A022105

/-! ## A022105.P9590850295518061510

`A022095(n)+A022093(n)`
-/

namespace A022105.P9590850295518061510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022093 n

end

end A022105.P9590850295518061510

namespace A022105

/-- `A022095(n)+A022093(n)` -/
def P9590850295518061510.Spec : Prop :=
  ∀ n, P9590850295518061510.a n = A022105 n

end A022105

/-! ## A022105.P11619744985402613569

`A022096(n)+A022092(n)`
-/

namespace A022105.P11619744985402613569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022092 n

end

end A022105.P11619744985402613569

namespace A022105

/-- `A022096(n)+A022092(n)` -/
def P11619744985402613569.Spec : Prop :=
  ∀ n, P11619744985402613569.a n = A022105 n

end A022105

/-! ## A022105.P12817184651649824186

`A022097(n)+A022091(n)`
-/

namespace A022105.P12817184651649824186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022091 n

end

end A022105.P12817184651649824186

namespace A022105

/-- `A022097(n)+A022091(n)` -/
def P12817184651649824186.Spec : Prop :=
  ∀ n, P12817184651649824186.a n = A022105 n

end A022105

/-! ## A022105.P5814855814971494373

`A022098(n)+A022090(n)`
-/

namespace A022105.P5814855814971494373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022090 n

end

end A022105.P5814855814971494373

namespace A022105

/-- `A022098(n)+A022090(n)` -/
def P5814855814971494373.Spec : Prop :=
  ∀ n, P5814855814971494373.a n = A022105 n

end A022105

/-! ## A022105.P11636620222977823675

`A022099(n)+A022089(n)`
-/

namespace A022105.P11636620222977823675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022089 n

end

end A022105.P11636620222977823675

namespace A022105

/-- `A022099(n)+A022089(n)` -/
def P11636620222977823675.Spec : Prop :=
  ∀ n, P11636620222977823675.a n = A022105 n

end A022105

/-! ## A022105.P18158980317927664326

`A022100(n)+A022088(n)`
-/

namespace A022105.P18158980317927664326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022088 n

end

end A022105.P18158980317927664326

namespace A022105

/-- `A022100(n)+A022088(n)` -/
def P18158980317927664326.Spec : Prop :=
  ∀ n, P18158980317927664326.a n = A022105 n

end A022105

/-! ## A022105.P7548425975855157658

`A022101(n)+A022087(n)`
-/

namespace A022105.P7548425975855157658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022087 n

end

end A022105.P7548425975855157658

namespace A022105

/-- `A022101(n)+A022087(n)` -/
def P7548425975855157658.Spec : Prop :=
  ∀ n, P7548425975855157658.a n = A022105 n

end A022105

/-! ## A022105.P4192738501135107145

`A022102(n)+A022086(n)`
-/

namespace A022105.P4192738501135107145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022086 n

end

end A022105.P4192738501135107145

namespace A022105

/-- `A022102(n)+A022086(n)` -/
def P4192738501135107145.Spec : Prop :=
  ∀ n, P4192738501135107145.a n = A022105 n

end A022105

/-! ## A022105.P17083361878063998743

`A152163(n)+A022350(n)`
-/

namespace A022105.P17083361878063998743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022350 n

end

end A022105.P17083361878063998743

namespace A022105

/-- `A152163(n)+A022350(n)` -/
def P17083361878063998743.Spec : Prop :=
  ∀ n, P17083361878063998743.a n = A022105 n

end A022105

/-! ## A022105.P12710361235531241934

`A187891(n)+A022324(n)`
-/

namespace A022105.P12710361235531241934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022324 n

end

end A022105.P12710361235531241934

namespace A022105

/-- `A187891(n)+A022324(n)` -/
def P12710361235531241934.Spec : Prop :=
  ∀ n, P12710361235531241934.a n = A022105 n

end A022105

/-! ## A022105.P10374899918101738853

`A187892(n)+A022323(n)`
-/

namespace A022105.P10374899918101738853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022323 n

end

end A022105.P10374899918101738853

namespace A022105

/-- `A187892(n)+A022323(n)` -/
def P10374899918101738853.Spec : Prop :=
  ∀ n, P10374899918101738853.a n = A022105 n

end A022105

/-! ## A022105.P9398526303374285370

`A187893(n)+A022316(n)`
-/

namespace A022105.P9398526303374285370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022316 n

end

end A022105.P9398526303374285370

namespace A022105

/-- `A187893(n)+A022316(n)` -/
def P9398526303374285370.Spec : Prop :=
  ∀ n, P9398526303374285370.a n = A022105 n

end A022105

/-! ## A022105.P16015326888152339079

`A212804(n)+A022349(n)`
-/

namespace A022105.P16015326888152339079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022349 n

end

end A022105.P16015326888152339079

namespace A022105

/-- `A212804(n)+A022349(n)` -/
def P16015326888152339079.Spec : Prop :=
  ∀ n, P16015326888152339079.a n = A022105 n

end A022105

/-! ## A022105.P6024959531376631477

`A022106(n)-A000045(n)`
-/

namespace A022105.P6024959531376631477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n - A000045 n

end

end A022105.P6024959531376631477

namespace A022105

/-- `A022106(n)-A000045(n)` -/
def P6024959531376631477.Spec : Prop :=
  ∀ n, P6024959531376631477.a n = A022105 n

end A022105

/-! ## A022105.P6008905223344939319

`A022126(n)-A000032(n)`
-/

namespace A022105.P6008905223344939319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n - A000032 n

end

end A022105.P6008905223344939319

namespace A022105

/-- `A022126(n)-A000032(n)` -/
def P6008905223344939319.Spec : Prop :=
  ∀ n, P6008905223344939319.a n = A022105 n

end A022105

/-!
# A022106: Fibonacci sequence beginning 1, 16.

The programs for A022106, the canonical program `A022106.P14518379427665981254` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022106 has offset 0).

The definition of A022106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022106.P14518379427665981254

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022106

/-- `a(n-1)+a(n-2)` -/
def P14518379427665981254.Spec : Prop :=
  ∀ n, (P14518379427665981254.a n : ℤ) = A022106 n

theorem P14518379427665981254.correct : P14518379427665981254.Spec := by
  intro n
  simp only [A022106]

end A022106

/-! ## A022106.P5371581276637803280

`ogf((1+15x)/(1-x-x^2))`
-/

namespace A022106.P5371581276637803280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15] [1, -1, -1] n

end

end A022106.P5371581276637803280

namespace A022106

/-- `ogf((1+15x)/(1-x-x^2))` -/
def P5371581276637803280.Spec : Prop :=
  ∀ n, P5371581276637803280.a n = A022106 n

end A022106

/-! ## A022106.P8715408933510227980

`A022105(n)+A000045(n)`
-/

namespace A022106.P8715408933510227980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A000045 n

end

end A022106.P8715408933510227980

namespace A022106

/-- `A022105(n)+A000045(n)` -/
def P8715408933510227980.Spec : Prop :=
  ∀ n, P8715408933510227980.a n = A022106 n

end A022106

/-! ## A022106.P12129851758245655417

`A022346(n)+A000285(n)`
-/

namespace A022106.P12129851758245655417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A000285 n

end

end A022106.P12129851758245655417

namespace A022106

/-- `A022346(n)+A000285(n)` -/
def P12129851758245655417.Spec : Prop :=
  ∀ n, P12129851758245655417.a n = A022106 n

end A022106

/-! ## A022106.P4627300932336558440

`A022096(n)+A022093(n)`
-/

namespace A022106.P4627300932336558440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022093 n

end

end A022106.P4627300932336558440

namespace A022106

/-- `A022096(n)+A022093(n)` -/
def P4627300932336558440.Spec : Prop :=
  ∀ n, P4627300932336558440.a n = A022106 n

end A022106

/-! ## A022106.P18069072328449241039

`A022097(n)+A022092(n)`
-/

namespace A022106.P18069072328449241039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022092 n

end

end A022106.P18069072328449241039

namespace A022106

/-- `A022097(n)+A022092(n)` -/
def P18069072328449241039.Spec : Prop :=
  ∀ n, P18069072328449241039.a n = A022106 n

end A022106

/-! ## A022106.P7441759933554899086

`A022098(n)+A022091(n)`
-/

namespace A022106.P7441759933554899086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022091 n

end

end A022106.P7441759933554899086

namespace A022106

/-- `A022098(n)+A022091(n)` -/
def P7441759933554899086.Spec : Prop :=
  ∀ n, P7441759933554899086.a n = A022106 n

end A022106

/-! ## A022106.P13958145790271025803

`A022099(n)+A022090(n)`
-/

namespace A022106.P13958145790271025803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022090 n

end

end A022106.P13958145790271025803

namespace A022106

/-- `A022099(n)+A022090(n)` -/
def P13958145790271025803.Spec : Prop :=
  ∀ n, P13958145790271025803.a n = A022106 n

end A022106

/-! ## A022106.P8010786620124277229

`A022100(n)+A022089(n)`
-/

namespace A022106.P8010786620124277229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022089 n

end

end A022106.P8010786620124277229

namespace A022106

/-- `A022100(n)+A022089(n)` -/
def P8010786620124277229.Spec : Prop :=
  ∀ n, P8010786620124277229.a n = A022106 n

end A022106

/-! ## A022106.P1784835883913564130

`A022101(n)+A022088(n)`
-/

namespace A022106.P1784835883913564130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022088 n

end

end A022106.P1784835883913564130

namespace A022106

/-- `A022101(n)+A022088(n)` -/
def P1784835883913564130.Spec : Prop :=
  ∀ n, P1784835883913564130.a n = A022106 n

end A022106

/-! ## A022106.P12164489038459507828

`A022102(n)+A022087(n)`
-/

namespace A022106.P12164489038459507828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022087 n

end

end A022106.P12164489038459507828

namespace A022106

/-- `A022102(n)+A022087(n)` -/
def P12164489038459507828.Spec : Prop :=
  ∀ n, P12164489038459507828.a n = A022106 n

end A022106

/-! ## A022106.P7969124828650896492

`A022103(n)+A022086(n)`
-/

namespace A022106.P7969124828650896492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022086 n

end

end A022106.P7969124828650896492

namespace A022106

/-- `A022103(n)+A022086(n)` -/
def P7969124828650896492.Spec : Prop :=
  ∀ n, P7969124828650896492.a n = A022106 n

end A022106

/-! ## A022106.P1405700486906599877

`A022345(n)+A022095(n)`
-/

namespace A022106.P1405700486906599877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022095 n

end

end A022106.P1405700486906599877

namespace A022106

/-- `A022345(n)+A022095(n)` -/
def P1405700486906599877.Spec : Prop :=
  ∀ n, P1405700486906599877.a n = A022106 n

end A022106

/-! ## A022106.P2494279354164357613

`A152163(n)+A022351(n)`
-/

namespace A022106.P2494279354164357613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022351 n

end

end A022106.P2494279354164357613

namespace A022106

/-- `A152163(n)+A022351(n)` -/
def P2494279354164357613.Spec : Prop :=
  ∀ n, P2494279354164357613.a n = A022106 n

end A022106

/-! ## A022106.P13375179660927926087

`A187891(n)+A022325(n)`
-/

namespace A022106.P13375179660927926087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022325 n

end

end A022106.P13375179660927926087

namespace A022106

/-- `A187891(n)+A022325(n)` -/
def P13375179660927926087.Spec : Prop :=
  ∀ n, P13375179660927926087.a n = A022106 n

end A022106

/-! ## A022106.P142582262893383762

`A187892(n)+A022324(n)`
-/

namespace A022106.P142582262893383762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022324 n

end

end A022106.P142582262893383762

namespace A022106

/-- `A187892(n)+A022324(n)` -/
def P142582262893383762.Spec : Prop :=
  ∀ n, P142582262893383762.a n = A022106 n

end A022106

/-! ## A022106.P8681517732907499182

`A187893(n)+A022317(n)`
-/

namespace A022106.P8681517732907499182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022317 n

end

end A022106.P8681517732907499182

namespace A022106

/-- `A187893(n)+A022317(n)` -/
def P8681517732907499182.Spec : Prop :=
  ∀ n, P8681517732907499182.a n = A022106 n

end A022106

/-! ## A022106.P7931421960925792187

`A212804(n)+A022350(n)`
-/

namespace A022106.P7931421960925792187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022350 n

end

end A022106.P7931421960925792187

namespace A022106

/-- `A212804(n)+A022350(n)` -/
def P7931421960925792187.Spec : Prop :=
  ∀ n, P7931421960925792187.a n = A022106 n

end A022106

/-! ## A022106.P15151697874216824195

`A022107(n)-A000045(n)`
-/

namespace A022106.P15151697874216824195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n - A000045 n

end

end A022106.P15151697874216824195

namespace A022106

/-- `A022107(n)-A000045(n)` -/
def P15151697874216824195.Spec : Prop :=
  ∀ n, P15151697874216824195.a n = A022106 n

end A022106

/-! ## A022106.P12504616769304363568

`A022127(n)-A000032(n)`
-/

namespace A022106.P12504616769304363568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022127 n - A000032 n

end

end A022106.P12504616769304363568

namespace A022106

/-- `A022127(n)-A000032(n)` -/
def P12504616769304363568.Spec : Prop :=
  ∀ n, P12504616769304363568.a n = A022106 n

end A022106

/-!
# A022107: Fibonacci sequence beginning 1, 17.

The programs for A022107, the canonical program `A022107.P10338226301340057203` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022107 has offset 0).

The definition of A022107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022107.P10338226301340057203

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022107

/-- `a(n-1)+a(n-2)` -/
def P10338226301340057203.Spec : Prop :=
  ∀ n, (P10338226301340057203.a n : ℤ) = A022107 n

theorem P10338226301340057203.correct : P10338226301340057203.Spec := by
  intro n
  simp only [A022107]

end A022107

/-! ## A022107.P5732093164623642633

`ogf((1+16x)/(1-x-x^2))`
-/

namespace A022107.P5732093164623642633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16] [1, -1, -1] n

end

end A022107.P5732093164623642633

namespace A022107

/-- `ogf((1+16x)/(1-x-x^2))` -/
def P5732093164623642633.Spec : Prop :=
  ∀ n, P5732093164623642633.a n = A022107 n

end A022107

/-! ## A022107.P9824329293242812848

`A022106(n)+A000045(n)`
-/

namespace A022107.P9824329293242812848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A000045 n

end

end A022107.P9824329293242812848

namespace A022107

/-- `A022106(n)+A000045(n)` -/
def P9824329293242812848.Spec : Prop :=
  ∀ n, P9824329293242812848.a n = A022107 n

end A022107

/-! ## A022107.P7633084999079982752

`A022347(n)+A000285(n)`
-/

namespace A022107.P7633084999079982752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A000285 n

end

end A022107.P7633084999079982752

namespace A022107

/-- `A022347(n)+A000285(n)` -/
def P7633084999079982752.Spec : Prop :=
  ∀ n, P7633084999079982752.a n = A022107 n

end A022107

/-! ## A022107.P3333905513089370797

`A022097(n)+A022093(n)`
-/

namespace A022107.P3333905513089370797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022093 n

end

end A022107.P3333905513089370797

namespace A022107

/-- `A022097(n)+A022093(n)` -/
def P3333905513089370797.Spec : Prop :=
  ∀ n, P3333905513089370797.a n = A022107 n

end A022107

/-! ## A022107.P10676186028537343271

`A022098(n)+A022092(n)`
-/

namespace A022107.P10676186028537343271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022092 n

end

end A022107.P10676186028537343271

namespace A022107

/-- `A022098(n)+A022092(n)` -/
def P10676186028537343271.Spec : Prop :=
  ∀ n, P10676186028537343271.a n = A022107 n

end A022107

/-! ## A022107.P4028514766990715391

`A022099(n)+A022091(n)`
-/

namespace A022107.P4028514766990715391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022091 n

end

end A022107.P4028514766990715391

namespace A022107

/-- `A022099(n)+A022091(n)` -/
def P4028514766990715391.Spec : Prop :=
  ∀ n, P4028514766990715391.a n = A022107 n

end A022107

/-! ## A022107.P16022142874537987413

`A022100(n)+A022090(n)`
-/

namespace A022107.P16022142874537987413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022090 n

end

end A022107.P16022142874537987413

namespace A022107

/-- `A022100(n)+A022090(n)` -/
def P16022142874537987413.Spec : Prop :=
  ∀ n, P16022142874537987413.a n = A022107 n

end A022107

/-! ## A022107.P6743137923293685838

`A022101(n)+A022089(n)`
-/

namespace A022107.P6743137923293685838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022089 n

end

end A022107.P6743137923293685838

namespace A022107

/-- `A022101(n)+A022089(n)` -/
def P6743137923293685838.Spec : Prop :=
  ∀ n, P6743137923293685838.a n = A022107 n

end A022107

/-! ## A022107.P4170303826711141978

`A022102(n)+A022088(n)`
-/

namespace A022107.P4170303826711141978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022088 n

end

end A022107.P4170303826711141978

namespace A022107

/-- `A022102(n)+A022088(n)` -/
def P4170303826711141978.Spec : Prop :=
  ∀ n, P4170303826711141978.a n = A022107 n

end A022107

/-! ## A022107.P8852482207419513247

`A022103(n)+A022087(n)`
-/

namespace A022107.P8852482207419513247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022087 n

end

end A022107.P8852482207419513247

namespace A022107

/-- `A022103(n)+A022087(n)` -/
def P8852482207419513247.Spec : Prop :=
  ∀ n, P8852482207419513247.a n = A022107 n

end A022107

/-! ## A022107.P17099488713833843298

`A022104(n)+A022086(n)`
-/

namespace A022107.P17099488713833843298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022086 n

end

end A022107.P17099488713833843298

namespace A022107

/-- `A022104(n)+A022086(n)` -/
def P17099488713833843298.Spec : Prop :=
  ∀ n, P17099488713833843298.a n = A022107 n

end A022107

/-! ## A022107.P6526403265936706138

`A022345(n)+A022096(n)`
-/

namespace A022107.P6526403265936706138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022096 n

end

end A022107.P6526403265936706138

namespace A022107

/-- `A022345(n)+A022096(n)` -/
def P6526403265936706138.Spec : Prop :=
  ∀ n, P6526403265936706138.a n = A022107 n

end A022107

/-! ## A022107.P16837848983731921474

`A022346(n)+A022095(n)`
-/

namespace A022107.P16837848983731921474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022095 n

end

end A022107.P16837848983731921474

namespace A022107

/-- `A022346(n)+A022095(n)` -/
def P16837848983731921474.Spec : Prop :=
  ∀ n, P16837848983731921474.a n = A022107 n

end A022107

/-! ## A022107.P17600365251278065939

`A152163(n)+A022352(n)`
-/

namespace A022107.P17600365251278065939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022352 n

end

end A022107.P17600365251278065939

namespace A022107

/-- `A152163(n)+A022352(n)` -/
def P17600365251278065939.Spec : Prop :=
  ∀ n, P17600365251278065939.a n = A022107 n

end A022107

/-! ## A022107.P1698635013696229649

`A187891(n)+A022326(n)`
-/

namespace A022107.P1698635013696229649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022326 n

end

end A022107.P1698635013696229649

namespace A022107

/-- `A187891(n)+A022326(n)` -/
def P1698635013696229649.Spec : Prop :=
  ∀ n, P1698635013696229649.a n = A022107 n

end A022107

/-! ## A022107.P16468435804634298738

`A187892(n)+A022325(n)`
-/

namespace A022107.P16468435804634298738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022325 n

end

end A022107.P16468435804634298738

namespace A022107

/-- `A187892(n)+A022325(n)` -/
def P16468435804634298738.Spec : Prop :=
  ∀ n, P16468435804634298738.a n = A022107 n

end A022107

/-! ## A022107.P13037272313829831177

`A212804(n)+A022351(n)`
-/

namespace A022107.P13037272313829831177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022351 n

end

end A022107.P13037272313829831177

namespace A022107

/-- `A212804(n)+A022351(n)` -/
def P13037272313829831177.Spec : Prop :=
  ∀ n, P13037272313829831177.a n = A022107 n

end A022107

/-! ## A022107.P1483279989563680306

`A022108(n)-A000045(n)`
-/

namespace A022107.P1483279989563680306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n - A000045 n

end

end A022107.P1483279989563680306

namespace A022107

/-- `A022108(n)-A000045(n)` -/
def P1483279989563680306.Spec : Prop :=
  ∀ n, P1483279989563680306.a n = A022107 n

end A022107

/-! ## A022107.P6473484449909023479

`A022348(n)+A000032(n+1)`
-/

namespace A022107.P6473484449909023479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A000032 (n + 1)

end

end A022107.P6473484449909023479

namespace A022107

/-- `A022348(n)+A000032(n+1)` -/
def P6473484449909023479.Spec : Prop :=
  ∀ n, P6473484449909023479.a n = A022107 n

end A022107

/-!
# A022108: Fibonacci sequence beginning 1, 18.

The programs for A022108, the canonical program `A022108.P5371419221732561044` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022108 has offset 0).

The definition of A022108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022108.P5371419221732561044

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022108

/-- `a(n-1)+a(n-2)` -/
def P5371419221732561044.Spec : Prop :=
  ∀ n, (P5371419221732561044.a n : ℤ) = A022108 n

theorem P5371419221732561044.correct : P5371419221732561044.Spec := by
  intro n
  simp only [A022108]

end A022108

/-! ## A022108.P7948541060307950342

`ogf((1+17x)/(1-x-x^2))`
-/

namespace A022108.P7948541060307950342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17] [1, -1, -1] n

end

end A022108.P7948541060307950342

namespace A022108

/-- `ogf((1+17x)/(1-x-x^2))` -/
def P7948541060307950342.Spec : Prop :=
  ∀ n, P7948541060307950342.a n = A022108 n

end A022108

/-! ## A022108.P7141765356911420064

`A022107(n)+A000045(n)`
-/

namespace A022108.P7141765356911420064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A000045 n

end

end A022108.P7141765356911420064

namespace A022108

/-- `A022107(n)+A000045(n)` -/
def P7141765356911420064.Spec : Prop :=
  ∀ n, P7141765356911420064.a n = A022108 n

end A022108

/-! ## A022108.P17093779696646457848

`A022348(n)+A000285(n)`
-/

namespace A022108.P17093779696646457848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A000285 n

end

end A022108.P17093779696646457848

namespace A022108

/-- `A022348(n)+A000285(n)` -/
def P17093779696646457848.Spec : Prop :=
  ∀ n, P17093779696646457848.a n = A022108 n

end A022108

/-! ## A022108.P14276290115622392532

`A022098(n)+A022093(n)`
-/

namespace A022108.P14276290115622392532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022093 n

end

end A022108.P14276290115622392532

namespace A022108

/-- `A022098(n)+A022093(n)` -/
def P14276290115622392532.Spec : Prop :=
  ∀ n, P14276290115622392532.a n = A022108 n

end A022108

/-! ## A022108.P9590830994519914485

`A022099(n)+A022092(n)`
-/

namespace A022108.P9590830994519914485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022092 n

end

end A022108.P9590830994519914485

namespace A022108

/-- `A022099(n)+A022092(n)` -/
def P9590830994519914485.Spec : Prop :=
  ∀ n, P9590830994519914485.a n = A022108 n

end A022108

/-! ## A022108.P17147274320810303313

`A022100(n)+A022091(n)`
-/

namespace A022108.P17147274320810303313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022091 n

end

end A022108.P17147274320810303313

namespace A022108

/-- `A022100(n)+A022091(n)` -/
def P17147274320810303313.Spec : Prop :=
  ∀ n, P17147274320810303313.a n = A022108 n

end A022108

/-! ## A022108.P8038639353783838934

`A022101(n)+A022090(n)`
-/

namespace A022108.P8038639353783838934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022090 n

end

end A022108.P8038639353783838934

namespace A022108

/-- `A022101(n)+A022090(n)` -/
def P8038639353783838934.Spec : Prop :=
  ∀ n, P8038639353783838934.a n = A022108 n

end A022108

/-! ## A022108.P18049018868793646957

`A022102(n)+A022089(n)`
-/

namespace A022108.P18049018868793646957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022089 n

end

end A022108.P18049018868793646957

namespace A022108

/-- `A022102(n)+A022089(n)` -/
def P18049018868793646957.Spec : Prop :=
  ∀ n, P18049018868793646957.a n = A022108 n

end A022108

/-! ## A022108.P11835420973536018184

`A022103(n)+A022088(n)`
-/

namespace A022108.P11835420973536018184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022088 n

end

end A022108.P11835420973536018184

namespace A022108

/-- `A022103(n)+A022088(n)` -/
def P11835420973536018184.Spec : Prop :=
  ∀ n, P11835420973536018184.a n = A022108 n

end A022108

/-! ## A022108.P7105179625365472971

`A022104(n)+A022087(n)`
-/

namespace A022108.P7105179625365472971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022087 n

end

end A022108.P7105179625365472971

namespace A022108

/-- `A022104(n)+A022087(n)` -/
def P7105179625365472971.Spec : Prop :=
  ∀ n, P7105179625365472971.a n = A022108 n

end A022108

/-! ## A022108.P9210431451115095954

`A022105(n)+A022086(n)`
-/

namespace A022108.P9210431451115095954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022086 n

end

end A022108.P9210431451115095954

namespace A022108

/-- `A022105(n)+A022086(n)` -/
def P9210431451115095954.Spec : Prop :=
  ∀ n, P9210431451115095954.a n = A022108 n

end A022108

/-! ## A022108.P7912283069160858585

`A022345(n)+A022097(n)`
-/

namespace A022108.P7912283069160858585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022097 n

end

end A022108.P7912283069160858585

namespace A022108

/-- `A022345(n)+A022097(n)` -/
def P7912283069160858585.Spec : Prop :=
  ∀ n, P7912283069160858585.a n = A022108 n

end A022108

/-! ## A022108.P6018025471051423986

`A022346(n)+A022096(n)`
-/

namespace A022108.P6018025471051423986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022096 n

end

end A022108.P6018025471051423986

namespace A022108

/-- `A022346(n)+A022096(n)` -/
def P6018025471051423986.Spec : Prop :=
  ∀ n, P6018025471051423986.a n = A022108 n

end A022108

/-! ## A022108.P6093620473699544776

`A022347(n)+A022095(n)`
-/

namespace A022108.P6093620473699544776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022095 n

end

end A022108.P6093620473699544776

namespace A022108

/-- `A022347(n)+A022095(n)` -/
def P6093620473699544776.Spec : Prop :=
  ∀ n, P6093620473699544776.a n = A022108 n

end A022108

/-! ## A022108.P203542715626700703

`A152163(n)+A022353(n)`
-/

namespace A022108.P203542715626700703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022353 n

end

end A022108.P203542715626700703

namespace A022108

/-- `A152163(n)+A022353(n)` -/
def P203542715626700703.Spec : Prop :=
  ∀ n, P203542715626700703.a n = A022108 n

end A022108

/-! ## A022108.P17628562178665241497

`A187892(n)+A022326(n)`
-/

namespace A022108.P17628562178665241497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022326 n

end

end A022108.P17628562178665241497

namespace A022108

/-- `A187892(n)+A022326(n)` -/
def P17628562178665241497.Spec : Prop :=
  ∀ n, P17628562178665241497.a n = A022108 n

end A022108

/-! ## A022108.P8201247137777917161

`A212804(n)+A022352(n)`
-/

namespace A022108.P8201247137777917161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022352 n

end

end A022108.P8201247137777917161

namespace A022108

/-- `A212804(n)+A022352(n)` -/
def P8201247137777917161.Spec : Prop :=
  ∀ n, P8201247137777917161.a n = A022108 n

end A022108

/-! ## A022108.P906524635137761706

`A022352(n)+Δ[A000045(n)]`
-/

namespace A022108.P906524635137761706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + (f1 (n + 1) - f1 n)

end

end A022108.P906524635137761706

namespace A022108

/-- `A022352(n)+Δ[A000045(n)]` -/
def P906524635137761706.Spec : Prop :=
  ∀ n, P906524635137761706.a n = A022108 n

end A022108

/-! ## A022108.P11053012803775410259

`A022349(n)+A000032(n+1)`
-/

namespace A022108.P11053012803775410259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A000032 (n + 1)

end

end A022108.P11053012803775410259

namespace A022108

/-- `A022349(n)+A000032(n+1)` -/
def P11053012803775410259.Spec : Prop :=
  ∀ n, P11053012803775410259.a n = A022108 n

end A022108

/-!
# A022109: Fibonacci sequence beginning 1, 19.

The programs for A022109, the canonical program `A022109.P11700321204358946792` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022109 has offset 0).

The definition of A022109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022109.P11700321204358946792

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022109

/-- `a(n-1)+a(n-2)` -/
def P11700321204358946792.Spec : Prop :=
  ∀ n, (P11700321204358946792.a n : ℤ) = A022109 n

theorem P11700321204358946792.correct : P11700321204358946792.Spec := by
  intro n
  simp only [A022109]

end A022109

/-! ## A022109.P8746810289532900687

`ogf((1+18x)/(1-x-x^2))`
-/

namespace A022109.P8746810289532900687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18] [1, -1, -1] n

end

end A022109.P8746810289532900687

namespace A022109

/-- `ogf((1+18x)/(1-x-x^2))` -/
def P8746810289532900687.Spec : Prop :=
  ∀ n, P8746810289532900687.a n = A022109 n

end A022109

/-! ## A022109.P10123269366698689979

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=19`

`floor` is left out, it is the identity on integers.
-/

namespace A022109.P10123269366698689979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022109.P10123269366698689979

namespace A022109

/-- `a(n-1)-floor(-a(n-2))` -/
def P10123269366698689979.Spec : Prop :=
  ∀ n, P10123269366698689979.a n = A022109 n

end A022109

/-! ## A022109.P13649202281561342886

`A022108(n)+A000045(n)`
-/

namespace A022109.P13649202281561342886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A000045 n

end

end A022109.P13649202281561342886

namespace A022109

/-- `A022108(n)+A000045(n)` -/
def P13649202281561342886.Spec : Prop :=
  ∀ n, P13649202281561342886.a n = A022109 n

end A022109

/-! ## A022109.P13050303547107847412

`A022349(n)+A000285(n)`
-/

namespace A022109.P13050303547107847412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A000285 n

end

end A022109.P13050303547107847412

namespace A022109

/-- `A022349(n)+A000285(n)` -/
def P13050303547107847412.Spec : Prop :=
  ∀ n, P13050303547107847412.a n = A022109 n

end A022109

/-! ## A022109.P14130921522331403730

`A022099(n)+A022093(n)`
-/

namespace A022109.P14130921522331403730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022093 n

end

end A022109.P14130921522331403730

namespace A022109

/-- `A022099(n)+A022093(n)` -/
def P14130921522331403730.Spec : Prop :=
  ∀ n, P14130921522331403730.a n = A022109 n

end A022109

/-! ## A022109.P16836440859069329714

`A022100(n)+A022092(n)`
-/

namespace A022109.P16836440859069329714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022092 n

end

end A022109.P16836440859069329714

namespace A022109

/-- `A022100(n)+A022092(n)` -/
def P16836440859069329714.Spec : Prop :=
  ∀ n, P16836440859069329714.a n = A022109 n

end A022109

/-! ## A022109.P6423355163215103106

`A022101(n)+A022091(n)`
-/

namespace A022109.P6423355163215103106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022091 n

end

end A022109.P6423355163215103106

namespace A022109

/-- `A022101(n)+A022091(n)` -/
def P6423355163215103106.Spec : Prop :=
  ∀ n, P6423355163215103106.a n = A022109 n

end A022109

/-! ## A022109.P1379963835433025161

`A022102(n)+A022090(n)`
-/

namespace A022109.P1379963835433025161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022090 n

end

end A022109.P1379963835433025161

namespace A022109

/-- `A022102(n)+A022090(n)` -/
def P1379963835433025161.Spec : Prop :=
  ∀ n, P1379963835433025161.a n = A022109 n

end A022109

/-! ## A022109.P10409296845754630000

`A022103(n)+A022089(n)`
-/

namespace A022109.P10409296845754630000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022089 n

end

end A022109.P10409296845754630000

namespace A022109

/-- `A022103(n)+A022089(n)` -/
def P10409296845754630000.Spec : Prop :=
  ∀ n, P10409296845754630000.a n = A022109 n

end A022109

/-! ## A022109.P8138363237619023336

`A022104(n)+A022088(n)`
-/

namespace A022109.P8138363237619023336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022088 n

end

end A022109.P8138363237619023336

namespace A022109

/-- `A022104(n)+A022088(n)` -/
def P8138363237619023336.Spec : Prop :=
  ∀ n, P8138363237619023336.a n = A022109 n

end A022109

/-! ## A022109.P15984686683347267880

`A022105(n)+A022087(n)`
-/

namespace A022109.P15984686683347267880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022087 n

end

end A022109.P15984686683347267880

namespace A022109

/-- `A022105(n)+A022087(n)` -/
def P15984686683347267880.Spec : Prop :=
  ∀ n, P15984686683347267880.a n = A022109 n

end A022109

/-! ## A022109.P9659107833280646570

`A022106(n)+A022086(n)`
-/

namespace A022109.P9659107833280646570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022086 n

end

end A022109.P9659107833280646570

namespace A022109

/-- `A022106(n)+A022086(n)` -/
def P9659107833280646570.Spec : Prop :=
  ∀ n, P9659107833280646570.a n = A022109 n

end A022109

/-! ## A022109.P958347019810518168

`A022345(n)+A022098(n)`
-/

namespace A022109.P958347019810518168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022098 n

end

end A022109.P958347019810518168

namespace A022109

/-- `A022345(n)+A022098(n)` -/
def P958347019810518168.Spec : Prop :=
  ∀ n, P958347019810518168.a n = A022109 n

end A022109

/-! ## A022109.P2369393658720756038

`A022346(n)+A022097(n)`
-/

namespace A022109.P2369393658720756038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022097 n

end

end A022109.P2369393658720756038

namespace A022109

/-- `A022346(n)+A022097(n)` -/
def P2369393658720756038.Spec : Prop :=
  ∀ n, P2369393658720756038.a n = A022109 n

end A022109

/-! ## A022109.P10807145292681278165

`A022347(n)+A022096(n)`
-/

namespace A022109.P10807145292681278165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022096 n

end

end A022109.P10807145292681278165

namespace A022109

/-- `A022347(n)+A022096(n)` -/
def P10807145292681278165.Spec : Prop :=
  ∀ n, P10807145292681278165.a n = A022109 n

end A022109

/-! ## A022109.P4164598477148132320

`A022348(n)+A022095(n)`
-/

namespace A022109.P4164598477148132320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022095 n

end

end A022109.P4164598477148132320

namespace A022109

/-- `A022348(n)+A022095(n)` -/
def P4164598477148132320.Spec : Prop :=
  ∀ n, P4164598477148132320.a n = A022109 n

end A022109

/-! ## A022109.P13652654117887269457

`A152163(n)+A022354(n)`
-/

namespace A022109.P13652654117887269457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022354 n

end

end A022109.P13652654117887269457

namespace A022109

/-- `A152163(n)+A022354(n)` -/
def P13652654117887269457.Spec : Prop :=
  ∀ n, P13652654117887269457.a n = A022109 n

end A022109

/-! ## A022109.P17386105045344952699

`A212804(n)+A022353(n)`
-/

namespace A022109.P17386105045344952699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022353 n

end

end A022109.P17386105045344952699

namespace A022109

/-- `A212804(n)+A022353(n)` -/
def P17386105045344952699.Spec : Prop :=
  ∀ n, P17386105045344952699.a n = A022109 n

end A022109

/-! ## A022109.P6779998973266742088

`A022110(n)-A000045(n)`
-/

namespace A022109.P6779998973266742088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n - A000045 n

end

end A022109.P6779998973266742088

namespace A022109

/-- `A022110(n)-A000045(n)` -/
def P6779998973266742088.Spec : Prop :=
  ∀ n, P6779998973266742088.a n = A022109 n

end A022109

/-!
# A022110: Fibonacci sequence beginning 1, 20.

The programs for A022110, the canonical program `A022110.P154848386883198209` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022110 has offset 0).

The definition of A022110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022110.P154848386883198209

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022110

/-- `a(n-1)+a(n-2)` -/
def P154848386883198209.Spec : Prop :=
  ∀ n, (P154848386883198209.a n : ℤ) = A022110 n

theorem P154848386883198209.correct : P154848386883198209.Spec := by
  intro n
  simp only [A022110]

end A022110

/-! ## A022110.P1494119941192527327

`ogf((1+19x)/(1-x-x^2))`
-/

namespace A022110.P1494119941192527327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 19] [1, -1, -1] n

end

end A022110.P1494119941192527327

namespace A022110

/-- `ogf((1+19x)/(1-x-x^2))` -/
def P1494119941192527327.Spec : Prop :=
  ∀ n, P1494119941192527327.a n = A022110 n

end A022110

/-! ## A022110.P7250759467708173419

`A022109(n)+A000045(n)`
-/

namespace A022110.P7250759467708173419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A000045 n

end

end A022110.P7250759467708173419

namespace A022110

/-- `A022109(n)+A000045(n)` -/
def P7250759467708173419.Spec : Prop :=
  ∀ n, P7250759467708173419.a n = A022110 n

end A022110

/-! ## A022110.P17600303202277414861

`A022350(n)+A000285(n)`
-/

namespace A022110.P17600303202277414861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A000285 n

end

end A022110.P17600303202277414861

namespace A022110

/-- `A022350(n)+A000285(n)` -/
def P17600303202277414861.Spec : Prop :=
  ∀ n, P17600303202277414861.a n = A022110 n

end A022110

/-! ## A022110.P13068416346318083043

`A022100(n)+A022093(n)`
-/

namespace A022110.P13068416346318083043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022093 n

end

end A022110.P13068416346318083043

namespace A022110

/-- `A022100(n)+A022093(n)` -/
def P13068416346318083043.Spec : Prop :=
  ∀ n, P13068416346318083043.a n = A022110 n

end A022110

/-! ## A022110.P17631620732447299811

`A022101(n)+A022092(n)`
-/

namespace A022110.P17631620732447299811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022092 n

end

end A022110.P17631620732447299811

namespace A022110

/-- `A022101(n)+A022092(n)` -/
def P17631620732447299811.Spec : Prop :=
  ∀ n, P17631620732447299811.a n = A022110 n

end A022110

/-! ## A022110.P7091617600869456311

`A022102(n)+A022091(n)`
-/

namespace A022110.P7091617600869456311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022091 n

end

end A022110.P7091617600869456311

namespace A022110

/-- `A022102(n)+A022091(n)` -/
def P7091617600869456311.Spec : Prop :=
  ∀ n, P7091617600869456311.a n = A022110 n

end A022110

/-! ## A022110.P17774047758659646747

`A022103(n)+A022090(n)`
-/

namespace A022110.P17774047758659646747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022090 n

end

end A022110.P17774047758659646747

namespace A022110

/-- `A022103(n)+A022090(n)` -/
def P17774047758659646747.Spec : Prop :=
  ∀ n, P17774047758659646747.a n = A022110 n

end A022110

/-! ## A022110.P13908487783080245922

`A022104(n)+A022089(n)`
-/

namespace A022110.P13908487783080245922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022089 n

end

end A022110.P13908487783080245922

namespace A022110

/-- `A022104(n)+A022089(n)` -/
def P13908487783080245922.Spec : Prop :=
  ∀ n, P13908487783080245922.a n = A022110 n

end A022110

/-! ## A022110.P16983100024058579829

`A022105(n)+A022088(n)`
-/

namespace A022110.P16983100024058579829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022088 n

end

end A022110.P16983100024058579829

namespace A022110

/-- `A022105(n)+A022088(n)` -/
def P16983100024058579829.Spec : Prop :=
  ∀ n, P16983100024058579829.a n = A022110 n

end A022110

/-! ## A022110.P5207388242823390287

`A022106(n)+A022087(n)`
-/

namespace A022110.P5207388242823390287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022087 n

end

end A022110.P5207388242823390287

namespace A022110

/-- `A022106(n)+A022087(n)` -/
def P5207388242823390287.Spec : Prop :=
  ∀ n, P5207388242823390287.a n = A022110 n

end A022110

/-! ## A022110.P3414793182900520389

`A022107(n)+A022086(n)`
-/

namespace A022110.P3414793182900520389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022086 n

end

end A022110.P3414793182900520389

namespace A022110

/-- `A022107(n)+A022086(n)` -/
def P3414793182900520389.Spec : Prop :=
  ∀ n, P3414793182900520389.a n = A022110 n

end A022110

/-! ## A022110.P2272447047301887188

`A022345(n)+A022099(n)`
-/

namespace A022110.P2272447047301887188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022099 n

end

end A022110.P2272447047301887188

namespace A022110

/-- `A022345(n)+A022099(n)` -/
def P2272447047301887188.Spec : Prop :=
  ∀ n, P2272447047301887188.a n = A022110 n

end A022110

/-! ## A022110.P17496867320958504090

`A022346(n)+A022098(n)`
-/

namespace A022110.P17496867320958504090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022098 n

end

end A022110.P17496867320958504090

namespace A022110

/-- `A022346(n)+A022098(n)` -/
def P17496867320958504090.Spec : Prop :=
  ∀ n, P17496867320958504090.a n = A022110 n

end A022110

/-! ## A022110.P15325149337147911614

`A022347(n)+A022097(n)`
-/

namespace A022110.P15325149337147911614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022097 n

end

end A022110.P15325149337147911614

namespace A022110

/-- `A022347(n)+A022097(n)` -/
def P15325149337147911614.Spec : Prop :=
  ∀ n, P15325149337147911614.a n = A022110 n

end A022110

/-! ## A022110.P15373662187804718053

`A022348(n)+A022096(n)`
-/

namespace A022110.P15373662187804718053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022096 n

end

end A022110.P15373662187804718053

namespace A022110

/-- `A022348(n)+A022096(n)` -/
def P15373662187804718053.Spec : Prop :=
  ∀ n, P15373662187804718053.a n = A022110 n

end A022110

/-! ## A022110.P8304809375976631059

`A022349(n)+A022095(n)`
-/

namespace A022110.P8304809375976631059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022095 n

end

end A022110.P8304809375976631059

namespace A022110

/-- `A022349(n)+A022095(n)` -/
def P8304809375976631059.Spec : Prop :=
  ∀ n, P8304809375976631059.a n = A022110 n

end A022110

/-! ## A022110.P2519781065338677798

`A152163(n)+A022355(n)`
-/

namespace A022110.P2519781065338677798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022355 n

end

end A022110.P2519781065338677798

namespace A022110

/-- `A152163(n)+A022355(n)` -/
def P2519781065338677798.Spec : Prop :=
  ∀ n, P2519781065338677798.a n = A022110 n

end A022110

/-! ## A022110.P6000390129569212956

`A212804(n)+A022354(n)`
-/

namespace A022110.P6000390129569212956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022354 n

end

end A022110.P6000390129569212956

namespace A022110

/-- `A212804(n)+A022354(n)` -/
def P6000390129569212956.Spec : Prop :=
  ∀ n, P6000390129569212956.a n = A022110 n

end A022110

/-! ## A022110.P6524694316413329431

`A022391(n)-A000045(n)`
-/

namespace A022110.P6524694316413329431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n - A000045 n

end

end A022110.P6524694316413329431

namespace A022110

/-- `A022391(n)-A000045(n)` -/
def P6524694316413329431.Spec : Prop :=
  ∀ n, P6524694316413329431.a n = A022110 n

end A022110

/-!
# A022111: Expansion of 1/((1-x)*(1-5x)*(1-6x)*(1-8x)).

The programs for A022111, the canonical program `A022111.P160649705718932570` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022111 has offset 0).

The definition of A022111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022111.P160649705718932570

`256*8^n/21-108*6^n/5+125*5^n/12-1/140`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022111

/-- `256*8^n/21-108*6^n/5+125*5^n/12-1/140` -/
def P160649705718932570.Spec : Prop :=
  ∀ n, P160649705718932570.a n = (A022111 n : ℚ)

end A022111

/-! ## A022111.P10640416577561117621

`∑[A019783(n)]`
-/

namespace A022111.P10640416577561117621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022111.P10640416577561117621

namespace A022111

/-- `∑[A019783(n)]` -/
def P10640416577561117621.Spec : Prop :=
  ∀ n, P10640416577561117621.a n = A022111 n

end A022111

/-! ## A022111.P3444150852417471776

`∑[(A019928(n)+A019757(n))/2]`
-/

namespace A022111.P3444150852417471776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019928 n + A019757 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022111.P3444150852417471776

namespace A022111

/-- `∑[(A019928(n)+A019757(n))/2]` -/
def P3444150852417471776.Spec : Prop :=
  ∀ n, P3444150852417471776.a n = (A022111 n : ℚ)

end A022111

/-!
# A022112: Fibonacci sequence beginning 2, 6.

The programs for A022112, the canonical program `A022112.P1023022218861032666` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022112 has offset 0).

The definition of A022112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022112.P1023022218861032666

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022112

/-- `a(n-1)+a(n-2)` -/
def P1023022218861032666.Spec : Prop :=
  ∀ n, (P1023022218861032666.a n : ℤ) = A022112 n

theorem P1023022218861032666.correct : P1023022218861032666.Spec := by
  intro n
  simp only [A022112]

end A022112

/-! ## A022112.P8148765855576763268

`2*A000204(n+1)`
-/

namespace A022112.P8148765855576763268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000204 (n + 1)

end

end A022112.P8148765855576763268

namespace A022112

/-- `2*A000204(n+1)` -/
def P8148765855576763268.Spec : Prop :=
  ∀ n, P8148765855576763268.a n = A022112 n

end A022112

/-! ## A022112.P730393737687115935

`4*A000045(n+2)-2*A000045(n+1)`
-/

namespace A022112.P730393737687115935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) - 2 * A000045 (n + 1)

end

end A022112.P730393737687115935

namespace A022112

/-- `4*A000045(n+2)-2*A000045(n+1)` -/
def P730393737687115935.Spec : Prop :=
  ∀ n, P730393737687115935.a n = A022112 n

end A022112

/-! ## A022112.P2657035233149221142

`ogf((2+4x)/(1-x-x^2))`
-/

namespace A022112.P2657035233149221142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -1, -1] n

end

end A022112.P2657035233149221142

namespace A022112

/-- `ogf((2+4x)/(1-x-x^2))` -/
def P2657035233149221142.Spec : Prop :=
  ∀ n, P2657035233149221142.a n = A022112 n

end A022112

/-! ## A022112.P9449266487078538453

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A022112.P9449266487078538453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022112.P9449266487078538453

namespace A022112

/-- `a(n-1)-floor(-a(n-2))` -/
def P9449266487078538453.Spec : Prop :=
  ∀ n, P9449266487078538453.a n = A022112 n

end A022112

/-! ## A022112.P1232744410366207902

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A022112.P1232744410366207902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022112.P1232744410366207902

namespace A022112

/-- `a(n-1)-ceil(-a(n-2))` -/
def P1232744410366207902.Spec : Prop :=
  ∀ n, P1232744410366207902.a n = A022112 n

end A022112

/-! ## A022112.P10492069426405867945

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A022112.P10492069426405867945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022112.P10492069426405867945

namespace A022112

/-- `a(n-1)-round(-a(n-2))` -/
def P10492069426405867945.Spec : Prop :=
  ∀ n, P10492069426405867945.a n = A022112 n

end A022112

/-! ## A022112.P6041795305161806298

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=2, a(1)=6, a(2)=8`
-/

namespace A022112.P6041795305161806298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022112.P6041795305161806298

namespace A022112

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P6041795305161806298.Spec : Prop :=
  ∀ n, P6041795305161806298.a n = A022112 n

end A022112

/-! ## A022112.P2795621431803527209

`A022319(n)+1`
-/

namespace A022112.P2795621431803527209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + 1

end

end A022112.P2795621431803527209

namespace A022112

/-- `A022319(n)+1` -/
def P2795621431803527209.Spec : Prop :=
  ∀ n, P2795621431803527209.a n = A022112 n

end A022112

/-! ## A022112.P15028823456290507643

`A168674(n)+2`
-/

namespace A022112.P15028823456290507643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + 2

end

end A022112.P15028823456290507643

namespace A022112

/-- `A168674(n)+2` -/
def P15028823456290507643.Spec : Prop :=
  ∀ n, P15028823456290507643.a n = A022112 n

end A022112

/-! ## A022112.P17768653878883150337

`abs(2*A075193(n))`
-/

namespace A022112.P17768653878883150337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A075193 n|

end

end A022112.P17768653878883150337

namespace A022112

/-- `abs(2*A075193(n))` -/
def P17768653878883150337.Spec : Prop :=
  ∀ n, P17768653878883150337.a n = A022112 n

end A022112

/-! ## A022112.P15936243007011949261

`A380821(n+1)-1`
-/

namespace A022112.P15936243007011949261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 (n + 1) - 1

end

end A022112.P15936243007011949261

namespace A022112

/-- `A380821(n+1)-1` -/
def P15936243007011949261.Spec : Prop :=
  ∀ n, P15936243007011949261.a n = A022112 n

end A022112

/-! ## A022112.P3517431081075760407

`2*A000032(n+1)`
-/

namespace A022112.P3517431081075760407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (n + 1)

end

end A022112.P3517431081075760407

namespace A022112

/-- `2*A000032(n+1)` -/
def P3517431081075760407.Spec : Prop :=
  ∀ n, P3517431081075760407.a n = A022112 n

end A022112

/-! ## A022112.P2707372573861597520

`2*(A001610(n)+1)`
-/

namespace A022112.P2707372573861597520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001610 n + 1)

end

end A022112.P2707372573861597520

namespace A022112

/-- `2*(A001610(n)+1)` -/
def P2707372573861597520.Spec : Prop :=
  ∀ n, P2707372573861597520.a n = A022112 n

end A022112

/-! ## A022112.P10587248810063788859

`2*A329723(n+3)`
-/

namespace A022112.P10587248810063788859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329723 (n + 3)

end

end A022112.P10587248810063788859

namespace A022112

/-- `2*A329723(n+3)` -/
def P10587248810063788859.Spec : Prop :=
  ∀ n, P10587248810063788859.a n = A022112 n

end A022112

/-! ## A022112.P6113669622399573850

`2*A090244(2*n)`
-/

namespace A022112.P6113669622399573850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090244 (2 * n)

end

end A022112.P6113669622399573850

namespace A022112

/-- `2*A090244(2*n)` -/
def P6113669622399573850.Spec : Prop :=
  ∀ n, P6113669622399573850.a n = A022112 n

end A022112

/-! ## A022112.P8079675239729596788

`∑[abs(2*A061084(n))]`
-/

namespace A022112.P8079675239729596788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A061084 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022112.P8079675239729596788

namespace A022112

/-- `∑[abs(2*A061084(n))]` -/
def P8079675239729596788.Spec : Prop :=
  ∀ n, P8079675239729596788.a n = A022112 n

end A022112

/-! ## A022112.P16182479308876682777

`2*A082587(Δ[n²])`
-/

namespace A022112.P16182479308876682777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022112.P16182479308876682777

namespace A022112

/-- `2*A082587(Δ[n²])` -/
def P16182479308876682777.Spec : Prop :=
  ∀ n, P16182479308876682777.a n = A022112 n

end A022112

/-! ## A022112.P16090532793380755579

`∑[abs(Δ[2*A000032(n)])]`
-/

namespace A022112.P16090532793380755579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022112.P16090532793380755579

namespace A022112

/-- `∑[abs(Δ[2*A000032(n)])]` -/
def P16090532793380755579.Spec : Prop :=
  ∀ n, P16090532793380755579.a n = A022112 n

end A022112

/-! ## A022112.P7271881444117441234

`2*(A001612(n+1)-1)`
-/

namespace A022112.P7271881444117441234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001612 (n + 1) - 1)

end

end A022112.P7271881444117441234

namespace A022112

/-- `2*(A001612(n+1)-1)` -/
def P7271881444117441234.Spec : Prop :=
  ∀ n, P7271881444117441234.a n = A022112 n

end A022112

/-!
# A022113: Fibonacci sequence beginning 2, 7.

The programs for A022113, the canonical program `A022113.P17723061418092029972` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022113 has offset 0).

The definition of A022113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022113.P17723061418092029972

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022113

/-- `a(n-1)+a(n-2)` -/
def P17723061418092029972.Spec : Prop :=
  ∀ n, (P17723061418092029972.a n : ℤ) = A022113 n

theorem P17723061418092029972.correct : P17723061418092029972.Spec := by
  intro n
  simp only [A022113]

end A022113

/-! ## A022113.P12080774808956471835

`ogf((2+5x)/(1-x-x^2))`
-/

namespace A022113.P12080774808956471835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5] [1, -1, -1] n

end

end A022113.P12080774808956471835

namespace A022113

/-- `ogf((2+5x)/(1-x-x^2))` -/
def P12080774808956471835.Spec : Prop :=
  ∀ n, P12080774808956471835.a n = A022113 n

end A022113

/-! ## A022113.P8906481121568608468

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A022113.P8906481121568608468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022113.P8906481121568608468

namespace A022113

/-- `a(n-1)-floor(-a(n-2))` -/
def P8906481121568608468.Spec : Prop :=
  ∀ n, P8906481121568608468.a n = A022113 n

end A022113

/-! ## A022113.P14254161313861500253

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A022113.P14254161313861500253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022113.P14254161313861500253

namespace A022113

/-- `a(n-1)-ceil(-a(n-2))` -/
def P14254161313861500253.Spec : Prop :=
  ∀ n, P14254161313861500253.a n = A022113 n

end A022113

/-! ## A022113.P13323888457032062055

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A022113.P13323888457032062055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022113.P13323888457032062055

namespace A022113

/-- `a(n-1)-round(-a(n-2))` -/
def P13323888457032062055.Spec : Prop :=
  ∀ n, P13323888457032062055.a n = A022113 n

end A022113

/-! ## A022113.P6160674158693919567

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=9`
-/

namespace A022113.P6160674158693919567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022113.P6160674158693919567

namespace A022113

/-- `2*a(n-1)-a(n-3)` -/
def P6160674158693919567.Spec : Prop :=
  ∀ n, P6160674158693919567.a n = A022113 n

end A022113

/-! ## A022113.P9258280948304420079

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=2, a(1)=7, a(2)=9`
-/

namespace A022113.P9258280948304420079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 9] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022113.P9258280948304420079

namespace A022113

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P9258280948304420079.Spec : Prop :=
  ∀ n, P9258280948304420079.a n = A022113 n

end A022113

/-! ## A022113.P1357509035041453597

`A022320(n)+1`
-/

namespace A022113.P1357509035041453597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + 1

end

end A022113.P1357509035041453597

namespace A022113

/-- `A022320(n)+1` -/
def P1357509035041453597.Spec : Prop :=
  ∀ n, P1357509035041453597.a n = A022113 n

end A022113

/-! ## A022113.P17240211634030489888

`A095795(2*n)`
-/

namespace A022113.P17240211634030489888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095795 (2 * n)

end

end A022113.P17240211634030489888

namespace A022113

/-- `A095795(2*n)` -/
def P17240211634030489888.Spec : Prop :=
  ∀ n, P17240211634030489888.a n = A022113 n

end A022113

/-! ## A022113.P17520140233437465363

`record[A095795(abs(3-n))]`
-/

namespace A022113.P17520140233437465363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095795 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022113.P17520140233437465363

namespace A022113

/-- `record[A095795(abs(3-n))]` -/
def P17520140233437465363.Spec : Prop :=
  ∀ n, P17520140233437465363.a n = A022113 n

end A022113

/-! ## A022113.P11489321128890236277

`A022089(n)+A000032(n)`
-/

namespace A022113.P11489321128890236277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A000032 n

end

end A022113.P11489321128890236277

namespace A022113

/-- `A022089(n)+A000032(n)` -/
def P11489321128890236277.Spec : Prop :=
  ∀ n, P11489321128890236277.a n = A022113 n

end A022113

/-! ## A022113.P7499750039000379085

`A022112(n)+A000045(n)`
-/

namespace A022113.P7499750039000379085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A000045 n

end

end A022113.P7499750039000379085

namespace A022113

/-- `A022112(n)+A000045(n)` -/
def P7499750039000379085.Spec : Prop :=
  ∀ n, P7499750039000379085.a n = A022113 n

end A022113

/-! ## A022113.P7449228729066729538

`A022318(n)+A001588(n)`
-/

namespace A022113.P7449228729066729538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A001588 n

end

end A022113.P7449228729066729538

namespace A022113

/-- `A022318(n)+A001588(n)` -/
def P7449228729066729538.Spec : Prop :=
  ∀ n, P7449228729066729538.a n = A022113 n

end A022113

/-! ## A022113.P3034812303718046605

`A022319(n)+A001611(n)`
-/

namespace A022113.P3034812303718046605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A001611 n

end

end A022113.P3034812303718046605

namespace A022113

/-- `A022319(n)+A001611(n)` -/
def P3034812303718046605.Spec : Prop :=
  ∀ n, P3034812303718046605.a n = A022113 n

end A022113

/-! ## A022113.P6209309564079107557

`A022087(n)+A020695(n)`
-/

namespace A022113.P6209309564079107557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A020695 n

end

end A022113.P6209309564079107557

namespace A022113

/-- `A022087(n)+A020695(n)` -/
def P6209309564079107557.Spec : Prop :=
  ∀ n, P6209309564079107557.a n = A022113 n

end A022113

/-! ## A022113.P9589294189651057961

`A118658(n)+A022090(n)`
-/

namespace A022113.P9589294189651057961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022090 n

end

end A022113.P9589294189651057961

namespace A022113

/-- `A118658(n)+A022090(n)` -/
def P9589294189651057961.Spec : Prop :=
  ∀ n, P9589294189651057961.a n = A022113 n

end A022113

/-! ## A022113.P15703113572559067490

`A152163(n)+A022098(n)`
-/

namespace A022113.P15703113572559067490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022098 n

end

end A022113.P15703113572559067490

namespace A022113

/-- `A152163(n)+A022098(n)` -/
def P15703113572559067490.Spec : Prop :=
  ∀ n, P15703113572559067490.a n = A022113 n

end A022113

/-! ## A022113.P14351100005275968269

`A212804(n)+A022097(n)`
-/

namespace A022113.P14351100005275968269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022097 n

end

end A022113.P14351100005275968269

namespace A022113

/-- `A212804(n)+A022097(n)` -/
def P14351100005275968269.Spec : Prop :=
  ∀ n, P14351100005275968269.a n = A022113 n

end A022113

/-! ## A022113.P9447602725510467904

`A168674(n)+A157725(n)`
-/

namespace A022113.P9447602725510467904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A157725 n

end

end A022113.P9447602725510467904

namespace A022113

/-- `A168674(n)+A157725(n)` -/
def P9447602725510467904.Spec : Prop :=
  ∀ n, P9447602725510467904.a n = A022113 n

end A022113

/-! ## A022113.P11380471598074214096

`A377628(n)+A187891(n)`
-/

namespace A022113.P11380471598074214096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A187891 n

end

end A022113.P11380471598074214096

namespace A022113

/-- `A377628(n)+A187891(n)` -/
def P11380471598074214096.Spec : Prop :=
  ∀ n, P11380471598074214096.a n = A022113 n

end A022113

/-!
# A022114: Fibonacci sequence beginning 2 9.

The programs for A022114, the canonical program `A022114.P13672407522580782032` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022114 has offset 0).

The definition of A022114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022114.P15720088611097492502

`ogf((2+7x)/(1-x-x^2))`
-/

namespace A022114.P15720088611097492502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7] [1, -1, -1] n

end

end A022114.P15720088611097492502

namespace A022114

/-- `ogf((2+7x)/(1-x-x^2))` -/
def P15720088611097492502.Spec : Prop :=
  ∀ n, P15720088611097492502.a n = A022114 n

end A022114

/-! ## A022114.P13672407522580782032

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022114

/-- `a(n-1)+a(n-2)` -/
def P13672407522580782032.Spec : Prop :=
  ∀ n, (P13672407522580782032.a n : ℤ) = A022114 n

theorem P13672407522580782032.correct : P13672407522580782032.Spec := by
  intro n
  simp only [A022114]

end A022114

/-! ## A022114.P4309639235921118288

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A022114.P4309639235921118288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022114.P4309639235921118288

namespace A022114

/-- `a(n-1)-floor(-a(n-2))` -/
def P4309639235921118288.Spec : Prop :=
  ∀ n, P4309639235921118288.a n = A022114 n

end A022114

/-! ## A022114.P7766724053114660709

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A022114.P7766724053114660709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022114.P7766724053114660709

namespace A022114

/-- `a(n-1)-ceil(-a(n-2))` -/
def P7766724053114660709.Spec : Prop :=
  ∀ n, P7766724053114660709.a n = A022114 n

end A022114

/-! ## A022114.P9378950432886202424

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A022114.P9378950432886202424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022114.P9378950432886202424

namespace A022114

/-- `a(n-1)-round(-a(n-2))` -/
def P9378950432886202424.Spec : Prop :=
  ∀ n, P9378950432886202424.a n = A022114 n

end A022114

/-! ## A022114.P12453999977917188519

`A022322(n)+1`
-/

namespace A022114.P12453999977917188519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + 1

end

end A022114.P12453999977917188519

namespace A022114

/-- `A022322(n)+1` -/
def P12453999977917188519.Spec : Prop :=
  ∀ n, P12453999977917188519.a n = A022114 n

end A022114

/-! ## A022114.P8658718973727124470

`A022091(n)+A000032(n)`
-/

namespace A022114.P8658718973727124470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A000032 n

end

end A022114.P8658718973727124470

namespace A022114

/-- `A022091(n)+A000032(n)` -/
def P8658718973727124470.Spec : Prop :=
  ∀ n, P8658718973727124470.a n = A022114 n

end A022114

/-! ## A022114.P5880690602227502329

`A022095(n)+A000285(n)`
-/

namespace A022114.P5880690602227502329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A000285 n

end

end A022114.P5880690602227502329

namespace A022114

/-- `A022095(n)+A000285(n)` -/
def P5880690602227502329.Spec : Prop :=
  ∀ n, P5880690602227502329.a n = A022114 n

end A022114

/-! ## A022114.P3825781186432753067

`A022087(n)+A001060(n)`
-/

namespace A022114.P3825781186432753067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A001060 n

end

end A022114.P3825781186432753067

namespace A022114

/-- `A022087(n)+A001060(n)` -/
def P3825781186432753067.Spec : Prop :=
  ∀ n, P3825781186432753067.a n = A022114 n

end A022114

/-! ## A022114.P7905893374796768128

`A022320(n)+A001588(n)`
-/

namespace A022114.P7905893374796768128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A001588 n

end

end A022114.P7905893374796768128

namespace A022114

/-- `A022320(n)+A001588(n)` -/
def P7905893374796768128.Spec : Prop :=
  ∀ n, P7905893374796768128.a n = A022114 n

end A022114

/-! ## A022114.P15861850923173081334

`A022321(n)+A001611(n)`
-/

namespace A022114.P15861850923173081334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A001611 n

end

end A022114.P15861850923173081334

namespace A022114

/-- `A022321(n)+A001611(n)` -/
def P15861850923173081334.Spec : Prop :=
  ∀ n, P15861850923173081334.a n = A022114 n

end A022114

/-! ## A022114.P18132314578072541299

`A022089(n)+A020695(n)`
-/

namespace A022114.P18132314578072541299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A020695 n

end

end A022114.P18132314578072541299

namespace A022114

/-- `A022089(n)+A020695(n)` -/
def P18132314578072541299.Spec : Prop :=
  ∀ n, P18132314578072541299.a n = A022114 n

end A022114

/-! ## A022114.P2924381236825780222

`A022112(n)+A022086(n)`
-/

namespace A022114.P2924381236825780222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022086 n

end

end A022114.P2924381236825780222

namespace A022114

/-- `A022112(n)+A022086(n)` -/
def P2924381236825780222.Spec : Prop :=
  ∀ n, P2924381236825780222.a n = A022114 n

end A022114

/-! ## A022114.P16579506884834159857

`A118658(n)+A022092(n)`
-/

namespace A022114.P16579506884834159857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022092 n

end

end A022114.P16579506884834159857

namespace A022114

/-- `A118658(n)+A022092(n)` -/
def P16579506884834159857.Spec : Prop :=
  ∀ n, P16579506884834159857.a n = A022114 n

end A022114

/-! ## A022114.P9199759044100927113

`A152163(n)+A022100(n)`
-/

namespace A022114.P9199759044100927113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022100 n

end

end A022114.P9199759044100927113

namespace A022114

/-- `A152163(n)+A022100(n)` -/
def P9199759044100927113.Spec : Prop :=
  ∀ n, P9199759044100927113.a n = A022114 n

end A022114

/-! ## A022114.P16997314957646620120

`A187893(n)+A022319(n)`
-/

namespace A022114.P16997314957646620120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022319 n

end

end A022114.P16997314957646620120

namespace A022114

/-- `A187893(n)+A022319(n)` -/
def P16997314957646620120.Spec : Prop :=
  ∀ n, P16997314957646620120.a n = A022114 n

end A022114

/-! ## A022114.P12381633127075378406

`A212804(n)+A022099(n)`
-/

namespace A022114.P12381633127075378406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022099 n

end

end A022114.P12381633127075378406

namespace A022114

/-- `A212804(n)+A022099(n)` -/
def P12381633127075378406.Spec : Prop :=
  ∀ n, P12381633127075378406.a n = A022114 n

end A022114

/-! ## A022114.P6308107471640307718

`A294157(n)+A000045(n)`
-/

namespace A022114.P6308107471640307718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A000045 n

end

end A022114.P6308107471640307718

namespace A022114

/-- `A294157(n)+A000045(n)` -/
def P6308107471640307718.Spec : Prop :=
  ∀ n, P6308107471640307718.a n = A022114 n

end A022114

/-! ## A022114.P4367307757704278453

`A022367(n)-A000045(n)`
-/

namespace A022114.P4367307757704278453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A000045 n

end

end A022114.P4367307757704278453

namespace A022114

/-- `A022367(n)-A000045(n)` -/
def P4367307757704278453.Spec : Prop :=
  ∀ n, P4367307757704278453.a n = A022114 n

end A022114

/-! ## A022114.P8855287197873838118

`A022379(n)-A212804(n)`
-/

namespace A022114.P8855287197873838118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n - A212804 n

end

end A022114.P8855287197873838118

namespace A022114

/-- `A022379(n)-A212804(n)` -/
def P8855287197873838118.Spec : Prop :=
  ∀ n, P8855287197873838118.a n = A022114 n

end A022114

/-!
# A022115: Fibonacci sequence beginning 2, 11.

The programs for A022115, the canonical program `A022115.P15621070677135967936` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022115 has offset 0).

The definition of A022115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022115.P15621070677135967936

`8*A000045(n)+A000045(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022115

/-- `8*A000045(n)+A000045(n+3)` -/
def P15621070677135967936.Spec : Prop :=
  ∀ n, P15621070677135967936.a n = A022115 n

theorem P15621070677135967936.correct : P15621070677135967936.Spec := by
  intro n
  simp only [A022115]

end A022115

/-! ## A022115.P6595467430532770512

`ogf((2+9x)/(1-x-x^2))`
-/

namespace A022115.P6595467430532770512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9] [1, -1, -1] n

end

end A022115.P6595467430532770512

namespace A022115

/-- `ogf((2+9x)/(1-x-x^2))` -/
def P6595467430532770512.Spec : Prop :=
  ∀ n, P6595467430532770512.a n = A022115 n

end A022115

/-! ## A022115.P15431022038511275521

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=11`
-/

namespace A022115.P15431022038511275521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022115.P15431022038511275521

namespace A022115

/-- `a(n-1)+a(n-2)` -/
def P15431022038511275521.Spec : Prop :=
  ∀ n, (P15431022038511275521.a n : ℤ) = A022115 n

end A022115

/-! ## A022115.P13790946614857835147

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=7, a(1)=9`
-/

namespace A022115.P13790946614857835147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 9] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022115.P13790946614857835147

namespace A022115

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P13790946614857835147.Spec : Prop :=
  ∀ n, P13790946614857835147.a n = A022115 n

end A022115

/-! ## A022115.P167057165775225519

`A022324(n)+1`
-/

namespace A022115.P167057165775225519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + 1

end

end A022115.P167057165775225519

namespace A022115

/-- `A022324(n)+1` -/
def P167057165775225519.Spec : Prop :=
  ∀ n, P167057165775225519.a n = A022115 n

end A022115

/-! ## A022115.P5396328441724588149

`A022093(n)+A000032(n)`
-/

namespace A022115.P5396328441724588149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A000032 n

end

end A022115.P5396328441724588149

namespace A022115

/-- `A022093(n)+A000032(n)` -/
def P5396328441724588149.Spec : Prop :=
  ∀ n, P5396328441724588149.a n = A022115 n

end A022115

/-! ## A022115.P4854396895837908650

`A022097(n)+A000285(n)`
-/

namespace A022115.P4854396895837908650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A000285 n

end

end A022115.P4854396895837908650

namespace A022115

/-- `A022097(n)+A000285(n)` -/
def P4854396895837908650.Spec : Prop :=
  ∀ n, P4854396895837908650.a n = A022115 n

end A022115

/-! ## A022115.P18397448392092439801

`A022367(n)+A000045(n)`
-/

namespace A022115.P18397448392092439801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A000045 n

end

end A022115.P18397448392092439801

namespace A022115

/-- `A022367(n)+A000045(n)` -/
def P18397448392092439801.Spec : Prop :=
  ∀ n, P18397448392092439801.a n = A022115 n

end A022115

/-! ## A022115.P1223536908074106401

`A022089(n)+A001060(n)`
-/

namespace A022115.P1223536908074106401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A001060 n

end

end A022115.P1223536908074106401

namespace A022115

/-- `A022089(n)+A001060(n)` -/
def P1223536908074106401.Spec : Prop :=
  ∀ n, P1223536908074106401.a n = A022115 n

end A022115

/-! ## A022115.P16819999347191661029

`A022322(n)+A001588(n)`
-/

namespace A022115.P16819999347191661029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A001588 n

end

end A022115.P16819999347191661029

namespace A022115

/-- `A022322(n)+A001588(n)` -/
def P16819999347191661029.Spec : Prop :=
  ∀ n, P16819999347191661029.a n = A022115 n

end A022115

/-! ## A022115.P7838336936089940890

`A022323(n)+A001611(n)`
-/

namespace A022115.P7838336936089940890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A001611 n

end

end A022115.P7838336936089940890

namespace A022115

/-- `A022323(n)+A001611(n)` -/
def P7838336936089940890.Spec : Prop :=
  ∀ n, P7838336936089940890.a n = A022115 n

end A022115

/-! ## A022115.P6589511579246623277

`A022091(n)+A020695(n)`
-/

namespace A022115.P6589511579246623277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A020695 n

end

end A022115.P6589511579246623277

namespace A022115

/-- `A022091(n)+A020695(n)` -/
def P6589511579246623277.Spec : Prop :=
  ∀ n, P6589511579246623277.a n = A022115 n

end A022115

/-! ## A022115.P7481899540633367071

`A022096(n)+A022095(n)`
-/

namespace A022115.P7481899540633367071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022095 n

end

end A022115.P7481899540633367071

namespace A022115

/-- `A022096(n)+A022095(n)` -/
def P7481899540633367071.Spec : Prop :=
  ∀ n, P7481899540633367071.a n = A022115 n

end A022115

/-! ## A022115.P10697925186847144540

`A022112(n)+A022088(n)`
-/

namespace A022115.P10697925186847144540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022088 n

end

end A022115.P10697925186847144540

namespace A022115

/-- `A022112(n)+A022088(n)` -/
def P10697925186847144540.Spec : Prop :=
  ∀ n, P10697925186847144540.a n = A022115 n

end A022115

/-! ## A022115.P18385269872012916490

`A022113(n)+A022087(n)`
-/

namespace A022115.P18385269872012916490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022087 n

end

end A022115.P18385269872012916490

namespace A022115

/-- `A022113(n)+A022087(n)` -/
def P18385269872012916490.Spec : Prop :=
  ∀ n, P18385269872012916490.a n = A022115 n

end A022115

/-! ## A022115.P8327857703576023429

`A118658(n)+A022345(n)`
-/

namespace A022115.P8327857703576023429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022345 n

end

end A022115.P8327857703576023429

namespace A022115

/-- `A118658(n)+A022345(n)` -/
def P8327857703576023429.Spec : Prop :=
  ∀ n, P8327857703576023429.a n = A022115 n

end A022115

/-! ## A022115.P1042225548271183308

`A152163(n)+A022102(n)`
-/

namespace A022115.P1042225548271183308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022102 n

end

end A022115.P1042225548271183308

namespace A022115

/-- `A152163(n)+A022102(n)` -/
def P1042225548271183308.Spec : Prop :=
  ∀ n, P1042225548271183308.a n = A022115 n

end A022115

/-! ## A022115.P7885997075372746703

`A153382(n)+A020878(n)`
-/

namespace A022115.P7885997075372746703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 n + A020878 n

end

end A022115.P7885997075372746703

namespace A022115

/-- `A153382(n)+A020878(n)` -/
def P7885997075372746703.Spec : Prop :=
  ∀ n, P7885997075372746703.a n = A022115 n

end A022115

/-! ## A022115.P14652876103363874934

`A187893(n)+A022321(n)`
-/

namespace A022115.P14652876103363874934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022321 n

end

end A022115.P14652876103363874934

namespace A022115

/-- `A187893(n)+A022321(n)` -/
def P14652876103363874934.Spec : Prop :=
  ∀ n, P14652876103363874934.a n = A022115 n

end A022115

/-! ## A022115.P2916713121927543909

`A212804(n)+A022101(n)`
-/

namespace A022115.P2916713121927543909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022101 n

end

end A022115.P2916713121927543909

namespace A022115

/-- `A212804(n)+A022101(n)` -/
def P2916713121927543909.Spec : Prop :=
  ∀ n, P2916713121927543909.a n = A022115 n

end A022115

/-!
# A022116: Fibonacci sequence beginning 2, 13.

The programs for A022116, the canonical program `A022116.P15979046254867098418` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022116 has offset 0).

The definition of A022116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022116.P15979046254867098418

`2*A000045(n+2)+9*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022116

/-- `2*A000045(n+2)+9*A000045(n)` -/
def P15979046254867098418.Spec : Prop :=
  ∀ n, P15979046254867098418.a n = A022116 n

theorem P15979046254867098418.correct : P15979046254867098418.Spec := by
  intro n
  simp only [A022116]

end A022116

/-! ## A022116.P451653194140962228

`ogf((2+11x)/(1-x-x^2))`
-/

namespace A022116.P451653194140962228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 11] [1, -1, -1] n

end

end A022116.P451653194140962228

namespace A022116

/-- `ogf((2+11x)/(1-x-x^2))` -/
def P451653194140962228.Spec : Prop :=
  ∀ n, P451653194140962228.a n = A022116 n

end A022116

/-! ## A022116.P12242767971539423328

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=13`
-/

namespace A022116.P12242767971539423328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022116.P12242767971539423328

namespace A022116

/-- `a(n-1)+a(n-2)` -/
def P12242767971539423328.Spec : Prop :=
  ∀ n, (P12242767971539423328.a n : ℤ) = A022116 n

end A022116

/-! ## A022116.P5345630309099296521

`A022326(n)+1`
-/

namespace A022116.P5345630309099296521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n + 1

end

end A022116.P5345630309099296521

namespace A022116

/-- `A022326(n)+1` -/
def P5345630309099296521.Spec : Prop :=
  ∀ n, P5345630309099296521.a n = A022116 n

end A022116

/-! ## A022116.P3243042237801245261

`A022099(n)+A000285(n)`
-/

namespace A022116.P3243042237801245261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A000285 n

end

end A022116.P3243042237801245261

namespace A022116

/-- `A022099(n)+A000285(n)` -/
def P3243042237801245261.Spec : Prop :=
  ∀ n, P3243042237801245261.a n = A022116 n

end A022116

/-! ## A022116.P13277568029269318087

`A022346(n)+A000032(n)`
-/

namespace A022116.P13277568029269318087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A000032 n

end

end A022116.P13277568029269318087

namespace A022116

/-- `A022346(n)+A000032(n)` -/
def P13277568029269318087.Spec : Prop :=
  ∀ n, P13277568029269318087.a n = A022116 n

end A022116

/-! ## A022116.P4359378242098161129

`A022368(n)+A000045(n)`
-/

namespace A022116.P4359378242098161129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A000045 n

end

end A022116.P4359378242098161129

namespace A022116

/-- `A022368(n)+A000045(n)` -/
def P4359378242098161129.Spec : Prop :=
  ∀ n, P4359378242098161129.a n = A022116 n

end A022116

/-! ## A022116.P11916596516072003700

`A022091(n)+A001060(n)`
-/

namespace A022116.P11916596516072003700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A001060 n

end

end A022116.P11916596516072003700

namespace A022116

/-- `A022091(n)+A001060(n)` -/
def P11916596516072003700.Spec : Prop :=
  ∀ n, P11916596516072003700.a n = A022116 n

end A022116

/-! ## A022116.P15443745566190145193

`A022324(n)+A001588(n)`
-/

namespace A022116.P15443745566190145193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + A001588 n

end

end A022116.P15443745566190145193

namespace A022116

/-- `A022324(n)+A001588(n)` -/
def P15443745566190145193.Spec : Prop :=
  ∀ n, P15443745566190145193.a n = A022116 n

end A022116

/-! ## A022116.P1089498600181339861

`A022325(n)+A001611(n)`
-/

namespace A022116.P1089498600181339861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A001611 n

end

end A022116.P1089498600181339861

namespace A022116

/-- `A022325(n)+A001611(n)` -/
def P1089498600181339861.Spec : Prop :=
  ∀ n, P1089498600181339861.a n = A022116 n

end A022116

/-! ## A022116.P16985173447076474041

`A022093(n)+A020695(n)`
-/

namespace A022116.P16985173447076474041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A020695 n

end

end A022116.P16985173447076474041

namespace A022116

/-- `A022093(n)+A020695(n)` -/
def P16985173447076474041.Spec : Prop :=
  ∀ n, P16985173447076474041.a n = A022116 n

end A022116

/-! ## A022116.P6176872414852790758

`A022097(n)+A022096(n)`
-/

namespace A022116.P6176872414852790758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022096 n

end

end A022116.P6176872414852790758

namespace A022116

/-- `A022097(n)+A022096(n)` -/
def P6176872414852790758.Spec : Prop :=
  ∀ n, P6176872414852790758.a n = A022116 n

end A022116

/-! ## A022116.P10172034108501183839

`A022098(n)+A022095(n)`
-/

namespace A022116.P10172034108501183839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022095 n

end

end A022116.P10172034108501183839

namespace A022116

/-- `A022098(n)+A022095(n)` -/
def P10172034108501183839.Spec : Prop :=
  ∀ n, P10172034108501183839.a n = A022116 n

end A022116

/-! ## A022116.P7323813756112465567

`A022112(n)+A022090(n)`
-/

namespace A022116.P7323813756112465567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022090 n

end

end A022116.P7323813756112465567

namespace A022116

/-- `A022112(n)+A022090(n)` -/
def P7323813756112465567.Spec : Prop :=
  ∀ n, P7323813756112465567.a n = A022116 n

end A022116

/-! ## A022116.P14756254886821872787

`A022113(n)+A022089(n)`
-/

namespace A022116.P14756254886821872787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022089 n

end

end A022116.P14756254886821872787

namespace A022116

/-- `A022113(n)+A022089(n)` -/
def P14756254886821872787.Spec : Prop :=
  ∀ n, P14756254886821872787.a n = A022116 n

end A022116

/-! ## A022116.P8386293140526378139

`A022114(n)+A022087(n)`
-/

namespace A022116.P8386293140526378139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022087 n

end

end A022116.P8386293140526378139

namespace A022116

/-- `A022114(n)+A022087(n)` -/
def P8386293140526378139.Spec : Prop :=
  ∀ n, P8386293140526378139.a n = A022116 n

end A022116

/-! ## A022116.P15934935138102411210

`A022367(n)+A022086(n)`
-/

namespace A022116.P15934935138102411210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022086 n

end

end A022116.P15934935138102411210

namespace A022116

/-- `A022367(n)+A022086(n)` -/
def P15934935138102411210.Spec : Prop :=
  ∀ n, P15934935138102411210.a n = A022116 n

end A022116

/-! ## A022116.P800526166576412946

`A118658(n)+A022347(n)`
-/

namespace A022116.P800526166576412946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022347 n

end

end A022116.P800526166576412946

namespace A022116

/-- `A118658(n)+A022347(n)` -/
def P800526166576412946.Spec : Prop :=
  ∀ n, P800526166576412946.a n = A022116 n

end A022116

/-! ## A022116.P12459315276206804213

`A152163(n)+A022104(n)`
-/

namespace A022116.P12459315276206804213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022104 n

end

end A022116.P12459315276206804213

namespace A022116

/-- `A152163(n)+A022104(n)` -/
def P12459315276206804213.Spec : Prop :=
  ∀ n, P12459315276206804213.a n = A022116 n

end A022116

/-! ## A022116.P11051778631198878194

`A187893(n)+A022323(n)`
-/

namespace A022116.P11051778631198878194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022323 n

end

end A022116.P11051778631198878194

namespace A022116

/-- `A187893(n)+A022323(n)` -/
def P11051778631198878194.Spec : Prop :=
  ∀ n, P11051778631198878194.a n = A022116 n

end A022116

/-!
# A022117: Fibonacci sequence beginning 2, 15.

The programs for A022117, the canonical program `A022117.P18148123015461175005` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022117 has offset 0).

The definition of A022117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022117.P18148123015461175005

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022117

/-- `a(n-1)+a(n-2)` -/
def P18148123015461175005.Spec : Prop :=
  ∀ n, (P18148123015461175005.a n : ℤ) = A022117 n

theorem P18148123015461175005.correct : P18148123015461175005.Spec := by
  intro n
  simp only [A022117]

end A022117

/-! ## A022117.P10532755141780759966

`ogf((2+13x)/(1-x-x^2))`
-/

namespace A022117.P10532755141780759966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 13] [1, -1, -1] n

end

end A022117.P10532755141780759966

namespace A022117

/-- `ogf((2+13x)/(1-x-x^2))` -/
def P10532755141780759966.Spec : Prop :=
  ∀ n, P10532755141780759966.a n = A022117 n

end A022117

/-! ## A022117.P18358912793097052330

`A022101(n)+A000285(n)`
-/

namespace A022117.P18358912793097052330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A000285 n

end

end A022117.P18358912793097052330

namespace A022117

/-- `A022101(n)+A000285(n)` -/
def P18358912793097052330.Spec : Prop :=
  ∀ n, P18358912793097052330.a n = A022117 n

end A022117

/-! ## A022117.P9237438513833031941

`A022348(n)+A000032(n)`
-/

namespace A022117.P9237438513833031941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A000032 n

end

end A022117.P9237438513833031941

namespace A022117

/-- `A022348(n)+A000032(n)` -/
def P9237438513833031941.Spec : Prop :=
  ∀ n, P9237438513833031941.a n = A022117 n

end A022117

/-! ## A022117.P17930715708087536291

`A022369(n)+A000045(n)`
-/

namespace A022117.P17930715708087536291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A000045 n

end

end A022117.P17930715708087536291

namespace A022117

/-- `A022369(n)+A000045(n)` -/
def P17930715708087536291.Spec : Prop :=
  ∀ n, P17930715708087536291.a n = A022117 n

end A022117

/-! ## A022117.P12265419309922705495

`A022093(n)+A001060(n)`
-/

namespace A022117.P12265419309922705495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A001060 n

end

end A022117.P12265419309922705495

namespace A022117

/-- `A022093(n)+A001060(n)` -/
def P12265419309922705495.Spec : Prop :=
  ∀ n, P12265419309922705495.a n = A022117 n

end A022117

/-! ## A022117.P2594554801967507069

`A022326(n)+A001588(n)`
-/

namespace A022117.P2594554801967507069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n + A001588 n

end

end A022117.P2594554801967507069

namespace A022117

/-- `A022326(n)+A001588(n)` -/
def P2594554801967507069.Spec : Prop :=
  ∀ n, P2594554801967507069.a n = A022117 n

end A022117

/-! ## A022117.P9273959695107414980

`A022346(n)+A020695(n)`
-/

namespace A022117.P9273959695107414980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A020695 n

end

end A022117.P9273959695107414980

namespace A022117

/-- `A022346(n)+A020695(n)` -/
def P9273959695107414980.Spec : Prop :=
  ∀ n, P9273959695107414980.a n = A022117 n

end A022117

/-! ## A022117.P2140178678235801682

`A022098(n)+A022097(n)`
-/

namespace A022117.P2140178678235801682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022097 n

end

end A022117.P2140178678235801682

namespace A022117

/-- `A022098(n)+A022097(n)` -/
def P2140178678235801682.Spec : Prop :=
  ∀ n, P2140178678235801682.a n = A022117 n

end A022117

/-! ## A022117.P174761777112756888

`A022099(n)+A022096(n)`
-/

namespace A022117.P174761777112756888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022096 n

end

end A022117.P174761777112756888

namespace A022117

/-- `A022099(n)+A022096(n)` -/
def P174761777112756888.Spec : Prop :=
  ∀ n, P174761777112756888.a n = A022117 n

end A022117

/-! ## A022117.P12666342718552897257

`A022100(n)+A022095(n)`
-/

namespace A022117.P12666342718552897257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022095 n

end

end A022117.P12666342718552897257

namespace A022117

/-- `A022100(n)+A022095(n)` -/
def P12666342718552897257.Spec : Prop :=
  ∀ n, P12666342718552897257.a n = A022117 n

end A022117

/-! ## A022117.P15120294922140471251

`A022112(n)+A022092(n)`
-/

namespace A022117.P15120294922140471251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022092 n

end

end A022117.P15120294922140471251

namespace A022117

/-- `A022112(n)+A022092(n)` -/
def P15120294922140471251.Spec : Prop :=
  ∀ n, P15120294922140471251.a n = A022117 n

end A022117

/-! ## A022117.P3457571470011913654

`A022113(n)+A022091(n)`
-/

namespace A022117.P3457571470011913654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022091 n

end

end A022117.P3457571470011913654

namespace A022117

/-- `A022113(n)+A022091(n)` -/
def P3457571470011913654.Spec : Prop :=
  ∀ n, P3457571470011913654.a n = A022117 n

end A022117

/-! ## A022117.P14687116576896474839

`A022114(n)+A022089(n)`
-/

namespace A022117.P14687116576896474839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022089 n

end

end A022117.P14687116576896474839

namespace A022117

/-- `A022114(n)+A022089(n)` -/
def P14687116576896474839.Spec : Prop :=
  ∀ n, P14687116576896474839.a n = A022117 n

end A022117

/-! ## A022117.P7207445042891524600

`A022115(n)+A022087(n)`
-/

namespace A022117.P7207445042891524600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022087 n

end

end A022117.P7207445042891524600

namespace A022117

/-- `A022115(n)+A022087(n)` -/
def P7207445042891524600.Spec : Prop :=
  ∀ n, P7207445042891524600.a n = A022117 n

end A022117

/-! ## A022117.P3408128628349150069

`A022367(n)+A022088(n)`
-/

namespace A022117.P3408128628349150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022088 n

end

end A022117.P3408128628349150069

namespace A022117

/-- `A022367(n)+A022088(n)` -/
def P3408128628349150069.Spec : Prop :=
  ∀ n, P3408128628349150069.a n = A022117 n

end A022117

/-! ## A022117.P3084828954976972651

`A022368(n)+A022086(n)`
-/

namespace A022117.P3084828954976972651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022086 n

end

end A022117.P3084828954976972651

namespace A022117

/-- `A022368(n)+A022086(n)` -/
def P3084828954976972651.Spec : Prop :=
  ∀ n, P3084828954976972651.a n = A022117 n

end A022117

/-! ## A022117.P1047897500457151744

`A118658(n)+A022349(n)`
-/

namespace A022117.P1047897500457151744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022349 n

end

end A022117.P1047897500457151744

namespace A022117

/-- `A118658(n)+A022349(n)` -/
def P1047897500457151744.Spec : Prop :=
  ∀ n, P1047897500457151744.a n = A022117 n

end A022117

/-! ## A022117.P9567176053711083342

`A152163(n)+A022106(n)`
-/

namespace A022117.P9567176053711083342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022106 n

end

end A022117.P9567176053711083342

namespace A022117

/-- `A152163(n)+A022106(n)` -/
def P9567176053711083342.Spec : Prop :=
  ∀ n, P9567176053711083342.a n = A022117 n

end A022117

/-! ## A022117.P6356145407189072591

`A187893(n)+A022325(n)`
-/

namespace A022117.P6356145407189072591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022325 n

end

end A022117.P6356145407189072591

namespace A022117

/-- `A187893(n)+A022325(n)` -/
def P6356145407189072591.Spec : Prop :=
  ∀ n, P6356145407189072591.a n = A022117 n

end A022117

/-!
# A022118: Fibonacci sequence beginning 2, 17.

The programs for A022118, the canonical program `A022118.P9145892876470658440` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022118 has offset 0).

The definition of A022118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022118.P5501286047773670036

`ogf((2+15x)/(1-x-x^2))`
-/

namespace A022118.P5501286047773670036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 15] [1, -1, -1] n

end

end A022118.P5501286047773670036

namespace A022118

/-- `ogf((2+15x)/(1-x-x^2))` -/
def P5501286047773670036.Spec : Prop :=
  ∀ n, P5501286047773670036.a n = A022118 n

end A022118

/-! ## A022118.P9145892876470658440

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022118

/-- `a(n-1)+a(n-2)` -/
def P9145892876470658440.Spec : Prop :=
  ∀ n, (P9145892876470658440.a n : ℤ) = A022118 n

theorem P9145892876470658440.correct : P9145892876470658440.Spec := by
  intro n
  simp only [A022118]

end A022118

/-! ## A022118.P15316692542930986269

`A022103(n)+A000285(n)`
-/

namespace A022118.P15316692542930986269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A000285 n

end

end A022118.P15316692542930986269

namespace A022118

/-- `A022103(n)+A000285(n)` -/
def P15316692542930986269.Spec : Prop :=
  ∀ n, P15316692542930986269.a n = A022118 n

end A022118

/-! ## A022118.P8478040588065186776

`A022350(n)+A000032(n)`
-/

namespace A022118.P8478040588065186776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A000032 n

end

end A022118.P8478040588065186776

namespace A022118

/-- `A022350(n)+A000032(n)` -/
def P8478040588065186776.Spec : Prop :=
  ∀ n, P8478040588065186776.a n = A022118 n

end A022118

/-! ## A022118.P5078063252057598462

`A022370(n)+A000045(n)`
-/

namespace A022118.P5078063252057598462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n + A000045 n

end

end A022118.P5078063252057598462

namespace A022118

/-- `A022370(n)+A000045(n)` -/
def P5078063252057598462.Spec : Prop :=
  ∀ n, P5078063252057598462.a n = A022118 n

end A022118

/-! ## A022118.P10405805638263213554

`A022346(n)+A001060(n)`
-/

namespace A022118.P10405805638263213554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A001060 n

end

end A022118.P10405805638263213554

namespace A022118

/-- `A022346(n)+A001060(n)` -/
def P10405805638263213554.Spec : Prop :=
  ∀ n, P10405805638263213554.a n = A022118 n

end A022118

/-! ## A022118.P12222837585899805500

`A022348(n)+A020695(n)`
-/

namespace A022118.P12222837585899805500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A020695 n

end

end A022118.P12222837585899805500

namespace A022118

/-- `A022348(n)+A020695(n)` -/
def P12222837585899805500.Spec : Prop :=
  ∀ n, P12222837585899805500.a n = A022118 n

end A022118

/-! ## A022118.P18373354189264522972

`A022099(n)+A022098(n)`
-/

namespace A022118.P18373354189264522972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022098 n

end

end A022118.P18373354189264522972

namespace A022118

/-- `A022099(n)+A022098(n)` -/
def P18373354189264522972.Spec : Prop :=
  ∀ n, P18373354189264522972.a n = A022118 n

end A022118

/-! ## A022118.P14906293172162785294

`A022100(n)+A022097(n)`
-/

namespace A022118.P14906293172162785294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022097 n

end

end A022118.P14906293172162785294

namespace A022118

/-- `A022100(n)+A022097(n)` -/
def P14906293172162785294.Spec : Prop :=
  ∀ n, P14906293172162785294.a n = A022118 n

end A022118

/-! ## A022118.P2958287509693831561

`A022101(n)+A022096(n)`
-/

namespace A022118.P2958287509693831561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022096 n

end

end A022118.P2958287509693831561

namespace A022118

/-- `A022101(n)+A022096(n)` -/
def P2958287509693831561.Spec : Prop :=
  ∀ n, P2958287509693831561.a n = A022118 n

end A022118

/-! ## A022118.P5125291381107056344

`A022102(n)+A022095(n)`
-/

namespace A022118.P5125291381107056344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022095 n

end

end A022118.P5125291381107056344

namespace A022118

/-- `A022102(n)+A022095(n)` -/
def P5125291381107056344.Spec : Prop :=
  ∀ n, P5125291381107056344.a n = A022118 n

end A022118

/-! ## A022118.P3380243568307740400

`A022113(n)+A022093(n)`
-/

namespace A022118.P3380243568307740400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022093 n

end

end A022118.P3380243568307740400

namespace A022118

/-- `A022113(n)+A022093(n)` -/
def P3380243568307740400.Spec : Prop :=
  ∀ n, P3380243568307740400.a n = A022118 n

end A022118

/-! ## A022118.P8308217161262027136

`A022114(n)+A022091(n)`
-/

namespace A022118.P8308217161262027136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022091 n

end

end A022118.P8308217161262027136

namespace A022118

/-- `A022114(n)+A022091(n)` -/
def P8308217161262027136.Spec : Prop :=
  ∀ n, P8308217161262027136.a n = A022118 n

end A022118

/-! ## A022118.P6277770893264301964

`A022115(n)+A022089(n)`
-/

namespace A022118.P6277770893264301964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022089 n

end

end A022118.P6277770893264301964

namespace A022118

/-- `A022115(n)+A022089(n)` -/
def P6277770893264301964.Spec : Prop :=
  ∀ n, P6277770893264301964.a n = A022118 n

end A022118

/-! ## A022118.P2929400808213188166

`A022116(n)+A022087(n)`
-/

namespace A022118.P2929400808213188166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022087 n

end

end A022118.P2929400808213188166

namespace A022118

/-- `A022116(n)+A022087(n)` -/
def P2929400808213188166.Spec : Prop :=
  ∀ n, P2929400808213188166.a n = A022118 n

end A022118

/-! ## A022118.P11030693359070623471

`A022345(n)+A022112(n)`
-/

namespace A022118.P11030693359070623471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022112 n

end

end A022118.P11030693359070623471

namespace A022118

/-- `A022345(n)+A022112(n)` -/
def P11030693359070623471.Spec : Prop :=
  ∀ n, P11030693359070623471.a n = A022118 n

end A022118

/-! ## A022118.P9058488331279179418

`A022367(n)+A022090(n)`
-/

namespace A022118.P9058488331279179418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022090 n

end

end A022118.P9058488331279179418

namespace A022118

/-- `A022367(n)+A022090(n)` -/
def P9058488331279179418.Spec : Prop :=
  ∀ n, P9058488331279179418.a n = A022118 n

end A022118

/-! ## A022118.P15385291248026696932

`A022368(n)+A022088(n)`
-/

namespace A022118.P15385291248026696932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022088 n

end

end A022118.P15385291248026696932

namespace A022118

/-- `A022368(n)+A022088(n)` -/
def P15385291248026696932.Spec : Prop :=
  ∀ n, P15385291248026696932.a n = A022118 n

end A022118

/-! ## A022118.P10913157274918780449

`A022369(n)+A022086(n)`
-/

namespace A022118.P10913157274918780449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A022086 n

end

end A022118.P10913157274918780449

namespace A022118

/-- `A022369(n)+A022086(n)` -/
def P10913157274918780449.Spec : Prop :=
  ∀ n, P10913157274918780449.a n = A022118 n

end A022118

/-! ## A022118.P16866801932061686930

`A118658(n)+A022351(n)`
-/

namespace A022118.P16866801932061686930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022351 n

end

end A022118.P16866801932061686930

namespace A022118

/-- `A118658(n)+A022351(n)` -/
def P16866801932061686930.Spec : Prop :=
  ∀ n, P16866801932061686930.a n = A022118 n

end A022118

/-!
# A022119: Fibonacci sequence beginning 2, 19.

The programs for A022119, the canonical program `A022119.P5708294146707799200` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022119 has offset 0).

The definition of A022119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022119.P1504075820203345369

`ogf((2+17x)/(1-x-x^2))`
-/

namespace A022119.P1504075820203345369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 17] [1, -1, -1] n

end

end A022119.P1504075820203345369

namespace A022119

/-- `ogf((2+17x)/(1-x-x^2))` -/
def P1504075820203345369.Spec : Prop :=
  ∀ n, P1504075820203345369.a n = A022119 n

end A022119

/-! ## A022119.P5708294146707799200

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022119

/-- `a(n-1)+a(n-2)` -/
def P5708294146707799200.Spec : Prop :=
  ∀ n, (P5708294146707799200.a n : ℤ) = A022119 n

theorem P5708294146707799200.correct : P5708294146707799200.Spec := by
  intro n
  simp only [A022119]

end A022119

/-! ## A022119.P1545914606743760336

`A022105(n)+A000285(n)`
-/

namespace A022119.P1545914606743760336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A000285 n

end

end A022119.P1545914606743760336

namespace A022119

/-- `A022105(n)+A000285(n)` -/
def P1545914606743760336.Spec : Prop :=
  ∀ n, P1545914606743760336.a n = A022119 n

end A022119

/-! ## A022119.P15732100313711690861

`A022352(n)+A000032(n)`
-/

namespace A022119.P15732100313711690861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A000032 n

end

end A022119.P15732100313711690861

namespace A022119

/-- `A022352(n)+A000032(n)` -/
def P15732100313711690861.Spec : Prop :=
  ∀ n, P15732100313711690861.a n = A022119 n

end A022119

/-! ## A022119.P12128239539219673411

`A022371(n)+A000045(n)`
-/

namespace A022119.P12128239539219673411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n + A000045 n

end

end A022119.P12128239539219673411

namespace A022119

/-- `A022371(n)+A000045(n)` -/
def P12128239539219673411.Spec : Prop :=
  ∀ n, P12128239539219673411.a n = A022119 n

end A022119

/-! ## A022119.P1575901834923387172

`A022348(n)+A001060(n)`
-/

namespace A022119.P1575901834923387172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A001060 n

end

end A022119.P1575901834923387172

namespace A022119

/-- `A022348(n)+A001060(n)` -/
def P1575901834923387172.Spec : Prop :=
  ∀ n, P1575901834923387172.a n = A022119 n

end A022119

/-! ## A022119.P427836531359021152

`A022350(n)+A020695(n)`
-/

namespace A022119.P427836531359021152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A020695 n

end

end A022119.P427836531359021152

namespace A022119

/-- `A022350(n)+A020695(n)` -/
def P427836531359021152.Spec : Prop :=
  ∀ n, P427836531359021152.a n = A022119 n

end A022119

/-! ## A022119.P6139024056729885743

`A022100(n)+A022099(n)`
-/

namespace A022119.P6139024056729885743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022099 n

end

end A022119.P6139024056729885743

namespace A022119

/-- `A022100(n)+A022099(n)` -/
def P6139024056729885743.Spec : Prop :=
  ∀ n, P6139024056729885743.a n = A022119 n

end A022119

/-! ## A022119.P4288868859522823522

`A022101(n)+A022098(n)`
-/

namespace A022119.P4288868859522823522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022098 n

end

end A022119.P4288868859522823522

namespace A022119

/-- `A022101(n)+A022098(n)` -/
def P4288868859522823522.Spec : Prop :=
  ∀ n, P4288868859522823522.a n = A022119 n

end A022119

/-! ## A022119.P1942629923208721848

`A022102(n)+A022097(n)`
-/

namespace A022119.P1942629923208721848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022097 n

end

end A022119.P1942629923208721848

namespace A022119

/-- `A022102(n)+A022097(n)` -/
def P1942629923208721848.Spec : Prop :=
  ∀ n, P1942629923208721848.a n = A022119 n

end A022119

/-! ## A022119.P10199671821991466544

`A022103(n)+A022096(n)`
-/

namespace A022119.P10199671821991466544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022096 n

end

end A022119.P10199671821991466544

namespace A022119

/-- `A022103(n)+A022096(n)` -/
def P10199671821991466544.Spec : Prop :=
  ∀ n, P10199671821991466544.a n = A022119 n

end A022119

/-! ## A022119.P4294205448734983188

`A022104(n)+A022095(n)`
-/

namespace A022119.P4294205448734983188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022095 n

end

end A022119.P4294205448734983188

namespace A022119

/-- `A022104(n)+A022095(n)` -/
def P4294205448734983188.Spec : Prop :=
  ∀ n, P4294205448734983188.a n = A022119 n

end A022119

/-! ## A022119.P3714264276021249644

`A022114(n)+A022093(n)`
-/

namespace A022119.P3714264276021249644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022093 n

end

end A022119.P3714264276021249644

namespace A022119

/-- `A022114(n)+A022093(n)` -/
def P3714264276021249644.Spec : Prop :=
  ∀ n, P3714264276021249644.a n = A022119 n

end A022119

/-! ## A022119.P2918678088422416465

`A022115(n)+A022091(n)`
-/

namespace A022119.P2918678088422416465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022091 n

end

end A022119.P2918678088422416465

namespace A022119

/-- `A022115(n)+A022091(n)` -/
def P2918678088422416465.Spec : Prop :=
  ∀ n, P2918678088422416465.a n = A022119 n

end A022119

/-! ## A022119.P16938084459167960295

`A022116(n)+A022089(n)`
-/

namespace A022119.P16938084459167960295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022089 n

end

end A022119.P16938084459167960295

namespace A022119

/-- `A022116(n)+A022089(n)` -/
def P16938084459167960295.Spec : Prop :=
  ∀ n, P16938084459167960295.a n = A022119 n

end A022119

/-! ## A022119.P7247205340058470442

`A022117(n)+A022087(n)`
-/

namespace A022119.P7247205340058470442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022087 n

end

end A022119.P7247205340058470442

namespace A022119

/-- `A022117(n)+A022087(n)` -/
def P7247205340058470442.Spec : Prop :=
  ∀ n, P7247205340058470442.a n = A022119 n

end A022119

/-! ## A022119.P1860815090124827984

`A022346(n)+A022113(n)`
-/

namespace A022119.P1860815090124827984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022113 n

end

end A022119.P1860815090124827984

namespace A022119

/-- `A022346(n)+A022113(n)` -/
def P1860815090124827984.Spec : Prop :=
  ∀ n, P1860815090124827984.a n = A022119 n

end A022119

/-! ## A022119.P16883284408008607466

`A022347(n)+A022112(n)`
-/

namespace A022119.P16883284408008607466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022112 n

end

end A022119.P16883284408008607466

namespace A022119

/-- `A022347(n)+A022112(n)` -/
def P16883284408008607466.Spec : Prop :=
  ∀ n, P16883284408008607466.a n = A022119 n

end A022119

/-! ## A022119.P11274382138490106535

`A022367(n)+A022092(n)`
-/

namespace A022119.P11274382138490106535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022092 n

end

end A022119.P11274382138490106535

namespace A022119

/-- `A022367(n)+A022092(n)` -/
def P11274382138490106535.Spec : Prop :=
  ∀ n, P11274382138490106535.a n = A022119 n

end A022119

/-! ## A022119.P1310078842293050229

`A022368(n)+A022090(n)`
-/

namespace A022119.P1310078842293050229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022090 n

end

end A022119.P1310078842293050229

namespace A022119

/-- `A022368(n)+A022090(n)` -/
def P1310078842293050229.Spec : Prop :=
  ∀ n, P1310078842293050229.a n = A022119 n

end A022119

/-!
# A022120: Fibonacci sequence beginning 3, 7.

The programs for A022120, the canonical program `A022120.P5426568397649837323` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022120 has offset 0).

The definition of A022120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022120.P5426568397649837323

`4*A000045(n+2)-A000045(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022120

/-- `4*A000045(n+2)-A000045(n+1)` -/
def P5426568397649837323.Spec : Prop :=
  ∀ n, P5426568397649837323.a n = A022120 n

theorem P5426568397649837323.correct : P5426568397649837323.Spec := by
  intro n
  simp only [A022120]

end A022120

/-! ## A022120.P13229358053699722646

`ogf((3+4x)/(1-x-x^2))`
-/

namespace A022120.P13229358053699722646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4] [1, -1, -1] n

end

end A022120.P13229358053699722646

namespace A022120

/-- `ogf((3+4x)/(1-x-x^2))` -/
def P13229358053699722646.Spec : Prop :=
  ∀ n, P13229358053699722646.a n = A022120 n

end A022120

/-! ## A022120.P12982971927313679519

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=7`
-/

namespace A022120.P12982971927313679519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022120.P12982971927313679519

namespace A022120

/-- `a(n-1)+a(n-2)` -/
def P12982971927313679519.Spec : Prop :=
  ∀ n, (P12982971927313679519.a n : ℤ) = A022120 n

end A022120

/-! ## A022120.P163156339555607806

`2*a(n-1)-a(n-3)` with `a(0)=3, a(1)=7, a(2)=10`
-/

namespace A022120.P163156339555607806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022120.P163156339555607806

namespace A022120

/-- `2*a(n-1)-a(n-3)` -/
def P163156339555607806.Spec : Prop :=
  ∀ n, P163156339555607806.a n = A022120 n

end A022120

/-! ## A022120.P12554957994795103760

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=3, a(1)=7, a(2)=10`
-/

namespace A022120.P12554957994795103760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 10] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022120.P12554957994795103760

namespace A022120

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P12554957994795103760.Spec : Prop :=
  ∀ n, P12554957994795103760.a n = A022120 n

end A022120

/-! ## A022120.P1404046503772406270

`A187891(n+2)-1`
-/

namespace A022120.P1404046503772406270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 (n + 2) - 1

end

end A022120.P1404046503772406270

namespace A022120

/-- `A187891(n+2)-1` -/
def P1404046503772406270.Spec : Prop :=
  ∀ n, P1404046503772406270.a n = A022120 n

end A022120

/-! ## A022120.P18228446619188230379

`round((5-ϕ)*A000045(n+2))`
-/

namespace A022120.P18228446619188230379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A022120.P18228446619188230379

namespace A022120

/-- `round((5-ϕ)*A000045(n+2))` -/
def P18228446619188230379.Spec : Prop :=
  ∀ n, P18228446619188230379.a n = A022120 n

end A022120

/-! ## A022120.P7932875575979493773

`A020695(n)+A000285(n)`
-/

namespace A022120.P7932875575979493773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A000285 n

end

end A022120.P7932875575979493773

namespace A022120

/-- `A020695(n)+A000285(n)` -/
def P7932875575979493773.Spec : Prop :=
  ∀ n, P7932875575979493773.a n = A022120 n

end A022120

/-! ## A022120.P10305997026235978119

`A022096(n)+A000032(n)`
-/

namespace A022120.P10305997026235978119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A000032 n

end

end A022120.P10305997026235978119

namespace A022120

/-- `A022096(n)+A000032(n)` -/
def P10305997026235978119.Spec : Prop :=
  ∀ n, P10305997026235978119.a n = A022120 n

end A022120

/-! ## A022120.P1089052015496198757

`A022310(n)+A001612(n)`
-/

namespace A022120.P1089052015496198757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A001612 n

end

end A022120.P1089052015496198757

namespace A022120

/-- `A022310(n)+A001612(n)` -/
def P1089052015496198757.Spec : Prop :=
  ∀ n, P1089052015496198757.a n = A022120 n

end A022120

/-! ## A022120.P5492463668107220136

`A022088(n)+A013655(n)`
-/

namespace A022120.P5492463668107220136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A013655 n

end

end A022120.P5492463668107220136

namespace A022120

/-- `A022088(n)+A013655(n)` -/
def P5492463668107220136.Spec : Prop :=
  ∀ n, P5492463668107220136.a n = A022120 n

end A022120

/-! ## A022120.P4874667401346188538

`A048577(n)+A022308(n)`
-/

namespace A022120.P4874667401346188538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022308 n

end

end A022120.P4874667401346188538

namespace A022120

/-- `A048577(n)+A022308(n)` -/
def P4874667401346188538.Spec : Prop :=
  ∀ n, P4874667401346188538.a n = A022120 n

end A022120

/-! ## A022120.P3719031571973211088

`A104449(n)+A022089(n)`
-/

namespace A022120.P3719031571973211088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022089 n

end

end A022120.P3719031571973211088

namespace A022120

/-- `A104449(n)+A022089(n)` -/
def P3719031571973211088.Spec : Prop :=
  ∀ n, P3719031571973211088.a n = A022120 n

end A022120

/-! ## A022120.P9214591451886702862

`A118658(n)+A022097(n)`
-/

namespace A022120.P9214591451886702862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022097 n

end

end A022120.P9214591451886702862

namespace A022120

/-- `A118658(n)+A022097(n)` -/
def P9214591451886702862.Spec : Prop :=
  ∀ n, P9214591451886702862.a n = A022120 n

end A022120

/-! ## A022120.P8807139492708304579

`A212804(n)+A022113(n)`
-/

namespace A022120.P8807139492708304579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022113 n

end

end A022120.P8807139492708304579

namespace A022120

/-- `A212804(n)+A022113(n)` -/
def P8807139492708304579.Spec : Prop :=
  ∀ n, P8807139492708304579.a n = A022120 n

end A022120

/-! ## A022120.P5439926663873299000

`A288219(n)+A097135(n)`
-/

namespace A022120.P5439926663873299000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + A097135 n

end

end A022120.P5439926663873299000

namespace A022120

/-- `A288219(n)+A097135(n)` -/
def P5439926663873299000.Spec : Prop :=
  ∀ n, P5439926663873299000.a n = A022120 n

end A022120

/-! ## A022120.P4017018778252114630

`A294157(n)+A152163(n)`
-/

namespace A022120.P4017018778252114630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A152163 n

end

end A022120.P4017018778252114630

namespace A022120

/-- `A294157(n)+A152163(n)` -/
def P4017018778252114630.Spec : Prop :=
  ∀ n, P4017018778252114630.a n = A022120 n

end A022120

/-! ## A022120.P11406326985748659564

`A020712(n)-A000032(n)`
-/

namespace A022120.P11406326985748659564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - A000032 n

end

end A022120.P11406326985748659564

namespace A022120

/-- `A020712(n)-A000032(n)` -/
def P11406326985748659564.Spec : Prop :=
  ∀ n, P11406326985748659564.a n = A022120 n

end A022120

/-! ## A022120.P1926013691084309650

`A020743(n)-A000211(n)`
-/

namespace A022120.P1926013691084309650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - A000211 n

end

end A022120.P1926013691084309650

namespace A022120

/-- `A020743(n)-A000211(n)` -/
def P1926013691084309650.Spec : Prop :=
  ∀ n, P1926013691084309650.a n = A022120 n

end A022120

/-! ## A022120.P14441596641528259302

`A022121(n)-A000045(n)`
-/

namespace A022120.P14441596641528259302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n - A000045 n

end

end A022120.P14441596641528259302

namespace A022120

/-- `A022121(n)-A000045(n)` -/
def P14441596641528259302.Spec : Prop :=
  ∀ n, P14441596641528259302.a n = A022120 n

end A022120

/-!
# A022121: Fibonacci sequence beginning 3, 8.

The programs for A022121, the canonical program `A022121.P18213973509832508020` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022121 has offset 0).

The definition of A022121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022121.P18213973509832508020

`2*A000032(n+1)+A000045(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022121

/-- `2*A000032(n+1)+A000045(n+2)` -/
def P18213973509832508020.Spec : Prop :=
  ∀ n, P18213973509832508020.a n = A022121 n

theorem P18213973509832508020.correct : P18213973509832508020.Spec := by
  intro n
  simp only [A022121]

end A022121

/-! ## A022121.P4469781991992035812

`ogf((3+5x)/(1-x-x^2))`
-/

namespace A022121.P4469781991992035812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5] [1, -1, -1] n

end

end A022121.P4469781991992035812

namespace A022121

/-- `ogf((3+5x)/(1-x-x^2))` -/
def P4469781991992035812.Spec : Prop :=
  ∀ n, P4469781991992035812.a n = A022121 n

end A022121

/-! ## A022121.P17548051697724116263

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A022121.P17548051697724116263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022121.P17548051697724116263

namespace A022121

/-- `a(n-1)+a(n-2)` -/
def P17548051697724116263.Spec : Prop :=
  ∀ n, (P17548051697724116263.a n : ℤ) = A022121 n

end A022121

/-! ## A022121.P14649269323994471201

`a(n-1)-floor(-a(n-2))` with `a(0)=3, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A022121.P14649269323994471201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022121.P14649269323994471201

namespace A022121

/-- `a(n-1)-floor(-a(n-2))` -/
def P14649269323994471201.Spec : Prop :=
  ∀ n, P14649269323994471201.a n = A022121 n

end A022121

/-! ## A022121.P13760239825160622976

`a(n-1)-ceil(-a(n-2))` with `a(0)=3, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A022121.P13760239825160622976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022121.P13760239825160622976

namespace A022121

/-- `a(n-1)-ceil(-a(n-2))` -/
def P13760239825160622976.Spec : Prop :=
  ∀ n, P13760239825160622976.a n = A022121 n

end A022121

/-! ## A022121.P17381963709080070281

`a(n-1)-round(-a(n-2))` with `a(0)=3, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A022121.P17381963709080070281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022121.P17381963709080070281

namespace A022121

/-- `a(n-1)-round(-a(n-2))` -/
def P17381963709080070281.Spec : Prop :=
  ∀ n, P17381963709080070281.a n = A022121 n

end A022121

/-! ## A022121.P17107134078102374887

`A022097(n)+A000032(n)`
-/

namespace A022121.P17107134078102374887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A000032 n

end

end A022121.P17107134078102374887

namespace A022121

/-- `A022097(n)+A000032(n)` -/
def P17107134078102374887.Spec : Prop :=
  ∀ n, P17107134078102374887.a n = A022121 n

end A022121

/-! ## A022121.P924957315110193079

`A022120(n)+A000045(n)`
-/

namespace A022121.P924957315110193079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A000045 n

end

end A022121.P924957315110193079

namespace A022121

/-- `A022120(n)+A000045(n)` -/
def P924957315110193079.Spec : Prop :=
  ∀ n, P924957315110193079.a n = A022121 n

end A022121

/-! ## A022121.P2670018393922610667

`A022311(n)+A001612(n)`
-/

namespace A022121.P2670018393922610667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A001612 n

end

end A022121.P2670018393922610667

namespace A022121

/-- `A022311(n)+A001612(n)` -/
def P2670018393922610667.Spec : Prop :=
  ∀ n, P2670018393922610667.a n = A022121 n

end A022121

/-! ## A022121.P3706037893090454960

`A022089(n)+A013655(n)`
-/

namespace A022121.P3706037893090454960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A013655 n

end

end A022121.P3706037893090454960

namespace A022121

/-- `A022089(n)+A013655(n)` -/
def P3706037893090454960.Spec : Prop :=
  ∀ n, P3706037893090454960.a n = A022121 n

end A022121

/-! ## A022121.P1481545648490266663

`A022086(n)+A020701(n)`
-/

namespace A022121.P1481545648490266663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A020701 n

end

end A022121.P1481545648490266663

namespace A022121

/-- `A022086(n)+A020701(n)` -/
def P1481545648490266663.Spec : Prop :=
  ∀ n, P1481545648490266663.a n = A022121 n

end A022121

/-! ## A022121.P4253930743009273804

`A022095(n)+A020695(n)`
-/

namespace A022121.P4253930743009273804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A020695 n

end

end A022121.P4253930743009273804

namespace A022121

/-- `A022095(n)+A020695(n)` -/
def P4253930743009273804.Spec : Prop :=
  ∀ n, P4253930743009273804.a n = A022121 n

end A022121

/-! ## A022121.P13669835161935768463

`A048577(n)+A022309(n)`
-/

namespace A022121.P13669835161935768463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022309 n

end

end A022121.P13669835161935768463

namespace A022121

/-- `A048577(n)+A022309(n)` -/
def P13669835161935768463.Spec : Prop :=
  ∀ n, P13669835161935768463.a n = A022121 n

end A022121

/-! ## A022121.P15667323036438642497

`A104449(n)+A022090(n)`
-/

namespace A022121.P15667323036438642497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022090 n

end

end A022121.P15667323036438642497

namespace A022121

/-- `A104449(n)+A022090(n)` -/
def P15667323036438642497.Spec : Prop :=
  ∀ n, P15667323036438642497.a n = A022121 n

end A022121

/-! ## A022121.P16912190449754999306

`A118658(n)+A022098(n)`
-/

namespace A022121.P16912190449754999306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022098 n

end

end A022121.P16912190449754999306

namespace A022121

/-- `A118658(n)+A022098(n)` -/
def P16912190449754999306.Spec : Prop :=
  ∀ n, P16912190449754999306.a n = A022121 n

end A022121

/-! ## A022121.P2037778388161195916

`A152163(n)+A022114(n)`
-/

namespace A022121.P2037778388161195916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022114 n

end

end A022121.P2037778388161195916

namespace A022121

/-- `A152163(n)+A022114(n)` -/
def P2037778388161195916.Spec : Prop :=
  ∀ n, P2037778388161195916.a n = A022121 n

end A022121

/-! ## A022121.P10725755014751409004

`A187891(n)+A022403(n)`
-/

namespace A022121.P10725755014751409004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022403 n

end

end A022121.P10725755014751409004

namespace A022121

/-- `A187891(n)+A022403(n)` -/
def P10725755014751409004.Spec : Prop :=
  ∀ n, P10725755014751409004.a n = A022121 n

end A022121

/-! ## A022121.P10109169368153413220

`A294157(n)+A212804(n)`
-/

namespace A022121.P10109169368153413220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A212804 n

end

end A022121.P10109169368153413220

namespace A022121

/-- `A294157(n)+A212804(n)` -/
def P10109169368153413220.Spec : Prop :=
  ∀ n, P10109169368153413220.a n = A022121 n

end A022121

/-! ## A022121.P12950362445626618384

`A022379(n)-A000045(n)`
-/

namespace A022121.P12950362445626618384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n - A000045 n

end

end A022121.P12950362445626618384

namespace A022121

/-- `A022379(n)-A000045(n)` -/
def P12950362445626618384.Spec : Prop :=
  ∀ n, P12950362445626618384.a n = A022121 n

end A022121

/-! ## A022121.P9293785021308809140

`A001060(n)+A000032(n+1)`
-/

namespace A022121.P9293785021308809140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n + A000032 (n + 1)

end

end A022121.P9293785021308809140

namespace A022121

/-- `A001060(n)+A000032(n+1)` -/
def P9293785021308809140.Spec : Prop :=
  ∀ n, P9293785021308809140.a n = A022121 n

end A022121

/-!
# A022122: Fibonacci sequence beginning 3, 10.

The programs for A022122, the canonical program `A022122.P15218543973315576389` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022122 has offset 0).

The definition of A022122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022122.P15218543973315576389

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022122

/-- `a(n-1)+a(n-2)` -/
def P15218543973315576389.Spec : Prop :=
  ∀ n, (P15218543973315576389.a n : ℤ) = A022122 n

theorem P15218543973315576389.correct : P15218543973315576389.Spec := by
  intro n
  simp only [A022122]

end A022122

/-! ## A022122.P12214594516423051954

`3*A000032(n+1)+A000045(n)`
-/

namespace A022122.P12214594516423051954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000032 (n + 1) + A000045 n

end

end A022122.P12214594516423051954

namespace A022122

/-- `3*A000032(n+1)+A000045(n)` -/
def P12214594516423051954.Spec : Prop :=
  ∀ n, P12214594516423051954.a n = A022122 n

end A022122

/-! ## A022122.P13331907994040737715

`3*A000045(n+1)+7*A000045(n)`
-/

namespace A022122.P13331907994040737715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 1) + 7 * A000045 n

end

end A022122.P13331907994040737715

namespace A022122

/-- `3*A000045(n+1)+7*A000045(n)` -/
def P13331907994040737715.Spec : Prop :=
  ∀ n, P13331907994040737715.a n = A022122 n

end A022122

/-! ## A022122.P5986333125186250446

`ogf((3+7x)/(1-x-x^2))`
-/

namespace A022122.P5986333125186250446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7] [1, -1, -1] n

end

end A022122.P5986333125186250446

namespace A022122

/-- `ogf((3+7x)/(1-x-x^2))` -/
def P5986333125186250446.Spec : Prop :=
  ∀ n, P5986333125186250446.a n = A022122 n

end A022122

/-! ## A022122.P8534551359042987487

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A022122.P8534551359042987487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A022122.P8534551359042987487

namespace A022122

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P8534551359042987487.Spec : Prop :=
  ∀ n, P8534551359042987487.a n = A022122 n

end A022122

/-! ## A022122.P5133472575547970547

`A022099(n)+A000032(n)`
-/

namespace A022122.P5133472575547970547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A000032 n

end

end A022122.P5133472575547970547

namespace A022122

/-- `A022099(n)+A000032(n)` -/
def P5133472575547970547.Spec : Prop :=
  ∀ n, P5133472575547970547.a n = A022122 n

end A022122

/-! ## A022122.P16768072768602787670

`A022112(n)+A000285(n)`
-/

namespace A022122.P16768072768602787670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A000285 n

end

end A022122.P16768072768602787670

namespace A022122

/-- `A022112(n)+A000285(n)` -/
def P16768072768602787670.Spec : Prop :=
  ∀ n, P16768072768602787670.a n = A022122 n

end A022122

/-! ## A022122.P10010984365489224332

`A022379(n)+A000045(n)`
-/

namespace A022122.P10010984365489224332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A000045 n

end

end A022122.P10010984365489224332

namespace A022122

/-- `A022379(n)+A000045(n)` -/
def P10010984365489224332.Spec : Prop :=
  ∀ n, P10010984365489224332.a n = A022122 n

end A022122

/-! ## A022122.P10598401839716432651

`A022095(n)+A001060(n)`
-/

namespace A022122.P10598401839716432651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A001060 n

end

end A022122.P10598401839716432651

namespace A022122

/-- `A022095(n)+A001060(n)` -/
def P10598401839716432651.Spec : Prop :=
  ∀ n, P10598401839716432651.a n = A022122 n

end A022122

/-! ## A022122.P7604525325530271994

`A022313(n)+A001612(n)`
-/

namespace A022122.P7604525325530271994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A001612 n

end

end A022122.P7604525325530271994

namespace A022122

/-- `A022313(n)+A001612(n)` -/
def P7604525325530271994.Spec : Prop :=
  ∀ n, P7604525325530271994.a n = A022122 n

end A022122

/-! ## A022122.P11885373748541138225

`A022091(n)+A013655(n)`
-/

namespace A022122.P11885373748541138225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A013655 n

end

end A022122.P11885373748541138225

namespace A022122

/-- `A022091(n)+A013655(n)` -/
def P11885373748541138225.Spec : Prop :=
  ∀ n, P11885373748541138225.a n = A022122 n

end A022122

/-! ## A022122.P13743524992098351619

`A022088(n)+A020701(n)`
-/

namespace A022122.P13743524992098351619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A020701 n

end

end A022122.P13743524992098351619

namespace A022122

/-- `A022088(n)+A020701(n)` -/
def P13743524992098351619.Spec : Prop :=
  ∀ n, P13743524992098351619.a n = A022122 n

end A022122

/-! ## A022122.P4039708310343950683

`A022097(n)+A020695(n)`
-/

namespace A022122.P4039708310343950683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A020695 n

end

end A022122.P4039708310343950683

namespace A022122

/-- `A022097(n)+A020695(n)` -/
def P4039708310343950683.Spec : Prop :=
  ∀ n, P4039708310343950683.a n = A022122 n

end A022122

/-! ## A022122.P9346454912819979036

`A022120(n)+A022086(n)`
-/

namespace A022122.P9346454912819979036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022086 n

end

end A022122.P9346454912819979036

namespace A022122

/-- `A022120(n)+A022086(n)` -/
def P9346454912819979036.Spec : Prop :=
  ∀ n, P9346454912819979036.a n = A022122 n

end A022122

/-! ## A022122.P10766208695371848511

`A048577(n)+A022311(n)`
-/

namespace A022122.P10766208695371848511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022311 n

end

end A022122.P10766208695371848511

namespace A022122

/-- `A048577(n)+A022311(n)` -/
def P10766208695371848511.Spec : Prop :=
  ∀ n, P10766208695371848511.a n = A022122 n

end A022122

/-! ## A022122.P18395962916714198570

`A104449(n)+A022092(n)`
-/

namespace A022122.P18395962916714198570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022092 n

end

end A022122.P18395962916714198570

namespace A022122

/-- `A104449(n)+A022092(n)` -/
def P18395962916714198570.Spec : Prop :=
  ∀ n, P18395962916714198570.a n = A022122 n

end A022122

/-! ## A022122.P1636043375566884350

`A118658(n)+A022100(n)`
-/

namespace A022122.P1636043375566884350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022100 n

end

end A022122.P1636043375566884350

namespace A022122

/-- `A118658(n)+A022100(n)` -/
def P1636043375566884350.Spec : Prop :=
  ∀ n, P1636043375566884350.a n = A022122 n

end A022122

/-! ## A022122.P3601993616334003788

`A212804(n)+A022367(n)`
-/

namespace A022122.P3601993616334003788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022367 n

end

end A022122.P3601993616334003788

namespace A022122

/-- `A212804(n)+A022367(n)` -/
def P3601993616334003788.Spec : Prop :=
  ∀ n, P3601993616334003788.a n = A022122 n

end A022122

/-! ## A022122.P14174308228998879920

`A022113(n)+A000032(n+1)`
-/

namespace A022122.P14174308228998879920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A000032 (n + 1)

end

end A022122.P14174308228998879920

namespace A022122

/-- `A022113(n)+A000032(n+1)` -/
def P14174308228998879920.Spec : Prop :=
  ∀ n, P14174308228998879920.a n = A022122 n

end A022122

/-! ## A022122.P6985218095620925163

`A022114(n)+A000045(n+1)`
-/

namespace A022122.P6985218095620925163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A000045 (n + 1)

end

end A022122.P6985218095620925163

namespace A022122

/-- `A022114(n)+A000045(n+1)` -/
def P6985218095620925163.Spec : Prop :=
  ∀ n, P6985218095620925163.a n = A022122 n

end A022122

/-!
# A022123: Fibonacci sequence beginning 3, 11.

The programs for A022123, the canonical program `A022123.P7541909490258741472` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022123 has offset 0).

The definition of A022123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022123.P7541909490258741472

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022123

/-- `a(n-1)+a(n-2)` -/
def P7541909490258741472.Spec : Prop :=
  ∀ n, (P7541909490258741472.a n : ℤ) = A022123 n

theorem P7541909490258741472.correct : P7541909490258741472.Spec := by
  intro n
  simp only [A022123]

end A022123

/-! ## A022123.P9617174566528855530

`8*A000045(n)+3*A000045(n+1)`
-/

namespace A022123.P9617174566528855530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 n + 3 * A000045 (n + 1)

end

end A022123.P9617174566528855530

namespace A022123

/-- `8*A000045(n)+3*A000045(n+1)` -/
def P9617174566528855530.Spec : Prop :=
  ∀ n, P9617174566528855530.a n = A022123 n

end A022123

/-! ## A022123.P14202848484675087300

`ogf((3+8x)/(1-x-x^2))`
-/

namespace A022123.P14202848484675087300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8] [1, -1, -1] n

end

end A022123.P14202848484675087300

namespace A022123

/-- `ogf((3+8x)/(1-x-x^2))` -/
def P14202848484675087300.Spec : Prop :=
  ∀ n, P14202848484675087300.a n = A022123 n

end A022123

/-! ## A022123.P3128456763695200130

`A022100(n)+A000032(n)`
-/

namespace A022123.P3128456763695200130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A000032 n

end

end A022123.P3128456763695200130

namespace A022123

/-- `A022100(n)+A000032(n)` -/
def P3128456763695200130.Spec : Prop :=
  ∀ n, P3128456763695200130.a n = A022123 n

end A022123

/-! ## A022123.P15721793773131014716

`A022122(n)+A000045(n)`
-/

namespace A022123.P15721793773131014716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A000045 n

end

end A022123.P15721793773131014716

namespace A022123

/-- `A022122(n)+A000045(n)` -/
def P15721793773131014716.Spec : Prop :=
  ∀ n, P15721793773131014716.a n = A022123 n

end A022123

/-! ## A022123.P5509409528219948993

`A022113(n)+A000285(n)`
-/

namespace A022123.P5509409528219948993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A000285 n

end

end A022123.P5509409528219948993

namespace A022123

/-- `A022113(n)+A000285(n)` -/
def P5509409528219948993.Spec : Prop :=
  ∀ n, P5509409528219948993.a n = A022123 n

end A022123

/-! ## A022123.P17481633266190029616

`A022096(n)+A001060(n)`
-/

namespace A022123.P17481633266190029616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A001060 n

end

end A022123.P17481633266190029616

namespace A022123

/-- `A022096(n)+A001060(n)` -/
def P17481633266190029616.Spec : Prop :=
  ∀ n, P17481633266190029616.a n = A022123 n

end A022123

/-! ## A022123.P6465120255704703878

`A022314(n)+A001612(n)`
-/

namespace A022123.P6465120255704703878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A001612 n

end

end A022123.P6465120255704703878

namespace A022123

/-- `A022314(n)+A001612(n)` -/
def P6465120255704703878.Spec : Prop :=
  ∀ n, P6465120255704703878.a n = A022123 n

end A022123

/-! ## A022123.P3117201862203536490

`A022092(n)+A013655(n)`
-/

namespace A022123.P3117201862203536490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A013655 n

end

end A022123.P3117201862203536490

namespace A022123

/-- `A022092(n)+A013655(n)` -/
def P3117201862203536490.Spec : Prop :=
  ∀ n, P3117201862203536490.a n = A022123 n

end A022123

/-! ## A022123.P10469530525049673113

`A022089(n)+A020701(n)`
-/

namespace A022123.P10469530525049673113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A020701 n

end

end A022123.P10469530525049673113

namespace A022123

/-- `A022089(n)+A020701(n)` -/
def P10469530525049673113.Spec : Prop :=
  ∀ n, P10469530525049673113.a n = A022123 n

end A022123

/-! ## A022123.P17662807640876864463

`A022098(n)+A020695(n)`
-/

namespace A022123.P17662807640876864463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A020695 n

end

end A022123.P17662807640876864463

namespace A022123

/-- `A022098(n)+A020695(n)` -/
def P17662807640876864463.Spec : Prop :=
  ∀ n, P17662807640876864463.a n = A022123 n

end A022123

/-! ## A022123.P12182588622969426437

`A022112(n)+A022095(n)`
-/

namespace A022123.P12182588622969426437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022095 n

end

end A022123.P12182588622969426437

namespace A022123

/-- `A022112(n)+A022095(n)` -/
def P12182588622969426437.Spec : Prop :=
  ∀ n, P12182588622969426437.a n = A022123 n

end A022123

/-! ## A022123.P15392354462127742043

`A022120(n)+A022087(n)`
-/

namespace A022123.P15392354462127742043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022087 n

end

end A022123.P15392354462127742043

namespace A022123

/-- `A022120(n)+A022087(n)` -/
def P15392354462127742043.Spec : Prop :=
  ∀ n, P15392354462127742043.a n = A022123 n

end A022123

/-! ## A022123.P8061163355894885544

`A022121(n)+A022086(n)`
-/

namespace A022123.P8061163355894885544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022086 n

end

end A022123.P8061163355894885544

namespace A022123

/-- `A022121(n)+A022086(n)` -/
def P8061163355894885544.Spec : Prop :=
  ∀ n, P8061163355894885544.a n = A022123 n

end A022123

/-! ## A022123.P8169213879766049718

`A048577(n)+A022312(n)`
-/

namespace A022123.P8169213879766049718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022312 n

end

end A022123.P8169213879766049718

namespace A022123

/-- `A048577(n)+A022312(n)` -/
def P8169213879766049718.Spec : Prop :=
  ∀ n, P8169213879766049718.a n = A022123 n

end A022123

/-! ## A022123.P4351361921978917650

`A104449(n)+A022093(n)`
-/

namespace A022123.P4351361921978917650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022093 n

end

end A022123.P4351361921978917650

namespace A022123

/-- `A104449(n)+A022093(n)` -/
def P4351361921978917650.Spec : Prop :=
  ∀ n, P4351361921978917650.a n = A022123 n

end A022123

/-! ## A022123.P8113471911213219724

`A118658(n)+A022101(n)`
-/

namespace A022123.P8113471911213219724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022101 n

end

end A022123.P8113471911213219724

namespace A022123

/-- `A118658(n)+A022101(n)` -/
def P8113471911213219724.Spec : Prop :=
  ∀ n, P8113471911213219724.a n = A022123 n

end A022123

/-! ## A022123.P10571880509402766947

`A152163(n)+A022368(n)`
-/

namespace A022123.P10571880509402766947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022368 n

end

end A022123.P10571880509402766947

namespace A022123

/-- `A152163(n)+A022368(n)` -/
def P10571880509402766947.Spec : Prop :=
  ∀ n, P10571880509402766947.a n = A022123 n

end A022123

/-! ## A022123.P17070545413936746754

`A212804(n)+A022115(n)`
-/

namespace A022123.P17070545413936746754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022115 n

end

end A022123.P17070545413936746754

namespace A022123

/-- `A212804(n)+A022115(n)` -/
def P17070545413936746754.Spec : Prop :=
  ∀ n, P17070545413936746754.a n = A022123 n

end A022123

/-! ## A022123.P865678228673486221

`A022137(n)-A000032(n)`
-/

namespace A022123.P865678228673486221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n - A000032 n

end

end A022123.P865678228673486221

namespace A022123

/-- `A022137(n)-A000032(n)` -/
def P865678228673486221.Spec : Prop :=
  ∀ n, P865678228673486221.a n = A022123 n

end A022123

/-!
# A022124: Fibonacci sequence beginning 3, 13.

The programs for A022124, the canonical program `A022124.P8741293578488218331` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022124 has offset 0).

The definition of A022124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022124.P8741293578488218331

`5*A000032(n+1)-2*A000045(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022124

/-- `5*A000032(n+1)-2*A000045(n+1)` -/
def P8741293578488218331.Spec : Prop :=
  ∀ n, P8741293578488218331.a n = A022124 n

theorem P8741293578488218331.correct : P8741293578488218331.Spec := by
  intro n
  simp only [A022124]

end A022124

/-! ## A022124.P15044867554780885192

`ogf((3+10x)/(1-x-x^2))`
-/

namespace A022124.P15044867554780885192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 10] [1, -1, -1] n

end

end A022124.P15044867554780885192

namespace A022124

/-- `ogf((3+10x)/(1-x-x^2))` -/
def P15044867554780885192.Spec : Prop :=
  ∀ n, P15044867554780885192.a n = A022124 n

end A022124

/-! ## A022124.P2389626723646206169

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=13`
-/

namespace A022124.P2389626723646206169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022124.P2389626723646206169

namespace A022124

/-- `a(n-1)+a(n-2)` -/
def P2389626723646206169.Spec : Prop :=
  ∀ n, (P2389626723646206169.a n : ℤ) = A022124 n

end A022124

/-! ## A022124.P16549294347480104813

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=7, a(1)=10`
-/

namespace A022124.P16549294347480104813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022124.P16549294347480104813

namespace A022124

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P16549294347480104813.Spec : Prop :=
  ∀ n, P16549294347480104813.a n = A022124 n

end A022124

/-! ## A022124.P5108027904289438232

`A022102(n)+A000032(n)`
-/

namespace A022124.P5108027904289438232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A000032 n

end

end A022124.P5108027904289438232

namespace A022124

/-- `A022102(n)+A000032(n)` -/
def P5108027904289438232.Spec : Prop :=
  ∀ n, P5108027904289438232.a n = A022124 n

end A022124

/-! ## A022124.P1610025295514950691

`A022114(n)+A000285(n)`
-/

namespace A022124.P1610025295514950691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A000285 n

end

end A022124.P1610025295514950691

namespace A022124

/-- `A022114(n)+A000285(n)` -/
def P1610025295514950691.Spec : Prop :=
  ∀ n, P1610025295514950691.a n = A022124 n

end A022124

/-! ## A022124.P9521889786607081945

`A022380(n)+A000045(n)`
-/

namespace A022124.P9521889786607081945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 n + A000045 n

end

end A022124.P9521889786607081945

namespace A022124

/-- `A022380(n)+A000045(n)` -/
def P9521889786607081945.Spec : Prop :=
  ∀ n, P9521889786607081945.a n = A022124 n

end A022124

/-! ## A022124.P10260920633765879498

`A022098(n)+A001060(n)`
-/

namespace A022124.P10260920633765879498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A001060 n

end

end A022124.P10260920633765879498

namespace A022124

/-- `A022098(n)+A001060(n)` -/
def P10260920633765879498.Spec : Prop :=
  ∀ n, P10260920633765879498.a n = A022124 n

end A022124

/-! ## A022124.P1456666954375417798

`A022316(n)+A001612(n)`
-/

namespace A022124.P1456666954375417798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + A001612 n

end

end A022124.P1456666954375417798

namespace A022124

/-- `A022316(n)+A001612(n)` -/
def P1456666954375417798.Spec : Prop :=
  ∀ n, P1456666954375417798.a n = A022124 n

end A022124

/-! ## A022124.P14166129638423681261

`A022345(n)+A013655(n)`
-/

namespace A022124.P14166129638423681261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A013655 n

end

end A022124.P14166129638423681261

namespace A022124

/-- `A022345(n)+A013655(n)` -/
def P14166129638423681261.Spec : Prop :=
  ∀ n, P14166129638423681261.a n = A022124 n

end A022124

/-! ## A022124.P7032006348887961381

`A022091(n)+A020701(n)`
-/

namespace A022124.P7032006348887961381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A020701 n

end

end A022124.P7032006348887961381

namespace A022124

/-- `A022091(n)+A020701(n)` -/
def P7032006348887961381.Spec : Prop :=
  ∀ n, P7032006348887961381.a n = A022124 n

end A022124

/-! ## A022124.P14510602805669217711

`A022100(n)+A020695(n)`
-/

namespace A022124.P14510602805669217711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A020695 n

end

end A022124.P14510602805669217711

namespace A022124

/-- `A022100(n)+A020695(n)` -/
def P14510602805669217711.Spec : Prop :=
  ∀ n, P14510602805669217711.a n = A022124 n

end A022124

/-! ## A022124.P5471570854967941576

`A022112(n)+A022097(n)`
-/

namespace A022124.P5471570854967941576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022097 n

end

end A022124.P5471570854967941576

namespace A022124

/-- `A022112(n)+A022097(n)` -/
def P5471570854967941576.Spec : Prop :=
  ∀ n, P5471570854967941576.a n = A022124 n

end A022124

/-! ## A022124.P9575372130783335230

`A022113(n)+A022096(n)`
-/

namespace A022124.P9575372130783335230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022096 n

end

end A022124.P9575372130783335230

namespace A022124

/-- `A022113(n)+A022096(n)` -/
def P9575372130783335230.Spec : Prop :=
  ∀ n, P9575372130783335230.a n = A022124 n

end A022124

/-! ## A022124.P1400911116587089024

`A022120(n)+A022089(n)`
-/

namespace A022124.P1400911116587089024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022089 n

end

end A022124.P1400911116587089024

namespace A022124

/-- `A022120(n)+A022089(n)` -/
def P1400911116587089024.Spec : Prop :=
  ∀ n, P1400911116587089024.a n = A022124 n

end A022124

/-! ## A022124.P4844859120767017083

`A022121(n)+A022088(n)`
-/

namespace A022124.P4844859120767017083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022088 n

end

end A022124.P4844859120767017083

namespace A022124

/-- `A022121(n)+A022088(n)` -/
def P4844859120767017083.Spec : Prop :=
  ∀ n, P4844859120767017083.a n = A022124 n

end A022124

/-! ## A022124.P7751487335368088696

`A022122(n)+A022086(n)`
-/

namespace A022124.P7751487335368088696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022086 n

end

end A022124.P7751487335368088696

namespace A022124

/-- `A022122(n)+A022086(n)` -/
def P7751487335368088696.Spec : Prop :=
  ∀ n, P7751487335368088696.a n = A022124 n

end A022124

/-! ## A022124.P6009246340841310999

`A022379(n)+A022087(n)`
-/

namespace A022124.P6009246340841310999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022087 n

end

end A022124.P6009246340841310999

namespace A022124

/-- `A022379(n)+A022087(n)` -/
def P6009246340841310999.Spec : Prop :=
  ∀ n, P6009246340841310999.a n = A022124 n

end A022124

/-! ## A022124.P17253717315062201014

`A048577(n)+A022314(n)`
-/

namespace A022124.P17253717315062201014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022314 n

end

end A022124.P17253717315062201014

namespace A022124

/-- `A048577(n)+A022314(n)` -/
def P17253717315062201014.Spec : Prop :=
  ∀ n, P17253717315062201014.a n = A022124 n

end A022124

/-! ## A022124.P3389478822437787351

`A104449(n)+A022346(n)`
-/

namespace A022124.P3389478822437787351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022346 n

end

end A022124.P3389478822437787351

namespace A022124

/-- `A104449(n)+A022346(n)` -/
def P3389478822437787351.Spec : Prop :=
  ∀ n, P3389478822437787351.a n = A022124 n

end A022124

/-!
# A022125: Fibonacci sequence beginning 3, 14.

The programs for A022125, the canonical program `A022125.P18225723885497896601` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022125 has offset 0).

The definition of A022125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022125.P18225723885497896601

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022125

/-- `a(n-1)+a(n-2)` -/
def P18225723885497896601.Spec : Prop :=
  ∀ n, (P18225723885497896601.a n : ℤ) = A022125 n

theorem P18225723885497896601.correct : P18225723885497896601.Spec := by
  intro n
  simp only [A022125]

end A022125

/-! ## A022125.P11380284919959507913

`ogf((3+11x)/(1-x-x^2))`
-/

namespace A022125.P11380284919959507913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 11] [1, -1, -1] n

end

end A022125.P11380284919959507913

namespace A022125

/-- `ogf((3+11x)/(1-x-x^2))` -/
def P11380284919959507913.Spec : Prop :=
  ∀ n, P11380284919959507913.a n = A022125 n

end A022125

/-! ## A022125.P6612646231278148922

`A022103(n)+A000032(n)`
-/

namespace A022125.P6612646231278148922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A000032 n

end

end A022125.P6612646231278148922

namespace A022125

/-- `A022103(n)+A000032(n)` -/
def P6612646231278148922.Spec : Prop :=
  ∀ n, P6612646231278148922.a n = A022125 n

end A022125

/-! ## A022125.P523039602933915541

`A022124(n)+A000045(n)`
-/

namespace A022125.P523039602933915541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A000045 n

end

end A022125.P523039602933915541

namespace A022125

/-- `A022124(n)+A000045(n)` -/
def P523039602933915541.Spec : Prop :=
  ∀ n, P523039602933915541.a n = A022125 n

end A022125

/-! ## A022125.P11387582916273792013

`A022367(n)+A000285(n)`
-/

namespace A022125.P11387582916273792013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A000285 n

end

end A022125.P11387582916273792013

namespace A022125

/-- `A022367(n)+A000285(n)` -/
def P11387582916273792013.Spec : Prop :=
  ∀ n, P11387582916273792013.a n = A022125 n

end A022125

/-! ## A022125.P2201537033649410423

`A022099(n)+A001060(n)`
-/

namespace A022125.P2201537033649410423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A001060 n

end

end A022125.P2201537033649410423

namespace A022125

/-- `A022099(n)+A001060(n)` -/
def P2201537033649410423.Spec : Prop :=
  ∀ n, P2201537033649410423.a n = A022125 n

end A022125

/-! ## A022125.P8660915459375161174

`A022317(n)+A001612(n)`
-/

namespace A022125.P8660915459375161174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n + A001612 n

end

end A022125.P8660915459375161174

namespace A022125

/-- `A022317(n)+A001612(n)` -/
def P8660915459375161174.Spec : Prop :=
  ∀ n, P8660915459375161174.a n = A022125 n

end A022125

/-! ## A022125.P16130665326384102290

`A022346(n)+A013655(n)`
-/

namespace A022125.P16130665326384102290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A013655 n

end

end A022125.P16130665326384102290

namespace A022125

/-- `A022346(n)+A013655(n)` -/
def P16130665326384102290.Spec : Prop :=
  ∀ n, P16130665326384102290.a n = A022125 n

end A022125

/-! ## A022125.P6772883694913317290

`A022092(n)+A020701(n)`
-/

namespace A022125.P6772883694913317290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A020701 n

end

end A022125.P6772883694913317290

namespace A022125

/-- `A022092(n)+A020701(n)` -/
def P6772883694913317290.Spec : Prop :=
  ∀ n, P6772883694913317290.a n = A022125 n

end A022125

/-! ## A022125.P5334951930470699317

`A022101(n)+A020695(n)`
-/

namespace A022125.P5334951930470699317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A020695 n

end

end A022125.P5334951930470699317

namespace A022125

/-- `A022101(n)+A020695(n)` -/
def P5334951930470699317.Spec : Prop :=
  ∀ n, P5334951930470699317.a n = A022125 n

end A022125

/-! ## A022125.P2980522075330064004

`A022112(n)+A022098(n)`
-/

namespace A022125.P2980522075330064004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022098 n

end

end A022125.P2980522075330064004

namespace A022125

/-- `A022112(n)+A022098(n)` -/
def P2980522075330064004.Spec : Prop :=
  ∀ n, P2980522075330064004.a n = A022125 n

end A022125

/-! ## A022125.P5101270600227593637

`A022113(n)+A022097(n)`
-/

namespace A022125.P5101270600227593637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022097 n

end

end A022125.P5101270600227593637

namespace A022125

/-- `A022113(n)+A022097(n)` -/
def P5101270600227593637.Spec : Prop :=
  ∀ n, P5101270600227593637.a n = A022125 n

end A022125

/-! ## A022125.P10048739720423933539

`A022114(n)+A022095(n)`
-/

namespace A022125.P10048739720423933539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022095 n

end

end A022125.P10048739720423933539

namespace A022125

/-- `A022114(n)+A022095(n)` -/
def P10048739720423933539.Spec : Prop :=
  ∀ n, P10048739720423933539.a n = A022125 n

end A022125

/-! ## A022125.P14146259524920499561

`A022120(n)+A022090(n)`
-/

namespace A022125.P14146259524920499561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022090 n

end

end A022125.P14146259524920499561

namespace A022125

/-- `A022120(n)+A022090(n)` -/
def P14146259524920499561.Spec : Prop :=
  ∀ n, P14146259524920499561.a n = A022125 n

end A022125

/-! ## A022125.P9598893901777314394

`A022121(n)+A022089(n)`
-/

namespace A022125.P9598893901777314394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022089 n

end

end A022125.P9598893901777314394

namespace A022125

/-- `A022121(n)+A022089(n)` -/
def P9598893901777314394.Spec : Prop :=
  ∀ n, P9598893901777314394.a n = A022125 n

end A022125

/-! ## A022125.P7836637537345947794

`A022122(n)+A022087(n)`
-/

namespace A022125.P7836637537345947794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022087 n

end

end A022125.P7836637537345947794

namespace A022125

/-- `A022122(n)+A022087(n)` -/
def P7836637537345947794.Spec : Prop :=
  ∀ n, P7836637537345947794.a n = A022125 n

end A022125

/-! ## A022125.P8816154238344258957

`A022123(n)+A022086(n)`
-/

namespace A022125.P8816154238344258957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022086 n

end

end A022125.P8816154238344258957

namespace A022125

/-- `A022123(n)+A022086(n)` -/
def P8816154238344258957.Spec : Prop :=
  ∀ n, P8816154238344258957.a n = A022125 n

end A022125

/-! ## A022125.P11643607688159308513

`A022379(n)+A022088(n)`
-/

namespace A022125.P11643607688159308513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022088 n

end

end A022125.P11643607688159308513

namespace A022125

/-- `A022379(n)+A022088(n)` -/
def P11643607688159308513.Spec : Prop :=
  ∀ n, P11643607688159308513.a n = A022125 n

end A022125

/-! ## A022125.P12340923810791689319

`A048577(n)+A022315(n)`
-/

namespace A022125.P12340923810791689319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022315 n

end

end A022125.P12340923810791689319

namespace A022125

/-- `A048577(n)+A022315(n)` -/
def P12340923810791689319.Spec : Prop :=
  ∀ n, P12340923810791689319.a n = A022125 n

end A022125

/-! ## A022125.P18324335333114152863

`A104449(n)+A022347(n)`
-/

namespace A022125.P18324335333114152863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022347 n

end

end A022125.P18324335333114152863

namespace A022125

/-- `A104449(n)+A022347(n)` -/
def P18324335333114152863.Spec : Prop :=
  ∀ n, P18324335333114152863.a n = A022125 n

end A022125

/-!
# A022126: Fibonacci sequence beginning 3, 16.

The programs for A022126, the canonical program `A022126.P11266637359630518003` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022126 has offset 0).

The definition of A022126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022126.P11266637359630518003

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022126

/-- `a(n-1)+a(n-2)` -/
def P11266637359630518003.Spec : Prop :=
  ∀ n, (P11266637359630518003.a n : ℤ) = A022126 n

theorem P11266637359630518003.correct : P11266637359630518003.Spec := by
  intro n
  simp only [A022126]

end A022126

/-! ## A022126.P6856945645658861389

`ogf((3+13x)/(1-x-x^2))`
-/

namespace A022126.P6856945645658861389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 13] [1, -1, -1] n

end

end A022126.P6856945645658861389

namespace A022126

/-- `ogf((3+13x)/(1-x-x^2))` -/
def P6856945645658861389.Spec : Prop :=
  ∀ n, P6856945645658861389.a n = A022126 n

end A022126

/-! ## A022126.P16666332736334176769

`A022105(n)+A000032(n)`
-/

namespace A022126.P16666332736334176769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A000032 n

end

end A022126.P16666332736334176769

namespace A022126

/-- `A022105(n)+A000032(n)` -/
def P16666332736334176769.Spec : Prop :=
  ∀ n, P16666332736334176769.a n = A022126 n

end A022126

/-! ## A022126.P120893000308595491

`A022381(n)+A000045(n)`
-/

namespace A022126.P120893000308595491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A000045 n

end

end A022126.P120893000308595491

namespace A022126

/-- `A022381(n)+A000045(n)` -/
def P120893000308595491.Spec : Prop :=
  ∀ n, P120893000308595491.a n = A022126 n

end A022126

/-! ## A022126.P18230907651237957694

`A022368(n)+A000285(n)`
-/

namespace A022126.P18230907651237957694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A000285 n

end

end A022126.P18230907651237957694

namespace A022126

/-- `A022368(n)+A000285(n)` -/
def P18230907651237957694.Spec : Prop :=
  ∀ n, P18230907651237957694.a n = A022126 n

end A022126

/-! ## A022126.P4008237528625781463

`A022101(n)+A001060(n)`
-/

namespace A022126.P4008237528625781463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A001060 n

end

end A022126.P4008237528625781463

namespace A022126

/-- `A022101(n)+A001060(n)` -/
def P4008237528625781463.Spec : Prop :=
  ∀ n, P4008237528625781463.a n = A022126 n

end A022126

/-! ## A022126.P17533459828667235482

`A022348(n)+A013655(n)`
-/

namespace A022126.P17533459828667235482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A013655 n

end

end A022126.P17533459828667235482

namespace A022126

/-- `A022348(n)+A013655(n)` -/
def P17533459828667235482.Spec : Prop :=
  ∀ n, P17533459828667235482.a n = A022126 n

end A022126

/-! ## A022126.P10535229336261046270

`A022103(n)+A020695(n)`
-/

namespace A022126.P10535229336261046270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A020695 n

end

end A022126.P10535229336261046270

namespace A022126

/-- `A022103(n)+A020695(n)` -/
def P10535229336261046270.Spec : Prop :=
  ∀ n, P10535229336261046270.a n = A022126 n

end A022126

/-! ## A022126.P2101733607120856232

`A022345(n)+A020701(n)`
-/

namespace A022126.P2101733607120856232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A020701 n

end

end A022126.P2101733607120856232

namespace A022126

/-- `A022345(n)+A020701(n)` -/
def P2101733607120856232.Spec : Prop :=
  ∀ n, P2101733607120856232.a n = A022126 n

end A022126

/-! ## A022126.P15897471998021880979

`A022112(n)+A022100(n)`
-/

namespace A022126.P15897471998021880979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022100 n

end

end A022126.P15897471998021880979

namespace A022126

/-- `A022112(n)+A022100(n)` -/
def P15897471998021880979.Spec : Prop :=
  ∀ n, P15897471998021880979.a n = A022126 n

end A022126

/-! ## A022126.P10006400100966083205

`A022113(n)+A022099(n)`
-/

namespace A022126.P10006400100966083205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022099 n

end

end A022126.P10006400100966083205

namespace A022126

/-- `A022113(n)+A022099(n)` -/
def P10006400100966083205.Spec : Prop :=
  ∀ n, P10006400100966083205.a n = A022126 n

end A022126

/-! ## A022126.P9227192132771737699

`A022114(n)+A022097(n)`
-/

namespace A022126.P9227192132771737699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022097 n

end

end A022126.P9227192132771737699

namespace A022126

/-- `A022114(n)+A022097(n)` -/
def P9227192132771737699.Spec : Prop :=
  ∀ n, P9227192132771737699.a n = A022126 n

end A022126

/-! ## A022126.P1382520621174932274

`A022115(n)+A022095(n)`
-/

namespace A022126.P1382520621174932274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022095 n

end

end A022126.P1382520621174932274

namespace A022126

/-- `A022115(n)+A022095(n)` -/
def P1382520621174932274.Spec : Prop :=
  ∀ n, P1382520621174932274.a n = A022126 n

end A022126

/-! ## A022126.P3013049507236532985

`A022120(n)+A022092(n)`
-/

namespace A022126.P3013049507236532985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022092 n

end

end A022126.P3013049507236532985

namespace A022126

/-- `A022120(n)+A022092(n)` -/
def P3013049507236532985.Spec : Prop :=
  ∀ n, P3013049507236532985.a n = A022126 n

end A022126

/-! ## A022126.P5966860143702384168

`A022121(n)+A022091(n)`
-/

namespace A022126.P5966860143702384168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022091 n

end

end A022126.P5966860143702384168

namespace A022126

/-- `A022121(n)+A022091(n)` -/
def P5966860143702384168.Spec : Prop :=
  ∀ n, P5966860143702384168.a n = A022126 n

end A022126

/-! ## A022126.P2457760285111765838

`A022122(n)+A022089(n)`
-/

namespace A022126.P2457760285111765838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022089 n

end

end A022126.P2457760285111765838

namespace A022126

/-- `A022122(n)+A022089(n)` -/
def P2457760285111765838.Spec : Prop :=
  ∀ n, P2457760285111765838.a n = A022126 n

end A022126

/-! ## A022126.P5070004376822915413

`A022123(n)+A022088(n)`
-/

namespace A022126.P5070004376822915413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022088 n

end

end A022126.P5070004376822915413

namespace A022126

/-- `A022123(n)+A022088(n)` -/
def P5070004376822915413.Spec : Prop :=
  ∀ n, P5070004376822915413.a n = A022126 n

end A022126

/-! ## A022126.P9109303429219689152

`A022124(n)+A022086(n)`
-/

namespace A022126.P9109303429219689152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022086 n

end

end A022126.P9109303429219689152

namespace A022126

/-- `A022124(n)+A022086(n)` -/
def P9109303429219689152.Spec : Prop :=
  ∀ n, P9109303429219689152.a n = A022126 n

end A022126

/-! ## A022126.P14155261707711973908

`A022367(n)+A022096(n)`
-/

namespace A022126.P14155261707711973908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022096 n

end

end A022126.P14155261707711973908

namespace A022126

/-- `A022367(n)+A022096(n)` -/
def P14155261707711973908.Spec : Prop :=
  ∀ n, P14155261707711973908.a n = A022126 n

end A022126

/-! ## A022126.P16441436625739581799

`A022379(n)+A022090(n)`
-/

namespace A022126.P16441436625739581799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022090 n

end

end A022126.P16441436625739581799

namespace A022126

/-- `A022379(n)+A022090(n)` -/
def P16441436625739581799.Spec : Prop :=
  ∀ n, P16441436625739581799.a n = A022126 n

end A022126

/-!
# A022127: Fibonacci sequence beginning 3, 17.

The programs for A022127, the canonical program `A022127.P4966419772073184828` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022127 has offset 0).

The definition of A022127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022127.P4966419772073184828

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022127

/-- `a(n-1)+a(n-2)` -/
def P4966419772073184828.Spec : Prop :=
  ∀ n, (P4966419772073184828.a n : ℤ) = A022127 n

theorem P4966419772073184828.correct : P4966419772073184828.Spec := by
  intro n
  simp only [A022127]

end A022127

/-! ## A022127.P9293646336049251721

`ogf((3+14x)/(1-x-x^2))`
-/

namespace A022127.P9293646336049251721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 14] [1, -1, -1] n

end

end A022127.P9293646336049251721

namespace A022127

/-- `ogf((3+14x)/(1-x-x^2))` -/
def P9293646336049251721.Spec : Prop :=
  ∀ n, P9293646336049251721.a n = A022127 n

end A022127

/-! ## A022127.P4002967130815645764

`A022106(n)+A000032(n)`
-/

namespace A022127.P4002967130815645764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A000032 n

end

end A022127.P4002967130815645764

namespace A022127

/-- `A022106(n)+A000032(n)` -/
def P4002967130815645764.Spec : Prop :=
  ∀ n, P4002967130815645764.a n = A022127 n

end A022127

/-! ## A022127.P2101302442880383500

`A022126(n)+A000045(n)`
-/

namespace A022127.P2101302442880383500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A000045 n

end

end A022127.P2101302442880383500

namespace A022127

/-- `A022126(n)+A000045(n)` -/
def P2101302442880383500.Spec : Prop :=
  ∀ n, P2101302442880383500.a n = A022127 n

end A022127

/-! ## A022127.P6251048258957718697

`A022116(n)+A000285(n)`
-/

namespace A022127.P6251048258957718697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A000285 n

end

end A022127.P6251048258957718697

namespace A022127

/-- `A022116(n)+A000285(n)` -/
def P6251048258957718697.Spec : Prop :=
  ∀ n, P6251048258957718697.a n = A022127 n

end A022127

/-! ## A022127.P1721899733978585819

`A022102(n)+A001060(n)`
-/

namespace A022127.P1721899733978585819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A001060 n

end

end A022127.P1721899733978585819

namespace A022127

/-- `A022102(n)+A001060(n)` -/
def P1721899733978585819.Spec : Prop :=
  ∀ n, P1721899733978585819.a n = A022127 n

end A022127

/-! ## A022127.P10710230405217542774

`A022349(n)+A013655(n)`
-/

namespace A022127.P10710230405217542774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A013655 n

end

end A022127.P10710230405217542774

namespace A022127

/-- `A022349(n)+A013655(n)` -/
def P10710230405217542774.Spec : Prop :=
  ∀ n, P10710230405217542774.a n = A022127 n

end A022127

/-! ## A022127.P804139394937617345

`A022104(n)+A020695(n)`
-/

namespace A022127.P804139394937617345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A020695 n

end

end A022127.P804139394937617345

namespace A022127

/-- `A022104(n)+A020695(n)` -/
def P804139394937617345.Spec : Prop :=
  ∀ n, P804139394937617345.a n = A022127 n

end A022127

/-! ## A022127.P12953360382605006990

`A022346(n)+A020701(n)`
-/

namespace A022127.P12953360382605006990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A020701 n

end

end A022127.P12953360382605006990

namespace A022127

/-- `A022346(n)+A020701(n)` -/
def P12953360382605006990.Spec : Prop :=
  ∀ n, P12953360382605006990.a n = A022127 n

end A022127

/-! ## A022127.P2686226063861264111

`A022112(n)+A022101(n)`
-/

namespace A022127.P2686226063861264111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022101 n

end

end A022127.P2686226063861264111

namespace A022127

/-- `A022112(n)+A022101(n)` -/
def P2686226063861264111.Spec : Prop :=
  ∀ n, P2686226063861264111.a n = A022127 n

end A022127

/-! ## A022127.P13764364766087305522

`A022113(n)+A022100(n)`
-/

namespace A022127.P13764364766087305522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022100 n

end

end A022127.P13764364766087305522

namespace A022127

/-- `A022113(n)+A022100(n)` -/
def P13764364766087305522.Spec : Prop :=
  ∀ n, P13764364766087305522.a n = A022127 n

end A022127

/-! ## A022127.P11464165097473056793

`A022114(n)+A022098(n)`
-/

namespace A022127.P11464165097473056793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022098 n

end

end A022127.P11464165097473056793

namespace A022127

/-- `A022114(n)+A022098(n)` -/
def P11464165097473056793.Spec : Prop :=
  ∀ n, P11464165097473056793.a n = A022127 n

end A022127

/-! ## A022127.P902623899021050693

`A022115(n)+A022096(n)`
-/

namespace A022127.P902623899021050693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022096 n

end

end A022127.P902623899021050693

namespace A022127

/-- `A022115(n)+A022096(n)` -/
def P902623899021050693.Spec : Prop :=
  ∀ n, P902623899021050693.a n = A022127 n

end A022127

/-! ## A022127.P14118714618225885276

`A022120(n)+A022093(n)`
-/

namespace A022127.P14118714618225885276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022093 n

end

end A022127.P14118714618225885276

namespace A022127

/-- `A022120(n)+A022093(n)` -/
def P14118714618225885276.Spec : Prop :=
  ∀ n, P14118714618225885276.a n = A022127 n

end A022127

/-! ## A022127.P12714477879914317687

`A022121(n)+A022092(n)`
-/

namespace A022127.P12714477879914317687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022092 n

end

end A022127.P12714477879914317687

namespace A022127

/-- `A022121(n)+A022092(n)` -/
def P12714477879914317687.Spec : Prop :=
  ∀ n, P12714477879914317687.a n = A022127 n

end A022127

/-! ## A022127.P14159815239427955831

`A022122(n)+A022090(n)`
-/

namespace A022127.P14159815239427955831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022090 n

end

end A022127.P14159815239427955831

namespace A022127

/-- `A022122(n)+A022090(n)` -/
def P14159815239427955831.Spec : Prop :=
  ∀ n, P14159815239427955831.a n = A022127 n

end A022127

/-! ## A022127.P9890121870970765499

`A022123(n)+A022089(n)`
-/

namespace A022127.P9890121870970765499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022089 n

end

end A022127.P9890121870970765499

namespace A022127

/-- `A022123(n)+A022089(n)` -/
def P9890121870970765499.Spec : Prop :=
  ∀ n, P9890121870970765499.a n = A022127 n

end A022127

/-! ## A022127.P18258293654227607854

`A022124(n)+A022087(n)`
-/

namespace A022127.P18258293654227607854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022087 n

end

end A022127.P18258293654227607854

namespace A022127

/-- `A022124(n)+A022087(n)` -/
def P18258293654227607854.Spec : Prop :=
  ∀ n, P18258293654227607854.a n = A022127 n

end A022127

/-! ## A022127.P14657054372271815095

`A022125(n)+A022086(n)`
-/

namespace A022127.P14657054372271815095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022086 n

end

end A022127.P14657054372271815095

namespace A022127

/-- `A022125(n)+A022086(n)` -/
def P14657054372271815095.Spec : Prop :=
  ∀ n, P14657054372271815095.a n = A022127 n

end A022127

/-! ## A022127.P4533589527409918056

`A022367(n)+A022097(n)`
-/

namespace A022127.P4533589527409918056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022097 n

end

end A022127.P4533589527409918056

namespace A022127

/-- `A022367(n)+A022097(n)` -/
def P4533589527409918056.Spec : Prop :=
  ∀ n, P4533589527409918056.a n = A022127 n

end A022127

/-!
# A022128: Fibonacci sequence beginning 3, 19.

The programs for A022128, the canonical program `A022128.P3176965383173662515` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022128 has offset 0).

The definition of A022128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022128.P13976592977333762737

`ogf((3+16x)/(1-x-x^2))`
-/

namespace A022128.P13976592977333762737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 16] [1, -1, -1] n

end

end A022128.P13976592977333762737

namespace A022128

/-- `ogf((3+16x)/(1-x-x^2))` -/
def P13976592977333762737.Spec : Prop :=
  ∀ n, P13976592977333762737.a n = A022128 n

end A022128

/-! ## A022128.P3176965383173662515

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022128

/-- `a(n-1)+a(n-2)` -/
def P3176965383173662515.Spec : Prop :=
  ∀ n, (P3176965383173662515.a n : ℤ) = A022128 n

theorem P3176965383173662515.correct : P3176965383173662515.Spec := by
  intro n
  simp only [A022128]

end A022128

/-! ## A022128.P15860258237550015058

`A022108(n)+A000032(n)`
-/

namespace A022128.P15860258237550015058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A000032 n

end

end A022128.P15860258237550015058

namespace A022128

/-- `A022108(n)+A000032(n)` -/
def P15860258237550015058.Spec : Prop :=
  ∀ n, P15860258237550015058.a n = A022128 n

end A022128

/-! ## A022128.P17279324016697306958

`A022117(n)+A000285(n)`
-/

namespace A022128.P17279324016697306958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A000285 n

end

end A022128.P17279324016697306958

namespace A022128

/-- `A022117(n)+A000285(n)` -/
def P17279324016697306958.Spec : Prop :=
  ∀ n, P17279324016697306958.a n = A022128 n

end A022128

/-! ## A022128.P11264932380630084790

`A022104(n)+A001060(n)`
-/

namespace A022128.P11264932380630084790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A001060 n

end

end A022128.P11264932380630084790

namespace A022128

/-- `A022104(n)+A001060(n)` -/
def P11264932380630084790.Spec : Prop :=
  ∀ n, P11264932380630084790.a n = A022128 n

end A022128

/-! ## A022128.P17368036359798578560

`A022351(n)+A013655(n)`
-/

namespace A022128.P17368036359798578560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A013655 n

end

end A022128.P17368036359798578560

namespace A022128

/-- `A022351(n)+A013655(n)` -/
def P17368036359798578560.Spec : Prop :=
  ∀ n, P17368036359798578560.a n = A022128 n

end A022128

/-! ## A022128.P10346078291774261998

`A022106(n)+A020695(n)`
-/

namespace A022128.P10346078291774261998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A020695 n

end

end A022128.P10346078291774261998

namespace A022128

/-- `A022106(n)+A020695(n)` -/
def P10346078291774261998.Spec : Prop :=
  ∀ n, P10346078291774261998.a n = A022128 n

end A022128

/-! ## A022128.P14051171913889839815

`A022348(n)+A020701(n)`
-/

namespace A022128.P14051171913889839815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A020701 n

end

end A022128.P14051171913889839815

namespace A022128

/-- `A022348(n)+A020701(n)` -/
def P14051171913889839815.Spec : Prop :=
  ∀ n, P14051171913889839815.a n = A022128 n

end A022128

/-! ## A022128.P16702971056304936107

`A022112(n)+A022103(n)`
-/

namespace A022128.P16702971056304936107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022103 n

end

end A022128.P16702971056304936107

namespace A022128

/-- `A022112(n)+A022103(n)` -/
def P16702971056304936107.Spec : Prop :=
  ∀ n, P16702971056304936107.a n = A022128 n

end A022128

/-! ## A022128.P11957719813844799977

`A022113(n)+A022102(n)`
-/

namespace A022128.P11957719813844799977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022102 n

end

end A022128.P11957719813844799977

namespace A022128

/-- `A022113(n)+A022102(n)` -/
def P11957719813844799977.Spec : Prop :=
  ∀ n, P11957719813844799977.a n = A022128 n

end A022128

/-! ## A022128.P11979895539295155385

`A022114(n)+A022100(n)`
-/

namespace A022128.P11979895539295155385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022100 n

end

end A022128.P11979895539295155385

namespace A022128

/-- `A022114(n)+A022100(n)` -/
def P11979895539295155385.Spec : Prop :=
  ∀ n, P11979895539295155385.a n = A022128 n

end A022128

/-! ## A022128.P1688632478069547394

`A022115(n)+A022098(n)`
-/

namespace A022128.P1688632478069547394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022098 n

end

end A022128.P1688632478069547394

namespace A022128

/-- `A022115(n)+A022098(n)` -/
def P1688632478069547394.Spec : Prop :=
  ∀ n, P1688632478069547394.a n = A022128 n

end A022128

/-! ## A022128.P3055288326089931842

`A022116(n)+A022096(n)`
-/

namespace A022128.P3055288326089931842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022096 n

end

end A022128.P3055288326089931842

namespace A022128

/-- `A022116(n)+A022096(n)` -/
def P3055288326089931842.Spec : Prop :=
  ∀ n, P3055288326089931842.a n = A022128 n

end A022128

/-! ## A022128.P16907359142400605901

`A022122(n)+A022092(n)`
-/

namespace A022128.P16907359142400605901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022092 n

end

end A022128.P16907359142400605901

namespace A022128

/-- `A022122(n)+A022092(n)` -/
def P16907359142400605901.Spec : Prop :=
  ∀ n, P16907359142400605901.a n = A022128 n

end A022128

/-! ## A022128.P1032620887654913377

`A022123(n)+A022091(n)`
-/

namespace A022128.P1032620887654913377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022091 n

end

end A022128.P1032620887654913377

namespace A022128

/-- `A022123(n)+A022091(n)` -/
def P1032620887654913377.Spec : Prop :=
  ∀ n, P1032620887654913377.a n = A022128 n

end A022128

/-! ## A022128.P7075524284771226554

`A022124(n)+A022089(n)`
-/

namespace A022128.P7075524284771226554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022089 n

end

end A022128.P7075524284771226554

namespace A022128

/-- `A022124(n)+A022089(n)` -/
def P7075524284771226554.Spec : Prop :=
  ∀ n, P7075524284771226554.a n = A022128 n

end A022128

/-! ## A022128.P6497742650412873007

`A022125(n)+A022088(n)`
-/

namespace A022128.P6497742650412873007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022088 n

end

end A022128.P6497742650412873007

namespace A022128

/-- `A022125(n)+A022088(n)` -/
def P6497742650412873007.Spec : Prop :=
  ∀ n, P6497742650412873007.a n = A022128 n

end A022128

/-! ## A022128.P5883625856359666908

`A022126(n)+A022086(n)`
-/

namespace A022128.P5883625856359666908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A022086 n

end

end A022128.P5883625856359666908

namespace A022128

/-- `A022126(n)+A022086(n)` -/
def P5883625856359666908.Spec : Prop :=
  ∀ n, P5883625856359666908.a n = A022128 n

end A022128

/-! ## A022128.P8456234782589939234

`A022345(n)+A022121(n)`
-/

namespace A022128.P8456234782589939234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022121 n

end

end A022128.P8456234782589939234

namespace A022128

/-- `A022345(n)+A022121(n)` -/
def P8456234782589939234.Spec : Prop :=
  ∀ n, P8456234782589939234.a n = A022128 n

end A022128

/-! ## A022128.P14591002264269723965

`A022346(n)+A022120(n)`
-/

namespace A022128.P14591002264269723965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022120 n

end

end A022128.P14591002264269723965

namespace A022128

/-- `A022346(n)+A022120(n)` -/
def P14591002264269723965.Spec : Prop :=
  ∀ n, P14591002264269723965.a n = A022128 n

end A022128

/-!
# A022129: Fibonacci sequence beginning 3, 20.

The programs for A022129, the canonical program `A022129.P1775608923007074751` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022129 has offset 0).

The definition of A022129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022129.P16121776518884796299

`ogf((3+17x)/(1-x-x^2))`
-/

namespace A022129.P16121776518884796299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 17] [1, -1, -1] n

end

end A022129.P16121776518884796299

namespace A022129

/-- `ogf((3+17x)/(1-x-x^2))` -/
def P16121776518884796299.Spec : Prop :=
  ∀ n, P16121776518884796299.a n = A022129 n

end A022129

/-! ## A022129.P1775608923007074751

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022129

/-- `a(n-1)+a(n-2)` -/
def P1775608923007074751.Spec : Prop :=
  ∀ n, (P1775608923007074751.a n : ℤ) = A022129 n

theorem P1775608923007074751.correct : P1775608923007074751.Spec := by
  intro n
  simp only [A022129]

end A022129

/-! ## A022129.P127433049306947595

`a(n-1)-floor(-a(n-2))` with `a(0)=3, a(1)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A022129.P127433049306947595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 20] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022129.P127433049306947595

namespace A022129

/-- `a(n-1)-floor(-a(n-2))` -/
def P127433049306947595.Spec : Prop :=
  ∀ n, P127433049306947595.a n = A022129 n

end A022129

/-! ## A022129.P13915850748300273851

`a(n-1)-ceil(-a(n-2))` with `a(0)=3, a(1)=20`

`ceil` is left out, it is the identity on integers.
-/

namespace A022129.P13915850748300273851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 20] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022129.P13915850748300273851

namespace A022129

/-- `a(n-1)-ceil(-a(n-2))` -/
def P13915850748300273851.Spec : Prop :=
  ∀ n, P13915850748300273851.a n = A022129 n

end A022129

/-! ## A022129.P13081288972461022161

`A022109(n)+A000032(n)`
-/

namespace A022129.P13081288972461022161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A000032 n

end

end A022129.P13081288972461022161

namespace A022129

/-- `A022109(n)+A000032(n)` -/
def P13081288972461022161.Spec : Prop :=
  ∀ n, P13081288972461022161.a n = A022129 n

end A022129

/-! ## A022129.P3772819421749323871

`A022128(n)+A000045(n)`
-/

namespace A022129.P3772819421749323871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022128 n + A000045 n

end

end A022129.P3772819421749323871

namespace A022129

/-- `A022128(n)+A000045(n)` -/
def P3772819421749323871.Spec : Prop :=
  ∀ n, P3772819421749323871.a n = A022129 n

end A022129

/-! ## A022129.P7969501179251719536

`A022370(n)+A000285(n)`
-/

namespace A022129.P7969501179251719536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n + A000285 n

end

end A022129.P7969501179251719536

namespace A022129

/-- `A022370(n)+A000285(n)` -/
def P7969501179251719536.Spec : Prop :=
  ∀ n, P7969501179251719536.a n = A022129 n

end A022129

/-! ## A022129.P755175456680311650

`A022105(n)+A001060(n)`
-/

namespace A022129.P755175456680311650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A001060 n

end

end A022129.P755175456680311650

namespace A022129

/-- `A022105(n)+A001060(n)` -/
def P755175456680311650.Spec : Prop :=
  ∀ n, P755175456680311650.a n = A022129 n

end A022129

/-! ## A022129.P788752469877339844

`A022352(n)+A013655(n)`
-/

namespace A022129.P788752469877339844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A013655 n

end

end A022129.P788752469877339844

namespace A022129

/-- `A022352(n)+A013655(n)` -/
def P788752469877339844.Spec : Prop :=
  ∀ n, P788752469877339844.a n = A022129 n

end A022129

/-! ## A022129.P8189607474800998954

`A022107(n)+A020695(n)`
-/

namespace A022129.P8189607474800998954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A020695 n

end

end A022129.P8189607474800998954

namespace A022129

/-- `A022107(n)+A020695(n)` -/
def P8189607474800998954.Spec : Prop :=
  ∀ n, P8189607474800998954.a n = A022129 n

end A022129

/-! ## A022129.P9464392898868355551

`A022349(n)+A020701(n)`
-/

namespace A022129.P9464392898868355551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A020701 n

end

end A022129.P9464392898868355551

namespace A022129

/-- `A022349(n)+A020701(n)` -/
def P9464392898868355551.Spec : Prop :=
  ∀ n, P9464392898868355551.a n = A022129 n

end A022129

/-! ## A022129.P11233762025652987456

`A022112(n)+A022104(n)`
-/

namespace A022129.P11233762025652987456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022104 n

end

end A022129.P11233762025652987456

namespace A022129

/-- `A022112(n)+A022104(n)` -/
def P11233762025652987456.Spec : Prop :=
  ∀ n, P11233762025652987456.a n = A022129 n

end A022129

/-! ## A022129.P7767716133054761999

`A022113(n)+A022103(n)`
-/

namespace A022129.P7767716133054761999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022103 n

end

end A022129.P7767716133054761999

namespace A022129

/-- `A022113(n)+A022103(n)` -/
def P7767716133054761999.Spec : Prop :=
  ∀ n, P7767716133054761999.a n = A022129 n

end A022129

/-! ## A022129.P994750083297526585

`A022114(n)+A022101(n)`
-/

namespace A022129.P994750083297526585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022101 n

end

end A022129.P994750083297526585

namespace A022129

/-- `A022114(n)+A022101(n)` -/
def P994750083297526585.Spec : Prop :=
  ∀ n, P994750083297526585.a n = A022129 n

end A022129

/-! ## A022129.P11131997530171192920

`A022115(n)+A022099(n)`
-/

namespace A022129.P11131997530171192920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022099 n

end

end A022129.P11131997530171192920

namespace A022129

/-- `A022115(n)+A022099(n)` -/
def P11131997530171192920.Spec : Prop :=
  ∀ n, P11131997530171192920.a n = A022129 n

end A022129

/-! ## A022129.P1986186615715204504

`A022116(n)+A022097(n)`
-/

namespace A022129.P1986186615715204504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022097 n

end

end A022129.P1986186615715204504

namespace A022129

/-- `A022116(n)+A022097(n)` -/
def P1986186615715204504.Spec : Prop :=
  ∀ n, P1986186615715204504.a n = A022129 n

end A022129

/-! ## A022129.P16157249007583860923

`A022117(n)+A022095(n)`
-/

namespace A022129.P16157249007583860923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022095 n

end

end A022129.P16157249007583860923

namespace A022129

/-- `A022117(n)+A022095(n)` -/
def P16157249007583860923.Spec : Prop :=
  ∀ n, P16157249007583860923.a n = A022129 n

end A022129

/-! ## A022129.P14123225271607280609

`A022122(n)+A022093(n)`
-/

namespace A022129.P14123225271607280609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022093 n

end

end A022129.P14123225271607280609

namespace A022129

/-- `A022122(n)+A022093(n)` -/
def P14123225271607280609.Spec : Prop :=
  ∀ n, P14123225271607280609.a n = A022129 n

end A022129

/-! ## A022129.P3439242009673963831

`A022123(n)+A022092(n)`
-/

namespace A022129.P3439242009673963831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022092 n

end

end A022129.P3439242009673963831

namespace A022129

/-- `A022123(n)+A022092(n)` -/
def P3439242009673963831.Spec : Prop :=
  ∀ n, P3439242009673963831.a n = A022129 n

end A022129

/-! ## A022129.P12225014085176162558

`A022124(n)+A022090(n)`
-/

namespace A022129.P12225014085176162558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022090 n

end

end A022129.P12225014085176162558

namespace A022129

/-- `A022124(n)+A022090(n)` -/
def P12225014085176162558.Spec : Prop :=
  ∀ n, P12225014085176162558.a n = A022129 n

end A022129

/-!
# A022130: Fibonacci sequence beginning 4,9.

The programs for A022130, the canonical program `A022130.P15987238540814688710` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022130 has offset 0).

The definition of A022130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022130.P15987238540814688710

`4*A000045(n+2)+A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022130

/-- `4*A000045(n+2)+A000045(n)` -/
def P15987238540814688710.Spec : Prop :=
  ∀ n, P15987238540814688710.a n = A022130 n

theorem P15987238540814688710.correct : P15987238540814688710.Spec := by
  intro n
  simp only [A022130]

end A022130

/-! ## A022130.P11601031081735266006

`ogf((4+5x)/(1-x-x^2))`
-/

namespace A022130.P11601031081735266006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, -1, -1] n

end

end A022130.P11601031081735266006

namespace A022130

/-- `ogf((4+5x)/(1-x-x^2))` -/
def P11601031081735266006.Spec : Prop :=
  ∀ n, P11601031081735266006.a n = A022130 n

end A022130

/-! ## A022130.P10229565435972400193

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=9`
-/

namespace A022130.P10229565435972400193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022130.P10229565435972400193

namespace A022130

/-- `a(n-1)+a(n-2)` -/
def P10229565435972400193.Spec : Prop :=
  ∀ n, (P10229565435972400193.a n : ℤ) = A022130 n

end A022130

/-! ## A022130.P11704513125995372802

`a(n-1)-floor(-a(n-2))` with `a(0)=4, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A022130.P11704513125995372802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022130.P11704513125995372802

namespace A022130

/-- `a(n-1)-floor(-a(n-2))` -/
def P11704513125995372802.Spec : Prop :=
  ∀ n, P11704513125995372802.a n = A022130 n

end A022130

/-! ## A022130.P913936223809232933

`a(n-1)-ceil(-a(n-2))` with `a(0)=4, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A022130.P913936223809232933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022130.P913936223809232933

namespace A022130

/-- `a(n-1)-ceil(-a(n-2))` -/
def P913936223809232933.Spec : Prop :=
  ∀ n, P913936223809232933.a n = A022130 n

end A022130

/-! ## A022130.P5146269738678909074

`a(n-1)-round(-a(n-2))` with `a(0)=4, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A022130.P5146269738678909074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022130.P5146269738678909074

namespace A022130

/-- `a(n-1)-round(-a(n-2))` -/
def P5146269738678909074.Spec : Prop :=
  ∀ n, P5146269738678909074.a n = A022130 n

end A022130

/-! ## A022130.P11786339240581086522

`A022407(n)+1`
-/

namespace A022130.P11786339240581086522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n + 1

end

end A022130.P11786339240581086522

namespace A022130

/-- `A022407(n)+1` -/
def P11786339240581086522.Spec : Prop :=
  ∀ n, P11786339240581086522.a n = A022130 n

end A022130

/-! ## A022130.P6295725173909606435

`A187892(n+2)-1`
-/

namespace A022130.P6295725173909606435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 (n + 2) - 1

end

end A022130.P6295725173909606435

namespace A022130

/-- `A187892(n+2)-1` -/
def P6295725173909606435.Spec : Prop :=
  ∀ n, P6295725173909606435.a n = A022130 n

end A022130

/-! ## A022130.P6377161455273376499

`A020701(n)+A000285(n)`
-/

namespace A022130.P6377161455273376499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + A000285 n

end

end A022130.P6377161455273376499

namespace A022130

/-- `A020701(n)+A000285(n)` -/
def P6377161455273376499.Spec : Prop :=
  ∀ n, P6377161455273376499.a n = A022130 n

end A022130

/-! ## A022130.P2627052553010801300

`A022321(n)+A001612(n)`
-/

namespace A022130.P2627052553010801300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A001612 n

end

end A022130.P2627052553010801300

namespace A022130

/-- `A022321(n)+A001612(n)` -/
def P2627052553010801300.Spec : Prop :=
  ∀ n, P2627052553010801300.a n = A022130 n

end A022130

/-! ## A022130.P8065028269346894277

`A022406(n)+A001611(n)`
-/

namespace A022130.P8065028269346894277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n + A001611 n

end

end A022130.P8065028269346894277

namespace A022130

/-- `A022406(n)+A001611(n)` -/
def P8065028269346894277.Spec : Prop :=
  ∀ n, P8065028269346894277.a n = A022130 n

end A022130

/-! ## A022130.P15752939442032361070

`A022097(n)+A013655(n)`
-/

namespace A022130.P15752939442032361070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A013655 n

end

end A022130.P15752939442032361070

namespace A022130

/-- `A022097(n)+A013655(n)` -/
def P15752939442032361070.Spec : Prop :=
  ∀ n, P15752939442032361070.a n = A022130 n

end A022130

/-! ## A022130.P6935170122168450322

`A022112(n)+A020695(n)`
-/

namespace A022130.P6935170122168450322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A020695 n

end

end A022130.P6935170122168450322

namespace A022130

/-- `A022112(n)+A020695(n)` -/
def P6935170122168450322.Spec : Prop :=
  ∀ n, P6935170122168450322.a n = A022130 n

end A022130

/-! ## A022130.P11592386813955230084

`A022308(n)+A020706(n)`
-/

namespace A022130.P11592386813955230084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A020706 n

end

end A022130.P11592386813955230084

namespace A022130

/-- `A022308(n)+A020706(n)` -/
def P11592386813955230084.Spec : Prop :=
  ∀ n, P11592386813955230084.a n = A022130 n

end A022130

/-! ## A022130.P13413855570183025098

`A048577(n)+A022319(n)`
-/

namespace A022130.P13413855570183025098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022319 n

end

end A022130.P13413855570183025098

namespace A022130

/-- `A048577(n)+A022319(n)` -/
def P13413855570183025098.Spec : Prop :=
  ∀ n, P13413855570183025098.a n = A022130 n

end A022130

/-! ## A022130.P4594422175966723371

`A104449(n)+A022098(n)`
-/

namespace A022130.P4594422175966723371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022098 n

end

end A022130.P4594422175966723371

namespace A022130

/-- `A104449(n)+A022098(n)` -/
def P4594422175966723371.Spec : Prop :=
  ∀ n, P4594422175966723371.a n = A022130 n

end A022130

/-! ## A022130.P12977165508321570074

`A118658(n)+A022114(n)`
-/

namespace A022130.P12977165508321570074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022114 n

end

end A022130.P12977165508321570074

namespace A022130

/-- `A118658(n)+A022114(n)` -/
def P12977165508321570074.Spec : Prop :=
  ∀ n, P12977165508321570074.a n = A022130 n

end A022130

/-! ## A022130.P17271124729662867959

`A152163(n)+A022122(n)`
-/

namespace A022130.P17271124729662867959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022122 n

end

end A022130.P17271124729662867959

namespace A022130

/-- `A152163(n)+A022122(n)` -/
def P17271124729662867959.Spec : Prop :=
  ∀ n, P17271124729662867959.a n = A022130 n

end A022130

/-! ## A022130.P10243497616729834358

`A168674(n)+A018910(n)`
-/

namespace A022130.P10243497616729834358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A018910 n

end

end A022130.P10243497616729834358

namespace A022130

/-- `A168674(n)+A018910(n)` -/
def P10243497616729834358.Spec : Prop :=
  ∀ n, P10243497616729834358.a n = A022130 n

end A022130

/-! ## A022130.P11746544595340095386

`A212804(n)+A022379(n)`
-/

namespace A022130.P11746544595340095386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022379 n

end

end A022130.P11746544595340095386

namespace A022130

/-- `A212804(n)+A022379(n)` -/
def P11746544595340095386.Spec : Prop :=
  ∀ n, P11746544595340095386.a n = A022130 n

end A022130

/-!
# A022131: Fibonacci sequence beginning 4, 11.

The programs for A022131, the canonical program `A022131.P12698839390701528726` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022131 has offset 0).

The definition of A022131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022131.P4766379260614466587

`ogf((4+7x)/(1-x-x^2))`
-/

namespace A022131.P4766379260614466587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7] [1, -1, -1] n

end

end A022131.P4766379260614466587

namespace A022131

/-- `ogf((4+7x)/(1-x-x^2))` -/
def P4766379260614466587.Spec : Prop :=
  ∀ n, P4766379260614466587.a n = A022131 n

end A022131

/-! ## A022131.P12698839390701528726

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022131

/-- `a(n-1)+a(n-2)` -/
def P12698839390701528726.Spec : Prop :=
  ∀ n, (P12698839390701528726.a n : ℤ) = A022131 n

theorem P12698839390701528726.correct : P12698839390701528726.Spec := by
  intro n
  simp only [A022131]

end A022131

/-! ## A022131.P5952074129139712832

`A022409(n)+1`
-/

namespace A022131.P5952074129139712832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022409 n + 1

end

end A022131.P5952074129139712832

namespace A022131

/-- `A022409(n)+1` -/
def P5952074129139712832.Spec : Prop :=
  ∀ n, P5952074129139712832.a n = A022131 n

end A022131

/-! ## A022131.P5360682819296733346

`A022120(n)+A000285(n)`
-/

namespace A022131.P5360682819296733346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A000285 n

end

end A022131.P5360682819296733346

namespace A022131

/-- `A022120(n)+A000285(n)` -/
def P5360682819296733346.Spec : Prop :=
  ∀ n, P5360682819296733346.a n = A022131 n

end A022131

/-! ## A022131.P5251487452400030282

`A022367(n)+A000032(n)`
-/

namespace A022131.P5251487452400030282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A000032 n

end

end A022131.P5251487452400030282

namespace A022131

/-- `A022367(n)+A000032(n)` -/
def P5251487452400030282.Spec : Prop :=
  ∀ n, P5251487452400030282.a n = A022131 n

end A022131

/-! ## A022131.P8402949743111760661

`A022382(n)+A000045(n)`
-/

namespace A022131.P8402949743111760661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A000045 n

end

end A022131.P8402949743111760661

namespace A022131

/-- `A022382(n)+A000045(n)` -/
def P8402949743111760661.Spec : Prop :=
  ∀ n, P8402949743111760661.a n = A022131 n

end A022131

/-! ## A022131.P159914652188813460

`A022112(n)+A001060(n)`
-/

namespace A022131.P159914652188813460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A001060 n

end

end A022131.P159914652188813460

namespace A022131

/-- `A022112(n)+A001060(n)` -/
def P159914652188813460.Spec : Prop :=
  ∀ n, P159914652188813460.a n = A022131 n

end A022131

/-! ## A022131.P10521509457649037637

`A022323(n)+A001612(n)`
-/

namespace A022131.P10521509457649037637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A001612 n

end

end A022131.P10521509457649037637

namespace A022131

/-- `A022323(n)+A001612(n)` -/
def P10521509457649037637.Spec : Prop :=
  ∀ n, P10521509457649037637.a n = A022131 n

end A022131

/-! ## A022131.P8711770174474875533

`A022407(n)+A001588(n)`
-/

namespace A022131.P8711770174474875533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n + A001588 n

end

end A022131.P8711770174474875533

namespace A022131

/-- `A022407(n)+A001588(n)` -/
def P8711770174474875533.Spec : Prop :=
  ∀ n, P8711770174474875533.a n = A022131 n

end A022131

/-! ## A022131.P2353249381257731098

`A022408(n)+A001611(n)`
-/

namespace A022131.P2353249381257731098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + A001611 n

end

end A022131.P2353249381257731098

namespace A022131

/-- `A022408(n)+A001611(n)` -/
def P2353249381257731098.Spec : Prop :=
  ∀ n, P2353249381257731098.a n = A022131 n

end A022131

/-! ## A022131.P1737487185620886852

`A022099(n)+A013655(n)`
-/

namespace A022131.P1737487185620886852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A013655 n

end

end A022131.P1737487185620886852

namespace A022131

/-- `A022099(n)+A013655(n)` -/
def P1737487185620886852.Spec : Prop :=
  ∀ n, P1737487185620886852.a n = A022131 n

end A022131

/-! ## A022131.P10953820511015252973

`A022096(n)+A020701(n)`
-/

namespace A022131.P10953820511015252973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A020701 n

end

end A022131.P10953820511015252973

namespace A022131

/-- `A022096(n)+A020701(n)` -/
def P10953820511015252973.Spec : Prop :=
  ∀ n, P10953820511015252973.a n = A022131 n

end A022131

/-! ## A022131.P15830273289827297910

`A022310(n)+A020706(n)`
-/

namespace A022131.P15830273289827297910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A020706 n

end

end A022131.P15830273289827297910

namespace A022131

/-- `A022310(n)+A020706(n)` -/
def P15830273289827297910.Spec : Prop :=
  ∀ n, P15830273289827297910.a n = A022131 n

end A022131

/-! ## A022131.P1118647642815326653

`A048577(n)+A022321(n)`
-/

namespace A022131.P1118647642815326653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022321 n

end

end A022131.P1118647642815326653

namespace A022131

/-- `A048577(n)+A022321(n)` -/
def P1118647642815326653.Spec : Prop :=
  ∀ n, P1118647642815326653.a n = A022131 n

end A022131

/-! ## A022131.P11318751999684869003

`A104449(n)+A022100(n)`
-/

namespace A022131.P11318751999684869003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022100 n

end

end A022131.P11318751999684869003

namespace A022131

/-- `A104449(n)+A022100(n)` -/
def P11318751999684869003.Spec : Prop :=
  ∀ n, P11318751999684869003.a n = A022131 n

end A022131

/-! ## A022131.P3947317773963174

`A118658(n)+A022115(n)`
-/

namespace A022131.P3947317773963174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022115 n

end

end A022131.P3947317773963174

namespace A022131

/-- `A118658(n)+A022115(n)` -/
def P3947317773963174.Spec : Prop :=
  ∀ n, P3947317773963174.a n = A022131 n

end A022131

/-! ## A022131.P5124976680961757794

`A152163(n)+A022380(n)`
-/

namespace A022131.P5124976680961757794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022380 n

end

end A022131.P5124976680961757794

namespace A022131

/-- `A152163(n)+A022380(n)` -/
def P5124976680961757794.Spec : Prop :=
  ∀ n, P5124976680961757794.a n = A022131 n

end A022131

/-! ## A022131.P3275113442387755393

`A187893(n)+A022406(n)`
-/

namespace A022131.P3275113442387755393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022406 n

end

end A022131.P3275113442387755393

namespace A022131

/-- `A187893(n)+A022406(n)` -/
def P3275113442387755393.Spec : Prop :=
  ∀ n, P3275113442387755393.a n = A022131 n

end A022131

/-! ## A022131.P17645544183720579168

`A212804(n)+A022123(n)`
-/

namespace A022131.P17645544183720579168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022123 n

end

end A022131.P17645544183720579168

namespace A022131

/-- `A212804(n)+A022123(n)` -/
def P17645544183720579168.Spec : Prop :=
  ∀ n, P17645544183720579168.a n = A022131 n

end A022131

/-! ## A022131.P16182332241935926679

`A294157(n)+A020695(n)`
-/

namespace A022131.P16182332241935926679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A020695 n

end

end A022131.P16182332241935926679

namespace A022131

/-- `A294157(n)+A020695(n)` -/
def P16182332241935926679.Spec : Prop :=
  ∀ n, P16182332241935926679.a n = A022131 n

end A022131

/-!
# A022132: Fibonacci sequence beginning 4, 13.

The programs for A022132, the canonical program `A022132.P15750087410116305202` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022132 has offset 0).

The definition of A022132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022132.P8376341965727394278

`ogf((4+9x)/(1-x-x^2))`
-/

namespace A022132.P8376341965727394278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9] [1, -1, -1] n

end

end A022132.P8376341965727394278

namespace A022132

/-- `ogf((4+9x)/(1-x-x^2))` -/
def P8376341965727394278.Spec : Prop :=
  ∀ n, P8376341965727394278.a n = A022132 n

end A022132

/-! ## A022132.P15750087410116305202

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022132

/-- `a(n-1)+a(n-2)` -/
def P15750087410116305202.Spec : Prop :=
  ∀ n, (P15750087410116305202.a n : ℤ) = A022132 n

theorem P15750087410116305202.correct : P15750087410116305202.Spec := by
  intro n
  simp only [A022132]

end A022132

/-! ## A022132.P15945709731208466859

`a(n-1)-round(-a(n-2))` with `a(0)=4, a(1)=13`

`round` is left out, it is the identity on integers.
-/

namespace A022132.P15945709731208466859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022132.P15945709731208466859

namespace A022132

/-- `a(n-1)-round(-a(n-2))` -/
def P15945709731208466859.Spec : Prop :=
  ∀ n, P15945709731208466859.a n = A022132 n

end A022132

/-! ## A022132.P7902914283397428866

`A022411(n)+1`
-/

namespace A022132.P7902914283397428866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022411 n + 1

end

end A022132.P7902914283397428866

namespace A022132

/-- `A022411(n)+1` -/
def P7902914283397428866.Spec : Prop :=
  ∀ n, P7902914283397428866.a n = A022132 n

end A022132

/-! ## A022132.P279341290096700408

`A022368(n)+A000032(n)`
-/

namespace A022132.P279341290096700408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A000032 n

end

end A022132.P279341290096700408

namespace A022132

/-- `A022368(n)+A000032(n)` -/
def P279341290096700408.Spec : Prop :=
  ∀ n, P279341290096700408.a n = A022132 n

end A022132

/-! ## A022132.P1086853555550698628

`A022379(n)+A000285(n)`
-/

namespace A022132.P1086853555550698628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A000285 n

end

end A022132.P1086853555550698628

namespace A022132

/-- `A022379(n)+A000285(n)` -/
def P1086853555550698628.Spec : Prop :=
  ∀ n, P1086853555550698628.a n = A022132 n

end A022132

/-! ## A022132.P12657255303294073183

`A022325(n)+A001612(n)`
-/

namespace A022132.P12657255303294073183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A001612 n

end

end A022132.P12657255303294073183

namespace A022132

/-- `A022325(n)+A001612(n)` -/
def P12657255303294073183.Spec : Prop :=
  ∀ n, P12657255303294073183.a n = A022132 n

end A022132

/-! ## A022132.P10840699081503361181

`A022409(n)+A001588(n)`
-/

namespace A022132.P10840699081503361181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022409 n + A001588 n

end

end A022132.P10840699081503361181

namespace A022132

/-- `A022409(n)+A001588(n)` -/
def P10840699081503361181.Spec : Prop :=
  ∀ n, P10840699081503361181.a n = A022132 n

end A022132

/-! ## A022132.P10020071353984733464

`A022410(n)+A001611(n)`
-/

namespace A022132.P10020071353984733464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n + A001611 n

end

end A022132.P10020071353984733464

namespace A022132

/-- `A022410(n)+A001611(n)` -/
def P10020071353984733464.Spec : Prop :=
  ∀ n, P10020071353984733464.a n = A022132 n

end A022132

/-! ## A022132.P10813233999303250341

`A022101(n)+A013655(n)`
-/

namespace A022132.P10813233999303250341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A013655 n

end

end A022132.P10813233999303250341

namespace A022132

/-- `A022101(n)+A013655(n)` -/
def P10813233999303250341.Spec : Prop :=
  ∀ n, P10813233999303250341.a n = A022132 n

end A022132

/-! ## A022132.P8410626605526244796

`A022098(n)+A020701(n)`
-/

namespace A022132.P8410626605526244796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A020701 n

end

end A022132.P8410626605526244796

namespace A022132

/-- `A022098(n)+A020701(n)` -/
def P8410626605526244796.Spec : Prop :=
  ∀ n, P8410626605526244796.a n = A022132 n

end A022132

/-! ## A022132.P15604533467035301675

`A022312(n)+A020706(n)`
-/

namespace A022132.P15604533467035301675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A020706 n

end

end A022132.P15604533467035301675

namespace A022132

/-- `A022312(n)+A020706(n)` -/
def P15604533467035301675.Spec : Prop :=
  ∀ n, P15604533467035301675.a n = A022132 n

end A022132

/-! ## A022132.P7100383849863423714

`A022367(n)+A020695(n)`
-/

namespace A022132.P7100383849863423714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A020695 n

end

end A022132.P7100383849863423714

namespace A022132

/-- `A022367(n)+A020695(n)` -/
def P7100383849863423714.Spec : Prop :=
  ∀ n, P7100383849863423714.a n = A022132 n

end A022132

/-! ## A022132.P235699680602763370

`A022120(n)+A022096(n)`
-/

namespace A022132.P235699680602763370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022096 n

end

end A022132.P235699680602763370

namespace A022132

/-- `A022120(n)+A022096(n)` -/
def P235699680602763370.Spec : Prop :=
  ∀ n, P235699680602763370.a n = A022132 n

end A022132

/-! ## A022132.P13476193343149846464

`A022121(n)+A022095(n)`
-/

namespace A022132.P13476193343149846464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022095 n

end

end A022132.P13476193343149846464

namespace A022132

/-- `A022121(n)+A022095(n)` -/
def P13476193343149846464.Spec : Prop :=
  ∀ n, P13476193343149846464.a n = A022132 n

end A022132

/-! ## A022132.P5032284464732599898

`A022130(n)+A022087(n)`
-/

namespace A022132.P5032284464732599898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022087 n

end

end A022132.P5032284464732599898

namespace A022132

/-- `A022130(n)+A022087(n)` -/
def P5032284464732599898.Spec : Prop :=
  ∀ n, P5032284464732599898.a n = A022132 n

end A022132

/-! ## A022132.P16562292719106838986

`A022113(n)+A022112(n)`
-/

namespace A022132.P16562292719106838986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022112 n

end

end A022132.P16562292719106838986

namespace A022132

/-- `A022113(n)+A022112(n)` -/
def P16562292719106838986.Spec : Prop :=
  ∀ n, P16562292719106838986.a n = A022132 n

end A022132

/-! ## A022132.P6042015945541925724

`A022382(n)+A022086(n)`
-/

namespace A022132.P6042015945541925724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A022086 n

end

end A022132.P6042015945541925724

namespace A022132

/-- `A022382(n)+A022086(n)` -/
def P6042015945541925724.Spec : Prop :=
  ∀ n, P6042015945541925724.a n = A022132 n

end A022132

/-! ## A022132.P197573380289392117

`A048577(n)+A022323(n)`
-/

namespace A022132.P197573380289392117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022323 n

end

end A022132.P197573380289392117

namespace A022132

/-- `A048577(n)+A022323(n)` -/
def P197573380289392117.Spec : Prop :=
  ∀ n, P197573380289392117.a n = A022132 n

end A022132

/-! ## A022132.P10502013510581156714

`A104449(n)+A022102(n)`
-/

namespace A022132.P10502013510581156714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022102 n

end

end A022132.P10502013510581156714

namespace A022132

/-- `A104449(n)+A022102(n)` -/
def P10502013510581156714.Spec : Prop :=
  ∀ n, P10502013510581156714.a n = A022132 n

end A022132

/-!
# A022133: Fibonacci sequence beginning 4, 15.

The programs for A022133, the canonical program `A022133.P13244454983530449910` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022133 has offset 0).

The definition of A022133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022133.P4611721735990697162

`ogf((4+11x)/(1-x-x^2))`
-/

namespace A022133.P4611721735990697162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 11] [1, -1, -1] n

end

end A022133.P4611721735990697162

namespace A022133

/-- `ogf((4+11x)/(1-x-x^2))` -/
def P4611721735990697162.Spec : Prop :=
  ∀ n, P4611721735990697162.a n = A022133 n

end A022133

/-! ## A022133.P13244454983530449910

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022133

/-- `a(n-1)+a(n-2)` -/
def P13244454983530449910.Spec : Prop :=
  ∀ n, (P13244454983530449910.a n : ℤ) = A022133 n

theorem P13244454983530449910.correct : P13244454983530449910.Spec := by
  intro n
  simp only [A022133]

end A022133

/-! ## A022133.P14262404754654529359

`a(n-1)-floor(-a(n-2))` with `a(0)=4, a(1)=15`

`floor` is left out, it is the identity on integers.
-/

namespace A022133.P14262404754654529359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022133.P14262404754654529359

namespace A022133

/-- `a(n-1)-floor(-a(n-2))` -/
def P14262404754654529359.Spec : Prop :=
  ∀ n, P14262404754654529359.a n = A022133 n

end A022133

/-! ## A022133.P16571861317744958462

`A022369(n)+A000032(n)`
-/

namespace A022133.P16571861317744958462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A000032 n

end

end A022133.P16571861317744958462

namespace A022133

/-- `A022369(n)+A000032(n)` -/
def P16571861317744958462.Spec : Prop :=
  ∀ n, P16571861317744958462.a n = A022133 n

end A022133

/-! ## A022133.P4015656024179807006

`A022123(n)+A000285(n)`
-/

namespace A022133.P4015656024179807006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A000285 n

end

end A022133.P4015656024179807006

namespace A022133

/-- `A022123(n)+A000285(n)` -/
def P4015656024179807006.Spec : Prop :=
  ∀ n, P4015656024179807006.a n = A022133 n

end A022133

/-! ## A022133.P607219153014265117

`A022383(n)+A000045(n)`
-/

namespace A022133.P607219153014265117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022383 n + A000045 n

end

end A022133.P607219153014265117

namespace A022133

/-- `A022383(n)+A000045(n)` -/
def P607219153014265117.Spec : Prop :=
  ∀ n, P607219153014265117.a n = A022133 n

end A022133

/-! ## A022133.P10084376257717275061

`A022367(n)+A001060(n)`
-/

namespace A022133.P10084376257717275061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A001060 n

end

end A022133.P10084376257717275061

namespace A022133

/-- `A022367(n)+A001060(n)` -/
def P10084376257717275061.Spec : Prop :=
  ∀ n, P10084376257717275061.a n = A022133 n

end A022133

/-! ## A022133.P14610371463653748737

`A022411(n)+A001588(n)`
-/

namespace A022133.P14610371463653748737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022411 n + A001588 n

end

end A022133.P14610371463653748737

namespace A022133

/-- `A022411(n)+A001588(n)` -/
def P14610371463653748737.Spec : Prop :=
  ∀ n, P14610371463653748737.a n = A022133 n

end A022133

/-! ## A022133.P2124774511113798269

`A022103(n)+A013655(n)`
-/

namespace A022133.P2124774511113798269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A013655 n

end

end A022133.P2124774511113798269

namespace A022133

/-- `A022103(n)+A013655(n)` -/
def P2124774511113798269.Spec : Prop :=
  ∀ n, P2124774511113798269.a n = A022133 n

end A022133

/-! ## A022133.P4170846967243543399

`A022100(n)+A020701(n)`
-/

namespace A022133.P4170846967243543399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A020701 n

end

end A022133.P4170846967243543399

namespace A022133

/-- `A022100(n)+A020701(n)` -/
def P4170846967243543399.Spec : Prop :=
  ∀ n, P4170846967243543399.a n = A022133 n

end A022133

/-! ## A022133.P11364041319452559043

`A022314(n)+A020706(n)`
-/

namespace A022133.P11364041319452559043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A020706 n

end

end A022133.P11364041319452559043

namespace A022133

/-- `A022314(n)+A020706(n)` -/
def P11364041319452559043.Spec : Prop :=
  ∀ n, P11364041319452559043.a n = A022133 n

end A022133

/-! ## A022133.P12358440548410373864

`A022368(n)+A020695(n)`
-/

namespace A022133.P12358440548410373864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A020695 n

end

end A022133.P12358440548410373864

namespace A022133

/-- `A022368(n)+A020695(n)` -/
def P12358440548410373864.Spec : Prop :=
  ∀ n, P12358440548410373864.a n = A022133 n

end A022133

/-! ## A022133.P17311856204698960725

`A022120(n)+A022098(n)`
-/

namespace A022133.P17311856204698960725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022098 n

end

end A022133.P17311856204698960725

namespace A022133

/-- `A022120(n)+A022098(n)` -/
def P17311856204698960725.Spec : Prop :=
  ∀ n, P17311856204698960725.a n = A022133 n

end A022133

/-! ## A022133.P11180842002273740331

`A022121(n)+A022097(n)`
-/

namespace A022133.P11180842002273740331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022097 n

end

end A022133.P11180842002273740331

namespace A022133

/-- `A022121(n)+A022097(n)` -/
def P11180842002273740331.Spec : Prop :=
  ∀ n, P11180842002273740331.a n = A022133 n

end A022133

/-! ## A022133.P4740080875487283256

`A022122(n)+A022095(n)`
-/

namespace A022133.P4740080875487283256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022095 n

end

end A022133.P4740080875487283256

namespace A022133

/-- `A022122(n)+A022095(n)` -/
def P4740080875487283256.Spec : Prop :=
  ∀ n, P4740080875487283256.a n = A022133 n

end A022133

/-! ## A022133.P3332225303710068297

`A022130(n)+A022089(n)`
-/

namespace A022133.P3332225303710068297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022089 n

end

end A022133.P3332225303710068297

namespace A022133

/-- `A022130(n)+A022089(n)` -/
def P3332225303710068297.Spec : Prop :=
  ∀ n, P3332225303710068297.a n = A022133 n

end A022133

/-! ## A022133.P16003411178169395640

`A022131(n)+A022087(n)`
-/

namespace A022133.P16003411178169395640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022087 n

end

end A022133.P16003411178169395640

namespace A022133

/-- `A022131(n)+A022087(n)` -/
def P16003411178169395640.Spec : Prop :=
  ∀ n, P16003411178169395640.a n = A022133 n

end A022133

/-! ## A022133.P9763894204425693970

`A022114(n)+A022112(n)`
-/

namespace A022133.P9763894204425693970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022112 n

end

end A022133.P9763894204425693970

namespace A022133

/-- `A022114(n)+A022112(n)` -/
def P9763894204425693970.Spec : Prop :=
  ∀ n, P9763894204425693970.a n = A022133 n

end A022133

/-! ## A022133.P6604747285877282185

`A022379(n)+A022096(n)`
-/

namespace A022133.P6604747285877282185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022096 n

end

end A022133.P6604747285877282185

namespace A022133

/-- `A022379(n)+A022096(n)` -/
def P6604747285877282185.Spec : Prop :=
  ∀ n, P6604747285877282185.a n = A022133 n

end A022133

/-! ## A022133.P11956507826698119071

`A022382(n)+A022088(n)`
-/

namespace A022133.P11956507826698119071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A022088 n

end

end A022133.P11956507826698119071

namespace A022133

/-- `A022382(n)+A022088(n)` -/
def P11956507826698119071.Spec : Prop :=
  ∀ n, P11956507826698119071.a n = A022133 n

end A022133

/-!
# A022134: Fibonacci sequence beginning 4, 17.

The programs for A022134, the canonical program `A022134.P14051580609693346630` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022134 has offset 0).

The definition of A022134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022134.P5765721281431712375

`ogf((4+13x)/(1-x-x^2))`
-/

namespace A022134.P5765721281431712375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 13] [1, -1, -1] n

end

end A022134.P5765721281431712375

namespace A022134

/-- `ogf((4+13x)/(1-x-x^2))` -/
def P5765721281431712375.Spec : Prop :=
  ∀ n, P5765721281431712375.a n = A022134 n

end A022134

/-! ## A022134.P14051580609693346630

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022134

/-- `a(n-1)+a(n-2)` -/
def P14051580609693346630.Spec : Prop :=
  ∀ n, (P14051580609693346630.a n : ℤ) = A022134 n

theorem P14051580609693346630.correct : P14051580609693346630.Spec := by
  intro n
  simp only [A022134]

end A022134

/-! ## A022134.P18269367532669952961

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=9, a(1)=13`
-/

namespace A022134.P18269367532669952961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 13] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022134.P18269367532669952961

namespace A022134

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P18269367532669952961.Spec : Prop :=
  ∀ n, P18269367532669952961.a n = A022134 n

end A022134

/-! ## A022134.P15783403247982033876

`A022370(n)+A000032(n)`
-/

namespace A022134.P15783403247982033876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n + A000032 n

end

end A022134.P15783403247982033876

namespace A022134

/-- `A022370(n)+A000032(n)` -/
def P15783403247982033876.Spec : Prop :=
  ∀ n, P15783403247982033876.a n = A022134 n

end A022134

/-! ## A022134.P6662345881794485402

`A022124(n)+A000285(n)`
-/

namespace A022134.P6662345881794485402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A000285 n

end

end A022134.P6662345881794485402

namespace A022134

/-- `A022124(n)+A000285(n)` -/
def P6662345881794485402.Spec : Prop :=
  ∀ n, P6662345881794485402.a n = A022134 n

end A022134

/-! ## A022134.P7298968228002813814

`A022368(n)+A001060(n)`
-/

namespace A022134.P7298968228002813814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A001060 n

end

end A022134.P7298968228002813814

namespace A022134

/-- `A022368(n)+A001060(n)` -/
def P7298968228002813814.Spec : Prop :=
  ∀ n, P7298968228002813814.a n = A022134 n

end A022134

/-! ## A022134.P12014074595452721251

`A022105(n)+A013655(n)`
-/

namespace A022134.P12014074595452721251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A013655 n

end

end A022134.P12014074595452721251

namespace A022134

/-- `A022105(n)+A013655(n)` -/
def P12014074595452721251.Spec : Prop :=
  ∀ n, P12014074595452721251.a n = A022134 n

end A022134

/-! ## A022134.P14949408681702974411

`A022102(n)+A020701(n)`
-/

namespace A022134.P14949408681702974411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A020701 n

end

end A022134.P14949408681702974411

namespace A022134

/-- `A022102(n)+A020701(n)` -/
def P14949408681702974411.Spec : Prop :=
  ∀ n, P14949408681702974411.a n = A022134 n

end A022134

/-! ## A022134.P3291100186530322908

`A022316(n)+A020706(n)`
-/

namespace A022134.P3291100186530322908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + A020706 n

end

end A022134.P3291100186530322908

namespace A022134

/-- `A022316(n)+A020706(n)` -/
def P3291100186530322908.Spec : Prop :=
  ∀ n, P3291100186530322908.a n = A022134 n

end A022134

/-! ## A022134.P1818747544439566111

`A022369(n)+A020695(n)`
-/

namespace A022134.P1818747544439566111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A020695 n

end

end A022134.P1818747544439566111

namespace A022134

/-- `A022369(n)+A020695(n)` -/
def P1818747544439566111.Spec : Prop :=
  ∀ n, P1818747544439566111.a n = A022134 n

end A022134

/-! ## A022134.P1265538202417718830

`A022120(n)+A022100(n)`
-/

namespace A022134.P1265538202417718830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022100 n

end

end A022134.P1265538202417718830

namespace A022134

/-- `A022120(n)+A022100(n)` -/
def P1265538202417718830.Spec : Prop :=
  ∀ n, P1265538202417718830.a n = A022134 n

end A022134

/-! ## A022134.P10786676418048711913

`A022121(n)+A022099(n)`
-/

namespace A022134.P10786676418048711913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022099 n

end

end A022134.P10786676418048711913

namespace A022134

/-- `A022121(n)+A022099(n)` -/
def P10786676418048711913.Spec : Prop :=
  ∀ n, P10786676418048711913.a n = A022134 n

end A022134

/-! ## A022134.P5327371885021155497

`A022122(n)+A022097(n)`
-/

namespace A022134.P5327371885021155497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022097 n

end

end A022134.P5327371885021155497

namespace A022134

/-- `A022122(n)+A022097(n)` -/
def P5327371885021155497.Spec : Prop :=
  ∀ n, P5327371885021155497.a n = A022134 n

end A022134

/-! ## A022134.P9670757364023479704

`A022123(n)+A022096(n)`
-/

namespace A022134.P9670757364023479704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022096 n

end

end A022134.P9670757364023479704

namespace A022134

/-- `A022123(n)+A022096(n)` -/
def P9670757364023479704.Spec : Prop :=
  ∀ n, P9670757364023479704.a n = A022134 n

end A022134

/-! ## A022134.P16762392599988821593

`A022115(n)+A022112(n)`
-/

namespace A022134.P16762392599988821593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022112 n

end

end A022134.P16762392599988821593

namespace A022134

/-- `A022115(n)+A022112(n)` -/
def P16762392599988821593.Spec : Prop :=
  ∀ n, P16762392599988821593.a n = A022134 n

end A022134

/-! ## A022134.P8815843174223510166

`A022130(n)+A022091(n)`
-/

namespace A022134.P8815843174223510166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022091 n

end

end A022134.P8815843174223510166

namespace A022134

/-- `A022130(n)+A022091(n)` -/
def P8815843174223510166.Spec : Prop :=
  ∀ n, P8815843174223510166.a n = A022134 n

end A022134

/-! ## A022134.P14490920502271871871

`A022131(n)+A022089(n)`
-/

namespace A022134.P14490920502271871871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022089 n

end

end A022134.P14490920502271871871

namespace A022134

/-- `A022131(n)+A022089(n)` -/
def P14490920502271871871.Spec : Prop :=
  ∀ n, P14490920502271871871.a n = A022134 n

end A022134

/-! ## A022134.P12830955268103852459

`A022132(n)+A022087(n)`
-/

namespace A022134.P12830955268103852459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022087 n

end

end A022134.P12830955268103852459

namespace A022134

/-- `A022132(n)+A022087(n)` -/
def P12830955268103852459.Spec : Prop :=
  ∀ n, P12830955268103852459.a n = A022134 n

end A022134

/-! ## A022134.P1378765015001267835

`A022379(n)+A022098(n)`
-/

namespace A022134.P1378765015001267835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022098 n

end

end A022134.P1378765015001267835

namespace A022134

/-- `A022379(n)+A022098(n)` -/
def P1378765015001267835.Spec : Prop :=
  ∀ n, P1378765015001267835.a n = A022134 n

end A022134

/-! ## A022134.P17841414725485356873

`A022380(n)+A022095(n)`
-/

namespace A022134.P17841414725485356873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 n + A022095 n

end

end A022134.P17841414725485356873

namespace A022134

/-- `A022380(n)+A022095(n)` -/
def P17841414725485356873.Spec : Prop :=
  ∀ n, P17841414725485356873.a n = A022134 n

end A022134

/-!
# A022135: Fibonacci sequence beginning 4, 19.

The programs for A022135, the canonical program `A022135.P7173734481518943665` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022135 has offset 0).

The definition of A022135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022135.P5865766635048058589

`ogf((4+15x)/(1-x-x^2))`
-/

namespace A022135.P5865766635048058589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 15] [1, -1, -1] n

end

end A022135.P5865766635048058589

namespace A022135

/-- `ogf((4+15x)/(1-x-x^2))` -/
def P5865766635048058589.Spec : Prop :=
  ∀ n, P5865766635048058589.a n = A022135 n

end A022135

/-! ## A022135.P7173734481518943665

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022135

/-- `a(n-1)+a(n-2)` -/
def P7173734481518943665.Spec : Prop :=
  ∀ n, (P7173734481518943665.a n : ℤ) = A022135 n

theorem P7173734481518943665.correct : P7173734481518943665.Spec := by
  intro n
  simp only [A022135]

end A022135

/-! ## A022135.P8965851621057194771

`a(n-1)-floor(-a(n-2))` with `a(0)=4, a(1)=19`

`floor` is left out, it is the identity on integers.
-/

namespace A022135.P8965851621057194771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022135.P8965851621057194771

namespace A022135

/-- `a(n-1)-floor(-a(n-2))` -/
def P8965851621057194771.Spec : Prop :=
  ∀ n, P8965851621057194771.a n = A022135 n

end A022135

/-! ## A022135.P6320460941796667952

`A022371(n)+A000032(n)`
-/

namespace A022135.P6320460941796667952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n + A000032 n

end

end A022135.P6320460941796667952

namespace A022135

/-- `A022371(n)+A000032(n)` -/
def P6320460941796667952.Spec : Prop :=
  ∀ n, P6320460941796667952.a n = A022135 n

end A022135

/-! ## A022135.P4854697366789198124

`A022384(n)+A000045(n)`
-/

namespace A022135.P4854697366789198124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022384 n + A000045 n

end

end A022135.P4854697366789198124

namespace A022135

/-- `A022384(n)+A000045(n)` -/
def P4854697366789198124.Spec : Prop :=
  ∀ n, P4854697366789198124.a n = A022135 n

end A022135

/-! ## A022135.P158276217446297678

`A022381(n)+A000285(n)`
-/

namespace A022135.P158276217446297678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A000285 n

end

end A022135.P158276217446297678

namespace A022135

/-- `A022381(n)+A000285(n)` -/
def P158276217446297678.Spec : Prop :=
  ∀ n, P158276217446297678.a n = A022135 n

end A022135

/-! ## A022135.P1390130587929468467

`A022369(n)+A001060(n)`
-/

namespace A022135.P1390130587929468467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A001060 n

end

end A022135.P1390130587929468467

namespace A022135

/-- `A022369(n)+A001060(n)` -/
def P1390130587929468467.Spec : Prop :=
  ∀ n, P1390130587929468467.a n = A022135 n

end A022135

/-! ## A022135.P520267663419771856

`A022107(n)+A013655(n)`
-/

namespace A022135.P520267663419771856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A013655 n

end

end A022135.P520267663419771856

namespace A022135

/-- `A022107(n)+A013655(n)` -/
def P520267663419771856.Spec : Prop :=
  ∀ n, P520267663419771856.a n = A022135 n

end A022135

/-! ## A022135.P10868480621775296440

`A022104(n)+A020701(n)`
-/

namespace A022135.P10868480621775296440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A020701 n

end

end A022135.P10868480621775296440

namespace A022135

/-- `A022104(n)+A020701(n)` -/
def P10868480621775296440.Spec : Prop :=
  ∀ n, P10868480621775296440.a n = A022135 n

end A022135

/-! ## A022135.P5592565041719726840

`A022370(n)+A020695(n)`
-/

namespace A022135.P5592565041719726840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n + A020695 n

end

end A022135.P5592565041719726840

namespace A022135

/-- `A022370(n)+A020695(n)` -/
def P5592565041719726840.Spec : Prop :=
  ∀ n, P5592565041719726840.a n = A022135 n

end A022135

/-! ## A022135.P1411192810444719769

`A022120(n)+A022102(n)`
-/

namespace A022135.P1411192810444719769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022102 n

end

end A022135.P1411192810444719769

namespace A022135

/-- `A022120(n)+A022102(n)` -/
def P1411192810444719769.Spec : Prop :=
  ∀ n, P1411192810444719769.a n = A022135 n

end A022135

/-! ## A022135.P5462847552146620282

`A022121(n)+A022101(n)`
-/

namespace A022135.P5462847552146620282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022101 n

end

end A022135.P5462847552146620282

namespace A022135

/-- `A022121(n)+A022101(n)` -/
def P5462847552146620282.Spec : Prop :=
  ∀ n, P5462847552146620282.a n = A022135 n

end A022135

/-! ## A022135.P5775413590861829531

`A022122(n)+A022099(n)`
-/

namespace A022135.P5775413590861829531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022099 n

end

end A022135.P5775413590861829531

namespace A022135

/-- `A022122(n)+A022099(n)` -/
def P5775413590861829531.Spec : Prop :=
  ∀ n, P5775413590861829531.a n = A022135 n

end A022135

/-! ## A022135.P11280347083150575402

`A022123(n)+A022098(n)`
-/

namespace A022135.P11280347083150575402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022098 n

end

end A022135.P11280347083150575402

namespace A022135

/-- `A022123(n)+A022098(n)` -/
def P11280347083150575402.Spec : Prop :=
  ∀ n, P11280347083150575402.a n = A022135 n

end A022135

/-! ## A022135.P11469378314810124350

`A022124(n)+A022096(n)`
-/

namespace A022135.P11469378314810124350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022096 n

end

end A022135.P11469378314810124350

namespace A022135

/-- `A022124(n)+A022096(n)` -/
def P11469378314810124350.Spec : Prop :=
  ∀ n, P11469378314810124350.a n = A022135 n

end A022135

/-! ## A022135.P3254264560001846051

`A022125(n)+A022095(n)`
-/

namespace A022135.P3254264560001846051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022095 n

end

end A022135.P3254264560001846051

namespace A022135

/-- `A022125(n)+A022095(n)` -/
def P3254264560001846051.Spec : Prop :=
  ∀ n, P3254264560001846051.a n = A022135 n

end A022135

/-! ## A022135.P512157728531468162

`A022131(n)+A022091(n)`
-/

namespace A022135.P512157728531468162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022091 n

end

end A022135.P512157728531468162

namespace A022135

/-- `A022131(n)+A022091(n)` -/
def P512157728531468162.Spec : Prop :=
  ∀ n, P512157728531468162.a n = A022135 n

end A022135

/-! ## A022135.P5205545222553743127

`A022132(n)+A022089(n)`
-/

namespace A022135.P5205545222553743127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022089 n

end

end A022135.P5205545222553743127

namespace A022135

/-- `A022132(n)+A022089(n)` -/
def P5205545222553743127.Spec : Prop :=
  ∀ n, P5205545222553743127.a n = A022135 n

end A022135

/-! ## A022135.P13157000076701885967

`A022133(n)+A022087(n)`
-/

namespace A022135.P13157000076701885967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022133 n + A022087 n

end

end A022135.P13157000076701885967

namespace A022135

/-- `A022133(n)+A022087(n)` -/
def P13157000076701885967.Spec : Prop :=
  ∀ n, P13157000076701885967.a n = A022135 n

end A022135

/-! ## A022135.P12935104991962386772

`A022116(n)+A022112(n)`
-/

namespace A022135.P12935104991962386772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022112 n

end

end A022135.P12935104991962386772

namespace A022135

/-- `A022116(n)+A022112(n)` -/
def P12935104991962386772.Spec : Prop :=
  ∀ n, P12935104991962386772.a n = A022135 n

end A022135

/-!
# A022136: Fibonacci sequence beginning 5, 11.

The programs for A022136, the canonical program `A022136.P11480540574135327618` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022136 has offset 0).

The definition of A022136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022136.P11480540574135327618

`A000045(n+6)-A000045(n+1)-A000032(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022136

/-- `A000045(n+6)-A000045(n+1)-A000032(n)` -/
def P11480540574135327618.Spec : Prop :=
  ∀ n, P11480540574135327618.a n = A022136 n

theorem P11480540574135327618.correct : P11480540574135327618.Spec := by
  intro n
  simp only [A022136]

end A022136

/-! ## A022136.P8317070304127905822

`ogf((5+6x)/(1-x-x^2))`
-/

namespace A022136.P8317070304127905822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6] [1, -1, -1] n

end

end A022136.P8317070304127905822

namespace A022136

/-- `ogf((5+6x)/(1-x-x^2))` -/
def P8317070304127905822.Spec : Prop :=
  ∀ n, P8317070304127905822.a n = A022136 n

end A022136

/-! ## A022136.P6117542372999561532

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=11`
-/

namespace A022136.P6117542372999561532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022136.P6117542372999561532

namespace A022136

/-- `a(n-1)+a(n-2)` -/
def P6117542372999561532.Spec : Prop :=
  ∀ n, (P6117542372999561532.a n : ℤ) = A022136 n

end A022136

/-! ## A022136.P611423218388048607

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=6`
-/

namespace A022136.P611423218388048607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022136.P611423218388048607

namespace A022136

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P611423218388048607.Spec : Prop :=
  ∀ n, P611423218388048607.a n = A022136 n

end A022136

/-! ## A022136.P4652715000000517639

`A192752(n)+4`
-/

namespace A022136.P4652715000000517639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192752 n + 4

end

end A022136.P4652715000000517639

namespace A022136

/-- `A192752(n)+4` -/
def P4652715000000517639.Spec : Prop :=
  ∀ n, P4652715000000517639.a n = A022136 n

end A022136

/-! ## A022136.P5321750315932984387

`round((7-ϕ)*A000045(n+2))`
-/

namespace A022136.P5321750315932984387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A022136.P5321750315932984387

namespace A022136

/-- `round((7-ϕ)*A000045(n+2))` -/
def P5321750315932984387.Spec : Prop :=
  ∀ n, P5321750315932984387.a n = A022136 n

end A022136

/-! ## A022136.P2092516549614007114

`A022122(n)+A000032(n)`
-/

namespace A022136.P2092516549614007114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A000032 n

end

end A022136.P2092516549614007114

namespace A022136

/-- `A022122(n)+A000032(n)` -/
def P2092516549614007114.Spec : Prop :=
  ∀ n, P2092516549614007114.a n = A022136 n

end A022136

/-! ## A022136.P17953656605428913324

`A022114(n)+A013655(n)`
-/

namespace A022136.P17953656605428913324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A013655 n

end

end A022136.P17953656605428913324

namespace A022136

/-- `A022114(n)+A013655(n)` -/
def P17953656605428913324.Spec : Prop :=
  ∀ n, P17953656605428913324.a n = A022136 n

end A022136

/-! ## A022136.P1591481342231709666

`A022086(n)+A020712(n)`
-/

namespace A022136.P1591481342231709666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A020712 n

end

end A022136.P1591481342231709666

namespace A022136

/-- `A022086(n)+A020712(n)` -/
def P1591481342231709666.Spec : Prop :=
  ∀ n, P1591481342231709666.a n = A022136 n

end A022136

/-! ## A022136.P12511160623146431186

`A022112(n)+A020701(n)`
-/

namespace A022136.P12511160623146431186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A020701 n

end

end A022136.P12511160623146431186

namespace A022136

/-- `A022112(n)+A020701(n)` -/
def P12511160623146431186.Spec : Prop :=
  ∀ n, P12511160623146431186.a n = A022136 n

end A022136

/-! ## A022136.P4391449451815917951

`A022121(n)+A020695(n)`
-/

namespace A022136.P4391449451815917951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A020695 n

end

end A022136.P4391449451815917951

namespace A022136

/-- `A022121(n)+A020695(n)` -/
def P4391449451815917951.Spec : Prop :=
  ∀ n, P4391449451815917951.a n = A022136 n

end A022136

/-! ## A022136.P1864206672060932283

`A022319(n)+A020706(n)`
-/

namespace A022136.P1864206672060932283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A020706 n

end

end A022136.P1864206672060932283

namespace A022136

/-- `A022319(n)+A020706(n)` -/
def P1864206672060932283.Spec : Prop :=
  ∀ n, P1864206672060932283.a n = A022136 n

end A022136

/-! ## A022136.P7406484547016742752

`A104449(n)+A022367(n)`
-/

namespace A022136.P7406484547016742752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022367 n

end

end A022136.P7406484547016742752

namespace A022136

/-- `A104449(n)+A022367(n)` -/
def P7406484547016742752.Spec : Prop :=
  ∀ n, P7406484547016742752.a n = A022136 n

end A022136

/-! ## A022136.P15176415966286755269

`A118658(n)+A022123(n)`
-/

namespace A022136.P15176415966286755269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022123 n

end

end A022136.P15176415966286755269

namespace A022136

/-- `A118658(n)+A022123(n)` -/
def P15176415966286755269.Spec : Prop :=
  ∀ n, P15176415966286755269.a n = A022136 n

end A022136

/-! ## A022136.P8091151543495861151

`A187893(n)+A020732(n)`
-/

namespace A022136.P8091151543495861151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A020732 n

end

end A022136.P8091151543495861151

namespace A022136

/-- `A187893(n)+A020732(n)` -/
def P8091151543495861151.Spec : Prop :=
  ∀ n, P8091151543495861151.a n = A022136 n

end A022136

/-! ## A022136.P10630728678698913709

`A168674(n)+A048584(n)`
-/

namespace A022136.P10630728678698913709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A048584 n

end

end A022136.P10630728678698913709

namespace A022136

/-- `A168674(n)+A048584(n)` -/
def P10630728678698913709.Spec : Prop :=
  ∀ n, P10630728678698913709.a n = A022136 n

end A022136

/-! ## A022136.P16313450434468446458

`A212804(n)+A022131(n)`
-/

namespace A022136.P16313450434468446458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022131 n

end

end A022136.P16313450434468446458

namespace A022136

/-- `A212804(n)+A022131(n)` -/
def P16313450434468446458.Spec : Prop :=
  ∀ n, P16313450434468446458.a n = A022136 n

end A022136

/-! ## A022136.P1413500706751192441

`A192750(n)+A157727(n)`
-/

namespace A022136.P1413500706751192441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192750 n + A157727 n

end

end A022136.P1413500706751192441

namespace A022136

/-- `A192750(n)+A157727(n)` -/
def P1413500706751192441.Spec : Prop :=
  ∀ n, P1413500706751192441.a n = A022136 n

end A022136

/-! ## A022136.P6826429733080349724

`A380821(n)+A022313(n)`
-/

namespace A022136.P6826429733080349724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + A022313 n

end

end A022136.P6826429733080349724

namespace A022136

/-- `A380821(n)+A022313(n)` -/
def P6826429733080349724.Spec : Prop :=
  ∀ n, P6826429733080349724.a n = A022136 n

end A022136

/-! ## A022136.P13317138147049140169

`A022137(n)-A000045(n)`
-/

namespace A022136.P13317138147049140169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n - A000045 n

end

end A022136.P13317138147049140169

namespace A022136

/-- `A022137(n)-A000045(n)` -/
def P13317138147049140169.Spec : Prop :=
  ∀ n, P13317138147049140169.a n = A022136 n

end A022136

/-!
# A022137: Fibonacci sequence beginning 5, 12.

The programs for A022137, the canonical program `A022137.P8840843518044374614` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022137 has offset 0).

The definition of A022137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022137.P10581761930164649886

`ogf((5+7x)/(1-x-x^2))`
-/

namespace A022137.P10581761930164649886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7] [1, -1, -1] n

end

end A022137.P10581761930164649886

namespace A022137

/-- `ogf((5+7x)/(1-x-x^2))` -/
def P10581761930164649886.Spec : Prop :=
  ∀ n, P10581761930164649886.a n = A022137 n

end A022137

/-! ## A022137.P8840843518044374614

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022137

/-- `a(n-1)+a(n-2)` -/
def P8840843518044374614.Spec : Prop :=
  ∀ n, (P8840843518044374614.a n : ℤ) = A022137 n

theorem P8840843518044374614.correct : P8840843518044374614.Spec := by
  intro n
  simp only [A022137]

end A022137

/-! ## A022137.P4748190555527561601

`2*a(n-1)-a(n-3)` with `a(0)=5, a(1)=12, a(2)=17`
-/

namespace A022137.P4748190555527561601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12, 17] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022137.P4748190555527561601

namespace A022137

/-- `2*a(n-1)-a(n-3)` -/
def P4748190555527561601.Spec : Prop :=
  ∀ n, P4748190555527561601.a n = A022137 n

end A022137

/-! ## A022137.P11006445714738531844

`A022123(n)+A000032(n)`
-/

namespace A022137.P11006445714738531844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A000032 n

end

end A022137.P11006445714738531844

namespace A022137

/-- `A022123(n)+A000032(n)` -/
def P11006445714738531844.Spec : Prop :=
  ∀ n, P11006445714738531844.a n = A022137 n

end A022137

/-! ## A022137.P10009450479622495163

`A022136(n)+A000045(n)`
-/

namespace A022137.P10009450479622495163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A000045 n

end

end A022137.P10009450479622495163

namespace A022137

/-- `A022136(n)+A000045(n)` -/
def P10009450479622495163.Spec : Prop :=
  ∀ n, P10009450479622495163.a n = A022137 n

end A022137

/-! ## A022137.P3702094964818612706

`A022120(n)+A001060(n)`
-/

namespace A022137.P3702094964818612706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A001060 n

end

end A022137.P3702094964818612706

namespace A022137

/-- `A022120(n)+A001060(n)` -/
def P3702094964818612706.Spec : Prop :=
  ∀ n, P3702094964818612706.a n = A022137 n

end A022137

/-! ## A022137.P8378439064066470251

`A022367(n)+A013655(n)`
-/

namespace A022137.P8378439064066470251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A013655 n

end

end A022137.P8378439064066470251

namespace A022137

/-- `A022367(n)+A013655(n)` -/
def P8378439064066470251.Spec : Prop :=
  ∀ n, P8378439064066470251.a n = A022137 n

end A022137

/-! ## A022137.P9808287008029845648

`A022087(n)+A020712(n)`
-/

namespace A022137.P9808287008029845648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A020712 n

end

end A022137.P9808287008029845648

namespace A022137

/-- `A022087(n)+A020712(n)` -/
def P9808287008029845648.Spec : Prop :=
  ∀ n, P9808287008029845648.a n = A022137 n

end A022137

/-! ## A022137.P12625315845187964266

`A022113(n)+A020701(n)`
-/

namespace A022137.P12625315845187964266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A020701 n

end

end A022137.P12625315845187964266

namespace A022137

/-- `A022113(n)+A020701(n)` -/
def P12625315845187964266.Spec : Prop :=
  ∀ n, P12625315845187964266.a n = A022137 n

end A022137

/-! ## A022137.P23823155939027452

`A022320(n)+A020706(n)`
-/

namespace A022137.P23823155939027452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A020706 n

end

end A022137.P23823155939027452

namespace A022137

/-- `A022320(n)+A020706(n)` -/
def P23823155939027452.Spec : Prop :=
  ∀ n, P23823155939027452.a n = A022137 n

end A022137

/-! ## A022137.P5356902190618790962

`A022379(n)+A020695(n)`
-/

namespace A022137.P5356902190618790962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A020695 n

end

end A022137.P5356902190618790962

namespace A022137

/-- `A022379(n)+A020695(n)` -/
def P5356902190618790962.Spec : Prop :=
  ∀ n, P5356902190618790962.a n = A022137 n

end A022137

/-! ## A022137.P5175468220440106574

`A104449(n)+A022115(n)`
-/

namespace A022137.P5175468220440106574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022115 n

end

end A022137.P5175468220440106574

namespace A022137

/-- `A104449(n)+A022115(n)` -/
def P5175468220440106574.Spec : Prop :=
  ∀ n, P5175468220440106574.a n = A022137 n

end A022137

/-! ## A022137.P6522105445804534533

`A118658(n)+A022380(n)`
-/

namespace A022137.P6522105445804534533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022380 n

end

end A022137.P6522105445804534533

namespace A022137

/-- `A118658(n)+A022380(n)` -/
def P6522105445804534533.Spec : Prop :=
  ∀ n, P6522105445804534533.a n = A022137 n

end A022137

/-! ## A022137.P14500227800459342828

`A152163(n)+A022132(n)`
-/

namespace A022137.P14500227800459342828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022132 n

end

end A022137.P14500227800459342828

namespace A022137

/-- `A152163(n)+A022132(n)` -/
def P14500227800459342828.Spec : Prop :=
  ∀ n, P14500227800459342828.a n = A022137 n

end A022137

/-! ## A022137.P2920067745697037187

`A192752(n)+A157727(n)`
-/

namespace A022137.P2920067745697037187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192752 n + A157727 n

end

end A022137.P2920067745697037187

namespace A022137

/-- `A192752(n)+A157727(n)` -/
def P2920067745697037187.Spec : Prop :=
  ∀ n, P2920067745697037187.a n = A022137 n

end A022137

/-! ## A022137.P10123891024635879823

`A380821(n)+A022314(n)`
-/

namespace A022137.P10123891024635879823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + A022314 n

end

end A022137.P10123891024635879823

namespace A022137

/-- `A380821(n)+A022314(n)` -/
def P10123891024635879823.Spec : Prop :=
  ∀ n, P10123891024635879823.a n = A022137 n

end A022137

/-! ## A022137.P671626270832210749

`A022138(n)-A000045(n)`
-/

namespace A022137.P671626270832210749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n - A000045 n

end

end A022137.P671626270832210749

namespace A022137

/-- `A022138(n)-A000045(n)` -/
def P671626270832210749.Spec : Prop :=
  ∀ n, P671626270832210749.a n = A022137 n

end A022137

/-! ## A022137.P2977121713484097900

`A022389(n)-A020695(n)`
-/

namespace A022137.P2977121713484097900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022389 n - A020695 n

end

end A022137.P2977121713484097900

namespace A022137

/-- `A022389(n)-A020695(n)` -/
def P2977121713484097900.Spec : Prop :=
  ∀ n, P2977121713484097900.a n = A022137 n

end A022137

/-! ## A022137.P17408190680488144201

`A022140(n)-A022087(n)`
-/

namespace A022137.P17408190680488144201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n - A022087 n

end

end A022137.P17408190680488144201

namespace A022137

/-- `A022140(n)-A022087(n)` -/
def P17408190680488144201.Spec : Prop :=
  ∀ n, P17408190680488144201.a n = A022137 n

end A022137

/-! ## A022137.P6598131877952682604

`A022130(n)+A000032(n+1)`
-/

namespace A022137.P6598131877952682604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A000032 (n + 1)

end

end A022137.P6598131877952682604

namespace A022137

/-- `A022130(n)+A000032(n+1)` -/
def P6598131877952682604.Spec : Prop :=
  ∀ n, P6598131877952682604.a n = A022137 n

end A022137

/-!
# A022138: Fibonacci sequence beginning 5, 13.

The programs for A022138, the canonical program `A022138.P2384255640127107707` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022138 has offset 0).

The definition of A022138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022138.P2384255640127107707

`a(n-2)+a(n-1)` with `a(0)=5, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022138

/-- `a(n-2)+a(n-1)` -/
def P2384255640127107707.Spec : Prop :=
  ∀ n, (P2384255640127107707.a n : ℤ) = A022138 n

theorem P2384255640127107707.correct : P2384255640127107707.Spec := by
  intro n
  simp only [A022138]

end A022138

/-! ## A022138.P15803108748926443286

`ogf((5+8x)/(1-x-x^2))`
-/

namespace A022138.P15803108748926443286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 8] [1, -1, -1] n

end

end A022138.P15803108748926443286

namespace A022138

/-- `ogf((5+8x)/(1-x-x^2))` -/
def P15803108748926443286.Spec : Prop :=
  ∀ n, P15803108748926443286.a n = A022138 n

end A022138

/-! ## A022138.P1029334313503937924

`A022137(n)+A000045(n)`
-/

namespace A022138.P1029334313503937924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A000045 n

end

end A022138.P1029334313503937924

namespace A022138

/-- `A022137(n)+A000045(n)` -/
def P1029334313503937924.Spec : Prop :=
  ∀ n, P1029334313503937924.a n = A022138 n

end A022138

/-! ## A022138.P17868496743430714125

`A022130(n)+A000285(n)`
-/

namespace A022138.P17868496743430714125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A000285 n

end

end A022138.P17868496743430714125

namespace A022138

/-- `A022130(n)+A000285(n)` -/
def P17868496743430714125.Spec : Prop :=
  ∀ n, P17868496743430714125.a n = A022138 n

end A022138

/-! ## A022138.P15787771558085079843

`A022380(n)+A000032(n)`
-/

namespace A022138.P15787771558085079843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 n + A000032 n

end

end A022138.P15787771558085079843

namespace A022138

/-- `A022380(n)+A000032(n)` -/
def P15787771558085079843.Spec : Prop :=
  ∀ n, P15787771558085079843.a n = A022138 n

end A022138

/-! ## A022138.P12187741644717817407

`A022121(n)+A001060(n)`
-/

namespace A022138.P12187741644717817407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A001060 n

end

end A022138.P12187741644717817407

namespace A022138

/-- `A022121(n)+A001060(n)` -/
def P12187741644717817407.Spec : Prop :=
  ∀ n, P12187741644717817407.a n = A022138 n

end A022138

/-! ## A022138.P13803592521455590878

`A022115(n)+A013655(n)`
-/

namespace A022138.P13803592521455590878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A013655 n

end

end A022138.P13803592521455590878

namespace A022138

/-- `A022115(n)+A013655(n)` -/
def P13803592521455590878.Spec : Prop :=
  ∀ n, P13803592521455590878.a n = A022138 n

end A022138

/-! ## A022138.P4579684347982790195

`A022088(n)+A020712(n)`
-/

namespace A022138.P4579684347982790195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A020712 n

end

end A022138.P4579684347982790195

namespace A022138

/-- `A022088(n)+A020712(n)` -/
def P4579684347982790195.Spec : Prop :=
  ∀ n, P4579684347982790195.a n = A022138 n

end A022138

/-! ## A022138.P3928890872233656725

`A022122(n)+A020695(n)`
-/

namespace A022138.P3928890872233656725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A020695 n

end

end A022138.P3928890872233656725

namespace A022138

/-- `A022122(n)+A020695(n)` -/
def P3928890872233656725.Spec : Prop :=
  ∀ n, P3928890872233656725.a n = A022138 n

end A022138

/-! ## A022138.P254654155580539006

`A022321(n)+A020706(n)`
-/

namespace A022138.P254654155580539006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A020706 n

end

end A022138.P254654155580539006

namespace A022138

/-- `A022321(n)+A020706(n)` -/
def P254654155580539006.Spec : Prop :=
  ∀ n, P254654155580539006.a n = A022138 n

end A022138

/-! ## A022138.P10032655469984176904

`A022120(n)+A022112(n)`
-/

namespace A022138.P10032655469984176904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022112 n

end

end A022138.P10032655469984176904

namespace A022138

/-- `A022120(n)+A022112(n)` -/
def P10032655469984176904.Spec : Prop :=
  ∀ n, P10032655469984176904.a n = A022138 n

end A022138

/-! ## A022138.P14075126630162721293

`A104449(n)+A022368(n)`
-/

namespace A022138.P14075126630162721293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022368 n

end

end A022138.P14075126630162721293

namespace A022138

/-- `A104449(n)+A022368(n)` -/
def P14075126630162721293.Spec : Prop :=
  ∀ n, P14075126630162721293.a n = A022138 n

end A022138

/-! ## A022138.P3479637758751506230

`A118658(n)+A022124(n)`
-/

namespace A022138.P3479637758751506230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022124 n

end

end A022138.P3479637758751506230

namespace A022138

/-- `A118658(n)+A022124(n)` -/
def P3479637758751506230.Spec : Prop :=
  ∀ n, P3479637758751506230.a n = A022138 n

end A022138

/-! ## A022138.P4987723769726015786

`A152163(n)+A022383(n)`
-/

namespace A022138.P4987723769726015786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022383 n

end

end A022138.P4987723769726015786

namespace A022138

/-- `A152163(n)+A022383(n)` -/
def P4987723769726015786.Spec : Prop :=
  ∀ n, P4987723769726015786.a n = A022138 n

end A022138

/-! ## A022138.P1651191884336920717

`A212804(n)+A022132(n)`
-/

namespace A022138.P1651191884336920717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022132 n

end

end A022138.P1651191884336920717

namespace A022138

/-- `A212804(n)+A022132(n)` -/
def P1651191884336920717.Spec : Prop :=
  ∀ n, P1651191884336920717.a n = A022138 n

end A022138

/-! ## A022138.P6102303801020061460

`A294157(n)+A020701(n)`
-/

namespace A022138.P6102303801020061460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A020701 n

end

end A022138.P6102303801020061460

namespace A022138

/-- `A294157(n)+A020701(n)` -/
def P6102303801020061460.Spec : Prop :=
  ∀ n, P6102303801020061460.a n = A022138 n

end A022138

/-! ## A022138.P17696973175475042370

`A380821(n)+A022315(n)`
-/

namespace A022138.P17696973175475042370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + A022315 n

end

end A022138.P17696973175475042370

namespace A022138

/-- `A380821(n)+A022315(n)` -/
def P17696973175475042370.Spec : Prop :=
  ∀ n, P17696973175475042370.a n = A022138 n

end A022138

/-! ## A022138.P5325400707458566645

`A022139(n)-A000045(n)`
-/

namespace A022138.P5325400707458566645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022139 n - A000045 n

end

end A022138.P5325400707458566645

namespace A022138

/-- `A022139(n)-A000045(n)` -/
def P5325400707458566645.Spec : Prop :=
  ∀ n, P5325400707458566645.a n = A022138 n

end A022138

/-! ## A022138.P7986383708829277666

`A022140(n)-A022086(n)`
-/

namespace A022138.P7986383708829277666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n - A022086 n

end

end A022138.P7986383708829277666

namespace A022138

/-- `A022140(n)-A022086(n)` -/
def P7986383708829277666.Spec : Prop :=
  ∀ n, P7986383708829277666.a n = A022138 n

end A022138

/-! ## A022138.P16753814927280131881

`A022098(n)+A000285(n+1)`
-/

namespace A022138.P16753814927280131881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000285 (n + 1)

end

end A022138.P16753814927280131881

namespace A022138

/-- `A022098(n)+A000285(n+1)` -/
def P16753814927280131881.Spec : Prop :=
  ∀ n, P16753814927280131881.a n = A022138 n

end A022138

/-!
# A022139: Fibonacci sequence beginning 5, 14.

The programs for A022139, the canonical program `A022139.P10445061238919215588` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022139 has offset 0).

The definition of A022139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022139.P10445061238919215588

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022139

/-- `a(n-1)+a(n-2)` -/
def P10445061238919215588.Spec : Prop :=
  ∀ n, (P10445061238919215588.a n : ℤ) = A022139 n

theorem P10445061238919215588.correct : P10445061238919215588.Spec := by
  intro n
  simp only [A022139]

end A022139

/-! ## A022139.P12001791671944023835

`ogf((5+9x)/(1-x-x^2))`
-/

namespace A022139.P12001791671944023835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 9] [1, -1, -1] n

end

end A022139.P12001791671944023835

namespace A022139

/-- `ogf((5+9x)/(1-x-x^2))` -/
def P12001791671944023835.Spec : Prop :=
  ∀ n, P12001791671944023835.a n = A022139 n

end A022139

/-! ## A022139.P9313027573741991646

`A022124(n)+A000032(n)`
-/

namespace A022139.P9313027573741991646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A000032 n

end

end A022139.P9313027573741991646

namespace A022139

/-- `A022124(n)+A000032(n)` -/
def P9313027573741991646.Spec : Prop :=
  ∀ n, P9313027573741991646.a n = A022139 n

end A022139

/-! ## A022139.P17826890524136017127

`A022138(n)+A000045(n)`
-/

namespace A022139.P17826890524136017127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A000045 n

end

end A022139.P17826890524136017127

namespace A022139

/-- `A022138(n)+A000045(n)` -/
def P17826890524136017127.Spec : Prop :=
  ∀ n, P17826890524136017127.a n = A022139 n

end A022139

/-! ## A022139.P18428740696239971898

`A022382(n)+A000285(n)`
-/

namespace A022139.P18428740696239971898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A000285 n

end

end A022139.P18428740696239971898

namespace A022139

/-- `A022382(n)+A000285(n)` -/
def P18428740696239971898.Spec : Prop :=
  ∀ n, P18428740696239971898.a n = A022139 n

end A022139

/-! ## A022139.P14764397458468390988

`A022379(n)+A001060(n)`
-/

namespace A022139.P14764397458468390988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A001060 n

end

end A022139.P14764397458468390988

namespace A022139

/-- `A022379(n)+A001060(n)` -/
def P14764397458468390988.Spec : Prop :=
  ∀ n, P14764397458468390988.a n = A022139 n

end A022139

/-! ## A022139.P10669865939403691493

`A022368(n)+A013655(n)`
-/

namespace A022139.P10669865939403691493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A013655 n

end

end A022139.P10669865939403691493

namespace A022139

/-- `A022368(n)+A013655(n)` -/
def P10669865939403691493.Spec : Prop :=
  ∀ n, P10669865939403691493.a n = A022139 n

end A022139

/-! ## A022139.P18416186240515427846

`A022089(n)+A020712(n)`
-/

namespace A022139.P18416186240515427846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A020712 n

end

end A022139.P18416186240515427846

namespace A022139

/-- `A022089(n)+A020712(n)` -/
def P18416186240515427846.Spec : Prop :=
  ∀ n, P18416186240515427846.a n = A022139 n

end A022139

/-! ## A022139.P15100389749910847949

`A022114(n)+A020701(n)`
-/

namespace A022139.P15100389749910847949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A020701 n

end

end A022139.P15100389749910847949

namespace A022139

/-- `A022114(n)+A020701(n)` -/
def P15100389749910847949.Spec : Prop :=
  ∀ n, P15100389749910847949.a n = A022139 n

end A022139

/-! ## A022139.P12179829991657074419

`A022123(n)+A020695(n)`
-/

namespace A022139.P12179829991657074419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A020695 n

end

end A022139.P12179829991657074419

namespace A022139

/-- `A022123(n)+A020695(n)` -/
def P12179829991657074419.Spec : Prop :=
  ∀ n, P12179829991657074419.a n = A022139 n

end A022139

/-! ## A022139.P175936626275915425

`A022322(n)+A020706(n)`
-/

namespace A022139.P175936626275915425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A020706 n

end

end A022139.P175936626275915425

namespace A022139

/-- `A022322(n)+A020706(n)` -/
def P175936626275915425.Spec : Prop :=
  ∀ n, P175936626275915425.a n = A022139 n

end A022139

/-! ## A022139.P5060065352567787758

`A022130(n)+A022095(n)`
-/

namespace A022139.P5060065352567787758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022095 n

end

end A022139.P5060065352567787758

namespace A022139

/-- `A022130(n)+A022095(n)` -/
def P5060065352567787758.Spec : Prop :=
  ∀ n, P5060065352567787758.a n = A022139 n

end A022139

/-! ## A022139.P3033695493917135771

`A022136(n)+A022086(n)`
-/

namespace A022139.P3033695493917135771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022086 n

end

end A022139.P3033695493917135771

namespace A022139

/-- `A022136(n)+A022086(n)` -/
def P3033695493917135771.Spec : Prop :=
  ∀ n, P3033695493917135771.a n = A022139 n

end A022139

/-! ## A022139.P7838236764812199235

`A022120(n)+A022113(n)`
-/

namespace A022139.P7838236764812199235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022113 n

end

end A022139.P7838236764812199235

namespace A022139

/-- `A022120(n)+A022113(n)` -/
def P7838236764812199235.Spec : Prop :=
  ∀ n, P7838236764812199235.a n = A022139 n

end A022139

/-! ## A022139.P2891675187455886179

`A022121(n)+A022112(n)`
-/

namespace A022139.P2891675187455886179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022112 n

end

end A022139.P2891675187455886179

namespace A022139

/-- `A022121(n)+A022112(n)` -/
def P2891675187455886179.Spec : Prop :=
  ∀ n, P2891675187455886179.a n = A022139 n

end A022139

/-! ## A022139.P14757372687133456894

`A104449(n)+A022116(n)`
-/

namespace A022139.P14757372687133456894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022116 n

end

end A022139.P14757372687133456894

namespace A022139

/-- `A104449(n)+A022116(n)` -/
def P14757372687133456894.Spec : Prop :=
  ∀ n, P14757372687133456894.a n = A022139 n

end A022139

/-! ## A022139.P8213651333254908511

`A118658(n)+A022125(n)`
-/

namespace A022139.P8213651333254908511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022125 n

end

end A022139.P8213651333254908511

namespace A022139

/-- `A118658(n)+A022125(n)` -/
def P8213651333254908511.Spec : Prop :=
  ∀ n, P8213651333254908511.a n = A022139 n

end A022139

/-! ## A022139.P14629450430744008573

`A152163(n)+A022133(n)`
-/

namespace A022139.P14629450430744008573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022133 n

end

end A022139.P14629450430744008573

namespace A022139

/-- `A152163(n)+A022133(n)` -/
def P14629450430744008573.Spec : Prop :=
  ∀ n, P14629450430744008573.a n = A022139 n

end A022139

/-! ## A022139.P6471996508988295992

`A212804(n)+A022383(n)`
-/

namespace A022139.P6471996508988295992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022383 n

end

end A022139.P6471996508988295992

namespace A022139

/-- `A212804(n)+A022383(n)` -/
def P6471996508988295992.Spec : Prop :=
  ∀ n, P6471996508988295992.a n = A022139 n

end A022139

/-! ## A022139.P17102604908940803383

`A380821(n)+A022316(n)`
-/

namespace A022139.P17102604908940803383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + A022316 n

end

end A022139.P17102604908940803383

namespace A022139

/-- `A380821(n)+A022316(n)` -/
def P17102604908940803383.Spec : Prop :=
  ∀ n, P17102604908940803383.a n = A022139 n

end A022139

/-!
# A022140: Fibonacci sequence beginning 5, 16.

The programs for A022140, the canonical program `A022140.P16595851793550894815` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022140 has offset 0).

The definition of A022140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022140.P3825709045109232079

`ogf((5+11x)/(1-x-x^2))`
-/

namespace A022140.P3825709045109232079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 11] [1, -1, -1] n

end

end A022140.P3825709045109232079

namespace A022140

/-- `ogf((5+11x)/(1-x-x^2))` -/
def P3825709045109232079.Spec : Prop :=
  ∀ n, P3825709045109232079.a n = A022140 n

end A022140

/-! ## A022140.P16595851793550894815

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022140

/-- `a(n-1)+a(n-2)` -/
def P16595851793550894815.Spec : Prop :=
  ∀ n, (P16595851793550894815.a n : ℤ) = A022140 n

theorem P16595851793550894815.correct : P16595851793550894815.Spec := by
  intro n
  simp only [A022140]

end A022140

/-! ## A022140.P13487686845029545573

`A022381(n)+A000032(n)`
-/

namespace A022140.P13487686845029545573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A000032 n

end

end A022140.P13487686845029545573

namespace A022140

/-- `A022381(n)+A000032(n)` -/
def P13487686845029545573.Spec : Prop :=
  ∀ n, P13487686845029545573.a n = A022140 n

end A022140

/-! ## A022140.P13153075823066588633

`A022123(n)+A001060(n)`
-/

namespace A022140.P13153075823066588633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A001060 n

end

end A022140.P13153075823066588633

namespace A022140

/-- `A022123(n)+A001060(n)` -/
def P13153075823066588633.Spec : Prop :=
  ∀ n, P13153075823066588633.a n = A022140 n

end A022140

/-! ## A022140.P2167309052020035392

`A022369(n)+A013655(n)`
-/

namespace A022140.P2167309052020035392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A013655 n

end

end A022140.P2167309052020035392

namespace A022140

/-- `A022369(n)+A013655(n)` -/
def P2167309052020035392.Spec : Prop :=
  ∀ n, P2167309052020035392.a n = A022140 n

end A022140

/-! ## A022140.P5090389465357669993

`A022091(n)+A020712(n)`
-/

namespace A022140.P5090389465357669993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A020712 n

end

end A022140.P5090389465357669993

namespace A022140

/-- `A022091(n)+A020712(n)` -/
def P5090389465357669993.Spec : Prop :=
  ∀ n, P5090389465357669993.a n = A022140 n

end A022140

/-! ## A022140.P10189345272512136901

`A022115(n)+A020701(n)`
-/

namespace A022140.P10189345272512136901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A020701 n

end

end A022140.P10189345272512136901

namespace A022140

/-- `A022115(n)+A020701(n)` -/
def P10189345272512136901.Spec : Prop :=
  ∀ n, P10189345272512136901.a n = A022140 n

end A022140

/-! ## A022140.P15303795972527760832

`A022124(n)+A020695(n)`
-/

namespace A022140.P15303795972527760832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A020695 n

end

end A022140.P15303795972527760832

namespace A022140

/-- `A022124(n)+A020695(n)` -/
def P15303795972527760832.Spec : Prop :=
  ∀ n, P15303795972527760832.a n = A022140 n

end A022140

/-! ## A022140.P10228726081733105371

`A022324(n)+A020706(n)`
-/

namespace A022140.P10228726081733105371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + A020706 n

end

end A022140.P10228726081733105371

namespace A022140

/-- `A022324(n)+A020706(n)` -/
def P10228726081733105371.Spec : Prop :=
  ∀ n, P10228726081733105371.a n = A022140 n

end A022140

/-! ## A022140.P10652628202997875408

`A022130(n)+A022097(n)`
-/

namespace A022140.P10652628202997875408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022097 n

end

end A022140.P10652628202997875408

namespace A022140

/-- `A022130(n)+A022097(n)` -/
def P10652628202997875408.Spec : Prop :=
  ∀ n, P10652628202997875408.a n = A022140 n

end A022140

/-! ## A022140.P2622431060325746904

`A022131(n)+A022095(n)`
-/

namespace A022140.P2622431060325746904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022095 n

end

end A022140.P2622431060325746904

namespace A022140

/-- `A022131(n)+A022095(n)` -/
def P2622431060325746904.Spec : Prop :=
  ∀ n, P2622431060325746904.a n = A022140 n

end A022140

/-! ## A022140.P8391487098495737506

`A022136(n)+A022088(n)`
-/

namespace A022140.P8391487098495737506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022088 n

end

end A022140.P8391487098495737506

namespace A022140

/-- `A022136(n)+A022088(n)` -/
def P8391487098495737506.Spec : Prop :=
  ∀ n, P8391487098495737506.a n = A022140 n

end A022140

/-! ## A022140.P14091897120599819374

`A022137(n)+A022087(n)`
-/

namespace A022140.P14091897120599819374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A022087 n

end

end A022140.P14091897120599819374

namespace A022140

/-- `A022137(n)+A022087(n)` -/
def P14091897120599819374.Spec : Prop :=
  ∀ n, P14091897120599819374.a n = A022140 n

end A022140

/-! ## A022140.P16555180333638191181

`A022138(n)+A022086(n)`
-/

namespace A022140.P16555180333638191181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022086 n

end

end A022140.P16555180333638191181

namespace A022140

/-- `A022138(n)+A022086(n)` -/
def P16555180333638191181.Spec : Prop :=
  ∀ n, P16555180333638191181.a n = A022140 n

end A022140

/-! ## A022140.P3176908264010137733

`A022120(n)+A022114(n)`
-/

namespace A022140.P3176908264010137733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022114 n

end

end A022140.P3176908264010137733

namespace A022140

/-- `A022120(n)+A022114(n)` -/
def P3176908264010137733.Spec : Prop :=
  ∀ n, P3176908264010137733.a n = A022140 n

end A022140

/-! ## A022140.P16045503138401063052

`A022122(n)+A022112(n)`
-/

namespace A022140.P16045503138401063052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022112 n

end

end A022140.P16045503138401063052

namespace A022140

/-- `A022122(n)+A022112(n)` -/
def P16045503138401063052.Spec : Prop :=
  ∀ n, P16045503138401063052.a n = A022140 n

end A022140

/-! ## A022140.P2611369141384236157

`A022382(n)+A022096(n)`
-/

namespace A022140.P2611369141384236157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A022096 n

end

end A022140.P2611369141384236157

namespace A022140

/-- `A022382(n)+A022096(n)` -/
def P2611369141384236157.Spec : Prop :=
  ∀ n, P2611369141384236157.a n = A022140 n

end A022140

/-! ## A022140.P18383466014029588623

`A022379(n)+A022113(n)`
-/

namespace A022140.P18383466014029588623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022113 n

end

end A022140.P18383466014029588623

namespace A022140

/-- `A022379(n)+A022113(n)` -/
def P18383466014029588623.Spec : Prop :=
  ∀ n, P18383466014029588623.a n = A022140 n

end A022140

/-! ## A022140.P17287269216853804760

`A104449(n)+A022117(n)`
-/

namespace A022140.P17287269216853804760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022117 n

end

end A022140.P17287269216853804760

namespace A022140

/-- `A104449(n)+A022117(n)` -/
def P17287269216853804760.Spec : Prop :=
  ∀ n, P17287269216853804760.a n = A022140 n

end A022140

/-! ## A022140.P16559202384931737644

`A118658(n)+A022126(n)`
-/

namespace A022140.P16559202384931737644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022126 n

end

end A022140.P16559202384931737644

namespace A022140

/-- `A118658(n)+A022126(n)` -/
def P16559202384931737644.Spec : Prop :=
  ∀ n, P16559202384931737644.a n = A022140 n

end A022140

/-!
# A022141: Fibonacci sequence beginning 5, 17.

The programs for A022141, the canonical program `A022141.P568741072719453872` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022141 has offset 0).

The definition of A022141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022141.P2874271939054834077

`ogf((5+12x)/(1-x-x^2))`
-/

namespace A022141.P2874271939054834077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 12] [1, -1, -1] n

end

end A022141.P2874271939054834077

namespace A022141

/-- `ogf((5+12x)/(1-x-x^2))` -/
def P2874271939054834077.Spec : Prop :=
  ∀ n, P2874271939054834077.a n = A022141 n

end A022141

/-! ## A022141.P568741072719453872

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022141

/-- `a(n-1)+a(n-2)` -/
def P568741072719453872.Spec : Prop :=
  ∀ n, (P568741072719453872.a n : ℤ) = A022141 n

theorem P568741072719453872.correct : P568741072719453872.Spec := by
  intro n
  simp only [A022141]

end A022141

/-! ## A022141.P1889566740949012380

`a(n-1)-ceil(-a(n-2))` with `a(0)=5, a(1)=17`

`ceil` is left out, it is the identity on integers.
-/

namespace A022141.P1889566740949012380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 17] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022141.P1889566740949012380

namespace A022141

/-- `a(n-1)-ceil(-a(n-2))` -/
def P1889566740949012380.Spec : Prop :=
  ∀ n, P1889566740949012380.a n = A022141 n

end A022141

/-! ## A022141.P13685895890461398509

`A022126(n)+A000032(n)`
-/

namespace A022141.P13685895890461398509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A000032 n

end

end A022141.P13685895890461398509

namespace A022141

/-- `A022126(n)+A000032(n)` -/
def P13685895890461398509.Spec : Prop :=
  ∀ n, P13685895890461398509.a n = A022141 n

end A022141

/-! ## A022141.P9085227354842370133

`A022140(n)+A000045(n)`
-/

namespace A022141.P9085227354842370133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n + A000045 n

end

end A022141.P9085227354842370133

namespace A022141

/-- `A022140(n)+A000045(n)` -/
def P9085227354842370133.Spec : Prop :=
  ∀ n, P9085227354842370133.a n = A022141 n

end A022141

/-! ## A022141.P8077543654471439287

`A022132(n)+A000285(n)`
-/

namespace A022141.P8077543654471439287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A000285 n

end

end A022141.P8077543654471439287

namespace A022141

/-- `A022132(n)+A000285(n)` -/
def P8077543654471439287.Spec : Prop :=
  ∀ n, P8077543654471439287.a n = A022141 n

end A022141

/-! ## A022141.P17851746004347369872

`A022380(n)+A001060(n)`
-/

namespace A022141.P17851746004347369872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 n + A001060 n

end

end A022141.P17851746004347369872

namespace A022141

/-- `A022380(n)+A001060(n)` -/
def P17851746004347369872.Spec : Prop :=
  ∀ n, P17851746004347369872.a n = A022141 n

end A022141

/-! ## A022141.P6022237941007811860

`A022117(n)+A013655(n)`
-/

namespace A022141.P6022237941007811860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A013655 n

end

end A022141.P6022237941007811860

namespace A022141

/-- `A022117(n)+A013655(n)` -/
def P6022237941007811860.Spec : Prop :=
  ∀ n, P6022237941007811860.a n = A022141 n

end A022141

/-! ## A022141.P217760986460513404

`A022092(n)+A020712(n)`
-/

namespace A022141.P217760986460513404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A020712 n

end

end A022141.P217760986460513404

namespace A022141

/-- `A022092(n)+A020712(n)` -/
def P217760986460513404.Spec : Prop :=
  ∀ n, P217760986460513404.a n = A022141 n

end A022141

/-! ## A022141.P2488215032845278114

`A022125(n)+A020695(n)`
-/

namespace A022141.P2488215032845278114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A020695 n

end

end A022141.P2488215032845278114

namespace A022141

/-- `A022125(n)+A020695(n)` -/
def P2488215032845278114.Spec : Prop :=
  ∀ n, P2488215032845278114.a n = A022141 n

end A022141

/-! ## A022141.P16671948760734562774

`A022325(n)+A020706(n)`
-/

namespace A022141.P16671948760734562774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A020706 n

end

end A022141.P16671948760734562774

namespace A022141

/-- `A022325(n)+A020706(n)` -/
def P16671948760734562774.Spec : Prop :=
  ∀ n, P16671948760734562774.a n = A022141 n

end A022141

/-! ## A022141.P14274396225723524833

`A022368(n)+A020701(n)`
-/

namespace A022141.P14274396225723524833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A020701 n

end

end A022141.P14274396225723524833

namespace A022141

/-- `A022368(n)+A020701(n)` -/
def P14274396225723524833.Spec : Prop :=
  ∀ n, P14274396225723524833.a n = A022141 n

end A022141

/-! ## A022141.P9355610169852569765

`A022130(n)+A022098(n)`
-/

namespace A022141.P9355610169852569765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022098 n

end

end A022141.P9355610169852569765

namespace A022141

/-- `A022130(n)+A022098(n)` -/
def P9355610169852569765.Spec : Prop :=
  ∀ n, P9355610169852569765.a n = A022141 n

end A022141

/-! ## A022141.P15767346102824726107

`A022131(n)+A022096(n)`
-/

namespace A022141.P15767346102824726107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022096 n

end

end A022141.P15767346102824726107

namespace A022141

/-- `A022131(n)+A022096(n)` -/
def P15767346102824726107.Spec : Prop :=
  ∀ n, P15767346102824726107.a n = A022141 n

end A022141

/-! ## A022141.P12184991380154243878

`A022136(n)+A022089(n)`
-/

namespace A022141.P12184991380154243878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022089 n

end

end A022141.P12184991380154243878

namespace A022141

/-- `A022136(n)+A022089(n)` -/
def P12184991380154243878.Spec : Prop :=
  ∀ n, P12184991380154243878.a n = A022141 n

end A022141

/-! ## A022141.P10169344908973275178

`A022137(n)+A022088(n)`
-/

namespace A022141.P10169344908973275178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A022088 n

end

end A022141.P10169344908973275178

namespace A022141

/-- `A022137(n)+A022088(n)` -/
def P10169344908973275178.Spec : Prop :=
  ∀ n, P10169344908973275178.a n = A022141 n

end A022141

/-! ## A022141.P130269289891365645

`A022138(n)+A022087(n)`
-/

namespace A022141.P130269289891365645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022087 n

end

end A022141.P130269289891365645

namespace A022141

/-- `A022138(n)+A022087(n)` -/
def P130269289891365645.Spec : Prop :=
  ∀ n, P130269289891365645.a n = A022141 n

end A022141

/-! ## A022141.P13578480895716431807

`A022139(n)+A022086(n)`
-/

namespace A022141.P13578480895716431807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022139 n + A022086 n

end

end A022141.P13578480895716431807

namespace A022141

/-- `A022139(n)+A022086(n)` -/
def P13578480895716431807.Spec : Prop :=
  ∀ n, P13578480895716431807.a n = A022141 n

end A022141

/-! ## A022141.P2645194008561701293

`A022121(n)+A022114(n)`
-/

namespace A022141.P2645194008561701293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022114 n

end

end A022141.P2645194008561701293

namespace A022141

/-- `A022121(n)+A022114(n)` -/
def P2645194008561701293.Spec : Prop :=
  ∀ n, P2645194008561701293.a n = A022141 n

end A022141

/-! ## A022141.P857342803307509441

`A022122(n)+A022113(n)`
-/

namespace A022141.P857342803307509441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022113 n

end

end A022141.P857342803307509441

namespace A022141

/-- `A022122(n)+A022113(n)` -/
def P857342803307509441.Spec : Prop :=
  ∀ n, P857342803307509441.a n = A022141 n

end A022141

/-!
# A022142: Fibonacci sequence beginning 5, 18.

The programs for A022142, the canonical program `A022142.P11501202867791212846` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022142 has offset 0).

The definition of A022142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022142.P11501202867791212846

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022142

/-- `a(n-1)+a(n-2)` -/
def P11501202867791212846.Spec : Prop :=
  ∀ n, (P11501202867791212846.a n : ℤ) = A022142 n

theorem P11501202867791212846.correct : P11501202867791212846.Spec := by
  intro n
  simp only [A022142]

end A022142

/-! ## A022142.P9454857951526511668

`ogf((5+13x)/(1-x-x^2))`
-/

namespace A022142.P9454857951526511668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 13] [1, -1, -1] n

end

end A022142.P9454857951526511668

namespace A022142

/-- `ogf((5+13x)/(1-x-x^2))` -/
def P9454857951526511668.Spec : Prop :=
  ∀ n, P9454857951526511668.a n = A022142 n

end A022142

/-! ## A022142.P13651155008262438919

`A022127(n)+A000032(n)`
-/

namespace A022142.P13651155008262438919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022127 n + A000032 n

end

end A022142.P13651155008262438919

namespace A022142

/-- `A022127(n)+A000032(n)` -/
def P13651155008262438919.Spec : Prop :=
  ∀ n, P13651155008262438919.a n = A022142 n

end A022142

/-! ## A022142.P13255623660895511687

`A022141(n)+A000045(n)`
-/

namespace A022142.P13255623660895511687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022141 n + A000045 n

end

end A022142.P13255623660895511687

namespace A022142

/-- `A022141(n)+A000045(n)` -/
def P13255623660895511687.Spec : Prop :=
  ∀ n, P13255623660895511687.a n = A022142 n

end A022142

/-! ## A022142.P4253274577245403932

`A022383(n)+A000285(n)`
-/

namespace A022142.P4253274577245403932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022383 n + A000285 n

end

end A022142.P4253274577245403932

namespace A022142

/-- `A022383(n)+A000285(n)` -/
def P4253274577245403932.Spec : Prop :=
  ∀ n, P4253274577245403932.a n = A022142 n

end A022142

/-! ## A022142.P15726614862317228293

`A022124(n)+A001060(n)`
-/

namespace A022142.P15726614862317228293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A001060 n

end

end A022142.P15726614862317228293

namespace A022142

/-- `A022124(n)+A001060(n)` -/
def P15726614862317228293.Spec : Prop :=
  ∀ n, P15726614862317228293.a n = A022142 n

end A022142

/-! ## A022142.P17195311068928295880

`A022370(n)+A013655(n)`
-/

namespace A022142.P17195311068928295880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n + A013655 n

end

end A022142.P17195311068928295880

namespace A022142

/-- `A022370(n)+A013655(n)` -/
def P17195311068928295880.Spec : Prop :=
  ∀ n, P17195311068928295880.a n = A022142 n

end A022142

/-! ## A022142.P16397807852490133208

`A022093(n)+A020712(n)`
-/

namespace A022142.P16397807852490133208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A020712 n

end

end A022142.P16397807852490133208

namespace A022142

/-- `A022093(n)+A020712(n)` -/
def P16397807852490133208.Spec : Prop :=
  ∀ n, P16397807852490133208.a n = A022142 n

end A022142

/-! ## A022142.P14423011469707403556

`A022116(n)+A020701(n)`
-/

namespace A022142.P14423011469707403556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A020701 n

end

end A022142.P14423011469707403556

namespace A022142

/-- `A022116(n)+A020701(n)` -/
def P14423011469707403556.Spec : Prop :=
  ∀ n, P14423011469707403556.a n = A022142 n

end A022142

/-! ## A022142.P9860616495207476564

`A022326(n)+A020706(n)`
-/

namespace A022142.P9860616495207476564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n + A020706 n

end

end A022142.P9860616495207476564

namespace A022142

/-- `A022326(n)+A020706(n)` -/
def P9860616495207476564.Spec : Prop :=
  ∀ n, P9860616495207476564.a n = A022142 n

end A022142

/-! ## A022142.P15524760831180967199

`A022381(n)+A020695(n)`
-/

namespace A022142.P15524760831180967199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n + A020695 n

end

end A022142.P15524760831180967199

namespace A022142

/-- `A022381(n)+A020695(n)` -/
def P15524760831180967199.Spec : Prop :=
  ∀ n, P15524760831180967199.a n = A022142 n

end A022142

/-! ## A022142.P14898293376377697595

`A022130(n)+A022099(n)`
-/

namespace A022142.P14898293376377697595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022099 n

end

end A022142.P14898293376377697595

namespace A022142

/-- `A022130(n)+A022099(n)` -/
def P14898293376377697595.Spec : Prop :=
  ∀ n, P14898293376377697595.a n = A022142 n

end A022142

/-! ## A022142.P6185808764433099658

`A022131(n)+A022097(n)`
-/

namespace A022142.P6185808764433099658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022097 n

end

end A022142.P6185808764433099658

namespace A022142

/-- `A022131(n)+A022097(n)` -/
def P6185808764433099658.Spec : Prop :=
  ∀ n, P6185808764433099658.a n = A022142 n

end A022142

/-! ## A022142.P8861623472770013437

`A022132(n)+A022095(n)`
-/

namespace A022142.P8861623472770013437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022095 n

end

end A022142.P8861623472770013437

namespace A022142

/-- `A022132(n)+A022095(n)` -/
def P8861623472770013437.Spec : Prop :=
  ∀ n, P8861623472770013437.a n = A022142 n

end A022142

/-! ## A022142.P10861322276043864783

`A022136(n)+A022090(n)`
-/

namespace A022142.P10861322276043864783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022090 n

end

end A022142.P10861322276043864783

namespace A022142

/-- `A022136(n)+A022090(n)` -/
def P10861322276043864783.Spec : Prop :=
  ∀ n, P10861322276043864783.a n = A022142 n

end A022142

/-! ## A022142.P1069720883020093827

`A022137(n)+A022089(n)`
-/

namespace A022142.P1069720883020093827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A022089 n

end

end A022142.P1069720883020093827

namespace A022142

/-- `A022137(n)+A022089(n)` -/
def P1069720883020093827.Spec : Prop :=
  ∀ n, P1069720883020093827.a n = A022142 n

end A022142

/-! ## A022142.P9367787673919337050

`A022138(n)+A022088(n)`
-/

namespace A022142.P9367787673919337050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022088 n

end

end A022142.P9367787673919337050

namespace A022142

/-- `A022138(n)+A022088(n)` -/
def P9367787673919337050.Spec : Prop :=
  ∀ n, P9367787673919337050.a n = A022142 n

end A022142

/-! ## A022142.P13396986758143883998

`A022139(n)+A022087(n)`
-/

namespace A022142.P13396986758143883998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022139 n + A022087 n

end

end A022142.P13396986758143883998

namespace A022142

/-- `A022139(n)+A022087(n)` -/
def P13396986758143883998.Spec : Prop :=
  ∀ n, P13396986758143883998.a n = A022142 n

end A022142

/-! ## A022142.P15093285155942742684

`A022120(n)+A022115(n)`
-/

namespace A022142.P15093285155942742684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022115 n

end

end A022142.P15093285155942742684

namespace A022142

/-- `A022120(n)+A022115(n)` -/
def P15093285155942742684.Spec : Prop :=
  ∀ n, P15093285155942742684.a n = A022142 n

end A022142

/-! ## A022142.P17005204116767347703

`A022123(n)+A022113(n)`
-/

namespace A022142.P17005204116767347703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022113 n

end

end A022142.P17005204116767347703

namespace A022142

/-- `A022123(n)+A022113(n)` -/
def P17005204116767347703.Spec : Prop :=
  ∀ n, P17005204116767347703.a n = A022142 n

end A022142

/-!
# A022143: Fibonacci sequence beginning 5, 19.

The programs for A022143, the canonical program `A022143.P2356573164703713532` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022143 has offset 0).

The definition of A022143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022143.P17357768500796011046

`ogf((5+14x)/(1-x-x^2))`
-/

namespace A022143.P17357768500796011046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 14] [1, -1, -1] n

end

end A022143.P17357768500796011046

namespace A022143

/-- `ogf((5+14x)/(1-x-x^2))` -/
def P17357768500796011046.Spec : Prop :=
  ∀ n, P17357768500796011046.a n = A022143 n

end A022143

/-! ## A022143.P2356573164703713532

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022143

/-- `a(n-1)+a(n-2)` -/
def P2356573164703713532.Spec : Prop :=
  ∀ n, (P2356573164703713532.a n : ℤ) = A022143 n

theorem P2356573164703713532.correct : P2356573164703713532.Spec := by
  intro n
  simp only [A022143]

end A022143

/-! ## A022143.P14643078118833395116

`A022142(n)+A000045(n)`
-/

namespace A022143.P14643078118833395116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022142 n + A000045 n

end

end A022143.P14643078118833395116

namespace A022143

/-- `A022142(n)+A000045(n)` -/
def P14643078118833395116.Spec : Prop :=
  ∀ n, P14643078118833395116.a n = A022143 n

end A022143

/-! ## A022143.P8638943002348583902

`A022133(n)+A000285(n)`
-/

namespace A022143.P8638943002348583902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022133 n + A000285 n

end

end A022143.P8638943002348583902

namespace A022143

/-- `A022133(n)+A000285(n)` -/
def P8638943002348583902.Spec : Prop :=
  ∀ n, P8638943002348583902.a n = A022143 n

end A022143

/-! ## A022143.P2574155115474976760

`A022125(n)+A001060(n)`
-/

namespace A022143.P2574155115474976760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A001060 n

end

end A022143.P2574155115474976760

namespace A022143

/-- `A022125(n)+A001060(n)` -/
def P2574155115474976760.Spec : Prop :=
  ∀ n, P2574155115474976760.a n = A022143 n

end A022143

/-! ## A022143.P17041321115787658956

`A022118(n)+A013655(n)`
-/

namespace A022143.P17041321115787658956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A013655 n

end

end A022143.P17041321115787658956

namespace A022143

/-- `A022118(n)+A013655(n)` -/
def P17041321115787658956.Spec : Prop :=
  ∀ n, P17041321115787658956.a n = A022143 n

end A022143

/-! ## A022143.P5696399531820862009

`A022126(n)+A020695(n)`
-/

namespace A022143.P5696399531820862009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A020695 n

end

end A022143.P5696399531820862009

namespace A022143

/-- `A022126(n)+A020695(n)` -/
def P5696399531820862009.Spec : Prop :=
  ∀ n, P5696399531820862009.a n = A022143 n

end A022143

/-! ## A022143.P15300458398272934051

`A022345(n)+A020712(n)`
-/

namespace A022143.P15300458398272934051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A020712 n

end

end A022143.P15300458398272934051

namespace A022143

/-- `A022345(n)+A020712(n)` -/
def P15300458398272934051.Spec : Prop :=
  ∀ n, P15300458398272934051.a n = A022143 n

end A022143

/-! ## A022143.P17182974403382924043

`A022369(n)+A020701(n)`
-/

namespace A022143.P17182974403382924043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n + A020701 n

end

end A022143.P17182974403382924043

namespace A022143

/-- `A022369(n)+A020701(n)` -/
def P17182974403382924043.Spec : Prop :=
  ∀ n, P17182974403382924043.a n = A022143 n

end A022143

/-! ## A022143.P1979118374385127568

`A022121(n)+A022115(n)`
-/

namespace A022143.P1979118374385127568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022115 n

end

end A022143.P1979118374385127568

namespace A022143

/-- `A022121(n)+A022115(n)` -/
def P1979118374385127568.Spec : Prop :=
  ∀ n, P1979118374385127568.a n = A022143 n

end A022143

/-! ## A022143.P3768992074394125608

`A022122(n)+A022114(n)`
-/

namespace A022143.P3768992074394125608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022114 n

end

end A022143.P3768992074394125608

namespace A022143

/-- `A022122(n)+A022114(n)` -/
def P3768992074394125608.Spec : Prop :=
  ∀ n, P3768992074394125608.a n = A022143 n

end A022143

/-! ## A022143.P4229123948343220861

`A022124(n)+A022112(n)`
-/

namespace A022143.P4229123948343220861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022112 n

end

end A022143.P4229123948343220861

namespace A022143

/-- `A022124(n)+A022112(n)` -/
def P4229123948343220861.Spec : Prop :=
  ∀ n, P4229123948343220861.a n = A022143 n

end A022143

/-! ## A022143.P9113208283891632201

`A022130(n)+A022100(n)`
-/

namespace A022143.P9113208283891632201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022100 n

end

end A022143.P9113208283891632201

namespace A022143

/-- `A022130(n)+A022100(n)` -/
def P9113208283891632201.Spec : Prop :=
  ∀ n, P9113208283891632201.a n = A022143 n

end A022143

/-! ## A022143.P3896674016780021771

`A022131(n)+A022098(n)`
-/

namespace A022143.P3896674016780021771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022098 n

end

end A022143.P3896674016780021771

namespace A022143

/-- `A022131(n)+A022098(n)` -/
def P3896674016780021771.Spec : Prop :=
  ∀ n, P3896674016780021771.a n = A022143 n

end A022143

/-! ## A022143.P15482838460148086769

`A022132(n)+A022096(n)`
-/

namespace A022143.P15482838460148086769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022096 n

end

end A022143.P15482838460148086769

namespace A022143

/-- `A022132(n)+A022096(n)` -/
def P15482838460148086769.Spec : Prop :=
  ∀ n, P15482838460148086769.a n = A022143 n

end A022143

/-! ## A022143.P758840032414575204

`A022136(n)+A022091(n)`
-/

namespace A022143.P758840032414575204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n + A022091 n

end

end A022143.P758840032414575204

namespace A022143

/-- `A022136(n)+A022091(n)` -/
def P758840032414575204.Spec : Prop :=
  ∀ n, P758840032414575204.a n = A022143 n

end A022143

/-! ## A022143.P3058074529106961023

`A022137(n)+A022090(n)`
-/

namespace A022143.P3058074529106961023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A022090 n

end

end A022143.P3058074529106961023

namespace A022143

/-- `A022137(n)+A022090(n)` -/
def P3058074529106961023.Spec : Prop :=
  ∀ n, P3058074529106961023.a n = A022143 n

end A022143

/-! ## A022143.P2426003314709670046

`A022138(n)+A022089(n)`
-/

namespace A022143.P2426003314709670046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022089 n

end

end A022143.P2426003314709670046

namespace A022143

/-- `A022138(n)+A022089(n)` -/
def P2426003314709670046.Spec : Prop :=
  ∀ n, P2426003314709670046.a n = A022143 n

end A022143

/-! ## A022143.P12718531052115973498

`A022139(n)+A022088(n)`
-/

namespace A022143.P12718531052115973498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022139 n + A022088 n

end

end A022143.P12718531052115973498

namespace A022143

/-- `A022139(n)+A022088(n)` -/
def P12718531052115973498.Spec : Prop :=
  ∀ n, P12718531052115973498.a n = A022143 n

end A022143

/-! ## A022143.P10193315684378805863

`A022140(n)+A022086(n)`
-/

namespace A022143.P10193315684378805863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n + A022086 n

end

end A022143.P10193315684378805863

namespace A022143

/-- `A022140(n)+A022086(n)` -/
def P10193315684378805863.Spec : Prop :=
  ∀ n, P10193315684378805863.a n = A022143 n

end A022143

/-!
# A022144: Coordination sequence for root lattice B_2.

The programs for A022144, the canonical program `A022144.P16676713181441761724` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022144 has offset 0).

The definition of A022144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022144.P16676713181441761724

`floor(2/acot(4*n))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022144

/-- `floor(2/acot(4*n))` -/
def P16676713181441761724.Spec : Prop :=
  ∀ n, P16676713181441761724.a n = A022144 n

theorem P16676713181441761724.correct : P16676713181441761724.Spec := by
  intro n
  simp only [A022144]

end A022144

/-!
# A022145: Coordination sequence for root lattice B_3.

The programs for A022145, the canonical program `A022145.P2919200708106353379` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022145 has offset 0).

The definition of A022145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022145.P2919200708106353379

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=74, a(3)=170`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022145

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2919200708106353379.Spec : Prop :=
  ∀ n, P2919200708106353379.a n = A022145 n

theorem P2919200708106353379.correct : P2919200708106353379.Spec := by
  intro n
  simp only [A022145]

end A022145

/-! ## A022145.P6435767796856472673

`A010010(n)-4*n`
-/

namespace A022145.P6435767796856472673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n - (4 * n : ℤ)

end

end A022145.P6435767796856472673

namespace A022145

/-- `A010010(n)-4*n` -/
def P6435767796856472673.Spec : Prop :=
  ∀ n, P6435767796856472673.a n = A022145 n

end A022145

/-! ## A022145.P16126481580781836639

`A005897(n)+n*(14*n-4)`
-/

namespace A022145.P16126481580781836639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + (n : ℤ) * ((14 * n : ℤ) - 4)

end

end A022145.P16126481580781836639

namespace A022145

/-- `A005897(n)+n*(14*n-4)` -/
def P16126481580781836639.Spec : Prop :=
  ∀ n, P16126481580781836639.a n = A022145 n

end A022145

/-! ## A022145.P4597767948492569324

`A010014(n)-(2*n+1)²+1`
-/

namespace A022145.P4597767948492569324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n - ((2 * n + 1) ^ 2 : ℤ) + 1

end

end A022145.P4597767948492569324

namespace A022145

/-- `A010014(n)-(2*n+1)²+1` -/
def P4597767948492569324.Spec : Prop :=
  ∀ n, P4597767948492569324.a n = A022145 n

end A022145

/-! ## A022145.P14997008802307652051

`A014642(n)+A008527(n)`
-/

namespace A022145.P14997008802307652051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + A008527 n

end

end A022145.P14997008802307652051

namespace A022145

/-- `A014642(n)+A008527(n)` -/
def P14997008802307652051.Spec : Prop :=
  ∀ n, P14997008802307652051.a n = A022145 n

end A022145

/-! ## A022145.P1096615655681622308

`A051624(n)+A010005(n)`
-/

namespace A022145.P1096615655681622308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A010005 n

end

end A022145.P1096615655681622308

namespace A022145

/-- `A051624(n)+A010005(n)` -/
def P1096615655681622308.Spec : Prop :=
  ∀ n, P1096615655681622308.a n = A022145 n

end A022145

/-! ## A022145.P15530181090915162946

`A085250(n)+A005914(n)`
-/

namespace A022145.P15530181090915162946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + A005914 n

end

end A022145.P15530181090915162946

namespace A022145

/-- `A085250(n)+A005914(n)` -/
def P15530181090915162946.Spec : Prop :=
  ∀ n, P15530181090915162946.a n = A022145 n

end A022145

/-! ## A022145.P13318436821511792881

`A104188(n)+A005899(n)`
-/

namespace A022145.P13318436821511792881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + A005899 n

end

end A022145.P13318436821511792881

namespace A022145

/-- `A104188(n)+A005899(n)` -/
def P13318436821511792881.Spec : Prop :=
  ∀ n, P13318436821511792881.a n = A022145 n

end A022145

/-! ## A022145.P8702998431000696142

`A139267(n)+A005905(n)`
-/

namespace A022145.P8702998431000696142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n + A005905 n

end

end A022145.P8702998431000696142

namespace A022145

/-- `A139267(n)+A005905(n)` -/
def P8702998431000696142.Spec : Prop :=
  ∀ n, P8702998431000696142.a n = A022145 n

end A022145

/-! ## A022145.P5240819720063155260

`A195023(n)+A005897(n)`
-/

namespace A022145.P5240819720063155260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195023 n + A005897 n

end

end A022145.P5240819720063155260

namespace A022145

/-- `A195023(n)+A005897(n)` -/
def P5240819720063155260.Spec : Prop :=
  ∀ n, P5240819720063155260.a n = A022145 n

end A022145

/-! ## A022145.P5545334570046007176

`A389625(n)+A022287(n)`
-/

namespace A022145.P5545334570046007176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n + A022287 n

end

end A022145.P5545334570046007176

namespace A022145

/-- `A389625(n)+A022287(n)` -/
def P5545334570046007176.Spec : Prop :=
  ∀ n, P5545334570046007176.a n = A022145 n

end A022145

/-! ## A022145.P17626345449440923985

`A386477(n)+A033585(n)`
-/

namespace A022145.P17626345449440923985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386477 n + A033585 n

end

end A022145.P17626345449440923985

namespace A022145

/-- `A386477(n)+A033585(n)` -/
def P17626345449440923985.Spec : Prop :=
  ∀ n, P17626345449440923985.a n = A022145 n

end A022145

/-! ## A022145.P5439881665294846686

`A010018(n)-A033586(n)`
-/

namespace A022145.P5439881665294846686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010018 n - A033586 n

end

end A022145.P5439881665294846686

namespace A022145

/-- `A010018(n)-A033586(n)` -/
def P5439881665294846686.Spec : Prop :=
  ∀ n, P5439881665294846686.a n = A022145 n

end A022145

/-! ## A022145.P15596192719034368237

`A010014(n)-A033996(n)`
-/

namespace A022145.P15596192719034368237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n - A033996 n

end

end A022145.P15596192719034368237

namespace A022145

/-- `A010014(n)-A033996(n)` -/
def P15596192719034368237.Spec : Prop :=
  ∀ n, P15596192719034368237.a n = A022145 n

end A022145

/-! ## A022145.P734848381275165158

`A010015(n)-A135705(n)`
-/

namespace A022145.P734848381275165158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 n - A135705 n

end

end A022145.P734848381275165158

namespace A022145

/-- `A010015(n)-A135705(n)` -/
def P734848381275165158.Spec : Prop :=
  ∀ n, P734848381275165158.a n = A022145 n

end A022145

/-! ## A022145.P9465516904684878760

`A010013(n)-A140676(n)`
-/

namespace A022145.P9465516904684878760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010013 n - A140676 n

end

end A022145.P9465516904684878760

namespace A022145

/-- `A010013(n)-A140676(n)` -/
def P9465516904684878760.Spec : Prop :=
  ∀ n, P9465516904684878760.a n = A022145 n

end A022145

/-! ## A022145.P17661089530825965261

`A010016(n)-A202804(n)`
-/

namespace A022145.P17661089530825965261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010016 n - A202804 n

end

end A022145.P17661089530825965261

namespace A022145

/-- `A010016(n)-A202804(n)` -/
def P17661089530825965261.Spec : Prop :=
  ∀ n, P17661089530825965261.a n = A022145 n

end A022145

/-! ## A022145.P14937033748048866088

`A288918(n+1)+A014634(n)`
-/

namespace A022145.P14937033748048866088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288918 (n + 1) + A014634 n

end

end A022145.P14937033748048866088

namespace A022145

/-- `A288918(n+1)+A014634(n)` -/
def P14937033748048866088.Spec : Prop :=
  ∀ n, P14937033748048866088.a n = A022145 n

end A022145

/-! ## A022145.P6759665313655596120

`A193872(n)+A133653(n+1)`
-/

namespace A022145.P6759665313655596120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 n + A133653 (n + 1)

end

end A022145.P6759665313655596120

namespace A022145

/-- `A193872(n)+A133653(n+1)` -/
def P6759665313655596120.Spec : Prop :=
  ∀ n, P6759665313655596120.a n = A022145 n

end A022145

/-! ## A022145.P7082175343237081837

`A010014(n)+1-A016754(n)`
-/

namespace A022145.P7082175343237081837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n + (1 - A016754 n)

end

end A022145.P7082175343237081837

namespace A022145

/-- `A010014(n)+1-A016754(n)` -/
def P7082175343237081837.Spec : Prop :=
  ∀ n, P7082175343237081837.a n = A022145 n

end A022145

/-!
# A022146: Coordination sequence for root lattice B_4.

The programs for A022146, the canonical program `A022146.P17648652475996275041` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022146 has offset 0).

The definition of A022146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022146.P6544385123115460584

`A117216(n)-A152750(n)`
-/

namespace A022146.P6544385123115460584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117216 n - A152750 n

end

end A022146.P6544385123115460584

namespace A022146

/-- `A117216(n)-A152750(n)` -/
def P6544385123115460584.Spec : Prop :=
  ∀ n, P6544385123115460584.a n = A022146 n

theorem P6544385123115460584.correct : P6544385123115460584.Spec := by
  intro n
  simp only [A022146, Nat.add_sub_cancel, A022146.P6544385123115460584.a, A022146.P17648652475996275041.a, A007900, A007900.P17973117880974007224.f1, A007900.P17973117880974007224.a, A008574, A008574.P1300280032690682112.a, A117216, A117216.P14004553023379914469.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022146

/-! ## A022146.P17648652475996275041

`2*A007900(n)-A008574(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022146

/-- `2*A007900(n)-A008574(n)²` -/
def P17648652475996275041.Spec : Prop :=
  ∀ n, P17648652475996275041.a n = A022146 n

theorem P17648652475996275041.correct : P17648652475996275041.Spec := by
  intro n
  simp only [A022146]

end A022146

/-! ## A022146.P3730290008166187670

`(A000384(n)+1)*Δ[A077591(n)]`
-/

namespace A022146.P3730290008166187670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000384 n + 1) * (f1 (n + 1) - f1 n)

end

end A022146.P3730290008166187670

namespace A022146

/-- `(A000384(n)+1)*Δ[A077591(n)]` -/
def P3730290008166187670.Spec : Prop :=
  ∀ n, P3730290008166187670.a n = A022146 n

end A022146

/-! ## A022146.P462338522797588349

`(A002061(n)+n²)*Δ[A077591(n)]`
-/

namespace A022146.P462338522797588349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002061 n + (n ^ 2 : ℤ)) * (f1 (n + 1) - f1 n)

end

end A022146.P462338522797588349

namespace A022146

/-- `(A002061(n)+n²)*Δ[A077591(n)]` -/
def P462338522797588349.Spec : Prop :=
  ∀ n, P462338522797588349.a n = A022146 n

end A022146

/-! ## A022146.P7549483802227630621

`(A002939(n+1)-A022144(n))*A022144(n)`
-/

namespace A022146.P7549483802227630621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002939 (n + 1) - A022144 n) * A022144 n

end

end A022146.P7549483802227630621

namespace A022146

/-- `(A002939(n+1)-A022144(n))*A022144(n)` -/
def P7549483802227630621.Spec : Prop :=
  ∀ n, P7549483802227630621.a n = A022146 n

end A022146

/-! ## A022146.P79751651977558775

`(A161680(2*n)+1)*A022144(2*n)`
-/

namespace A022146.P79751651977558775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 (2 * n) + 1) * A022144 (2 * n)

end

end A022146.P79751651977558775

namespace A022146

/-- `(A161680(2*n)+1)*A022144(2*n)` -/
def P79751651977558775.Spec : Prop :=
  ∀ n, P79751651977558775.a n = A022146 n

end A022146

/-! ## A022146.P321585181313552707

`record[A000124(n)*A317316(n+1)]`
-/

namespace A022146.P321585181313552707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A317316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022146.P321585181313552707

namespace A022146

/-- `record[A000124(n)*A317316(n+1)]` -/
def P321585181313552707.Spec : Prop :=
  ∀ n, P321585181313552707.a n = A022146 n

end A022146

/-! ## A022146.P9432154140902342408

`A022144(2*n)*A388428(2*n)`
-/

namespace A022146.P9432154140902342408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (2 * n) * A388428 (2 * n)

end

end A022146.P9432154140902342408

namespace A022146

/-- `A022144(2*n)*A388428(2*n)` -/
def P9432154140902342408.Spec : Prop :=
  ∀ n, P9432154140902342408.a n = A022146 n

end A022146

/-! ## A022146.P7187414225985237232

`record[(A000217(n)+1)*A317316(n+1)]`
-/

namespace A022146.P7187414225985237232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * A317316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022146.P7187414225985237232

namespace A022146

/-- `record[(A000217(n)+1)*A317316(n+1)]` -/
def P7187414225985237232.Spec : Prop :=
  ∀ n, P7187414225985237232.a n = A022146 n

end A022146

/-! ## A022146.P15251592201909766647

`(A002939(n+1)-A008574(2*n))*A008574(2*n)`
-/

namespace A022146.P15251592201909766647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002939 (n + 1) - A008574 (2 * n)) * A008574 (2 * n)

end

end A022146.P15251592201909766647

namespace A022146

/-- `(A002939(n+1)-A008574(2*n))*A008574(2*n)` -/
def P15251592201909766647.Spec : Prop :=
  ∀ n, P15251592201909766647.a n = A022146 n

end A022146

/-! ## A022146.P10233989610574511419

`(A005893(2*n)-A004275(2*n))*A004275(2*n+1)`
-/

namespace A022146.P10233989610574511419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005893 (2 * n) - A004275 (2 * n)) * A004275 (2 * n + 1)

end

end A022146.P10233989610574511419

namespace A022146

/-- `(A005893(2*n)-A004275(2*n))*A004275(2*n+1)` -/
def P10233989610574511419.Spec : Prop :=
  ∀ n, P10233989610574511419.a n = A022146 n

end A022146

/-! ## A022146.P11891135903666201730

`(A002378(2*n+1)-A008574(2*n))*A008574(2*n)`
-/

namespace A022146.P11891135903666201730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (2 * n + 1) - A008574 (2 * n)) * A008574 (2 * n)

end

end A022146.P11891135903666201730

namespace A022146

/-- `(A002378(2*n+1)-A008574(2*n))*A008574(2*n)` -/
def P11891135903666201730.Spec : Prop :=
  ∀ n, P11891135903666201730.a n = A022146 n

end A022146

/-! ## A022146.P11432332810843518720

`(A013654(2*n+1)-A008574(2*n))*A008574(2*n)`
-/

namespace A022146.P11432332810843518720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013654 (2 * n + 1) - A008574 (2 * n)) * A008574 (2 * n)

end

end A022146.P11432332810843518720

namespace A022146

/-- `(A013654(2*n+1)-A008574(2*n))*A008574(2*n)` -/
def P11432332810843518720.Spec : Prop :=
  ∀ n, P11432332810843518720.a n = A022146 n

end A022146

/-! ## A022146.P11905207676395752054

`(A045895(2*(n+1))-A008574(2*n))*A008574(2*n)`
-/

namespace A022146.P11905207676395752054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045895 (2 * (n + 1)) - A008574 (2 * n)) * A008574 (2 * n)

end

end A022146.P11905207676395752054

namespace A022146

/-- `(A045895(2*(n+1))-A008574(2*n))*A008574(2*n)` -/
def P11905207676395752054.Spec : Prop :=
  ∀ n, P11905207676395752054.a n = A022146 n

end A022146

/-! ## A022146.P3765334904577540272

`(A103832(2*n+1)-A008574(2*n))*A008574(2*n)`
-/

namespace A022146.P3765334904577540272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103832 (2 * n + 1) - A008574 (2 * n)) * A008574 (2 * n)

end

end A022146.P3765334904577540272

namespace A022146

/-- `(A103832(2*n+1)-A008574(2*n))*A008574(2*n)` -/
def P3765334904577540272.Spec : Prop :=
  ∀ n, P3765334904577540272.a n = A022146 n

end A022146

/-! ## A022146.P4771317780527854842

`A108998(∑[n+5]+5)`
-/

namespace A022146.P4771317780527854842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022146.P4771317780527854842

namespace A022146

/-- `A108998(∑[n+5]+5)` -/
def P4771317780527854842.Spec : Prop :=
  ∀ n, P4771317780527854842.a n = A022146 n

end A022146

/-! ## A022146.P452763812674168916

`record[A108998(A055999(n)+1)]`
-/

namespace A022146.P452763812674168916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022146.P452763812674168916

namespace A022146

/-- `record[A108998(A055999(n)+1)]` -/
def P452763812674168916.Spec : Prop :=
  ∀ n, P452763812674168916.a n = A022146 n

end A022146

/-!
# A022147: Coordination sequence for root lattice B_5.

The programs for A022147, there is no canonical definition to state claims against.
-/

/-! ## A022147.P919472931332556461

`A108998(A055999(n+3))`
-/

namespace A022147.P919472931332556461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 3)).toNat

end

end A022147.P919472931332556461

/-! ## A022147.P10046443499853619603

`A108998(eq[2, A116949(n)])`
-/

namespace A022147.P10046443499853619603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022147.P10046443499853619603

/-! ## A022147.P16856109757511954690

`A108998(Δ[A026054(n+3)])`
-/

namespace A022147.P16856109757511954690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (f1 (n + 1) - f1 n).toNat

end

end A022147.P16856109757511954690

/-! ## A022147.P8060078337951910308

`A108998(A000217(n+6)-6)`
-/

namespace A022147.P8060078337951910308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 6) - 6).toNat

end

end A022147.P8060078337951910308

/-! ## A022147.P8080074612154653728

`A108998(Δ[A023545(n+2)]-2)`
-/

namespace A022147.P8080074612154653728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (f1 (n + 1) - f1 n - 2).toNat

end

end A022147.P8080074612154653728

/-! ## A022147.P3025583658140982423

`A108998(A007401(Δ[A023545(n+1)]))`
-/

namespace A022147.P3025583658140982423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A022147.P3025583658140982423

/-! ## A022147.P5988981795126231164

`record[A108998(A055999(n)%A052929(n))]`
-/

namespace A022147.P5988981795126231164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (Int.tmod (A055999 n) (A052929 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022147.P5988981795126231164

/-! ## A022147.P660120141711460390

`A108998(A167614(n+1)+Δ[A167614(2*(n+1))])`
-/

namespace A022147.P660120141711460390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A167614 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A022147.P660120141711460390

/-!
# A022148: Coordination sequence for root lattice B_6.

The programs for A022148, there is no canonical definition to state claims against.
-/

/-! ## A022148.P11739578163815404626

`A108998(A055999(n+4)-1)`
-/

namespace A022148.P11739578163815404626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 4) - 1).toNat

end

end A022148.P11739578163815404626

/-! ## A022148.P16168829569767303529

`A108998(A052905(n+4)-2)`
-/

namespace A022148.P16168829569767303529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A052905 (n + 4) - 2).toNat

end

end A022148.P16168829569767303529

/-! ## A022148.P8386802611371266432

`A108998(A000217(n+7)-7)`
-/

namespace A022148.P8386802611371266432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 7) - 7).toNat

end

end A022148.P8386802611371266432

/-! ## A022148.P2200108253414836622

`A108998(Δ[A026054(n+4)]-1)`
-/

namespace A022148.P2200108253414836622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (f1 (n + 1) - f1 n - 1).toNat

end

end A022148.P2200108253414836622

/-! ## A022148.P1910803630936331578

`A108998(A038722(A167499(n+5)+3))`
-/

namespace A022148.P1910803630936331578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A038722 (A167499 (n + 5) + 3).toNat).toNat

end

end A022148.P1910803630936331578

/-! ## A022148.P18355173168983201228

`A108998(A000124(n+11)-A016825(n+11))`
-/

namespace A022148.P18355173168983201228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000124 (n + 11) - A016825 (n + 11)).toNat

end

end A022148.P18355173168983201228

/-!
# A022149: Coordination sequence for root lattice B_7.

The programs for A022149, there is no canonical definition to state claims against.
-/

/-! ## A022149.P1891261128924982257

`A108998(A052905(n+5)-3)`
-/

namespace A022149.P1891261128924982257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A052905 (n + 5) - 3).toNat

end

end A022149.P1891261128924982257

/-! ## A022149.P48505199401310896

`A108998(A000217(n+8)-8)`
-/

namespace A022149.P48505199401310896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 8) - 8).toNat

end

end A022149.P48505199401310896

/-! ## A022149.P14589902320156781881

`A108998(A055999(n+4)+n+6)`
-/

namespace A022149.P14589902320156781881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 4) + (n + 6 : ℤ)).toNat

end

end A022149.P14589902320156781881

/-! ## A022149.P17647741915117147866

`A108998(A038722(A133263(n+7)+7))`
-/

namespace A022149.P17647741915117147866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A038722 (A133263 (n + 7) + 7).toNat).toNat

end

end A022149.P17647741915117147866

/-! ## A022149.P1163609186717969214

`A108998(A005843(n+3)+A000124(n+6))`
-/

namespace A022149.P1163609186717969214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A022149.P1163609186717969214

/-! ## A022149.P14576168043231529760

`A108998(A005449(n+5)-A002378(n+3))`
-/

namespace A022149.P14576168043231529760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A005449 (n + 5) - A002378 (n + 3)).toNat

end

end A022149.P14576168043231529760

/-!
# A022150: Coordination sequence for root lattice B_8.

The programs for A022150, there is no canonical definition to state claims against.
-/

/-! ## A022150.P18159806424809602267

`A108998(A055999(n+6)-3)`
-/

namespace A022150.P18159806424809602267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 6) - 3).toNat

end

end A022150.P18159806424809602267

/-! ## A022150.P5502826164836934092

`A108998(A000096(n+8)-8)`
-/

namespace A022150.P5502826164836934092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000096 (n + 8) - 8).toNat

end

end A022150.P5502826164836934092

/-! ## A022150.P4341352230690692050

`A108998(A000217(n+9)-9)`
-/

namespace A022150.P4341352230690692050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 9) - 9).toNat

end

end A022150.P4341352230690692050

/-! ## A022150.P4455155788484528442

`A108998(A167614(n+8)-12)`
-/

namespace A022150.P4455155788484528442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A167614 (n + 8) - 12).toNat

end

end A022150.P4455155788484528442

/-! ## A022150.P3124009916148137644

`A108998(A055998(n+6)+n+3)`
-/

namespace A022150.P3124009916148137644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A022150.P3124009916148137644

/-! ## A022150.P12814035668655679940

`A108998(A034856(n+6)+A005843(n+5))`
-/

namespace A022150.P12814035668655679940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A034856 (n + 6) + A005843 (n + 5)).toNat

end

end A022150.P12814035668655679940

/-!
# A022151: Coordination sequence for root lattice B_9.

The programs for A022151, there is no canonical definition to state claims against.
-/

/-! ## A022151.P3439359545352669102

`A108998(A000217(n+10)-10)`
-/

namespace A022151.P3439359545352669102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 10) - 10).toNat

end

end A022151.P3439359545352669102

/-! ## A022151.P15751248377799287479

`A108998(A133263(n+10)-12)`
-/

namespace A022151.P15751248377799287479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A133263 (n + 10) - 12).toNat

end

end A022151.P15751248377799287479

/-! ## A022151.P10430517368990803084

`A108998(A055999(n+6)+n+6)`
-/

namespace A022151.P10430517368990803084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 6) + (n + 6 : ℤ)).toNat

end

end A022151.P10430517368990803084

/-! ## A022151.P9570833202866908818

`A108998(A005843(n+4)+A000124(n+8))`
-/

namespace A022151.P9570833202866908818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A022151.P9570833202866908818

/-! ## A022151.P15428500831960823545

`A108998(A000124(n+14)-A016813(n+15))`
-/

namespace A022151.P15428500831960823545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000124 (n + 14) - A016813 (n + 15)).toNat

end

end A022151.P15428500831960823545

/-!
# A022152: Coordination sequence for root lattice B_10.

The programs for A022152, there is no canonical definition to state claims against.
-/

/-! ## A022152.P4192530565869366457

`A108998(A000217(n+11)-11)`
-/

namespace A022152.P4192530565869366457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 11) - 11).toNat

end

end A022152.P4192530565869366457

/-! ## A022152.P1873323560855298823

`A108998(A000124(n+11)-12)`
-/

namespace A022152.P1873323560855298823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000124 (n + 11) - 12).toNat

end

end A022152.P1873323560855298823

/-! ## A022152.P2025720607474970230

`A108998(A055999(n+7)+n+6)`
-/

namespace A022152.P2025720607474970230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 7) + (n + 6 : ℤ)).toNat

end

end A022152.P2025720607474970230

/-! ## A022152.P12269469562235855178

`A108998(A038722(A167499(n+9)+7))`
-/

namespace A022152.P12269469562235855178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A038722 (A167499 (n + 9) + 7).toNat).toNat

end

end A022152.P12269469562235855178

/-! ## A022152.P10561142983344360754

`A108998(A016825(n+6)+A000124(n+7))`
-/

namespace A022152.P10561142983344360754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A016825 (n + 6) + A000124 (n + 7)).toNat

end

end A022152.P10561142983344360754

/-!
# A022153: Coordination sequence for root lattice B_11.

The programs for A022153, there is no canonical definition to state claims against.
-/

/-! ## A022153.P3502530725804960416

`A108998(eq[12, A193739(n)])`
-/

namespace A022153.P3502530725804960416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022153.P3502530725804960416

/-! ## A022153.P6267399883835829399

`A108998(A000096(n+11)-11)`
-/

namespace A022153.P6267399883835829399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000096 (n + 11) - 11).toNat

end

end A022153.P6267399883835829399

/-! ## A022153.P13281222644388260953

`A108998(A000217(n+12)-12)`
-/

namespace A022153.P13281222644388260953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 12) - 12).toNat

end

end A022153.P13281222644388260953

/-! ## A022153.P5293541095194274246

`A108998(A055998(n+9)+n+3)`
-/

namespace A022153.P5293541095194274246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055998 (n + 9) + (n + 3 : ℤ)).toNat

end

end A022153.P5293541095194274246

/-! ## A022153.P11120311697989344701

`A108998(A055999(n+8)+n+6)`
-/

namespace A022153.P11120311697989344701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 8) + (n + 6 : ℤ)).toNat

end

end A022153.P11120311697989344701

/-!
# A022154: Coordination sequence for root lattice B_12.

The programs for A022154, there is no canonical definition to state claims against.
-/

/-! ## A022154.P7191416430337046202

`A108998(A000217(n+12)+n)`
-/

namespace A022154.P7191416430337046202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A022154.P7191416430337046202

/-! ## A022154.P7684291274455845662

`A108998(A027379(n+10)+n+3)`
-/

namespace A022154.P7684291274455845662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A027379 (n + 10) + (n + 3 : ℤ)).toNat

end

end A022154.P7684291274455845662

/-! ## A022154.P13384519467999850495

`A108998(A055999(n+9)+n+6)`
-/

namespace A022154.P13384519467999850495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 9) + (n + 6 : ℤ)).toNat

end

end A022154.P13384519467999850495

/-! ## A022154.P6650672077427401965

`A108998(A167614(n+8)+A016825(n+7))`
-/

namespace A022154.P6650672077427401965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A167614 (n + 8) + A016825 (n + 7)).toNat

end

end A022154.P6650672077427401965

/-! ## A022154.P3724671424299705770

`A108998(A034856(n+10)+A005843(n+7))`
-/

namespace A022154.P3724671424299705770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A034856 (n + 10) + A005843 (n + 7)).toNat

end

end A022154.P3724671424299705770

/-!
# A022155: Values of n at which Golay-Rudin-Shapiro sequence A020985 is negative.

The programs for A022155, the canonical program `A022155.P5220891945683012309` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022155 has offset 1).

The definition of A022155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022155.P5220891945683012309

`eq[1, A010060(and(n, 2*n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022155

/-- `eq[1, A010060(and(n, 2*n))]` -/
def P5220891945683012309.Spec : Prop :=
  ∀ n, (P5220891945683012309.a n : ℤ) = A022155 (n + 1)

theorem P5220891945683012309.correct : P5220891945683012309.Spec := by
  intro n
  simp only [A022155, Nat.add_sub_cancel]

end A022155

/-! ## A022155.P6905872106703819298

`lt[0, A254379(2*and(n, 2*n))]`
-/

namespace A022155.P6905872106703819298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P6905872106703819298

namespace A022155

/-- `lt[0, A254379(2*and(n, 2*n))]` -/
def P6905872106703819298.Spec : Prop :=
  ∀ n, (P6905872106703819298.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P13989700580756798619

`lt[0, A065620(and(n, 2*n)/2)]`
-/

namespace A022155.P13989700580756798619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P13989700580756798619

namespace A022155

/-- `lt[0, A065620(and(n, 2*n)/2)]` -/
def P13989700580756798619.Spec : Prop :=
  ∀ n, (P13989700580756798619.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P11098961387414436612

`comp[A203463(n+1)]`
-/

namespace A022155.P11098961387414436612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022155.P11098961387414436612

namespace A022155

/-- `comp[A203463(n+1)]` -/
def P11098961387414436612.Spec : Prop :=
  ∀ n, (P11098961387414436612.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P4372627323021292698

`lt[1, A100260(n+1)]`
-/

namespace A022155.P4372627323021292698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P4372627323021292698

namespace A022155

/-- `lt[1, A100260(n+1)]` -/
def P4372627323021292698.Spec : Prop :=
  ∀ n, (P4372627323021292698.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P2852462306737695515

`eq[1, A010060(A318921(n))]`
-/

namespace A022155.P2852462306737695515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A318921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P2852462306737695515

namespace A022155

/-- `eq[1, A010060(A318921(n))]` -/
def P2852462306737695515.Spec : Prop :=
  ∀ n, (P2852462306737695515.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P7304632441368795090

`eq[1, -A106400(and(n, 2*n))]`
-/

namespace A022155.P7304632441368795090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106400 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P7304632441368795090

namespace A022155

/-- `eq[1, -A106400(and(n, 2*n))]` -/
def P7304632441368795090.Spec : Prop :=
  ∀ n, (P7304632441368795090.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P4970800162406378733

`lt[0, A065620(2*and(n, 2*n))]`
-/

namespace A022155.P4970800162406378733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (2 * Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P4970800162406378733

namespace A022155

/-- `lt[0, A065620(2*and(n, 2*n))]` -/
def P4970800162406378733.Spec : Prop :=
  ∀ n, (P4970800162406378733.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P6892675028576720617

`lt[2, A268727(and(n, 2*n))]`
-/

namespace A022155.P6892675028576720617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P6892675028576720617

namespace A022155

/-- `lt[2, A268727(and(n, 2*n))]` -/
def P6892675028576720617.Spec : Prop :=
  ∀ n, (P6892675028576720617.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P9079092076931774057

`lt[0, A020987(n)]`
-/

namespace A022155.P9079092076931774057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P9079092076931774057

namespace A022155

/-- `lt[0, A020987(n)]` -/
def P9079092076931774057.Spec : Prop :=
  ∀ n, (P9079092076931774057.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P3246008102136302154

`lt[A020985(n), 0]`
-/

namespace A022155.P3246008102136302154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A022155.P3246008102136302154

namespace A022155

/-- `lt[A020985(n), 0]` -/
def P3246008102136302154.Spec : Prop :=
  ∀ n, (P3246008102136302154.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P4814268795114417282

`lt[2, A105584(n)]`
-/

namespace A022155.P4814268795114417282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022155.P4814268795114417282

namespace A022155

/-- `lt[2, A105584(n)]` -/
def P4814268795114417282.Spec : Prop :=
  ∀ n, (P4814268795114417282.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P17353618582063648033

`eq[1, and(1, A014081(n))]`
-/

namespace A022155.P17353618582063648033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014081 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P17353618582063648033

namespace A022155

/-- `eq[1, and(1, A014081(n))]` -/
def P17353618582063648033.Spec : Prop :=
  ∀ n, (P17353618582063648033.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P1955644675198089818

`eq[1, (2-A340503(n+1))²]`
-/

namespace A022155.P1955644675198089818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A340503 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P1955644675198089818

namespace A022155

/-- `eq[1, (2-A340503(n+1))²]` -/
def P1955644675198089818.Spec : Prop :=
  ∀ n, (P1955644675198089818.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P18219598284189800838

`eq[1, A000035(A014081(n))]`
-/

namespace A022155.P18219598284189800838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022155.P18219598284189800838

namespace A022155

/-- `eq[1, A000035(A014081(n))]` -/
def P18219598284189800838.Spec : Prop :=
  ∀ n, (P18219598284189800838.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P15315280320225343524

`eq[A020987(n), A054977(n)]`
-/

namespace A022155.P15315280320225343524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022155.P15315280320225343524

namespace A022155

/-- `eq[A020987(n), A054977(n)]` -/
def P15315280320225343524.Spec : Prop :=
  ∀ n, (P15315280320225343524.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P14341285431105695795

`eq[A020985(n), A057428(n)]`
-/

namespace A022155.P14341285431105695795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022155.P14341285431105695795

namespace A022155

/-- `eq[A020985(n), A057428(n)]` -/
def P14341285431105695795.Spec : Prop :=
  ∀ n, (P14341285431105695795.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P16961297136375158963

`eq[A010702(n), A105584(n)]`
-/

namespace A022155.P16961297136375158963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022155.P16961297136375158963

namespace A022155

/-- `eq[A010702(n), A105584(n)]` -/
def P16961297136375158963.Spec : Prop :=
  ∀ n, (P16961297136375158963.a n : ℤ) = A022155 (n + 1)

end A022155

/-! ## A022155.P7911301643582735211

`eq[A020987(n), A141044(n)]`
-/

namespace A022155.P7911301643582735211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022155.P7911301643582735211

namespace A022155

/-- `eq[A020987(n), A141044(n)]` -/
def P7911301643582735211.Spec : Prop :=
  ∀ n, (P7911301643582735211.a n : ℤ) = A022155 (n + 1)

end A022155

/-!
# A022156: Difference sequence of A020991.

The programs for A022156, the canonical program `A022156.P8060597449158036699` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022156 has offset 0).

The definition of A022156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022156.P2298402410632811122

`Δ[A020991(n+1)]`
-/

namespace A022156.P2298402410632811122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022156.P2298402410632811122

namespace A022156

/-- `Δ[A020991(n+1)]` -/
def P2298402410632811122.Spec : Prop :=
  ∀ n, P2298402410632811122.a n = A022156 n

end A022156

/-! ## A022156.P9729326936324482628

`abs(Δ[A020991(A110514(2*n))])`
-/

namespace A022156.P9729326936324482628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020991 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022156.P9729326936324482628

namespace A022156

/-- `abs(Δ[A020991(A110514(2*n))])` -/
def P9729326936324482628.Spec : Prop :=
  ∀ n, P9729326936324482628.a n = A022156 n

end A022156

/-! ## A022156.P5096995787484130279

`A020991(n+2)-A020991(n+1)`
-/

namespace A022156.P5096995787484130279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020991 (n + 2) - A020991 (n + 1)

end

end A022156.P5096995787484130279

namespace A022156

/-- `A020991(n+2)-A020991(n+1)` -/
def P5096995787484130279.Spec : Prop :=
  ∀ n, P5096995787484130279.a n = A022156 n

end A022156

/-! ## A022156.P9237820619630804624

`A276391(n+1)+A212591(Δ[A206332(n+1)])`
-/

namespace A022156.P9237820619630804624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1) + A212591 (f1 (n + 1) - f1 n).toNat

end

end A022156.P9237820619630804624

namespace A022156

/-- `A276391(n+1)+A212591(Δ[A206332(n+1)])` -/
def P9237820619630804624.Spec : Prop :=
  ∀ n, P9237820619630804624.a n = A022156 n

end A022156

/-! ## A022156.P8060597449158036699

`A276391(n+1)+A276391(n+2)-A115716(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022156

/-- `A276391(n+1)+A276391(n+2)-A115716(n)` -/
def P8060597449158036699.Spec : Prop :=
  ∀ n, P8060597449158036699.a n = A022156 n

theorem P8060597449158036699.correct : P8060597449158036699.Spec := by
  intro n
  simp only [A022156]

end A022156

/-! ## A022156.P998082454041841385

`Δ[record[A020991(A020986(n))]]`
-/

namespace A022156.P998082454041841385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020991 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022156.P998082454041841385

namespace A022156

/-- `Δ[record[A020991(A020986(n))]]` -/
def P998082454041841385.Spec : Prop :=
  ∀ n, P998082454041841385.a n = A022156 n

end A022156

/-! ## A022156.P6126720943103368401

`Δ[A093573(∑[n+1])]`
-/

namespace A022156.P6126720943103368401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022156.P6126720943103368401

namespace A022156

/-- `Δ[A093573(∑[n+1])]` -/
def P6126720943103368401.Spec : Prop :=
  ∀ n, P6126720943103368401.a n = A022156 n

end A022156

/-! ## A022156.P5190159297375170077

`Δ[A053738(A000695(n)+1)]`
-/

namespace A022156.P5190159297375170077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (A000695 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022156.P5190159297375170077

namespace A022156

/-- `Δ[A053738(A000695(n)+1)]` -/
def P5190159297375170077.Spec : Prop :=
  ∀ n, P5190159297375170077.a n = A022156 n

end A022156

/-!
# A022157: a(n) = n^2 - phi(n)*tau(n)^2.

The programs for A022157, the canonical program `A022157.P15504735402148631401` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022157 has offset 1).

The definition of A022157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022157.P15504735402148631401

`(n+1)²-A000010(n+1)*A000005(n+1)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022157

/-- `(n+1)²-A000010(n+1)*A000005(n+1)²` -/
def P15504735402148631401.Spec : Prop :=
  ∀ n, P15504735402148631401.a n = A022157 (n + 1)

theorem P15504735402148631401.correct : P15504735402148631401.Spec := by
  intro n
  simp only [A022157, Nat.add_sub_cancel]

end A022157

/-! ## A022157.P5196793786462441136

`(n+1)²-A110601(n+1)`
-/

namespace A022157.P5196793786462441136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A110601 (n + 1)

end

end A022157.P5196793786462441136

namespace A022157

/-- `(n+1)²-A110601(n+1)` -/
def P5196793786462441136.Spec : Prop :=
  ∀ n, P5196793786462441136.a n = A022157 (n + 1)

end A022157

/-! ## A022157.P17411991854055739556

`(n+1)²-A000010(n+1)*A035116(n+1)`
-/

namespace A022157.P17411991854055739556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1) * A035116 (n + 1)

end

end A022157.P17411991854055739556

namespace A022157

/-- `(n+1)²-A000010(n+1)*A035116(n+1)` -/
def P17411991854055739556.Spec : Prop :=
  ∀ n, P17411991854055739556.a n = A022157 (n + 1)

end A022157

/-! ## A022157.P14824528598599702078

`(n+1)²-A000005(n+1)*A062355(n+1)`
-/

namespace A022157.P14824528598599702078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000005 (n + 1) * A062355 (n + 1)

end

end A022157.P14824528598599702078

namespace A022157

/-- `(n+1)²-A000005(n+1)*A062355(n+1)` -/
def P14824528598599702078.Spec : Prop :=
  ∀ n, P14824528598599702078.a n = A022157 (n + 1)

end A022157

/-! ## A022157.P5893494051392270171

`(n+1)²+A110601(n+1)*A337066(A000040(n+2))`
-/

namespace A022157.P5893494051392270171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A110601 (n + 1) * A337066 (A000040 (n + 2)).toNat

end

end A022157.P5893494051392270171

namespace A022157

/-- `(n+1)²+A110601(n+1)*A337066(A000040(n+2))` -/
def P5893494051392270171.Spec : Prop :=
  ∀ n, P5893494051392270171.a n = A022157 (n + 1)

end A022157

/-! ## A022157.P5834958864243748614

`A028310(∑[2*n+1])-A028310(A110601(n+1))`
-/

namespace A022157.P5834958864243748614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j) - A028310 (A110601 (n + 1)).toNat

end

end A022157.P5834958864243748614

namespace A022157

/-- `A028310(∑[2*n+1])-A028310(A110601(n+1))` -/
def P5834958864243748614.Spec : Prop :=
  ∀ n, P5834958864243748614.a n = A022157 (n + 1)

end A022157

/-!
# A022158: First column of spectral array W(sqrt(3)).

The programs for A022158, the canonical program `A022158.P404310566085904441` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022158 has offset 1).

The definition of A022158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022158.P404310566085904441

`floor(sqrt(3)*floor(sqrt(3)*(n+1)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022158

/-- `floor(sqrt(3)*floor(sqrt(3)*(n+1)))` -/
def P404310566085904441.Spec : Prop :=
  ∀ n, P404310566085904441.a n = A022158 (n + 1)

theorem P404310566085904441.correct : P404310566085904441.Spec := by
  intro n
  simp only [A022158, Nat.add_sub_cancel]

end A022158

/-! ## A022158.P2268816461101898822

`A022838(floor((n+1)*sqrt(3)))`
-/

namespace A022158.P2268816461101898822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A022158.P2268816461101898822

namespace A022158

/-- `A022838(floor((n+1)*sqrt(3)))` -/
def P2268816461101898822.Spec : Prop :=
  ∀ n, P2268816461101898822.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P6284817885384814813

`A198081(A198081(n+1)-1)-1`
-/

namespace A022158.P6284817885384814813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A198081 (n + 1) - 1).toNat - 1

end

end A022158.P6284817885384814813

namespace A022158

/-- `A198081(A198081(n+1)-1)-1` -/
def P6284817885384814813.Spec : Prop :=
  ∀ n, P6284817885384814813.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P1802696917371752574

`A022838(A022838(n+1))%A016826(n)`
-/

namespace A022158.P1802696917371752574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (A022838 (n + 1)).toNat) (A016826 n)

end

end A022158.P1802696917371752574

namespace A022158

/-- `A022838(A022838(n+1))%A016826(n)` -/
def P1802696917371752574.Spec : Prop :=
  ∀ n, P1802696917371752574.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P8487692561019300421

`A022838(A022838(n+1))*A329684(n+4)`
-/

namespace A022158.P8487692561019300421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A022838 (n + 1)).toNat * A329684 (n + 4)

end

end A022158.P8487692561019300421

namespace A022158

/-- `A022838(A022838(n+1))*A329684(n+4)` -/
def P8487692561019300421.Spec : Prop :=
  ∀ n, P8487692561019300421.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P17472667253094775979

`A016789(n)-A285684(A016789(n))`
-/

namespace A022158.P17472667253094775979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A285684 (A016789 n).toNat

end

end A022158.P17472667253094775979

namespace A022158

/-- `A016789(n)-A285684(A016789(n))` -/
def P17472667253094775979.Spec : Prop :=
  ∀ n, P17472667253094775979.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P11076473978141412817

`A171970(2*A171970(2*(n+1)))`
-/

namespace A022158.P11076473978141412817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * A171970 (2 * (n + 1))).toNat

end

end A022158.P11076473978141412817

namespace A022158

/-- `A171970(2*A171970(2*(n+1)))` -/
def P11076473978141412817.Spec : Prop :=
  ∀ n, P11076473978141412817.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P8787520362041632003

`A171970(A005843(A171970(A005843(n+1))))`
-/

namespace A022158.P8787520362041632003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A005843 (A171970 (A005843 (n + 1)).toNat).toNat).toNat

end

end A022158.P8787520362041632003

namespace A022158

/-- `A171970(A005843(A171970(A005843(n+1))))` -/
def P8787520362041632003.Spec : Prop :=
  ∀ n, P8787520362041632003.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P11343854283231397575

`A172475(2*A172475(2*(n+1)))`
-/

namespace A022158.P11343854283231397575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * A172475 (2 * (n + 1))).toNat

end

end A022158.P11343854283231397575

namespace A022158

/-- `A172475(2*A172475(2*(n+1)))` -/
def P11343854283231397575.Spec : Prop :=
  ∀ n, P11343854283231397575.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P16639877178801879171

`A172475(A005843(A172475(2*(n+1))))`
-/

namespace A022158.P16639877178801879171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A005843 (A172475 (2 * (n + 1))).toNat).toNat

end

end A022158.P16639877178801879171

namespace A022158

/-- `A172475(A005843(A172475(2*(n+1))))` -/
def P16639877178801879171.Spec : Prop :=
  ∀ n, P16639877178801879171.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P16746068085754106565

`A026255(A054406(A054088(n+1)-(n+1)))`
-/

namespace A022158.P16746068085754106565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A054406 (A054088 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A022158.P16746068085754106565

namespace A022158

/-- `A026255(A054406(A054088(n+1)-(n+1)))` -/
def P16746068085754106565.Spec : Prop :=
  ∀ n, P16746068085754106565.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P12139644145906669391

`A026255(A054406(A026255(A054406(n+1))))`
-/

namespace A022158.P12139644145906669391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A054406 (A026255 (A054406 (n + 1)).toNat).toNat).toNat

end

end A022158.P12139644145906669391

namespace A022158

/-- `A026255(A054406(A026255(A054406(n+1))))` -/
def P12139644145906669391.Spec : Prop :=
  ∀ n, P12139644145906669391.a n = A022158 (n + 1)

end A022158

/-! ## A022158.P13671811651324564857

`A014245(A054088(A014245(A054088(n+1))))`
-/

namespace A022158.P13671811651324564857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A054088 (A014245 (A054088 (n + 1)).toNat).toNat).toNat

end

end A022158.P13671811651324564857

namespace A022158

/-- `A014245(A054088(A014245(A054088(n+1))))` -/
def P13671811651324564857.Spec : Prop :=
  ∀ n, P13671811651324564857.a n = A022158 (n + 1)

end A022158

/-!
# A022159: First row of spectral array W(sqrt(3)).

The programs for A022159, there is no canonical definition to state claims against.
-/

/-! ## A022159.P5994721391539485912

`A178528(A097110(n))`
-/

namespace A022159.P5994721391539485912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A097110 n).toNat

end

end A022159.P5994721391539485912

/-! ## A022159.P7499553410577097890

`A178528(record[A185738(n+1)])`
-/

namespace A022159.P7499553410577097890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022159.P7499553410577097890

/-! ## A022159.P16372258069430523761

`A178528(A052551(n)+n%2)`
-/

namespace A022159.P16372258069430523761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A052551 n + ((n % 2 : ℕ) : ℤ)).toNat

end

end A022159.P16372258069430523761

/-! ## A022159.P12956199398266435124

`A178528(A052551(n)+A000035(n))`
-/

namespace A022159.P12956199398266435124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A052551 n + A000035 n).toNat

end

end A022159.P12956199398266435124

/-! ## A022159.P4231770131269513041

`A178528(A099627(record[n/A026780(n)]))`
-/

namespace A022159.P4231770131269513041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A026780 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A099627 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A022159.P4231770131269513041

/-!
# A022160: First column of spectral array W(e-1).

The programs for A022160, the canonical program `A022160.P17824232901376242762` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022160 has offset 1).

The definition of A022160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022160.P17824232901376242762

`floor((e-1)*floor((e-1)*(n+1)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022160

/-- `floor((e-1)*floor((e-1)*(n+1)))` -/
def P17824232901376242762.Spec : Prop :=
  ∀ n, P17824232901376242762.a n = A022160 (n + 1)

theorem P17824232901376242762.correct : P17824232901376242762.Spec := by
  intro n
  simp only [A022160, Nat.add_sub_cancel]

end A022160

/-! ## A022160.P13744310482317511497

`A022843(A022843(n+1)-(n+1))+n+1-A022843(n+1)`
-/

namespace A022160.P13744310482317511497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A022843 (n + 1) - (n + 1 : ℤ)).toNat + ((n + 1 : ℤ) - A022843 (n + 1))

end

end A022160.P13744310482317511497

namespace A022160

/-- `A022843(A022843(n+1)-(n+1))+n+1-A022843(n+1)` -/
def P13744310482317511497.Spec : Prop :=
  ∀ n, P13744310482317511497.a n = A022160 (n + 1)

end A022160

/-! ## A022160.P6953309786249615447

`A014246(A000210(n+1))+n`
-/

namespace A022160.P6953309786249615447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014246 (A000210 (n + 1)).toNat + (n : ℤ)

end

end A022160.P6953309786249615447

namespace A022160

/-- `A014246(A000210(n+1))+n` -/
def P6953309786249615447.Spec : Prop :=
  ∀ n, P6953309786249615447.a n = A022160 (n + 1)

end A022160

/-! ## A022160.P8358563098856182307

`A108599(A000210(n+1)+n)-A000210(n+1)`
-/

namespace A022160.P8358563098856182307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A000210 (n + 1) + (n : ℤ)).toNat - A000210 (n + 1)

end

end A022160.P8358563098856182307

namespace A022160

/-- `A108599(A000210(n+1)+n)-A000210(n+1)` -/
def P8358563098856182307.Spec : Prop :=
  ∀ n, P8358563098856182307.a n = A022160 (n + 1)

end A022160

/-! ## A022160.P5627139331052660516

`A000210(floor(e*(n+1))-1-n)`
-/

namespace A022160.P5627139331052660516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (⌊Real.exp 1 * (n + 1 : ℝ)⌋ - 1 - (n : ℤ)).toNat

end

end A022160.P5627139331052660516

namespace A022160

/-- `A000210(floor(e*(n+1))-1-n)` -/
def P5627139331052660516.Spec : Prop :=
  ∀ n, P5627139331052660516.a n = A022160 (n + 1)

end A022160

/-! ## A022160.P10954241019201515033

`record[A000210(A000210(A126759(n)))]`
-/

namespace A022160.P10954241019201515033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (A000210 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022160.P10954241019201515033

namespace A022160

/-- `record[A000210(A000210(A126759(n)))]` -/
def P10954241019201515033.Spec : Prop :=
  ∀ n, P10954241019201515033.a n = A022160 (n + 1)

end A022160

/-!
# A022161: First row of spectral array W(e-1).

The programs for A022161, there is no canonical definition to state claims against.
-/

/-! ## A022161.P202555184262456060

`A183084(A097110(n))`
-/

namespace A022161.P202555184262456060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183084 (A097110 n).toNat

end

end A022161.P202555184262456060

/-! ## A022161.P1819565352720721305

`A183084(A000035(n)+∏[gcd(2, n)]-1)`
-/

namespace A022161.P1819565352720721305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183084 (A000035 n + (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A022161.P1819565352720721305

/-! ## A022161.P5595013215062029074

`A183084(A052551(n)+A000035(n))`
-/

namespace A022161.P5595013215062029074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183084 (A052551 n + A000035 n).toNat

end

end A022161.P5595013215062029074

/-! ## A022161.P9382598996036561955

`A183084(eq[A000007(n), A164089(n+1)])`
-/

namespace A022161.P9382598996036561955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183084 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022161.P9382598996036561955

/-! ## A022161.P17548626107395650815

`A079643(A026555(n+2))`
-/

namespace A022161.P17548626107395650815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A026555 (n + 2)).toNat

end

end A022161.P17548626107395650815

/-!
# A022162: First column of spectral array W(sqrt(3/2)).

The programs for A022162, the canonical program `A022162.P5261504720250728708` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022162 has offset 1).

The definition of A022162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022162.P5261504720250728708

`floor(sqrt(3/2)*floor(sqrt(3/2)*(n+1)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022162

/-- `floor(sqrt(3/2)*floor(sqrt(3/2)*(n+1)))` -/
def P5261504720250728708.Spec : Prop :=
  ∀ n, P5261504720250728708.a n = A022162 (n + 1)

theorem P5261504720250728708.correct : P5261504720250728708.Spec := by
  intro n
  simp only [A022162, Nat.add_sub_cancel]

end A022162

/-! ## A022162.P858980357317269821

`A277644(A277644(n+1))`
-/

namespace A022162.P858980357317269821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (A277644 (n + 1)).toNat

end

end A022162.P858980357317269821

namespace A022162

/-- `A277644(A277644(n+1))` -/
def P858980357317269821.Spec : Prop :=
  ∀ n, P858980357317269821.a n = A022162 (n + 1)

end A022162

/-! ## A022162.P15349750678135748510

`eq[1, Δ[A171974(A171974(n+1)+1)]]+1`
-/

namespace A022162.P15349750678135748510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (A171974 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022162.P15349750678135748510

namespace A022162

/-- `eq[1, Δ[A171974(A171974(n+1)+1)]]+1` -/
def P15349750678135748510.Spec : Prop :=
  ∀ n, (P15349750678135748510.a n : ℤ) = A022162 (n + 1)

end A022162

/-! ## A022162.P11936593734474054526

`A171975(2*A171975(2*(n+1)))`
-/

namespace A022162.P11936593734474054526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (2 * A171975 (2 * (n + 1))).toNat

end

end A022162.P11936593734474054526

namespace A022162

/-- `A171975(2*A171975(2*(n+1)))` -/
def P11936593734474054526.Spec : Prop :=
  ∀ n, P11936593734474054526.a n = A022162 (n + 1)

end A022162

/-! ## A022162.P17739061910120142924

`A171975(A005843(A171975(2*(n+1))))`
-/

namespace A022162.P17739061910120142924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (A005843 (A171975 (2 * (n + 1))).toNat).toNat

end

end A022162.P17739061910120142924

namespace A022162

/-- `A171975(A005843(A171975(2*(n+1))))` -/
def P17739061910120142924.Spec : Prop :=
  ∀ n, P17739061910120142924.a n = A022162 (n + 1)

end A022162

/-! ## A022162.P8746336020611197048

`A172476(3*A172476(3*(n+1)))`
-/

namespace A022162.P8746336020611197048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (3 * A172476 (3 * (n + 1))).toNat

end

end A022162.P8746336020611197048

namespace A022162

/-- `A172476(3*A172476(3*(n+1)))` -/
def P8746336020611197048.Spec : Prop :=
  ∀ n, P8746336020611197048.a n = A022162 (n + 1)

end A022162

/-! ## A022162.P4009123526339009718

`A000196(A032528(A000196(A032528(n+1))))`
-/

namespace A022162.P4009123526339009718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032528 (A000196 (A032528 (n + 1)).toNat).toNat).toNat

end

end A022162.P4009123526339009718

namespace A022162

/-- `A000196(A032528(A000196(A032528(n+1))))` -/
def P4009123526339009718.Spec : Prop :=
  ∀ n, P4009123526339009718.a n = A022162 (n + 1)

end A022162

/-!
# A022163: First row of spectral array W(sqrt(3/2)).

The programs for A022163, there is no canonical definition to state claims against.
-/

/-! ## A022163.P12506806976664029677

`6*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=27`
-/

namespace A022163.P12506806976664029677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 27] fun n a =>
  6 * a (n - 2) - 3 * a (n - 4)

end

end A022163.P12506806976664029677

/-! ## A022163.P3156034702444544377

`∪[A158869(n), ∑[A158869(n)]]`
-/

namespace A022163.P3156034702444544377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022163.P3156034702444544377

/-! ## A022163.P13266962568880477563

`∪[A138395(n+1), A158869(n)]`
-/

namespace A022163.P13266962568880477563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022163.P13266962568880477563

/-!
# A022164: First column of spectral array W(sqrt(5)-1).

The programs for A022164, the canonical program `A022164.P15144166102490566825` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022164 has offset 1).

The definition of A022164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022164.P15144166102490566825

`floor((sqrt(5)-1)*floor((sqrt(5)-1)*(n+1)))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022164

/-- `floor((sqrt(5)-1)*floor((sqrt(5)-1)*(n+1)))` -/
def P15144166102490566825.Spec : Prop :=
  ∀ n, P15144166102490566825.a n = A022164 (n + 1)

theorem P15144166102490566825.correct : P15144166102490566825.Spec := by
  intro n
  simp only [A022164, Nat.add_sub_cancel]

end A022164

/-! ## A022164.P666262364605669263

`A001961(A001961(n+1))`
-/

namespace A022164.P666262364605669263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A001961 (n + 1)).toNat

end

end A022164.P666262364605669263

namespace A022164

/-- `A001961(A001961(n+1))` -/
def P666262364605669263.Spec : Prop :=
  ∀ n, P666262364605669263.a n = A022164 (n + 1)

end A022164

/-! ## A022164.P5771866541860400163

`A001961(A005206(Δ[n²]))`
-/

namespace A022164.P5771866541860400163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A005206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A022164.P5771866541860400163

namespace A022164

/-- `A001961(A005206(Δ[n²]))` -/
def P5771866541860400163.Spec : Prop :=
  ∀ n, P5771866541860400163.a n = A022164 (n + 1)

end A022164

/-! ## A022164.P11256151280841732064

`A005206(2*A005206(2*n+1)-1)`
-/

namespace A022164.P11256151280841732064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * A005206 (2 * n + 1) - 1).toNat

end

end A022164.P11256151280841732064

namespace A022164

/-- `A005206(2*A005206(2*n+1)-1)` -/
def P11256151280841732064.Spec : Prop :=
  ∀ n, P11256151280841732064.a n = A022164 (n + 1)

end A022164

/-! ## A022164.P10278536589474715923

`A026262(A190511(n+1))-A190511(n+1)+n`
-/

namespace A022164.P10278536589474715923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (A190511 (n + 1)).toNat - A190511 (n + 1) + (n : ℤ)

end

end A022164.P10278536589474715923

namespace A022164

/-- `A026262(A190511(n+1))-A190511(n+1)+n` -/
def P10278536589474715923.Spec : Prop :=
  ∀ n, P10278536589474715923.a n = A022164 (n + 1)

end A022164

/-! ## A022164.P11776510170887870189

`A060143(2*floor(2*(n+1)/ϕ))`
-/

namespace A022164.P11776510170887870189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋).toNat

end

end A022164.P11776510170887870189

namespace A022164

/-- `A060143(2*floor(2*(n+1)/ϕ))` -/
def P11776510170887870189.Spec : Prop :=
  ∀ n, P11776510170887870189.a n = A022164 (n + 1)

end A022164

/-!
# A022165: First row of spectral array W(sqrt(5)-1).

The programs for A022165, there is no canonical definition to state claims against.
-/

/-! ## A022165.P12115318750421045257

`2*round((ϕ+1)*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A022165.P12115318750421045257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * SequenceMachineLib.roundAway ((Real.goldenRatio + 1) * (a (n - 2) : ℝ))

end

end A022165.P12115318750421045257

/-! ## A022165.P15069393820134015637

`2*round(a(n-2)/(2-ϕ))` with `a(0)=1, a(1)=5`
-/

namespace A022165.P15069393820134015637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / (2 - Real.goldenRatio))

end

end A022165.P15069393820134015637

/-! ## A022165.P18248236461411014056

`2*round(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A022165.P18248236461411014056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ)))

end

end A022165.P18248236461411014056

/-! ## A022165.P15139222076188307747

`∏[(n%2+1)²/a(n-1)+1]` with `a(0)=1`
-/

namespace A022165.P15139222076188307747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (((n % 2 + 1) ^ 2 : ℕ) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A022165.P15139222076188307747

/-! ## A022165.P7297923491455622670

`6*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=26`
-/

namespace A022165.P7297923491455622670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 26] fun n a =>
  6 * a (n - 2) - 4 * a (n - 4)

end

end A022165.P7297923491455622670

/-!
# A022166: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2.

The programs for A022166, the canonical program `A022166.P334113423595562006` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022166 has offset 0).

The definition of A022166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022166.P16850903520888580220

`A176420(n)+A014473(n)`
-/

namespace A022166.P16850903520888580220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176420 n + A014473 n

end

end A022166.P16850903520888580220

namespace A022166

/-- `A176420(n)+A014473(n)` -/
def P16850903520888580220.Spec : Prop :=
  ∀ n, P16850903520888580220.a n = A022166 n

end A022166

/-! ## A022166.P334113423595562006

`A157638(n)/A007318(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022166

/-- `A157638(n)/A007318(n)` -/
def P334113423595562006.Spec : Prop :=
  ∀ n, P334113423595562006.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P831590444556436246

`A157638(n)/sqrt(A008459(n))`
-/

namespace A022166.P831590444556436246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A022166.P831590444556436246

namespace A022166

/-- `A157638(n)/sqrt(A008459(n))` -/
def P831590444556436246.Spec : Prop :=
  ∀ n, P831590444556436246.a n = (A022166 n : ℝ)

end A022166

/-! ## A022166.P11321634416022392825

`A157638(n)/Δ[A102363(n)]`
-/

namespace A022166.P11321634416022392825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A022166.P11321634416022392825

namespace A022166

/-- `A157638(n)/Δ[A102363(n)]` -/
def P11321634416022392825.Spec : Prop :=
  ∀ n, P11321634416022392825.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P839004517812635205

`A157638(n)/(A014473(n)+1)`
-/

namespace A022166.P839004517812635205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157638 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A022166.P839004517812635205

namespace A022166

/-- `A157638(n)/(A014473(n)+1)` -/
def P839004517812635205.Spec : Prop :=
  ∀ n, P839004517812635205.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P12843460248147440628

`A022167(n)+A176420(n)-A176421(n)`
-/

namespace A022166.P12843460248147440628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n + (A176420 n - A176421 n)

end

end A022166.P12843460248147440628

namespace A022166

/-- `A022167(n)+A176420(n)-A176421(n)` -/
def P12843460248147440628.Spec : Prop :=
  ∀ n, P12843460248147440628.a n = A022166 n

end A022166

/-! ## A022166.P2689158804770859024

`A022167(n)/A157640(n)*A157638(n)`
-/

namespace A022166.P2689158804770859024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A157640 n : ℚ) * (A157638 n : ℚ)

end

end A022166.P2689158804770859024

namespace A022166

/-- `A022167(n)/A157640(n)*A157638(n)` -/
def P2689158804770859024.Spec : Prop :=
  ∀ n, P2689158804770859024.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P9213236692411513976

`A022168(n)+A176420(n)-A176422(n)`
-/

namespace A022166.P9213236692411513976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n + (A176420 n - A176422 n)

end

end A022166.P9213236692411513976

namespace A022166

/-- `A022168(n)+A176420(n)-A176422(n)` -/
def P9213236692411513976.Spec : Prop :=
  ∀ n, P9213236692411513976.a n = A022166 n

end A022166

/-! ## A022166.P2275741292733419602

`gcd(A108084(n), A174387(n))`
-/

namespace A022166.P2275741292733419602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108084 n) (A174387 n)

end

end A022166.P2275741292733419602

namespace A022166

/-- `gcd(A108084(n), A174387(n))` -/
def P2275741292733419602.Spec : Prop :=
  ∀ n, (P2275741292733419602.a n : ℤ) = A022166 n

end A022166

/-! ## A022166.P17463997207253918012

`A108084(n)/A108084(val(A108084(n), 2))`
-/

namespace A022166.P17463997207253918012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108084 n : ℚ) / (A108084 (SequenceMachineLib.valuation (A108084 n).toNat 2) : ℚ)

end

end A022166.P17463997207253918012

namespace A022166

/-- `A108084(n)/A108084(val(A108084(n), 2))` -/
def P17463997207253918012.Spec : Prop :=
  ∀ n, P17463997207253918012.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P17130928426090404955

`A022168(n)/A157641(n)*A157638(n)`
-/

namespace A022166.P17130928426090404955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A157641 n : ℚ) * (A157638 n : ℚ)

end

end A022166.P17130928426090404955

namespace A022166

/-- `A022168(n)/A157641(n)*A157638(n)` -/
def P17130928426090404955.Spec : Prop :=
  ∀ n, P17130928426090404955.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P980563228106860039

`A286331(n)/gcd(A286331(n), A348622(n))`
-/

namespace A022166.P980563228106860039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286331 n : ℚ) / (Int.gcd (A286331 n) (A348622 n) : ℚ)

end

end A022166.P980563228106860039

namespace A022166

/-- `A286331(n)/gcd(A286331(n), A348622(n))` -/
def P980563228106860039.Spec : Prop :=
  ∀ n, P980563228106860039.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P5662415231602966466

`A156765(n)/A009963(n)`
-/

namespace A022166.P5662415231602966466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A009963 n : ℚ)

end

end A022166.P5662415231602966466

namespace A022166

/-- `A156765(n)/A009963(n)` -/
def P5662415231602966466.Spec : Prop :=
  ∀ n, P5662415231602966466.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P5928162442174131429

`A156950(n)/A173503(n)`
-/

namespace A022166.P5928162442174131429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156950 n : ℚ) / (A173503 n : ℚ)

end

end A022166.P5928162442174131429

namespace A022166

/-- `A156950(n)/A173503(n)` -/
def P5928162442174131429.Spec : Prop :=
  ∀ n, P5928162442174131429.a n = (A022166 n : ℚ)

end A022166

/-! ## A022166.P13815127286755275519

`gcd(2*A108084(n), A156950(n))`
-/

namespace A022166.P13815127286755275519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A108084 n) (A156950 n)

end

end A022166.P13815127286755275519

namespace A022166

/-- `gcd(2*A108084(n), A156950(n))` -/
def P13815127286755275519.Spec : Prop :=
  ∀ n, (P13815127286755275519.a n : ℤ) = A022166 n

end A022166

/-!
# A022167: Triangle of Gaussian binomial coefficients [ n,k ] for q = 3.

The programs for A022167, there is no canonical definition to state claims against.
-/

/-! ## A022167.P5948160749647697895

`A176421(n)+A014473(n)`
-/

namespace A022167.P5948160749647697895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176421 n + A014473 n

end

end A022167.P5948160749647697895

/-! ## A022167.P17805438004114437637

`A022166(n)+A176421(n)-A176420(n)`
-/

namespace A022167.P17805438004114437637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A176421 n - A176420 n)

end

end A022167.P17805438004114437637

/-! ## A022167.P10685809369782242456

`A157640(n)/A007318(n)`
-/

namespace A022167.P10685809369782242456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157640 n : ℚ) / (A007318 n : ℚ)

end

end A022167.P10685809369782242456

/-! ## A022167.P6974159477664199241

`A157640(n)/sqrt(A008459(n))`
-/

namespace A022167.P6974159477664199241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157640 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A022167.P6974159477664199241

/-! ## A022167.P18385169232132442713

`A157640(n)/Δ[A102363(n)]`
-/

namespace A022167.P18385169232132442713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157640 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A022167.P18385169232132442713

/-! ## A022167.P15153765092791165759

`2/A028326(n)*A157640(n)`
-/

namespace A022167.P15153765092791165759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A157640 n : ℚ)

end

end A022167.P15153765092791165759

/-! ## A022167.P7709136991825909529

`A022166(n)/A157638(n)*A157640(n)`
-/

namespace A022167.P7709136991825909529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A157638 n : ℚ) * (A157640 n : ℚ)

end

end A022167.P7709136991825909529

/-! ## A022167.P5941436655775674041

`A022168(n)+A176421(n)-A176422(n)`
-/

namespace A022167.P5941436655775674041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n + (A176421 n - A176422 n)

end

end A022167.P5941436655775674041

/-! ## A022167.P540709756598697844

`A022168(n)/A157641(n)*A157640(n)`
-/

namespace A022167.P540709756598697844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A157641 n : ℚ) * (A157640 n : ℚ)

end

end A022167.P540709756598697844

/-! ## A022167.P1054437988633296872

`gcd(A143777(n), A157783(n))`
-/

namespace A022167.P1054437988633296872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143777 n) (A157783 n)

end

end A022167.P1054437988633296872

/-! ## A022167.P8391773941570963535

`A156766(n)/A009963(n)`
-/

namespace A022167.P8391773941570963535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156766 n : ℚ) / (A009963 n : ℚ)

end

end A022167.P8391773941570963535

/-! ## A022167.P10360670240572844287

`A157640(n)/A032742(A028326(n))`
-/

namespace A022167.P10360670240572844287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157640 n : ℚ) / (A032742 (A028326 n).toNat : ℚ)

end

end A022167.P10360670240572844287

/-!
# A022168: Triangle of Gaussian binomial coefficients [ n,k ] for q = 4.

The programs for A022168, there is no canonical definition to state claims against.
-/

/-! ## A022168.P15969791068875400176

`A176422(n)+A014473(n)`
-/

namespace A022168.P15969791068875400176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176422 n + A014473 n

end

end A022168.P15969791068875400176

/-! ## A022168.P7166526679414260232

`A022166(n)+A176422(n)-A176420(n)`
-/

namespace A022168.P7166526679414260232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A176422 n - A176420 n)

end

end A022168.P7166526679414260232

/-! ## A022168.P12187279978452675241

`A022167(n)+A176422(n)-A176421(n)`
-/

namespace A022168.P12187279978452675241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n + (A176422 n - A176421 n)

end

end A022168.P12187279978452675241

/-! ## A022168.P17677226216788117474

`A157641(n)/A007318(n)`
-/

namespace A022168.P17677226216788117474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157641 n : ℚ) / (A007318 n : ℚ)

end

end A022168.P17677226216788117474

/-! ## A022168.P566903415113585805

`A157641(n)/sqrt(A008459(n))`
-/

namespace A022168.P566903415113585805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157641 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A022168.P566903415113585805

/-! ## A022168.P15776538188152926856

`A157641(n)/Δ[A102363(n)]`
-/

namespace A022168.P15776538188152926856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157641 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A022168.P15776538188152926856

/-! ## A022168.P4462451617514523893

`2/A028326(n)*A157641(n)`
-/

namespace A022168.P4462451617514523893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A157641 n : ℚ)

end

end A022168.P4462451617514523893

/-! ## A022168.P4169463613369178532

`A022166(n)/A157638(n)*A157641(n)`
-/

namespace A022168.P4169463613369178532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A157638 n : ℚ) * (A157641 n : ℚ)

end

end A022168.P4169463613369178532

/-! ## A022168.P578667979907480344

`A022167(n)/A157640(n)*A157641(n)`
-/

namespace A022168.P578667979907480344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A157640 n : ℚ) * (A157641 n : ℚ)

end

end A022168.P578667979907480344

/-! ## A022168.P16875184991797761078

`gcd(A157784(n), A174389(n))`
-/

namespace A022168.P16875184991797761078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157784 n) (A174389 n)

end

end A022168.P16875184991797761078

/-! ## A022168.P12194358936747868078

`A156767(n)/A009963(n)`
-/

namespace A022168.P12194358936747868078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156767 n : ℚ) / (A009963 n : ℚ)

end

end A022168.P12194358936747868078

/-! ## A022168.P4488353942262838758

`A157641(n)/A004525(A028326(n))`
-/

namespace A022168.P4488353942262838758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157641 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A022168.P4488353942262838758

/-!
# A022169: Triangle of Gaussian binomial coefficients [ n,k ] for q = 5.

The programs for A022169, there is no canonical definition to state claims against.
-/

/-! ## A022169.P8939141414332568811

`A020655(A022168(n))`
-/

namespace A022169.P8939141414332568811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A022168 n).toNat

end

end A022169.P8939141414332568811

/-! ## A022169.P10196165892989391635

`A037453(A022167(n))`
-/

namespace A022169.P10196165892989391635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A022167 n).toNat

end

end A022169.P10196165892989391635

/-! ## A022169.P2086133937974968724

`A020654(A022168(n)+1)`
-/

namespace A022169.P2086133937974968724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A022168 n + 1).toNat

end

end A022169.P2086133937974968724

/-! ## A022169.P6754005662631136492

`A023733(A022168(n)+1)`
-/

namespace A022169.P6754005662631136492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A022168 n + 1).toNat

end

end A022169.P6754005662631136492

/-! ## A022169.P7177293982396873642

`A023721(or(1, A022168(n)))`
-/

namespace A022169.P7177293982396873642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (Int.lor 1 (A022168 n)).toNat

end

end A022169.P7177293982396873642

/-!
# A022170: Triangle of Gaussian binomial coefficients [ n,k ] for q = 6.

The programs for A022170, there is no canonical definition to state claims against.
-/

/-! ## A022170.P12500844834117589925

`A037454(A022167(n))`
-/

namespace A022170.P12500844834117589925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A022167 n).toNat

end

end A022170.P12500844834117589925

/-! ## A022170.P7232252811945176011

`A037460(A022168(n))`
-/

namespace A022170.P7232252811945176011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A022168 n).toNat

end

end A022170.P7232252811945176011

/-! ## A022170.P17252910780758371064

`A037454(A157640(n)/A007318(n))`
-/

namespace A022170.P17252910780758371064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.roundAway ((A157640 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A022170.P17252910780758371064

/-! ## A022170.P9600314073299015607

`A037454(A156766(n)/A009963(n))`
-/

namespace A022170.P9600314073299015607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (SequenceMachineLib.roundAway ((A156766 n : ℚ) / (A009963 n : ℚ))).toNat

end

end A022170.P9600314073299015607

/-! ## A022170.P449056863721320675

`A037460(A156767(n)/A009963(n))`
-/

namespace A022170.P449056863721320675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (SequenceMachineLib.roundAway ((A156767 n : ℚ) / (A009963 n : ℚ))).toNat

end

end A022170.P449056863721320675

/-!
# A022171: Triangle of Gaussian binomial coefficients [ n,k ] for q = 7.

The programs for A022171, there is no canonical definition to state claims against.
-/

/-! ## A022171.P15802419085390681082

`A037455(A022167(n))`
-/

namespace A022171.P15802419085390681082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A022167 n).toNat

end

end A022171.P15802419085390681082

/-! ## A022171.P3533797825548513745

`A037461(A022168(n))`
-/

namespace A022171.P3533797825548513745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A022168 n).toNat

end

end A022171.P3533797825548513745

/-! ## A022171.P10380474772577038246

`A037461(A157641(n)/A007318(n))`
-/

namespace A022171.P10380474772577038246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (SequenceMachineLib.roundAway ((A157641 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A022171.P10380474772577038246

/-! ## A022171.P1219191700432701088

`A037455(A156766(n)/A009963(n))`
-/

namespace A022171.P1219191700432701088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.roundAway ((A156766 n : ℚ) / (A009963 n : ℚ))).toNat

end

end A022171.P1219191700432701088

/-! ## A022171.P16228228031665092608

`A020658(A022170(n))`
-/

namespace A022171.P16228228031665092608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A022170 n).toNat

end

end A022171.P16228228031665092608

/-!
# A022172: Triangle of Gaussian binomial coefficients [ n,k ] for q = 8.

The programs for A022172, there is no canonical definition to state claims against.
-/

/-! ## A022172.P588246529065466944

`A037456(A022167(n))`
-/

namespace A022172.P588246529065466944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A022167 n).toNat

end

end A022172.P588246529065466944

/-! ## A022172.P16395350410477855617

`A037462(A022168(n))`
-/

namespace A022172.P16395350410477855617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A022168 n).toNat

end

end A022172.P16395350410477855617

/-! ## A022172.P2162636333857699735

`A048678(or(1, A022168(n)))`
-/

namespace A022172.P2162636333857699735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (Int.lor 1 (A022168 n)).toNat

end

end A022172.P2162636333857699735

/-! ## A022172.P1170142706570667236

`A048678(A022168(n-char[1]))`
-/

namespace A022172.P1170142706570667236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A022168 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A022172.P1170142706570667236

/-!
# A022173: Triangle of Gaussian binomial coefficients [ n,k ] for q = 9.

The programs for A022173, there is no canonical definition to state claims against.
-/

/-! ## A022173.P9117191541783250647

`A037314(A022167(n))`
-/

namespace A022173.P9117191541783250647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A022167 n).toNat

end

end A022173.P9117191541783250647

/-! ## A022173.P7116006837012644940

`A037463(A022168(n))`
-/

namespace A022173.P7116006837012644940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A022168 n).toNat

end

end A022173.P7116006837012644940

/-! ## A022173.P1609871350153590144

`A037463(A157641(n)/A007318(n))`
-/

namespace A022173.P1609871350153590144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (SequenceMachineLib.roundAway ((A157641 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A022173.P1609871350153590144

/-! ## A022173.P598023972611833869

`A037314(A156766(n)/A009963(n))`
-/

namespace A022173.P598023972611833869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (SequenceMachineLib.roundAway ((A156766 n : ℚ) / (A009963 n : ℚ))).toNat

end

end A022173.P598023972611833869

/-! ## A022173.P7575599931505521266

`A037463(A156767(n)/A009963(n))`
-/

namespace A022173.P7575599931505521266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (SequenceMachineLib.roundAway ((A156767 n : ℚ) / (A009963 n : ℚ))).toNat

end

end A022173.P7575599931505521266

/-!
# A022174: Triangle of Gaussian binomial coefficients [ n,k ] for q = 10.

The programs for A022174, there is no canonical definition to state claims against.
-/

/-! ## A022174.P14008556286389934595

`A007089(A022167(n))`
-/

namespace A022174.P14008556286389934595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A022167 n).toNat

end

end A022174.P14008556286389934595

/-! ## A022174.P9683738503519405538

`A007090(A022168(n))`
-/

namespace A022174.P9683738503519405538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A022168 n).toNat

end

end A022174.P9683738503519405538

/-! ## A022174.P15957567982320527690

`A305877(3*A022167(n))`
-/

namespace A022174.P15957567982320527690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A022167 n).toNat

end

end A022174.P15957567982320527690

/-! ## A022174.P3663558282434808613

`A305877(lcm(3, A022167(n)))`
-/

namespace A022174.P3663558282434808613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A022167 n))

end

end A022174.P3663558282434808613

/-! ## A022174.P4432529001689716184

`A028846(or(1, A022168(n)))`
-/

namespace A022174.P4432529001689716184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (Int.lor 1 (A022168 n)).toNat

end

end A022174.P4432529001689716184

/-!
# A022175: Triangle of Gaussian binomial coefficients [ n,k ] for q = 11.

The programs for A022175, there is no canonical definition to state claims against.
-/

/-! ## A022175.P14118719550374732207

`A032931(A022166(n)%A139071(n+1))`
-/

namespace A022175.P14118719550374732207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032931 (Int.tmod (A022166 n) (A139071 (n + 1))).toNat

end

end A022175.P14118719550374732207

/-! ## A022175.P1505544711226004990

`A007095(A022174(n))`
-/

namespace A022175.P1505544711226004990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A022174 n).toNat

end

end A022175.P1505544711226004990

/-! ## A022175.P1205299237924787020

`A057946(A022181(n))`
-/

namespace A022175.P1205299237924787020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 (A022181 n).toNat

end

end A022175.P1205299237924787020

/-! ## A022175.P17607617803111411139

`A108348(A022170(n))`
-/

namespace A022175.P17607617803111411139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108348 (A022170 n).toNat

end

end A022175.P17607617803111411139

/-! ## A022175.P8803168595220053316

`A318876(A176631(n))`
-/

namespace A022175.P8803168595220053316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (A176631 n).toNat

end

end A022175.P8803168595220053316

/-!
# A022176: Triangle of Gaussian binomial coefficients [ n,k ] for q = 12.

The programs for A022176, there is no canonical definition to state claims against.
-/

/-! ## A022176.P12676333244588440970

`A028901(A022184(n))`
-/

namespace A022176.P12676333244588440970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A022184 n).toNat

end

end A022176.P12676333244588440970

/-! ## A022176.P3934991027066061104

`A171397(A022175(n))`
-/

namespace A022176.P3934991027066061104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A022175 n).toNat

end

end A022176.P3934991027066061104

/-! ## A022176.P2546195917771179730

`A168186(A176627(n))`
-/

namespace A022176.P2546195917771179730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (A176627 n).toNat

end

end A022176.P2546195917771179730

/-! ## A022176.P3128603816711315230

`A102487(A022174(n)+1)`
-/

namespace A022176.P3128603816711315230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A022174 n + 1).toNat

end

end A022176.P3128603816711315230

/-! ## A022176.P16991903495665884376

`A357912(A223202(n+1))`
-/

namespace A022176.P16991903495665884376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357912 (A223202 (n + 1)).toNat

end

end A022176.P16991903495665884376

/-!
# A022177: Triangle of Gaussian binomial coefficients [ n,k ] for q = 13.

The programs for A022177, there is no canonical definition to state claims against.
-/

/-! ## A022177.P1031725341438972016

`A032933(A022166(n)%A048369(n+1))`
-/

namespace A022177.P1031725341438972016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032933 (Int.tmod (A022166 n) (A048369 (n + 1))).toNat

end

end A022177.P1031725341438972016

/-! ## A022177.P17416020287678313184

`A032933(A022166(n)^A225654(n))`
-/

namespace A022177.P17416020287678313184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032933 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A225654 n : ℤ))).toNat

end

end A022177.P17416020287678313184

/-! ## A022177.P3942650537505140522

`A032933(C(A022166(n), A225654(n)))`
-/

namespace A022177.P3942650537505140522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032933 (Nat.choose (A022166 n).toNat (A225654 n).toNat)

end

end A022177.P3942650537505140522

/-! ## A022177.P2860471500158302028

`A094823(A022174(n))`
-/

namespace A022177.P2860471500158302028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A022174 n).toNat

end

end A022177.P2860471500158302028

/-! ## A022177.P6005455625573039736

`A091030(A167040(n))`
-/

namespace A022177.P6005455625573039736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091030 (A167040 n).toNat

end

end A022177.P6005455625573039736

/-!
# A022178: Triangle of Gaussian binomial coefficients [ n,k ] for q = 14.

The programs for A022178, there is no canonical definition to state claims against.
-/

/-! ## A022178.P18101678664203116005

`A032934(A022166(n)%Δ[A116427(n)])`
-/

namespace A022178.P18101678664203116005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032934 (Int.tmod (A022166 n) (f1 (n + 1) - f1 n)).toNat

end

end A022178.P18101678664203116005

/-! ## A022178.P5598416552972161130

`A032934(A022166(n))^A014963(A043177(n+1))`
-/

namespace A022178.P5598416552972161130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032934 (A022166 n).toNat : ℚ) ^ (A014963 (A043177 (n + 1)).toNat : ℤ)

end

end A022178.P5598416552972161130

/-! ## A022178.P15659589016060577107

`A032934(A022166(n))^A007318(A151710(n+1))`
-/

namespace A022178.P15659589016060577107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032934 (A022166 n).toNat : ℚ) ^ (A007318 (A151710 (n + 1)).toNat : ℤ)

end

end A022178.P15659589016060577107

/-! ## A022178.P8266437602599812093

`A032934(A022166(n))%A116427(n+2)`
-/

namespace A022178.P8266437602599812093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032934 (A022166 n).toNat) (A116427 (n + 2))

end

end A022178.P8266437602599812093

/-! ## A022178.P9823098829245195450

`A028902(A022184(n))`
-/

namespace A022178.P9823098829245195450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A022184 n).toNat

end

end A022178.P9823098829245195450

/-!
# A022179: Triangle of Gaussian binomial coefficients [ n,k ] for q = 15.

The programs for A022179, there is no canonical definition to state claims against.
-/

/-! ## A022179.P16552136367601048088

`A032935(or(A036859(n+1)!, A022166(n)))`
-/

namespace A022179.P16552136367601048088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032935 (Int.lor (Nat.factorial (A036859 (n + 1)).toNat : ℤ) (A022166 n)).toNat

end

end A022179.P16552136367601048088

/-! ## A022179.P13092682046365537059

`A032935(A022166(n))%A032935(A183782(n+1))`
-/

namespace A022179.P13092682046365537059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032935 (A022166 n).toNat) (A032935 (A183782 (n + 1)).toNat)

end

end A022179.P13092682046365537059

/-! ## A022179.P15073109332942199552

`A032935(A022166(n)%A066590(n+1))`
-/

namespace A022179.P15073109332942199552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032935 (Int.tmod (A022166 n) (A066590 (n + 1))).toNat

end

end A022179.P15073109332942199552

/-! ## A022179.P7719658773078122047

`A032935(A022166(n))%A271111(n+1)`
-/

namespace A022179.P7719658773078122047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032935 (A022166 n).toNat) (A271111 (n + 1))

end

end A022179.P7719658773078122047

/-! ## A022179.P10449756952588442036

`A032935(A022166(n)^A225654(n))`
-/

namespace A022179.P10449756952588442036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032935 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A225654 n : ℤ))).toNat

end

end A022179.P10449756952588442036

/-!
# A022180: Triangle of Gaussian binomial coefficients [ n,k ] for q = 16.

The programs for A022180, there is no canonical definition to state claims against.
-/

/-! ## A022180.P6472245047263093360

`A032936(A022166(n))^A007318(A097610(n))`
-/

namespace A022180.P6472245047263093360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (A022166 n).toNat : ℚ) ^ (A007318 (A097610 n).toNat : ℤ)

end

end A022180.P6472245047263093360

/-! ## A022180.P4518674380809463487

`A032936(A022166(n))^A046542(A096465(n))`
-/

namespace A022180.P4518674380809463487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (A022166 n).toNat : ℚ) ^ (A046542 (A096465 n).toNat : ℤ)

end

end A022180.P4518674380809463487

/-! ## A022180.P12185053890968441537

`A032936(A022166(n))^A143261(A048993(n))`
-/

namespace A022180.P12185053890968441537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (A022166 n).toNat : ℚ) ^ (A143261 (A048993 n).toNat : ℤ)

end

end A022180.P12185053890968441537

/-! ## A022180.P13606193861269883842

`A032936(A022166(n))^A046550(A213275(n))`
-/

namespace A022180.P13606193861269883842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032936 (A022166 n).toNat : ℚ) ^ (A046550 (A213275 n).toNat : ℤ)

end

end A022180.P13606193861269883842

/-! ## A022180.P8878258410652432369

`A032936(A022166(n))*A317508(A000040(n+1))`
-/

namespace A022180.P8878258410652432369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032936 (A022166 n).toNat * A317508 (A000040 (n + 1)).toNat

end

end A022180.P8878258410652432369

/-!
# A022181: Triangle of Gaussian binomial coefficients [ n,k ] for q = 17.

The programs for A022181, there is no canonical definition to state claims against.
-/

/-! ## A022181.P13255071160745204236

`A102489(A022175(n))`
-/

namespace A022181.P13255071160745204236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A022175 n).toNat

end

end A022181.P13255071160745204236

/-! ## A022181.P4079701208258683156

`A000593(A156581(n))`
-/

namespace A022181.P4079701208258683156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A156581 n).toNat

end

end A022181.P4079701208258683156

/-! ## A022181.P11039603862671278653

`A071324(2*A156581(n))`
-/

namespace A022181.P11039603862671278653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (2 * A156581 n).toNat

end

end A022181.P11039603862671278653

/-! ## A022181.P14155077413369468941

`A113184(2*A156581(n))`
-/

namespace A022181.P14155077413369468941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (2 * A156581 n).toNat

end

end A022181.P14155077413369468941

/-! ## A022181.P6686391565378328610

`A117000(2*A156581(n))`
-/

namespace A022181.P6686391565378328610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (2 * A156581 n).toNat

end

end A022181.P6686391565378328610

/-!
# A022182: Triangle of Gaussian binomial coefficients [ n,k ] for q = 18.

The programs for A022182, there is no canonical definition to state claims against.
-/

/-! ## A022182.P5618347590699848741

`A028904(A022184(n))`
-/

namespace A022182.P5618347590699848741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A022184 n).toNat

end

end A022182.P5618347590699848741

/-! ## A022182.P9467567633900733243

`A003969(A156581(n))`
-/

namespace A022182.P9467567633900733243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (A156581 n).toNat

end

end A022182.P9467567633900733243

/-! ## A022182.P9776924064597550134

`A255808(A022180(n))`
-/

namespace A022182.P9776924064597550134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255808 (A022180 n).toNat

end

end A022182.P9776924064597550134

/-! ## A022182.P17803436228035956511

`A218721(A167040(n))`
-/

namespace A022182.P17803436228035956511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218721 (A167040 n).toNat

end

end A022182.P17803436228035956511

/-! ## A022182.P11819276001969802876

`A324161(or(1, A022184(n)))`
-/

namespace A022182.P11819276001969802876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (Int.lor 1 (A022184 n)).toNat

end

end A022182.P11819276001969802876

/-!
# A022183: Triangle of Gaussian binomial coefficients [ n,k ] for q = 19.

The programs for A022183, there is no canonical definition to state claims against.
-/

/-! ## A022183.P2456134952072938195

`A003973(A156581(n))`
-/

namespace A022183.P2456134952072938195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A156581 n).toNat

end

end A022183.P2456134952072938195

/-! ## A022183.P3402724670410910015

`A000203(19^A004247(n))`
-/

namespace A022183.P3402724670410910015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A022183.P3402724670410910015

/-! ## A022183.P5140591213657432676

`A000203(19^A014473(n))`
-/

namespace A022183.P5140591213657432676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A022183.P5140591213657432676

/-! ## A022183.P15741749166215084098

`A017665(19^A014473(n))`
-/

namespace A022183.P15741749166215084098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A022183.P15741749166215084098

/-! ## A022183.P16630786786054078838

`A000203(19^A048720(n))`
-/

namespace A022183.P16630786786054078838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A022183.P16630786786054078838

/-!
# A022184: Triangle of Gaussian binomial coefficients [ n,k ] for q = 20.

The programs for A022184, there is no canonical definition to state claims against.
-/

/-! ## A022184.P12032951719761368380

`A007095(A022182(n))`
-/

namespace A022184.P12032951719761368380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A022182 n).toNat

end

end A022184.P12032951719761368380

/-! ## A022184.P13640988506273392750

`A024657(A022174(n))`
-/

namespace A022184.P13640988506273392750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (A022174 n).toNat

end

end A022184.P13640988506273392750

/-! ## A022184.P9519706693315196151

`A064108(A167040(n))`
-/

namespace A022184.P9519706693315196151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064108 (A167040 n).toNat

end

end A022184.P9519706693315196151

/-! ## A022184.P5740087910191748068

`A214678(A022180(n))`
-/

namespace A022184.P5740087910191748068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (A022180 n).toNat

end

end A022184.P5740087910191748068

/-! ## A022184.P10648680825172835284

`A302205(A059328(n))`
-/

namespace A022184.P10648680825172835284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302205 (A059328 n).toNat

end

end A022184.P10648680825172835284

/-!
# A022185: Triangle of Gaussian binomial coefficients [ n,k ] for q = 21.

The programs for A022185, there is no canonical definition to state claims against.
-/

/-! ## A022185.P16515913829756300104

`A218724(A167040(n))`
-/

namespace A022185.P16515913829756300104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218724 (A167040 n).toNat

end

end A022185.P16515913829756300104

/-! ## A022185.P16277380236802108383

`A284097(A176643(n))`
-/

namespace A022185.P16277380236802108383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (A176643 n).toNat

end

end A022185.P16277380236802108383

/-! ## A022185.P7350837289303866990

`A102491(A022175(n)+1)`
-/

namespace A022185.P7350837289303866990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102491 (A022175 n + 1).toNat

end

end A022185.P7350837289303866990

/-! ## A022185.P12802729943244423425

`A284097(21^A004247(n))`
-/

namespace A022185.P12802729943244423425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (SequenceMachineLib.roundAway ((21 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A022185.P12802729943244423425

/-! ## A022185.P13188243920918120460

`A284097(21^A014473(n))`
-/

namespace A022185.P13188243920918120460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (SequenceMachineLib.roundAway ((21 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A022185.P13188243920918120460

/-!
# A022186: Triangle of Gaussian binomial coefficients [ n,k ] for q = 22.

The programs for A022186, there is no canonical definition to state claims against.
-/

/-! ## A022186.P5932250327536855422

`A171397(A022184(n))`
-/

namespace A022186.P5932250327536855422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A022184 n).toNat

end

end A022186.P5932250327536855422

/-! ## A022186.P4353629271851552594

`A218725(A167040(n))`
-/

namespace A022186.P4353629271851552594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218725 (A167040 n).toNat

end

end A022186.P4353629271851552594

/-! ## A022186.P6950208910626180074

`A218725(A104878(n)^A030272(n))`
-/

namespace A022186.P6950208910626180074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218725 (SequenceMachineLib.roundAway ((A104878 n : ℚ) ^ (A030272 n : ℤ))).toNat

end

end A022186.P6950208910626180074

/-! ## A022186.P8799791804698499669

`A218725(A104881(n)^A030272(n))`
-/

namespace A022186.P8799791804698499669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218725 (SequenceMachineLib.roundAway ((A104881 n : ℚ) ^ (A030272 n : ℤ))).toNat

end

end A022186.P8799791804698499669

/-! ## A022186.P17230164004932533797

`A218725(A297845(n+1)^A030272(n))`
-/

namespace A022186.P17230164004932533797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218725 (SequenceMachineLib.roundAway ((A297845 (n + 1) : ℚ) ^ (A030272 n : ℤ))).toNat

end

end A022186.P17230164004932533797

/-!
# A022187: Triangle of Gaussian binomial coefficients [ n,k ] for q = 23.

The programs for A022187, there is no canonical definition to state claims against.
-/

/-! ## A022187.P3570853464148608235

`A354093(A156581(n))`
-/

namespace A022187.P3570853464148608235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354093 (A156581 n).toNat

end

end A022187.P3570853464148608235

/-! ## A022187.P11747619060272552739

`A000203(23^A004247(n))`
-/

namespace A022187.P11747619060272552739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A022187.P11747619060272552739

/-! ## A022187.P10747973860360690696

`A000203(23^A014473(n))`
-/

namespace A022187.P10747973860360690696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A022187.P10747973860360690696

/-! ## A022187.P14937371057712024027

`A000203(23^A048720(n))`
-/

namespace A022187.P14937371057712024027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A022187.P14937371057712024027

/-! ## A022187.P17933261759195926027

`A000203(23^A057893(n))`
-/

namespace A022187.P17933261759195926027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A057893 n : ℤ))).toNat

end

end A022187.P17933261759195926027

/-!
# A022188: Triangle of Gaussian binomial coefficients [ n,k ] for q = 24.

The programs for A022188, there is no canonical definition to state claims against.
-/

/-! ## A022188.P15279006693470088812

`A218727(A167040(n))`
-/

namespace A022188.P15279006693470088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 (A167040 n).toNat

end

end A022188.P15279006693470088812

/-! ## A022188.P14102235648360897213

`A103214(∑[floor(24^(n-1))]%A176627(n))`
-/

namespace A022188.P14102235648360897213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A176627 n)).toNat

end

end A022188.P14102235648360897213

/-! ## A022188.P17776457026484026695

`A218727(A028657(n)^A040739(n))`
-/

namespace A022188.P17776457026484026695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 (SequenceMachineLib.roundAway ((A028657 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A022188.P17776457026484026695

/-! ## A022188.P11196138251596723244

`A218727(A034328(n)^A040739(n))`
-/

namespace A022188.P11196138251596723244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 (SequenceMachineLib.roundAway ((A034328 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A022188.P11196138251596723244

/-! ## A022188.P2170505958517453404

`A218727(A104878(n)^A040739(n))`
-/

namespace A022188.P2170505958517453404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 (SequenceMachineLib.roundAway ((A104878 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A022188.P2170505958517453404

/-!
# A022189: Gaussian binomial coefficients [n, 6] for q = 2.

The programs for A022189, there is no canonical definition to state claims against.
-/

/-! ## A022189.P6723877057599476279

`∑[2^n*A006110(n+5)]`
-/

namespace A022189.P6723877057599476279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006110 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022189.P6723877057599476279

/-! ## A022189.P17059403021637380844

`A022166(eq[6, A002262(n)])`
-/

namespace A022189.P17059403021637380844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022189.P17059403021637380844

/-! ## A022189.P12900374177902578935

`A022166(Δ[A255994(n+3)])`
-/

namespace A022189.P12900374177902578935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (f1 (n + 1) - f1 n).toNat

end

end A022189.P12900374177902578935

/-! ## A022189.P12699517111087439013

`A022166(A167499(n+5)+1)`
-/

namespace A022189.P12699517111087439013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A167499 (n + 5) + 1).toNat

end

end A022189.P12699517111087439013

/-! ## A022189.P9354361715624077109

`A022166(A167487(n+5)-1)`
-/

namespace A022189.P9354361715624077109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A167487 (n + 5) - 1).toNat

end

end A022189.P9354361715624077109

/-!
# A022190: Gaussian binomial coefficients [n, 7] for q = 2.

The programs for A022190, there is no canonical definition to state claims against.
-/

/-! ## A022190.P1938463957160535286

`∑[2^n*A022189(n+6)]`
-/

namespace A022190.P1938463957160535286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A022189 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022190.P1938463957160535286

/-! ## A022190.P7190950081879326562

`A022166(A167487(n+6))`
-/

namespace A022190.P7190950081879326562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A167487 (n + 6)).toNat

end

end A022190.P7190950081879326562

/-! ## A022190.P10977916656002374382

`A022166(eq[7, A002262(n)])`
-/

namespace A022190.P10977916656002374382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022190.P10977916656002374382

/-! ## A022190.P17735886579824091714

`A022166(A167614(n+6)+4)`
-/

namespace A022190.P17735886579824091714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A167614 (n + 6) + 4).toNat

end

end A022190.P17735886579824091714

/-! ## A022190.P10479727238724992025

`A022166(A000124(n+7)+6)`
-/

namespace A022190.P10479727238724992025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A000124 (n + 7) + 6).toNat

end

end A022190.P10479727238724992025

/-!
# A022191: Gaussian binomial coefficients [n, 8] for q = 2.

The programs for A022191, there is no canonical definition to state claims against.
-/

/-! ## A022191.P5389944618975604163

`∑[2^n*A022190(n+7)]`
-/

namespace A022191.P5389944618975604163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A022190 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022191.P5389944618975604163

/-! ## A022191.P11210628844227875182

`A022166(A133263(n+8)+6)`
-/

namespace A022191.P11210628844227875182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A133263 (n + 8) + 6).toNat

end

end A022191.P11210628844227875182

/-! ## A022191.P11754135366825756316

`A022166(A000217(n+9)-(n+1))`
-/

namespace A022191.P11754135366825756316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A022191.P11754135366825756316

/-! ## A022191.P15812696018674645829

`A022166(A179865(n+8)+n+16)`
-/

namespace A022191.P15812696018674645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A179865 (n + 8) + (n : ℤ) + 16).toNat

end

end A022191.P15812696018674645829

/-! ## A022191.P13390045967939414687

`A022166(abs(n-2-A055998(n+7)))`
-/

namespace A022191.P13390045967939414687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 |(n : ℤ) - 2 - A055998 (n + 7)|.toNat

end

end A022191.P13390045967939414687

/-!
# A022192: Gaussian binomial coefficients [n, 9] for q = 2.

The programs for A022192, there is no canonical definition to state claims against.
-/

/-! ## A022192.P6425046245507852655

`A022166(A000096(n+8)+10)`
-/

namespace A022192.P6425046245507852655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A000096 (n + 8) + 10).toNat

end

end A022192.P6425046245507852655

/-! ## A022192.P10361955263325734936

`A022166(A000217(n+10)-(n+1))`
-/

namespace A022192.P10361955263325734936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A022192.P10361955263325734936

/-! ## A022192.P9244710018795597245

`A022166(A161680(n+11)-(n+1))`
-/

namespace A022192.P9244710018795597245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A022192.P9244710018795597245

/-! ## A022192.P13355731578874193723

`A022166(eq[10, A004736(n+1)])`
-/

namespace A022192.P13355731578874193723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022192.P13355731578874193723

/-! ## A022192.P5142285546163416229

`A038997(2^n)`
-/

namespace A022192.P5142285546163416229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038997 (2 ^ n)

end

end A022192.P5142285546163416229

/-!
# A022193: Gaussian binomial coefficients [n, 10] for q = 2.

The programs for A022193, there is no canonical definition to state claims against.
-/

/-! ## A022193.P12227687985664629857

`A022166(eq[10, A002262(n)])`
-/

namespace A022193.P12227687985664629857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022193.P12227687985664629857

/-! ## A022193.P16334945915223623816

`A022166(A000217(n+10)+10)`
-/

namespace A022193.P16334945915223623816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A000217 (n + 10) + 10).toNat

end

end A022193.P16334945915223623816

/-! ## A022193.P3010153792605213337

`A022166(A161680(n+11)+10)`
-/

namespace A022193.P3010153792605213337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A161680 (n + 11) + 10).toNat

end

end A022193.P3010153792605213337

/-! ## A022193.P14679682259728114114

`A022166(A056000(n+7)-1)`
-/

namespace A022193.P14679682259728114114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A056000 (n + 7) - 1).toNat

end

end A022193.P14679682259728114114

/-! ## A022193.P14392952568071589228

`A038998(2^n)`
-/

namespace A022193.P14392952568071589228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038998 (2 ^ n)

end

end A022193.P14392952568071589228

/-!
# A022194: Gaussian binomial coefficients [n, 11] for q = 2.

The programs for A022194, there is no canonical definition to state claims against.
-/

/-! ## A022194.P11534749206193574259

`A022166(eq[11, A002262(n)])`
-/

namespace A022194.P11534749206193574259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022194.P11534749206193574259

/-! ## A022194.P11904046678731431638

`A022166(eq[11, A144328(n+1)])`
-/

namespace A022194.P11904046678731431638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022194.P11904046678731431638

/-! ## A022194.P18014812249135515090

`A022166(eq[11, A025581(n)])`
-/

namespace A022194.P18014812249135515090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022194.P18014812249135515090

/-! ## A022194.P12347243514556402213

`A038999(2^n)`
-/

namespace A022194.P12347243514556402213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038999 (2 ^ n)

end

end A022194.P12347243514556402213

/-!
# A022195: Gaussian binomial coefficients [n, 12] for q = 2.

The programs for A022195, there is no canonical definition to state claims against.
-/

/-! ## A022195.P9811676812491495059

`∑[A000079(n)*A022194(n)]`
-/

namespace A022195.P9811676812491495059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A022194 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022195.P9811676812491495059

/-! ## A022195.P3569718681212575991

`A022166(2*n+A000124(n+11)+11)`
-/

namespace A022195.P3569718681212575991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 ((2 * n : ℤ) + (A000124 (n + 11) + 11)).toNat

end

end A022195.P3569718681212575991

/-!
# A022196: Gaussian binomial coefficients [ n,5 ] for q = 3.

The programs for A022196, there is no canonical definition to state claims against.
-/

/-! ## A022196.P6203682246515583129

`A022167(A167499(n+4))`
-/

namespace A022196.P6203682246515583129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A167499 (n + 4)).toNat

end

end A022196.P6203682246515583129

/-! ## A022196.P15892218893156127856

`A022167(eq[5, A002262(n)])`
-/

namespace A022196.P15892218893156127856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022196.P15892218893156127856

/-! ## A022196.P10831717002999988784

`A022167(eq[13, A193588(n)])`
-/

namespace A022196.P10831717002999988784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022196.P10831717002999988784

/-! ## A022196.P10690058056631539395

`A022167(A000096(n+4)+6)`
-/

namespace A022196.P10690058056631539395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000096 (n + 4) + 6).toNat

end

end A022196.P10690058056631539395

/-! ## A022196.P3385501258676829481

`A022167(A141214(n+2)+8)`
-/

namespace A022196.P3385501258676829481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A141214 (n + 2) + 8).toNat

end

end A022196.P3385501258676829481

/-!
# A022197: Gaussian binomial coefficients [ n,6 ] for q = 3.

The programs for A022197, there is no canonical definition to state claims against.
-/

/-! ## A022197.P15577965838830844042

`A022167(eq[6, A002262(n)])`
-/

namespace A022197.P15577965838830844042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022197.P15577965838830844042

/-! ## A022197.P17460778916639249342

`A022167(eq[8, A141169(n)])`
-/

namespace A022197.P17460778916639249342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022197.P17460778916639249342

/-! ## A022197.P466366871123817750

`A022167(A000217(n+6)+6)`
-/

namespace A022197.P466366871123817750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000217 (n + 6) + 6).toNat

end

end A022197.P466366871123817750

/-! ## A022197.P17409130136799559479

`A022167(A052905(n+3)+11)`
-/

namespace A022197.P17409130136799559479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A052905 (n + 3) + 11).toNat

end

end A022197.P17409130136799559479

/-! ## A022197.P17837024796491651121

`A022167(eq[7, A002260(n+1)])`
-/

namespace A022197.P17837024796491651121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022197.P17837024796491651121

/-!
# A022198: Gaussian binomial coefficients [ n,7 ] for q = 3.

The programs for A022198, there is no canonical definition to state claims against.
-/

/-! ## A022198.P11087046643670300119

`A022167(eq[7, A002262(n)])`
-/

namespace A022198.P11087046643670300119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022198.P11087046643670300119

/-! ## A022198.P17772006565758656559

`A022167(A000124(n+7)+6)`
-/

namespace A022198.P17772006565758656559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A000124 (n + 7) + 6).toNat

end

end A022198.P17772006565758656559

/-! ## A022198.P12255505780835806073

`A022167(eq[8, A002260(n+1)])`
-/

namespace A022198.P12255505780835806073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022198.P12255505780835806073

/-! ## A022198.P4940722068614351179

`A022167(eq[19, A037126(n+1)])`
-/

namespace A022198.P4940722068614351179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022198.P4940722068614351179

/-! ## A022198.P2668639674437529483

`A022167(eq[7, A025581(n)])`
-/

namespace A022198.P2668639674437529483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022198.P2668639674437529483

/-!
# A022199: Gaussian binomial coefficients [ n,8 ] for q = 3.

The programs for A022199, there is no canonical definition to state claims against.
-/

/-! ## A022199.P12552946513731527637

`A022167(eq[8, A002262(n)])`
-/

namespace A022199.P12552946513731527637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022199.P12552946513731527637

/-! ## A022199.P11144302661613905523

`A022167(eq[9, A004736(n+1)])`
-/

namespace A022199.P11144302661613905523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022199.P11144302661613905523

/-! ## A022199.P103936344161383602

`record[A022167(∑[A270428(n+2)])]`
-/

namespace A022199.P103936344161383602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022199.P103936344161383602

/-! ## A022199.P7872259546243293891

`A038996(3^n)`
-/

namespace A022199.P7872259546243293891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038996 (3 ^ n)

end

end A022199.P7872259546243293891

