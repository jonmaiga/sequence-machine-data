import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

/-!
# A398001: E.g.f. A(x) satisfies A'(x) = 1 + A((exp(2*x) - 1)/2), with A(0) = 0.

The programs for A398001, there is no canonical definition to state claims against.
-/

/-! ## A398001.P11273025029148859375

`A098985(n^n-1)`
-/

namespace A398001.P11273025029148859375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098985 (n ^ n - 1)

end

end A398001.P11273025029148859375

/-! ## A398001.P17713543833952121225

`∑{#}[and(n-1, A123205(2*n)), n^#]`
-/

namespace A398001.P17713543833952121225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A123205 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, n ^ k

end

end A398001.P17713543833952121225

/-!
# A398002: E.g.f. A(x) satisfies A'(x) = 1 + A((exp(3*x) - 1)/3), with A(0) = 0.

The programs for A398002, there is no canonical definition to state claims against.
-/

/-! ## A398002.P9728631711191305932

`A001651(or(∑[n], A376447(n)))`
-/

namespace A398002.P9728631711191305932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A376447 n)).toNat

end

end A398002.P9728631711191305932

/-! ## A398002.P7256338170530414154

`A007918(A002110(n))-A133494(n)`
-/

namespace A398002.P7256338170530414154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002110 n).toNat - A133494 n

end

end A398002.P7256338170530414154

/-!
# A398003: Sum of excess shadings of all permutations of [n] using a special circular shading.

The programs for A398003, there is no canonical definition to state claims against.
-/

/-! ## A398003.P5437274145965031081

`n*A302943(A275553(n))`
-/

namespace A398003.P5437274145965031081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302943 (A275553 n).toNat

end

end A398003.P5437274145965031081

/-! ## A398003.P12930133680038707211

`n*A087010(A000108(n)²)`
-/

namespace A398003.P12930133680038707211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087010 (A000108 n ^ 2).toNat

end

end A398003.P12930133680038707211

/-!
# A398004: Recursively defined symmetric multiplication table read by antidiagonals: A(n,k), n>=1, k>=1.

The programs for A398004, the canonical program `A398004.P1626617288142580979` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398004 has offset 1).

The definition of A398004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398004.P6665336668350930566

`A027170(n)-row(n)`
-/

namespace A398004.P6665336668350930566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n - (SequenceMachineLib.triRow n : ℤ)

end

end A398004.P6665336668350930566

namespace A398004

/-- `A027170(n)-row(n)` -/
def P6665336668350930566.Spec : Prop :=
  ∀ n, P6665336668350930566.a n = A398004 (n + 1)

end A398004

/-! ## A398004.P1626617288142580979

`A027170(n)-A003056(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A398004

/-- `A027170(n)-A003056(n)` -/
def P1626617288142580979.Spec : Prop :=
  ∀ n, P1626617288142580979.a n = A398004 (n + 1)

theorem P1626617288142580979.correct : P1626617288142580979.Spec := by
  intro n
  simp only [A398004, Nat.add_sub_cancel]

end A398004

/-! ## A398004.P1950744422957386001

`A014410(n+2)+A028263(n)-4-row(n)`
-/

namespace A398004.P1950744422957386001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + (A028263 n - 4) - (SequenceMachineLib.triRow n : ℤ)

end

end A398004.P1950744422957386001

namespace A398004

/-- `A014410(n+2)+A028263(n)-4-row(n)` -/
def P1950744422957386001.Spec : Prop :=
  ∀ n, P1950744422957386001.a n = A398004 (n + 1)

end A398004

/-! ## A398004.P11158873708802094194

`A007318(n)+A028327(n)-4-A003056(n)`
-/

namespace A398004.P11158873708802094194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A028327 n - 4) - A003056 n

end

end A398004.P11158873708802094194

namespace A398004

/-- `A007318(n)+A028327(n)-4-A003056(n)` -/
def P11158873708802094194.Spec : Prop :=
  ∀ n, P11158873708802094194.a n = A398004 (n + 1)

end A398004

/-! ## A398004.P4064075717217228405

`A134636(n)+4*A014473(n)-A003056(n)`
-/

namespace A398004.P4064075717217228405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n + 4 * A014473 n - A003056 n

end

end A398004.P4064075717217228405

namespace A398004

/-- `A134636(n)+4*A014473(n)-A003056(n)` -/
def P4064075717217228405.Spec : Prop :=
  ∀ n, P4064075717217228405.a n = A398004 (n + 1)

end A398004

/-! ## A398004.P7764742839199165046

`A014410(n+2)+A028263(n)-4-A003056(n)`
-/

namespace A398004.P7764742839199165046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + (A028263 n - 4) - A003056 n

end

end A398004.P7764742839199165046

namespace A398004

/-- `A014410(n+2)+A028263(n)-4-A003056(n)` -/
def P7764742839199165046.Spec : Prop :=
  ∀ n, P7764742839199165046.a n = A398004 (n + 1)

end A398004

/-!
# A398005: Number of domino towers in 3 dimensions consisting of n blocks 2 X 1 X 1, connected and supported, counted up to horizontal translation.

The programs for A398005, the canonical program `A398005.P13434247587899075503` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398005 has offset 1).

The definition of A398005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398005.P13434247587899075503

`ogf((3-6x-6x^2)/(1-6x+6x^2+9x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398005

/-- `ogf((3-6x-6x^2)/(1-6x+6x^2+9x^3))` -/
def P13434247587899075503.Spec : Prop :=
  ∀ n, P13434247587899075503.a n = A398005 (n + 1)

theorem P13434247587899075503.correct : P13434247587899075503.Spec := by
  intro n
  simp only [A398005, Nat.add_sub_cancel]

end A398005

/-! ## A398005.P6218429065770620546

`6*a(n-1)-6*a(n-2)-9*a(n-3)` with `a(0)=3, a(1)=12, a(2)=48`
-/

namespace A398005.P6218429065770620546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 48] fun n a =>
  6 * a (n - 1) - 6 * a (n - 2) - 9 * a (n - 3)

end

end A398005.P6218429065770620546

namespace A398005

/-- `6*a(n-1)-6*a(n-2)-9*a(n-3)` -/
def P6218429065770620546.Spec : Prop :=
  ∀ n, P6218429065770620546.a n = A398005 (n + 1)

end A398005

/-! ## A398005.P119823629342659397

`A125145(1+n)-3^n`
-/

namespace A398005.P119823629342659397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (1 + n) - (3 ^ n : ℤ)

end

end A398005.P119823629342659397

namespace A398005

/-- `A125145(1+n)-3^n` -/
def P119823629342659397.Spec : Prop :=
  ∀ n, P119823629342659397.a n = A398005 (n + 1)

end A398005

/-! ## A398005.P18241312680932238737

`3*A269771(n+1)/4`
-/

namespace A398005.P18241312680932238737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A269771 (n + 1) : ℚ) / 4

end

end A398005.P18241312680932238737

namespace A398005

/-- `3*A269771(n+1)/4` -/
def P18241312680932238737.Spec : Prop :=
  ∀ n, P18241312680932238737.a n = (A398005 (n + 1) : ℚ)

end A398005

/-!
# A398006: a(n) is the sum of digits in the canonical snowball representation of n.

The programs for A398006, there is no canonical definition to state claims against.
-/

/-! ## A398006.P6693976449113524428

`∑{digits}[A397794(n), #]`
-/

namespace A398006.P6693976449113524428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A398006.P6693976449113524428

/-! ## A398006.P10899369359017539788

`A034968(A397851(n))`
-/

namespace A398006.P10899369359017539788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A397851 n).toNat

end

end A398006.P10899369359017539788

/-! ## A398006.P12859404856823835484

`∑{digits}[A007623(A397851(n)), A007953(#)]`
-/

namespace A398006.P12859404856823835484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A397851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007953 x).sum

end

end A398006.P12859404856823835484

/-! ## A398006.P16080122527187585911

`∑{digits}[A007623(A397851(n)), A326746(#)]`
-/

namespace A398006.P16080122527187585911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A397851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326746 x).sum

end

end A398006.P16080122527187585911

/-! ## A398006.P3507033232101597793

`∑{digits}[A007623(A397851(n)), A397851(#)]`
-/

namespace A398006.P3507033232101597793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A397851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A397851 x).sum

end

end A398006.P3507033232101597793

/-! ## A398006.P7232261932062494832

`dr(A007623(A397851(n))%A245753(n))`
-/

namespace A398006.P7232261932062494832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A007623 (A397851 n).toNat) (A245753 (n + 30)))

end

end A398006.P7232261932062494832

/-!
# A398021: Number of values of k for which n eventually enters a non-elementary loop under a trajectory x -> x / k if k divides x and x -> x + ceiling(x / k) otherwise.

The programs for A398021, there is no canonical definition to state claims against.
-/

/-! ## A398021.P6879204695429081585

`A160382(A000051(n)%A000992(n+1))`
-/

namespace A398021.P6879204695429081585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (Int.tmod (A000051 n) (A000992 (n + 1))).toNat

end

end A398021.P6879204695429081585

/-!
# A398024: Number of fixed 3-convex polyominoes with perimeter 2*n.

The programs for A398024, there is no canonical definition to state claims against.
-/

/-! ## A398024.P9389184074892749985

`A008679(A150215(n))`
-/

namespace A398024.P9389184074892749985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A150215 n).toNat

end

end A398024.P9389184074892749985

/-! ## A398024.P2034956805863964518

`A398028(n)-A137579(A119341(n+1))`
-/

namespace A398024.P2034956805863964518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 n - A137579 (A119341 (n + 1)).toNat

end

end A398024.P2034956805863964518

/-! ## A398024.P4299550273707842435

`A398026(A024645(n))-A326541(A006799(n+3))`
-/

namespace A398024.P4299550273707842435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398026 (A024645 n).toNat - A326541 (A006799 (n + 3)).toNat

end

end A398024.P4299550273707842435

/-! ## A398024.P11410434568149225116

`A398026(A024647(n))-A326541(A006799(n+3))`
-/

namespace A398024.P11410434568149225116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398026 (A024647 n).toNat - A326541 (A006799 (n + 3)).toNat

end

end A398024.P11410434568149225116

/-!
# A398025: Number of fixed 4-convex polyominoes with perimeter 2*n.

The programs for A398025, there is no canonical definition to state claims against.
-/

/-! ## A398025.P8139630850142906967

`A398028(n)-A137579(A119341(n))`
-/

namespace A398025.P8139630850142906967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 n - A137579 (A119341 n).toNat

end

end A398025.P8139630850142906967

/-! ## A398025.P10126215315603291443

`A398028(n)-A326541(A322283(n+3))`
-/

namespace A398025.P10126215315603291443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 n - A326541 (A322283 (n + 3)).toNat

end

end A398025.P10126215315603291443

/-! ## A398025.P10198595145144348947

`A398027(A024652(n))-A326541(A322283(n+3))`
-/

namespace A398025.P10198595145144348947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398027 (A024652 n).toNat - A326541 (A322283 (n + 3)).toNat

end

end A398025.P10198595145144348947

/-! ## A398025.P17649479419091739929

`A004181(A398028(n))-A036420(A000005(n+4))`
-/

namespace A398025.P17649479419091739929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A398028 n).toNat - A036420 (A000005 (n + 4)).toNat

end

end A398025.P17649479419091739929

/-! ## A398025.P4022378592562756518

`A398027(A024651(n))-A036420(A000005(n+4))`
-/

namespace A398025.P4022378592562756518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398027 (A024651 n).toNat - A036420 (A000005 (n + 4)).toNat

end

end A398025.P4022378592562756518

/-!
# A398026: Number of fixed 5-convex polyominoes with perimeter 2*n.

The programs for A398026, there is no canonical definition to state claims against.
-/

/-! ## A398026.P7953335960115669240

`A398028(A023106(n))-A326541(A006799(n+1))`
-/

namespace A398026.P7953335960115669240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A023106 n).toNat - A326541 (A006799 (n + 1)).toNat

end

end A398026.P7953335960115669240

/-! ## A398026.P390779391696770979

`A398028(A023106(n))-A326541(A073941(n+1))`
-/

namespace A398026.P390779391696770979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A023106 n).toNat - A326541 (A073941 (n + 1)).toNat

end

end A398026.P390779391696770979

/-! ## A398026.P17964210277409851739

`A004181(A398027(n))`
-/

namespace A398026.P17964210277409851739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A398027 n).toNat

end

end A398026.P17964210277409851739

/-! ## A398026.P16779773106180185863

`A004181(A398028(n))`
-/

namespace A398026.P16779773106180185863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A398028 n).toNat

end

end A398026.P16779773106180185863

/-! ## A398026.P4016568565740424314

`A398027(A024651(n))`
-/

namespace A398026.P4016568565740424314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398027 (A024651 n).toNat

end

end A398026.P4016568565740424314

/-!
# A398027: Number of fixed 6-convex polyominoes with perimeter 2*n.

The programs for A398027, there is no canonical definition to state claims against.
-/

/-! ## A398027.P15229754299222639197

`A398028(n)-A324191(A398025(n)+1)+1`
-/

namespace A398027.P15229754299222639197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 n - A324191 (A398025 n + 1).toNat + 1

end

end A398027.P15229754299222639197

/-! ## A398027.P15372239409272013539

`A398028(A002998(n))`
-/

namespace A398027.P15372239409272013539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A002998 n).toNat

end

end A398027.P15372239409272013539

/-! ## A398027.P10276905168551750455

`A398028(A023106(n))`
-/

namespace A398027.P10276905168551750455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A023106 n).toNat

end

end A398027.P10276905168551750455

/-! ## A398027.P6574683836316508022

`A398028(A024658(n))`
-/

namespace A398027.P6574683836316508022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A024658 n).toNat

end

end A398027.P6574683836316508022

/-! ## A398027.P13892349681372588061

`A398028(A024659(n))`
-/

namespace A398027.P13892349681372588061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A024659 n).toNat

end

end A398027.P13892349681372588061

/-!
# A398032: Consider a prime number prime(i) with k digits (d_1, d_2, ..., d_k), where d_k is the units digit. Consider the k preceding prime numbers prime(i-1), prime(i-2), ..., prime(i-k) and the numbers obtained by concatenating [d_1, prime(i-1)], [d_2, prime(i-2)], ..., [d_k, prime(i-k)]. If the latter are all prime, then prime(i) belongs to the sequence.

The programs for A398032, there is no canonical definition to state claims against.
-/

/-! ## A398032.P2841840499769576779

`A005145(A028327(3*n+1)*A066536(n))`
-/

namespace A398032.P2841840499769576779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A028327 (3 * n + 1) * A066536 n).toNat

end

end A398032.P2841840499769576779

/-!
# A398033: Number of rooted unlabeled 5-gonal cacti having n blocks.

The programs for A398033, there is no canonical definition to state claims against.
-/

/-! ## A398033.P2043353758617005547

`A332648(A052905(n+2))`
-/

namespace A398033.P2043353758617005547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A052905 (n + 2)).toNat

end

end A398033.P2043353758617005547

/-! ## A398033.P1414618485829354713

`A332648(eq[5, A193739(n)])`
-/

namespace A398033.P1414618485829354713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398033.P1414618485829354713

/-! ## A398033.P4236839433494818127

`A332648(A000217(n+5)-5)`
-/

namespace A398033.P4236839433494818127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A000217 (n + 5) - 5).toNat

end

end A398033.P4236839433494818127

/-! ## A398033.P9179211965249558138

`A332648(eq[5, A004736(n+1)])`
-/

namespace A398033.P9179211965249558138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398033.P9179211965249558138

/-!
# A398034: Number of rooted unlabeled 6-gonal cacti having n blocks.

The programs for A398034, there is no canonical definition to state claims against.
-/

/-! ## A398034.P16770113500583156509

`A332648(n+C(n+6, 2))`
-/

namespace A398034.P16770113500583156509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (n + Nat.choose (n + 6) 2)

end

end A398034.P16770113500583156509

/-! ## A398034.P3702603909309886044

`A332648(A052905(n+3)-1)`
-/

namespace A398034.P3702603909309886044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (A052905 (n + 3) - 1).toNat

end

end A398034.P3702603909309886044

/-! ## A398034.P9781374756900471511

`A332648(eq[6, A004736(n+1)])`
-/

namespace A398034.P9781374756900471511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398034.P9781374756900471511

/-!
# A398035: Number of unlabeled 6-gonal cacti having n blocks.

The programs for A398035, there is no canonical definition to state claims against.
-/

/-! ## A398035.P13562058479779801524

`A332649(eq[6, A193592(n)])`
-/

namespace A398035.P13562058479779801524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398035.P13562058479779801524

/-! ## A398035.P17221356775411565931

`A332649(A155212(n+3)+2)`
-/

namespace A398035.P17221356775411565931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (A155212 (n + 3) + 2).toNat

end

end A398035.P17221356775411565931

/-! ## A398035.P2319362694202792882

`A332649(A052905(n+4)-1)`
-/

namespace A398035.P2319362694202792882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (A052905 (n + 4) - 1).toNat

end

end A398035.P2319362694202792882

/-! ## A398035.P11745808556864398253

`A332649(Δ[A264443(n+2)]-2)`
-/

namespace A398035.P11745808556864398253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332649 (f1 (n + 1) - f1 n - 2).toNat

end

end A398035.P11745808556864398253

/-!
# A398036: G.f. A(x) satisfies (1-3*x)*A(x) + A(x^4) = x.

The programs for A398036, there is no canonical definition to state claims against.
-/

/-! ## A398036.P5925673127679531026

`3*a(n-A395745(3*n+1)!)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=26`
-/

namespace A398036.P5925673127679531026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 26] fun n a =>
  3 * a (n - Nat.factorial (A395745 (3 * n + 1)).toNat)

end

end A398036.P5925673127679531026

/-! ## A398036.P12245911607199029936

`A075245(A135247(n+1))`
-/

namespace A398036.P12245911607199029936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075245 (A135247 (n + 1)).toNat

end

end A398036.P12245911607199029936

/-! ## A398036.P17187456421548976306

`A254926(3^A236562(n+1))`
-/

namespace A398036.P17187456421548976306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A236562 (n + 1) : ℤ))).toNat

end

end A398036.P17187456421548976306

/-!
# A398037: Multiplicative partition persistence of n: number of iterations of the multiplicative partition function A001055 required to reach 1.

The programs for A398037, there is no canonical definition to state claims against.
-/

/-! ## A398037.P5235671737918846145

`1+a(A001055(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A398037.P5235671737918846145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A001055 (n + 1) - 1).toNat

end

end A398037.P5235671737918846145

/-! ## A398037.P679192032369886753

`1+a(A028422(n+1))` with `a(0)=0`
-/

namespace A398037.P679192032369886753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A028422 (n + 1)).toNat

end

end A398037.P679192032369886753

/-! ## A398037.P12271118743272528522

`1+a(Δ[A096276(n)]-1)` with `a(0)=0`
-/

namespace A398037.P12271118743272528522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (f1 (n + 1) - f1 n - 1).toNat

end

end A398037.P12271118743272528522

/-! ## A398037.P3137388382043832111

`a(A001055(1+n)-1)+1` with `a(0)=0`
-/

namespace A398037.P3137388382043832111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A001055 (1 + n) - 1).toNat + 1

end

end A398037.P3137388382043832111

/-! ## A398037.P16309669251729232808

`A033307(a(A028422(n+1)))` with `a(0)=0`
-/

namespace A398037.P16309669251729232808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 (a (A028422 (n + 1)).toNat).toNat

end

end A398037.P16309669251729232808

/-! ## A398037.P15459249577349134692

`A395649(a(A028422(n+1)))` with `a(0)=0`
-/

namespace A398037.P15459249577349134692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A395649 (a (A028422 (n + 1)).toNat).toNat

end

end A398037.P15459249577349134692

/-! ## A398037.P6057417740787301164

`1+a(A023443(A001055(n+1)))` with `a(0)=0`
-/

namespace A398037.P6057417740787301164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A023443 (A001055 (n + 1)).toNat).toNat

end

end A398037.P6057417740787301164

/-! ## A398037.P17703490670785731104

`a(A347438((1+n)²)-1)+1` with `a(0)=0`
-/

namespace A398037.P17703490670785731104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A347438 ((1 + n) ^ 2) - 1).toNat + 1

end

end A398037.P17703490670785731104

/-! ## A398037.P15282481651786633756

`A217984(A028422(n+1))%A008449(n)`
-/

namespace A398037.P15282481651786633756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217984 (A028422 (n + 1)).toNat) (A008449 n)

end

end A398037.P15282481651786633756

/-!
# A398039: G.f. A(x) satisfies A(x) = A(x^2) / (1-3*x), with A(0) = 1.

The programs for A398039, there is no canonical definition to state claims against.
-/

/-! ## A398039.P5605036223312497559

`A119353(A398040(n))`
-/

namespace A398039.P5605036223312497559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A398040 n).toNat

end

end A398039.P5605036223312497559

/-! ## A398039.P1229287331353980532

`A169864(n+1)*A169864(A134955(n))`
-/

namespace A398039.P1229287331353980532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169864 (n + 1) * A169864 (A134955 n).toNat

end

end A398039.P1229287331353980532

/-!
# A398040: G.f. A(x) satisfies A(x) = A(x^2) / (1-4*x), with A(0) = 1.

The programs for A398040, there is no canonical definition to state claims against.
-/

/-! ## A398040.P7000840023572379842

`A023717(A398039(n))`
-/

namespace A398040.P7000840023572379842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A398039 n).toNat

end

end A398040.P7000840023572379842

/-! ## A398040.P12981943835836368608

`A234741(A283477(n)²)`
-/

namespace A398040.P12981943835836368608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A283477 n ^ 2).toNat

end

end A398040.P12981943835836368608

/-!
# A398041: G.f. A(x) satisfies A(x) = A(x^3) / (1-2*x), with A(0) = 1.

The programs for A398041, there is no canonical definition to state claims against.
-/

/-! ## A398041.P10880144032102564770

`A065361(A374626(n))`
-/

namespace A398041.P10880144032102564770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A374626 n).toNat

end

end A398041.P10880144032102564770

/-! ## A398041.P17438849808499657588

`A059261(A398042(n)/A097992(n))`
-/

namespace A398041.P17438849808499657588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (SequenceMachineLib.roundAway ((A398042 n : ℚ) / (A097992 n : ℚ))).toNat

end

end A398041.P17438849808499657588

/-! ## A398041.P5561230942688590344

`A119353(lcm(A062051(n), A374626(n)))`
-/

namespace A398041.P5561230942688590344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (Int.lcm (A062051 n) (A374626 n))

end

end A398041.P5561230942688590344

/-! ## A398041.P5515151291185336648

`lcm(A097992(n), A119353(A374626(n)))`
-/

namespace A398041.P5515151291185336648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097992 n) (A119353 (A374626 n).toNat)

end

end A398041.P5515151291185336648

/-! ## A398041.P5213841333731466959

`A119353(or(A000007(n), A374626(n)))`
-/

namespace A398041.P5213841333731466959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (Int.lor (A000007 n) (A374626 n)).toNat

end

end A398041.P5213841333731466959

/-!
# A398042: G.f. A(x) satisfies A(x) = A(x^3) / (1-4*x), with A(0) = 1.

The programs for A398042, there is no canonical definition to state claims against.
-/

/-! ## A398042.P7455972376021739561

`A006288(A374626(n))`
-/

namespace A398042.P7455972376021739561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A374626 n).toNat

end

end A398042.P7455972376021739561

/-! ## A398042.P2983324762082641393

`A256701(A046952(n+1))`
-/

namespace A398042.P2983324762082641393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A046952 (n + 1)).toNat

end

end A398042.P2983324762082641393

/-!
# A398043: Lexicographically earliest sequence of distinct nonnegative integers such that two consecutive terms have no nonzero digits together at the same position.

The programs for A398043, there is no canonical definition to state claims against.
-/

/-! ## A398043.P16720228524741558219

`fo[A398044(n)]`
-/

namespace A398043.P16720228524741558219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A398043.P16720228524741558219

/-!
# A398044: Inverse permutation to A398043.

The programs for A398044, there is no canonical definition to state claims against.
-/

/-! ## A398044.P14803650628048392098

`fo[A398043(n)]`
-/

namespace A398044.P14803650628048392098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A398044.P14803650628048392098

/-!
# A398046: Lower (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398046, the canonical program `A398046.P7663509019647342517` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398046 has offset 0).

The definition of A398046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398046.P13282816277986905410

`floor(n*(9*n+1)/8)`
-/

namespace A398046.P13282816277986905410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 8⌋

end

end A398046.P13282816277986905410

namespace A398046

/-- `floor(n*(9*n+1)/8)` -/
def P13282816277986905410.Spec : Prop :=
  ∀ n, P13282816277986905410.a n = A398046 n

end A398046

/-! ## A398046.P7663509019647342517

`ogf((x+x^2+2x^3+2x^5+x^6+x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398046

/-- `ogf((x+x^2+2x^3+2x^5+x^6+x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P7663509019647342517.Spec : Prop :=
  ∀ n, P7663509019647342517.a n = A398046 n

theorem P7663509019647342517.correct : P7663509019647342517.Spec := by
  intro n
  simp only [A398046]

end A398046

/-! ## A398046.P13001386613580341260

`floor(C(n+1, 2)/4)+n²`
-/

namespace A398046.P13001386613580341260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / 4⌋ + (n ^ 2 : ℤ)

end

end A398046.P13001386613580341260

namespace A398046

/-- `floor(C(n+1, 2)/4)+n²` -/
def P13001386613580341260.Spec : Prop :=
  ∀ n, P13001386613580341260.a n = A398046 n

end A398046

/-! ## A398046.P10623534739591119167

`A011861(1+n)+n²`
-/

namespace A398046.P10623534739591119167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (1 + n) + (n ^ 2 : ℤ)

end

end A398046.P10623534739591119167

namespace A398046

/-- `A011861(1+n)+n²` -/
def P10623534739591119167.Spec : Prop :=
  ∀ n, P10623534739591119167.a n = A398046 n

end A398046

/-! ## A398046.P9070526937120904618

`floor(A051682(n)/4)+n`
-/

namespace A398046.P9070526937120904618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051682 n : ℚ) / 4⌋ + (n : ℤ)

end

end A398046.P9070526937120904618

namespace A398046

/-- `floor(A051682(n)/4)+n` -/
def P9070526937120904618.Spec : Prop :=
  ∀ n, P9070526937120904618.a n = A398046 n

end A398046

/-! ## A398046.P17068199644654838240

`floor(A000217(n)/4)+n²`
-/

namespace A398046.P17068199644654838240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 4⌋ + (n ^ 2 : ℤ)

end

end A398046.P17068199644654838240

namespace A398046

/-- `floor(A000217(n)/4)+n²` -/
def P17068199644654838240.Spec : Prop :=
  ∀ n, P17068199644654838240.a n = A398046 n

end A398046

/-! ## A398046.P1073238169281042173

`A005475(n)-A398049(n)`
-/

namespace A398046.P1073238169281042173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398049 n

end

end A398046.P1073238169281042173

namespace A398046

/-- `A005475(n)-A398049(n)` -/
def P1073238169281042173.Spec : Prop :=
  ∀ n, P1073238169281042173.a n = A398046 n

end A398046

/-! ## A398046.P15290738606239967443

`A398047(n)+A398048(n)-A398049(n)`
-/

namespace A398046.P15290738606239967443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398047 n + (A398048 n - A398049 n)

end

end A398046.P15290738606239967443

namespace A398046

/-- `A398047(n)+A398048(n)-A398049(n)` -/
def P15290738606239967443.Spec : Prop :=
  ∀ n, P15290738606239967443.a n = A398046 n

end A398046

/-! ## A398046.P11607289871383804862

`A000217(n)+n²-A389320(n+1)`
-/

namespace A398046.P11607289871383804862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n ^ 2 : ℤ) - A389320 (n + 1))

end

end A398046.P11607289871383804862

namespace A398046

/-- `A000217(n)+n²-A389320(n+1)` -/
def P11607289871383804862.Spec : Prop :=
  ∀ n, P11607289871383804862.a n = A398046 n

end A398046

/-! ## A398046.P9096770619204375250

`A000290(n)+A000217(n)-A389320(n+1)`
-/

namespace A398046.P9096770619204375250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000217 n - A389320 (n + 1)

end

end A398046.P9096770619204375250

namespace A398046

/-- `A000290(n)+A000217(n)-A389320(n+1)` -/
def P9096770619204375250.Spec : Prop :=
  ∀ n, P9096770619204375250.a n = A398046 n

end A398046

/-! ## A398046.P15693786860111921352

`A330707(n)+A387355(n)-A389320(n+1)`
-/

namespace A398046.P15693786860111921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n + (A387355 n - A389320 (n + 1))

end

end A398046.P15693786860111921352

namespace A398046

/-- `A330707(n)+A387355(n)-A389320(n+1)` -/
def P15693786860111921352.Spec : Prop :=
  ∀ n, P15693786860111921352.a n = A398046 n

end A398046

/-! ## A398046.P9545429151200470844

`∑[A311843(n)]-(n+1)²`
-/

namespace A398046.P9545429151200470844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398046.P9545429151200470844

namespace A398046

/-- `∑[A311843(n)]-(n+1)²` -/
def P9545429151200470844.Spec : Prop :=
  ∀ n, P9545429151200470844.a n = A398046 n

end A398046

/-! ## A398046.P9425284938878296476

`∑[floor((A312506(n)-1)/2)]`
-/

namespace A398046.P9425284938878296476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A312506 n - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398046.P9425284938878296476

namespace A398046

/-- `∑[floor((A312506(n)-1)/2)]` -/
def P9425284938878296476.Spec : Prop :=
  ∀ n, P9425284938878296476.a n = A398046 n

end A398046

/-! ## A398046.P17804431534498520364

`A002265(∑[n])+n²`
-/

namespace A398046.P17804431534498520364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398046.P17804431534498520364

namespace A398046

/-- `A002265(∑[n])+n²` -/
def P17804431534498520364.Spec : Prop :=
  ∀ n, P17804431534498520364.a n = A398046 n

end A398046

/-! ## A398046.P10004853500377404949

`A248375(n²+n)-n`
-/

namespace A398046.P10004853500377404949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (n ^ 2 + n) - (n : ℤ)

end

end A398046.P10004853500377404949

namespace A398046

/-- `A248375(n²+n)-n` -/
def P10004853500377404949.Spec : Prop :=
  ∀ n, P10004853500377404949.a n = A398046 n

end A398046

/-!
# A398047: Upper (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398047, the canonical program `A398047.P589683845263453085` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398047 has offset 0).

The definition of A398047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398047.P589683845263453085

`ceil(n*(9*n+1)/8)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398047

/-- `ceil(n*(9*n+1)/8)` -/
def P589683845263453085.Spec : Prop :=
  ∀ n, P589683845263453085.a n = A398047 n

theorem P589683845263453085.correct : P589683845263453085.Spec := by
  intro n
  simp only [A398047]

end A398047

/-! ## A398047.P14831646339087652041

`ogf((2x-x^2+4x^3-2x^4+4x^5-x^6+2x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A398047.P14831646339087652041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 4, -2, 4, -1, 2, 1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A398047.P14831646339087652041

namespace A398047

/-- `ogf((2x-x^2+4x^3-2x^4+4x^5-x^6+2x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P14831646339087652041.Spec : Prop :=
  ∀ n, P14831646339087652041.a n = A398047 n

end A398047

/-! ## A398047.P15604696260762752973

`n²+ceil(C(n+1, 2)/4)`
-/

namespace A398047.P15604696260762752973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ⌈(Nat.choose (n + 1) 2 : ℚ) / 4⌉

end

end A398047.P15604696260762752973

namespace A398047

/-- `n²+ceil(C(n+1, 2)/4)` -/
def P15604696260762752973.Spec : Prop :=
  ∀ n, P15604696260762752973.a n = A398047 n

end A398047

/-! ## A398047.P9417879940282641572

`floor(floor(∑[a(n-1)+9]/2)/2)` with `a(0)=3, a(1)=5`
-/

namespace A398047.P9417879940282641572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A398047.P9417879940282641572

namespace A398047

/-- `floor(floor(∑[a(n-1)+9]/2)/2)` -/
def P9417879940282641572.Spec : Prop :=
  ∀ n, P9417879940282641572.a n = A398047 n

end A398047

/-! ## A398047.P5105964358798405636

`C(5*n+1, 2)/5-(floor(3/4*∑[n])+n²)`
-/

namespace A398047.P5105964358798405636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 1) 2 : ℚ) / 5 - (⌊(3 : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ) : ℚ)

end

end A398047.P5105964358798405636

namespace A398047

/-- `C(5*n+1, 2)/5-(floor(3/4*∑[n])+n²)` -/
def P5105964358798405636.Spec : Prop :=
  ∀ n, P5105964358798405636.a n = (A398047 n : ℚ)

end A398047

/-! ## A398047.P630315638293002769

`round(A398861(n)/2)`
-/

namespace A398047.P630315638293002769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A398861 n : ℚ) / 2)

end

end A398047.P630315638293002769

namespace A398047

/-- `round(A398861(n)/2)` -/
def P630315638293002769.Spec : Prop :=
  ∀ n, P630315638293002769.a n = A398047 n

end A398047

/-! ## A398047.P4508539916003248699

`round(A006137(n)/4)`
-/

namespace A398047.P4508539916003248699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006137 n : ℚ) / 4)

end

end A398047.P4508539916003248699

namespace A398047

/-- `round(A006137(n)/4)` -/
def P4508539916003248699.Spec : Prop :=
  ∀ n, P4508539916003248699.a n = A398047 n

end A398047

/-! ## A398047.P657583493671487209

`ceil(A000217(n)/4)+n²`
-/

namespace A398047.P657583493671487209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n : ℚ) / 4⌉ + (n ^ 2 : ℤ)

end

end A398047.P657583493671487209

namespace A398047

/-- `ceil(A000217(n)/4)+n²` -/
def P657583493671487209.Spec : Prop :=
  ∀ n, P657583493671487209.a n = A398047 n

end A398047

/-! ## A398047.P13436347976337142677

`n²+round(A014206(n)/8)`
-/

namespace A398047.P13436347976337142677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + SequenceMachineLib.roundAway ((A014206 n : ℚ) / 8)

end

end A398047.P13436347976337142677

namespace A398047

/-- `n²+round(A014206(n)/8)` -/
def P13436347976337142677.Spec : Prop :=
  ∀ n, P13436347976337142677.a n = A398047 n

end A398047

/-! ## A398047.P500266598088793401

`round((A062741(n)+2*n+1)/4)`
-/

namespace A398047.P500266598088793401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062741 n + (2 * n + 1 : ℤ) : ℚ) / 4)

end

end A398047.P500266598088793401

namespace A398047

/-- `round((A062741(n)+2*n+1)/4)` -/
def P500266598088793401.Spec : Prop :=
  ∀ n, P500266598088793401.a n = A398047 n

end A398047

/-! ## A398047.P17224165635898959065

`A005475(n)-A398048(n)`
-/

namespace A398047.P17224165635898959065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398048 n

end

end A398047.P17224165635898959065

namespace A398047

/-- `A005475(n)-A398048(n)` -/
def P17224165635898959065.Spec : Prop :=
  ∀ n, P17224165635898959065.a n = A398047 n

end A398047

/-! ## A398047.P17506116927138195705

`A398046(n)+A398049(n)-A398048(n)`
-/

namespace A398047.P17506116927138195705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398046 n + (A398049 n - A398048 n)

end

end A398047.P17506116927138195705

namespace A398047

/-- `A398046(n)+A398049(n)-A398048(n)` -/
def P17506116927138195705.Spec : Prop :=
  ∀ n, P17506116927138195705.a n = A398047 n

end A398047

/-! ## A398047.P14557187210542688708

`A389318(n+1)+n²`
-/

namespace A398047.P14557187210542688708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 (n + 1) + (n ^ 2 : ℤ)

end

end A398047.P14557187210542688708

namespace A398047

/-- `A389318(n+1)+n²` -/
def P14557187210542688708.Spec : Prop :=
  ∀ n, P14557187210542688708.a n = A398047 n

end A398047

/-! ## A398047.P14814235445601084484

`A000217(n)+n²-A389319(n+1)`
-/

namespace A398047.P14814235445601084484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n ^ 2 : ℤ) - A389319 (n + 1))

end

end A398047.P14814235445601084484

namespace A398047

/-- `A000217(n)+n²-A389319(n+1)` -/
def P14814235445601084484.Spec : Prop :=
  ∀ n, P14814235445601084484.a n = A398047 n

end A398047

/-! ## A398047.P6432620772858322850

`A000290(n)+A000217(n)-A389319(n+1)`
-/

namespace A398047.P6432620772858322850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000217 n - A389319 (n + 1)

end

end A398047.P6432620772858322850

namespace A398047

/-- `A000290(n)+A000217(n)-A389319(n+1)` -/
def P6432620772858322850.Spec : Prop :=
  ∀ n, P6432620772858322850.a n = A398047 n

end A398047

/-! ## A398047.P5983424287210215516

`A330707(n)+A387355(n)-A389319(n+1)`
-/

namespace A398047.P5983424287210215516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n + (A387355 n - A389319 (n + 1))

end

end A398047.P5983424287210215516

namespace A398047

/-- `A330707(n)+A387355(n)-A389319(n+1)` -/
def P5983424287210215516.Spec : Prop :=
  ∀ n, P5983424287210215516.a n = A398047 n

end A398047

/-! ## A398047.P14567218719940851199

`A398836(n)+A389318(n+1)-A389142(n)`
-/

namespace A398047.P14567218719940851199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398836 n + A389318 (n + 1) - A389142 n

end

end A398047.P14567218719940851199

namespace A398047

/-- `A398836(n)+A389318(n+1)-A389142(n)` -/
def P14567218719940851199.Spec : Prop :=
  ∀ n, P14567218719940851199.a n = A398047 n

end A398047

/-! ## A398047.P16760444250159019721

`A110655(∑[n])+n²`
-/

namespace A398047.P16760444250159019721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398047.P16760444250159019721

namespace A398047

/-- `A110655(∑[n])+n²` -/
def P16760444250159019721.Spec : Prop :=
  ∀ n, P16760444250159019721.a n = A398047 n

end A398047

/-! ## A398047.P450709093901814809

`A304814(n²+n)-(n+1)`
-/

namespace A398047.P450709093901814809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304814 (n ^ 2 + n) - (n + 1 : ℤ)

end

end A398047.P450709093901814809

namespace A398047

/-- `A304814(n²+n)-(n+1)` -/
def P450709093901814809.Spec : Prop :=
  ∀ n, P450709093901814809.a n = A398047 n

end A398047

/-!
# A398048: Lower (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398048, the canonical program `A398048.P5558449680456029094` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398048 has offset 0).

The definition of A398048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398048.P5558449680456029094

`floor(n*(11*n+3)/8)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398048

/-- `floor(n*(11*n+3)/8)` -/
def P5558449680456029094.Spec : Prop :=
  ∀ n, P5558449680456029094.a n = A398048 n

theorem P5558449680456029094.correct : P5558449680456029094.Spec := by
  intro n
  simp only [A398048]

end A398048

/-! ## A398048.P5864103170328537343

`ogf((x+3x^2-x^3+4x^4-x^5+3x^6+x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A398048.P5864103170328537343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, -1, 4, -1, 3, 1, 1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A398048.P5864103170328537343

namespace A398048

/-- `ogf((x+3x^2-x^3+4x^4-x^5+3x^6+x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P5864103170328537343.Spec : Prop :=
  ∀ n, P5864103170328537343.a n = A398048 n

end A398048

/-! ## A398048.P7287709397870327219

`A005475(n)-A398047(n)`
-/

namespace A398048.P7287709397870327219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398047 n

end

end A398048.P7287709397870327219

namespace A398048

/-- `A005475(n)-A398047(n)` -/
def P7287709397870327219.Spec : Prop :=
  ∀ n, P7287709397870327219.a n = A398048 n

end A398048

/-! ## A398048.P12394539924761952208

`A398049(n)+A398046(n)-A398047(n)`
-/

namespace A398048.P12394539924761952208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398049 n + A398046 n - A398047 n

end

end A398048.P12394539924761952208

namespace A398048

/-- `A398049(n)+A398046(n)-A398047(n)` -/
def P12394539924761952208.Spec : Prop :=
  ∀ n, P12394539924761952208.a n = A398048 n

end A398048

/-! ## A398048.P10730900458680439839

`A389319(n+1)+n²`
-/

namespace A398048.P10730900458680439839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389319 (n + 1) + (n ^ 2 : ℤ)

end

end A398048.P10730900458680439839

namespace A398048

/-- `A389319(n+1)+n²` -/
def P10730900458680439839.Spec : Prop :=
  ∀ n, P10730900458680439839.a n = A398048 n

end A398048

/-! ## A398048.P4289216311004829402

`A000217(n)+n²-A389318(n+1)`
-/

namespace A398048.P4289216311004829402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n ^ 2 : ℤ) - A389318 (n + 1)

end

end A398048.P4289216311004829402

namespace A398048

/-- `A000217(n)+n²-A389318(n+1)` -/
def P4289216311004829402.Spec : Prop :=
  ∀ n, P4289216311004829402.a n = A398048 n

end A398048

/-! ## A398048.P16662169761549662736

`A000290(n)+A000217(n)-A389318(n+1)`
-/

namespace A398048.P16662169761549662736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000217 n - A389318 (n + 1)

end

end A398048.P16662169761549662736

namespace A398048

/-- `A000290(n)+A000217(n)-A389318(n+1)` -/
def P16662169761549662736.Spec : Prop :=
  ∀ n, P16662169761549662736.a n = A398048 n

end A398048

/-! ## A398048.P7282115799269315969

`A387355(n)+A330707(n)-A389318(n+1)`
-/

namespace A398048.P7282115799269315969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387355 n + A330707 n - A389318 (n + 1)

end

end A398048.P7282115799269315969

namespace A398048

/-- `A387355(n)+A330707(n)-A389318(n+1)` -/
def P7282115799269315969.Spec : Prop :=
  ∀ n, P7282115799269315969.a n = A398048 n

end A398048

/-! ## A398048.P7450790512178952947

`A389317(n)+A389142(n)-A389318(n+1)`
-/

namespace A398048.P7450790512178952947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n + A389142 n - A389318 (n + 1)

end

end A398048.P7450790512178952947

namespace A398048

/-- `A389317(n)+A389142(n)-A389318(n+1)` -/
def P7450790512178952947.Spec : Prop :=
  ∀ n, P7450790512178952947.a n = A398048 n

end A398048

/-! ## A398048.P14902993835888586021

`∑[A310397(n)]-(n+1)²`
-/

namespace A398048.P14902993835888586021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398048.P14902993835888586021

namespace A398048

/-- `∑[A310397(n)]-(n+1)²` -/
def P14902993835888586021.Spec : Prop :=
  ∀ n, P14902993835888586021.a n = A398048 n

end A398048

/-! ## A398048.P11886298776787149621

`∑[A310397(n)-A255347(2*n+1)]`
-/

namespace A398048.P11886298776787149621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n - A255347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398048.P11886298776787149621

namespace A398048

/-- `∑[A310397(n)-A255347(2*n+1)]` -/
def P11886298776787149621.Spec : Prop :=
  ∀ n, P11886298776787149621.a n = A398048 n

end A398048

/-! ## A398048.P429776563914524593

`A057353(∑[n])+n²`
-/

namespace A398048.P429776563914524593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398048.P429776563914524593

namespace A398048

/-- `A057353(∑[n])+n²` -/
def P429776563914524593.Spec : Prop :=
  ∀ n, P429776563914524593.a n = A398048 n

end A398048

/-!
# A398049: Upper (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398049, the canonical program `A398049.P14499983896851003961` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398049 has offset 0).

The definition of A398049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398049.P14499983896851003961

`ogf((2x+x^2+x^3+2x^4+x^5+x^6+2x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398049

/-- `ogf((2x+x^2+x^3+2x^4+x^5+x^6+2x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))` -/
def P14499983896851003961.Spec : Prop :=
  ∀ n, P14499983896851003961.a n = A398049 n

theorem P14499983896851003961.correct : P14499983896851003961.Spec := by
  intro n
  simp only [A398049]

end A398049

/-! ## A398049.P5455248228540835812

`ceil(3*∑[n]/4)+n²`
-/

namespace A398049.P5455248228540835812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 4⌉ + (n ^ 2 : ℤ)

end

end A398049.P5455248228540835812

namespace A398049

/-- `ceil(3*∑[n]/4)+n²` -/
def P5455248228540835812.Spec : Prop :=
  ∀ n, P5455248228540835812.a n = A398049 n

end A398049

/-! ## A398049.P15499999215910680698

`ceil(A254963(n)/4)`
-/

namespace A398049.P15499999215910680698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254963 n : ℚ) / 4⌉

end

end A398049.P15499999215910680698

namespace A398049

/-- `ceil(A254963(n)/4)` -/
def P15499999215910680698.Spec : Prop :=
  ∀ n, P15499999215910680698.a n = A398049 n

end A398049

/-! ## A398049.P1699414142587137665

`floor((n+1+A398841(n))/2)`
-/

namespace A398049.P1699414142587137665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) + A398841 n : ℚ) / 2⌋

end

end A398049.P1699414142587137665

namespace A398049

/-- `floor((n+1+A398841(n))/2)` -/
def P1699414142587137665.Spec : Prop :=
  ∀ n, P1699414142587137665.a n = A398049 n

end A398049

/-! ## A398049.P8165919751843623873

`floor(C(5*n+1, 2)/5-A398046(n))`
-/

namespace A398049.P8165919751843623873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (5 * n + 1) 2 : ℚ) / 5 - (A398046 n : ℚ)⌋

end

end A398049.P8165919751843623873

namespace A398049

/-- `floor(C(5*n+1, 2)/5-A398046(n))` -/
def P8165919751843623873.Spec : Prop :=
  ∀ n, P8165919751843623873.a n = A398049 n

end A398049

/-! ## A398049.P15913168380019287273

`∑[A008486(n)-Δ[A011861(n)]-1]`
-/

namespace A398049.P15913168380019287273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (f2 (n + 1) - f2 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398049.P15913168380019287273

namespace A398049

/-- `∑[A008486(n)-Δ[A011861(n)]-1]` -/
def P15913168380019287273.Spec : Prop :=
  ∀ n, P15913168380019287273.a n = A398049 n

end A398049

/-! ## A398049.P8120126876020195396

`∑[A313561(n)-Δ[n²]]`
-/

namespace A398049.P8120126876020195396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398049.P8120126876020195396

namespace A398049

/-- `∑[A313561(n)-Δ[n²]]` -/
def P8120126876020195396.Spec : Prop :=
  ∀ n, P8120126876020195396.a n = A398049 n

end A398049

/-! ## A398049.P13802615947594888079

`∑[A315704(n)-(3*n+1)]`
-/

namespace A398049.P13802615947594888079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - (3 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398049.P13802615947594888079

namespace A398049

/-- `∑[A315704(n)-(3*n+1)]` -/
def P13802615947594888079.Spec : Prop :=
  ∀ n, P13802615947594888079.a n = A398049 n

end A398049

/-! ## A398049.P2338107928479366832

`A110654(A398841(n)+n)`
-/

namespace A398049.P2338107928479366832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A398841 n + (n : ℤ)).toNat

end

end A398049.P2338107928479366832

namespace A398049

/-- `A110654(A398841(n)+n)` -/
def P2338107928479366832.Spec : Prop :=
  ∀ n, P2338107928479366832.a n = A398049 n

end A398049

/-!
# A398050: Lower (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398050, the canonical program `A398050.P13579806818623534660` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398050 has offset 0).

The definition of A398050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398050.P16262123202052261474

`floor(n*(7*n+5)/10)`
-/

namespace A398050.P16262123202052261474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (7 * n + 5) : ℚ) / 10⌋

end

end A398050.P16262123202052261474

namespace A398050

/-- `floor(n*(7*n+5)/10)` -/
def P16262123202052261474.Spec : Prop :=
  ∀ n, P16262123202052261474.a n = A398050 n

end A398050

/-! ## A398050.P16718518580268408659

`ogf((x+x^2+2x^3+2x^4+x^5)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398050.P16718518580268408659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398050.P16718518580268408659

namespace A398050

/-- `ogf((x+x^2+2x^3+2x^4+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P16718518580268408659.Spec : Prop :=
  ∀ n, P16718518580268408659.a n = A398050 n

end A398050

/-! ## A398050.P13579806818623534660

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=13, a(5)=20, a(6)=28`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398050

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P13579806818623534660.Spec : Prop :=
  ∀ n, P13579806818623534660.a n = A398050 n

theorem P13579806818623534660.correct : P13579806818623534660.Spec := by
  intro n
  simp only [A398050]

end A398050

/-! ## A398050.P67234224325728483

`∑[comp[7+a(n-2)]]` with `a(0)=3, a(1)=5`
-/

namespace A398050.P67234224325728483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  7 + f2 (n - 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P67234224325728483

namespace A398050

/-- `∑[comp[7+a(n-2)]]` -/
def P67234224325728483.Spec : Prop :=
  ∀ n, (P67234224325728483.a n : ℤ) = A398050 n

end A398050

/-! ## A398050.P16777494408576186658

`∑[∑[floor(n%5/3)]+n]`
-/

namespace A398050.P16777494408576186658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 5 : ℕ) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P16777494408576186658

namespace A398050

/-- `∑[∑[floor(n%5/3)]+n]` -/
def P16777494408576186658.Spec : Prop :=
  ∀ n, P16777494408576186658.a n = A398050 n

end A398050

/-! ## A398050.P12192645842887764326

`∑[comp[∑[7-a(n-1)]]]` with `a(0)=3, a(1)=2`
-/

namespace A398050.P12192645842887764326
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f3 =>
  7 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P12192645842887764326

namespace A398050

/-- `∑[comp[∑[7-a(n-1)]]]` -/
def P12192645842887764326.Spec : Prop :=
  ∀ n, (P12192645842887764326.a n : ℤ) = A398050 n

end A398050

/-! ## A398050.P14376243485526466257

`floor(n²/5)+C(n+1, 2)`
-/

namespace A398050.P14376243485526466257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 5⌋ + (Nat.choose (n + 1) 2 : ℤ)

end

end A398050.P14376243485526466257

namespace A398050

/-- `floor(n²/5)+C(n+1, 2)` -/
def P14376243485526466257.Spec : Prop :=
  ∀ n, P14376243485526466257.a n = A398050 n

end A398050

/-! ## A398050.P6908211552829474010

`∑[a(n-5)+7]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A398050.P6908211552829474010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P6908211552829474010

namespace A398050

/-- `∑[a(n-5)+7]` -/
def P6908211552829474010.Spec : Prop :=
  ∀ n, (P6908211552829474010.a n : ℤ) = A398050 n

end A398050

/-! ## A398050.P17499037476509415909

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A398050.P17499037476509415909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 2, 1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P17499037476509415909

namespace A398050

/-- `∑[∑[floor(a(n-5))]]` -/
def P17499037476509415909.Spec : Prop :=
  ∀ n, (P17499037476509415909.a n : ℤ) = A398050 n

end A398050

/-! ## A398050.P2453482232382620368

`∑[A047295(n+1)]`
-/

namespace A398050.P2453482232382620368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398050.P2453482232382620368

namespace A398050

/-- `∑[A047295(n+1)]` -/
def P2453482232382620368.Spec : Prop :=
  ∀ n, P2453482232382620368.a n = A398050 n

end A398050

/-! ## A398050.P15592289074165492864

`A118015(n)+∑[n]`
-/

namespace A398050.P15592289074165492864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398050.P15592289074165492864

namespace A398050

/-- `A118015(n)+∑[n]` -/
def P15592289074165492864.Spec : Prop :=
  ∀ n, P15592289074165492864.a n = A398050 n

end A398050

/-! ## A398050.P16636897504957320334

`A398052(n)-A008738(n)`
-/

namespace A398050.P16636897504957320334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n - A008738 n

end

end A398050.P16636897504957320334

namespace A398050

/-- `A398052(n)-A008738(n)` -/
def P16636897504957320334.Spec : Prop :=
  ∀ n, P16636897504957320334.a n = A398050 n

end A398050

/-! ## A398050.P5117663330644338295

`A398051(n)-A011558(n)`
-/

namespace A398050.P5117663330644338295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 n - A011558 n

end

end A398050.P5117663330644338295

namespace A398050

/-- `A398051(n)-A011558(n)` -/
def P5117663330644338295.Spec : Prop :=
  ∀ n, P5117663330644338295.a n = A398050 n

end A398050

/-! ## A398050.P18328817356883466023

`A014105(n)-A398057(n)`
-/

namespace A398050.P18328817356883466023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398057 n

end

end A398050.P18328817356883466023

namespace A398050

/-- `A014105(n)-A398057(n)` -/
def P18328817356883466023.Spec : Prop :=
  ∀ n, P18328817356883466023.a n = A398050 n

end A398050

/-! ## A398050.P10647808558011008147

`A008260(n)%A173247(n)`
-/

namespace A398050.P10647808558011008147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008260 n) (A173247 n)

end

end A398050.P10647808558011008147

namespace A398050

/-- `A008260(n)%A173247(n)` -/
def P10647808558011008147.Spec : Prop :=
  ∀ n, P10647808558011008147.a n = A398050 n

end A398050

/-! ## A398050.P6555524134552106428

`A227353(n+1)+A033437(n)`
-/

namespace A398050.P6555524134552106428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1) + A033437 n

end

end A398050.P6555524134552106428

namespace A398050

/-- `A227353(n+1)+A033437(n)` -/
def P6555524134552106428.Spec : Prop :=
  ∀ n, P6555524134552106428.a n = A398050 n

end A398050

/-! ## A398050.P4070588639784716751

`A000217(2*n)-A398057(n)`
-/

namespace A398050.P4070588639784716751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398057 n

end

end A398050.P4070588639784716751

namespace A398050

/-- `A000217(2*n)-A398057(n)` -/
def P4070588639784716751.Spec : Prop :=
  ∀ n, P4070588639784716751.a n = A398050 n

end A398050

/-! ## A398050.P14378374976530795901

`A398051(n)+A398052(n)-A398053(n)`
-/

namespace A398050.P14378374976530795901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 n + (A398052 n - A398053 n)

end

end A398050.P14378374976530795901

namespace A398050

/-- `A398051(n)+A398052(n)-A398053(n)` -/
def P14378374976530795901.Spec : Prop :=
  ∀ n, P14378374976530795901.a n = A398050 n

end A398050

/-! ## A398050.P119670664152278752

`A398052(n)+A398052(n)-A398054(n)`
-/

namespace A398050.P119670664152278752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398052 n - A398054 n)

end

end A398050.P119670664152278752

namespace A398050

/-- `A398052(n)+A398052(n)-A398054(n)` -/
def P119670664152278752.Spec : Prop :=
  ∀ n, P119670664152278752.a n = A398050 n

end A398050

/-! ## A398050.P8404904965983341779

`A002620(n+1)+A118015(n)+A002620(n)`
-/

namespace A398050.P8404904965983341779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A118015 n + A002620 n)

end

end A398050.P8404904965983341779

namespace A398050

/-- `A002620(n+1)+A118015(n)+A002620(n)` -/
def P8404904965983341779.Spec : Prop :=
  ∀ n, P8404904965983341779.a n = A398050 n

end A398050

/-!
# A398051: Upper (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398051, the canonical program `A398051.P3331619900421333348` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398051 has offset 0).

The definition of A398051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398051.P12802423643646808074

`ceil(n*(7*n+5)/10)`
-/

namespace A398051.P12802423643646808074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (7 * n + 5) : ℚ) / 10⌉

end

end A398051.P12802423643646808074

namespace A398051

/-- `ceil(n*(7*n+5)/10)` -/
def P12802423643646808074.Spec : Prop :=
  ∀ n, P12802423643646808074.a n = A398051 n

end A398051

/-! ## A398051.P4390895104770847480

`ogf((2x+2x^3+2x^4+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398051.P4390895104770847480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, 2, 2, 0, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398051.P4390895104770847480

namespace A398051

/-- `ogf((2x+2x^3+2x^4+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P4390895104770847480.Spec : Prop :=
  ∀ n, P4390895104770847480.a n = A398051 n

end A398051

/-! ## A398051.P3331619900421333348

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=20, a(6)=29`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398051

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P3331619900421333348.Spec : Prop :=
  ∀ n, P3331619900421333348.a n = A398051 n

theorem P3331619900421333348.correct : P3331619900421333348.Spec := by
  intro n
  simp only [A398051]

end A398051

/-! ## A398051.P16292616056370117049

`∑[n]+round(or(2, n²)/5)`
-/

namespace A398051.P16292616056370117049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2) : ℚ) / 5)

end

end A398051.P16292616056370117049

namespace A398051

/-- `∑[n]+round(or(2, n²)/5)` -/
def P16292616056370117049.Spec : Prop :=
  ∀ n, P16292616056370117049.a n = A398051 n

end A398051

/-! ## A398051.P13997184965117358302

`∑[n]+round(xor(2, n²)/5)`
-/

namespace A398051.P13997184965117358302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 2 (n ^ 2) : ℚ) / 5)

end

end A398051.P13997184965117358302

namespace A398051

/-- `∑[n]+round(xor(2, n²)/5)` -/
def P13997184965117358302.Spec : Prop :=
  ∀ n, P13997184965117358302.a n = A398051 n

end A398051

/-! ## A398051.P16550244918649675881

`ceil(n²/5)+C(n+1, 2)`
-/

namespace A398051.P16550244918649675881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 5⌉ + (Nat.choose (n + 1) 2 : ℤ)

end

end A398051.P16550244918649675881

namespace A398051

/-- `ceil(n²/5)+C(n+1, 2)` -/
def P16550244918649675881.Spec : Prop :=
  ∀ n, P16550244918649675881.a n = A398051 n

end A398051

/-! ## A398051.P3454574151540085344

`A036404(n)+∑[n]`
-/

namespace A398051.P3454574151540085344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398051.P3454574151540085344

namespace A398051

/-- `A036404(n)+∑[n]` -/
def P3454574151540085344.Spec : Prop :=
  ∀ n, P3454574151540085344.a n = A398051 n

end A398051

/-! ## A398051.P7255717549262367586

`∑[n]+round(A059100(n)/5)`
-/

namespace A398051.P7255717549262367586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((A059100 n : ℚ) / 5)

end

end A398051.P7255717549262367586

namespace A398051

/-- `∑[n]+round(A059100(n)/5)` -/
def P7255717549262367586.Spec : Prop :=
  ∀ n, P7255717549262367586.a n = A398051 n

end A398051

/-! ## A398051.P9320504777702089490

`(n+1)²-A186496(n+1)`
-/

namespace A398051.P9320504777702089490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A186496 (n + 1)

end

end A398051.P9320504777702089490

namespace A398051

/-- `(n+1)²-A186496(n+1)` -/
def P9320504777702089490.Spec : Prop :=
  ∀ n, P9320504777702089490.a n = A398051 n

end A398051

/-! ## A398051.P2303192386108458601

`A398050(n)+A011558(n)`
-/

namespace A398051.P2303192386108458601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n + A011558 n

end

end A398051.P2303192386108458601

namespace A398051

/-- `A398050(n)+A011558(n)` -/
def P2303192386108458601.Spec : Prop :=
  ∀ n, P2303192386108458601.a n = A398051 n

end A398051

/-! ## A398051.P1350471995620261994

`A005449(n)-A279169(n)`
-/

namespace A398051.P1350471995620261994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A279169 n

end

end A398051.P1350471995620261994

namespace A398051

/-- `A005449(n)-A279169(n)` -/
def P1350471995620261994.Spec : Prop :=
  ∀ n, P1350471995620261994.a n = A398051 n

end A398051

/-! ## A398051.P6270453221218514714

`A398053(n)-A008738(n)`
-/

namespace A398051.P6270453221218514714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398053 n - A008738 n

end

end A398051.P6270453221218514714

namespace A398051

/-- `A398053(n)-A008738(n)` -/
def P6270453221218514714.Spec : Prop :=
  ∀ n, P6270453221218514714.a n = A398051 n

end A398051

/-! ## A398051.P2123549356114027047

`A014105(n)-A398056(n)`
-/

namespace A398051.P2123549356114027047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398056 n

end

end A398051.P2123549356114027047

namespace A398051

/-- `A014105(n)-A398056(n)` -/
def P2123549356114027047.Spec : Prop :=
  ∀ n, P2123549356114027047.a n = A398051 n

end A398051

/-! ## A398051.P6110262544593624693

`A000217(2*n)-A398056(n)`
-/

namespace A398051.P6110262544593624693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398056 n

end

end A398051.P6110262544593624693

namespace A398051

/-- `A000217(2*n)-A398056(n)` -/
def P6110262544593624693.Spec : Prop :=
  ∀ n, P6110262544593624693.a n = A398051 n

end A398051

/-! ## A398051.P16792561976930166634

`A398050(n)+A398053(n)-A398052(n)`
-/

namespace A398051.P16792561976930166634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n + (A398053 n - A398052 n)

end

end A398051.P16792561976930166634

namespace A398051

/-- `A398050(n)+A398053(n)-A398052(n)` -/
def P16792561976930166634.Spec : Prop :=
  ∀ n, P16792561976930166634.a n = A398051 n

end A398051

/-! ## A398051.P11232573185424528652

`A398052(n)+A398053(n)-A398054(n)`
-/

namespace A398051.P11232573185424528652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398053 n - A398054 n)

end

end A398051.P11232573185424528652

namespace A398051

/-- `A398052(n)+A398053(n)-A398054(n)` -/
def P11232573185424528652.Spec : Prop :=
  ∀ n, P11232573185424528652.a n = A398051 n

end A398051

/-!
# A398052: Lower (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398052, the canonical program `A398052.P13299476155714020316` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398052 has offset 0).

The definition of A398052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398052.P4381215023453565735

`floor(n*(9*n+5)/10)`
-/

namespace A398052.P4381215023453565735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 5) : ℚ) / 10⌋

end

end A398052.P4381215023453565735

namespace A398052

/-- `floor(n*(9*n+5)/10)` -/
def P4381215023453565735.Spec : Prop :=
  ∀ n, P4381215023453565735.a n = A398052 n

end A398052

/-! ## A398052.P1858319393907110710

`ogf((x+2x^2+2x^3+2x^4+2x^5)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398052.P1858319393907110710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 2, 2] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398052.P1858319393907110710

namespace A398052

/-- `ogf((x+2x^2+2x^3+2x^4+2x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P1858319393907110710.Spec : Prop :=
  ∀ n, P1858319393907110710.a n = A398052 n

end A398052

/-! ## A398052.P13299476155714020316

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=16, a(5)=25, a(6)=35`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398052

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P13299476155714020316.Spec : Prop :=
  ∀ n, P13299476155714020316.a n = A398052 n

theorem P13299476155714020316.correct : P13299476155714020316.Spec := by
  intro n
  simp only [A398052]

end A398052

/-! ## A398052.P17132947189287784443

`∑[n]+round((C(2*n, 2)+n-1)/5)`
-/

namespace A398052.P17132947189287784443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (((Nat.choose (2 * n) 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 5)

end

end A398052.P17132947189287784443

namespace A398052

/-- `∑[n]+round((C(2*n, 2)+n-1)/5)` -/
def P17132947189287784443.Spec : Prop :=
  ∀ n, P17132947189287784443.a n = A398052 n

end A398052

/-! ## A398052.P6042205511182019689

`∑[A187318(n)]`
-/

namespace A398052.P6042205511182019689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398052.P6042205511182019689

namespace A398052

/-- `∑[A187318(n)]` -/
def P6042205511182019689.Spec : Prop :=
  ∀ n, P6042205511182019689.a n = A398052 n

end A398052

/-! ## A398052.P9751257929693970265

`A033437(n)+∑[n]`
-/

namespace A398052.P9751257929693970265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398052.P9751257929693970265

namespace A398052

/-- `A033437(n)+∑[n]` -/
def P9751257929693970265.Spec : Prop :=
  ∀ n, P9751257929693970265.a n = A398052 n

end A398052

/-! ## A398052.P10822709578406836409

`∑[A090223(n)+n]`
-/

namespace A398052.P10822709578406836409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398052.P10822709578406836409

namespace A398052

/-- `∑[A090223(n)+n]` -/
def P10822709578406836409.Spec : Prop :=
  ∀ n, P10822709578406836409.a n = A398052 n

end A398052

/-! ## A398052.P16019163253327013141

`floor(A062708(n)/5)+n`
-/

namespace A398052.P16019163253327013141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062708 n : ℚ) / 5⌋ + (n : ℤ)

end

end A398052.P16019163253327013141

namespace A398052

/-- `floor(A062708(n)/5)+n` -/
def P16019163253327013141.Spec : Prop :=
  ∀ n, P16019163253327013141.a n = A398052 n

end A398052

/-! ## A398052.P360894880353110916

`A398050(n)+A008738(n)`
-/

namespace A398052.P360894880353110916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n + A008738 n

end

end A398052.P360894880353110916

namespace A398052

/-- `A398050(n)+A008738(n)` -/
def P360894880353110916.Spec : Prop :=
  ∀ n, P360894880353110916.a n = A398052 n

end A398052

/-! ## A398052.P14399606165419234100

`A281151(n)+A130520(n)`
-/

namespace A398052.P14399606165419234100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281151 n + A130520 n

end

end A398052.P14399606165419234100

namespace A398052

/-- `A281151(n)+A130520(n)` -/
def P14399606165419234100.Spec : Prop :=
  ∀ n, P14399606165419234100.a n = A398052 n

end A398052

/-! ## A398052.P3650371286729893695

`A398054(n)-A008738(n)`
-/

namespace A398052.P3650371286729893695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n - A008738 n

end

end A398052.P3650371286729893695

namespace A398052

/-- `A398054(n)-A008738(n)` -/
def P3650371286729893695.Spec : Prop :=
  ∀ n, P3650371286729893695.a n = A398052 n

end A398052

/-! ## A398052.P17710472664933803551

`A398053(n)-A011558(n)`
-/

namespace A398052.P17710472664933803551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398053 n - A011558 n

end

end A398052.P17710472664933803551

namespace A398052

/-- `A398053(n)-A011558(n)` -/
def P17710472664933803551.Spec : Prop :=
  ∀ n, P17710472664933803551.a n = A398052 n

end A398052

/-! ## A398052.P6219966137637868345

`A014105(n)-A398055(n)`
-/

namespace A398052.P6219966137637868345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398055 n

end

end A398052.P6219966137637868345

namespace A398052

/-- `A014105(n)-A398055(n)` -/
def P6219966137637868345.Spec : Prop :=
  ∀ n, P6219966137637868345.a n = A398052 n

end A398052

/-! ## A398052.P13417358274998969752

`A000217(2*n)-A398055(n)`
-/

namespace A398052.P13417358274998969752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398055 n

end

end A398052.P13417358274998969752

namespace A398052

/-- `A000217(2*n)-A398055(n)` -/
def P13417358274998969752.Spec : Prop :=
  ∀ n, P13417358274998969752.a n = A398052 n

end A398052

/-! ## A398052.P15995831556056225963

`A398050(n)+A398053(n)-A398051(n)`
-/

namespace A398052.P15995831556056225963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n + (A398053 n - A398051 n)

end

end A398052.P15995831556056225963

namespace A398052

/-- `A398050(n)+A398053(n)-A398051(n)` -/
def P15995831556056225963.Spec : Prop :=
  ∀ n, P15995831556056225963.a n = A398052 n

end A398052

/-! ## A398052.P12505711354946392484

`A002620(n+1)+A033437(n)+A002620(n)`
-/

namespace A398052.P12505711354946392484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A033437 n + A002620 n)

end

end A398052.P12505711354946392484

namespace A398052

/-- `A002620(n+1)+A033437(n)+A002620(n)` -/
def P12505711354946392484.Spec : Prop :=
  ∀ n, P12505711354946392484.a n = A398052 n

end A398052

/-! ## A398052.P4631980578057253074

`A130520(n)+A033437(n+1)+A033437(n)`
-/

namespace A398052.P4631980578057253074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n + A033437 (n + 1) + A033437 n

end

end A398052.P4631980578057253074

namespace A398052

/-- `A130520(n)+A033437(n+1)+A033437(n)` -/
def P4631980578057253074.Spec : Prop :=
  ∀ n, P4631980578057253074.a n = A398052 n

end A398052

/-! ## A398052.P4744419054297787013

`A249013(n+1)+A008738(2*n)`
-/

namespace A398052.P4744419054297787013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 1) + A008738 (2 * n)

end

end A398052.P4744419054297787013

namespace A398052

/-- `A249013(n+1)+A008738(2*n)` -/
def P4744419054297787013.Spec : Prop :=
  ∀ n, P4744419054297787013.a n = A398052 n

end A398052

/-! ## A398052.P1787574365232049355

`A130520(n+2)+A011858(2*n+1)`
-/

namespace A398052.P1787574365232049355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 2) + A011858 (2 * n + 1)

end

end A398052.P1787574365232049355

namespace A398052

/-- `A130520(n+2)+A011858(2*n+1)` -/
def P1787574365232049355.Spec : Prop :=
  ∀ n, P1787574365232049355.a n = A398052 n

end A398052

/-! ## A398052.P5900777586763650845

`∑[A057355(3*n)]`
-/

namespace A398052.P5900777586763650845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398052.P5900777586763650845

namespace A398052

/-- `∑[A057355(3*n)]` -/
def P5900777586763650845.Spec : Prop :=
  ∀ n, P5900777586763650845.a n = A398052 n

end A398052

/-!
# A398053: Upper (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398053, the canonical program `A398053.P15641591372993690275` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398053 has offset 0).

The definition of A398053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398053.P2011209232137025566

`ceil(n*(9*n+5)/10)`
-/

namespace A398053.P2011209232137025566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 5) : ℚ) / 10⌉

end

end A398053.P2011209232137025566

namespace A398053

/-- `ceil(n*(9*n+5)/10)` -/
def P2011209232137025566.Spec : Prop :=
  ∀ n, P2011209232137025566.a n = A398053 n

end A398053

/-! ## A398053.P3110200549325613168

`ogf((2x+x^2+2x^3+2x^4+x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398053.P3110200549325613168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 2, 1, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398053.P3110200549325613168

namespace A398053

/-- `ogf((2x+x^2+2x^3+2x^4+x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P3110200549325613168.Spec : Prop :=
  ∀ n, P3110200549325613168.a n = A398053 n

end A398053

/-! ## A398053.P15641591372993690275

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=36`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398053

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P15641591372993690275.Spec : Prop :=
  ∀ n, P15641591372993690275.a n = A398053 n

theorem P15641591372993690275.correct : P15641591372993690275.Spec := by
  intro n
  simp only [A398053]

end A398053

/-! ## A398053.P2477173331772783385

`round(A064225(n)/5)`
-/

namespace A398053.P2477173331772783385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064225 n : ℚ) / 5)

end

end A398053.P2477173331772783385

namespace A398053

/-- `round(A064225(n)/5)` -/
def P2477173331772783385.Spec : Prop :=
  ∀ n, P2477173331772783385.a n = A398053 n

end A398053

/-! ## A398053.P4023216381310962105

`round(A214675(n+1)/10)`
-/

namespace A398053.P4023216381310962105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214675 (n + 1) : ℚ) / 10)

end

end A398053.P4023216381310962105

namespace A398053

/-- `round(A214675(n+1)/10)` -/
def P4023216381310962105.Spec : Prop :=
  ∀ n, P4023216381310962105.a n = A398053 n

end A398053

/-! ## A398053.P8879069457964839987

`n²+n-A249013(n+1)`
-/

namespace A398053.P8879069457964839987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A249013 (n + 1)

end

end A398053.P8879069457964839987

namespace A398053

/-- `n²+n-A249013(n+1)` -/
def P8879069457964839987.Spec : Prop :=
  ∀ n, P8879069457964839987.a n = A398053 n

end A398053

/-! ## A398053.P2869045077582744707

`A398051(n)+A008738(n)`
-/

namespace A398053.P2869045077582744707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 n + A008738 n

end

end A398053.P2869045077582744707

namespace A398053

/-- `A398051(n)+A008738(n)` -/
def P2869045077582744707.Spec : Prop :=
  ∀ n, P2869045077582744707.a n = A398053 n

end A398053

/-! ## A398053.P4652385278134035056

`A398052(n)+A011558(n)`
-/

namespace A398053.P4652385278134035056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + A011558 n

end

end A398053.P4652385278134035056

namespace A398053

/-- `A398052(n)+A011558(n)` -/
def P4652385278134035056.Spec : Prop :=
  ∀ n, P4652385278134035056.a n = A398053 n

end A398053

/-! ## A398053.P7833810043991160600

`A398055(n)-A008738(n)`
-/

namespace A398053.P7833810043991160600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n - A008738 n

end

end A398053.P7833810043991160600

namespace A398053

/-- `A398055(n)-A008738(n)` -/
def P7833810043991160600.Spec : Prop :=
  ∀ n, P7833810043991160600.a n = A398053 n

end A398053

/-! ## A398053.P8928887791303964380

`A014105(n)-A398054(n)`
-/

namespace A398053.P8928887791303964380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398054 n

end

end A398053.P8928887791303964380

namespace A398053

/-- `A014105(n)-A398054(n)` -/
def P8928887791303964380.Spec : Prop :=
  ∀ n, P8928887791303964380.a n = A398053 n

end A398053

/-! ## A398053.P8655164497313451368

`A000217(2*n)-A398054(n)`
-/

namespace A398053.P8655164497313451368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398054 n

end

end A398053.P8655164497313451368

namespace A398053

/-- `A000217(2*n)-A398054(n)` -/
def P8655164497313451368.Spec : Prop :=
  ∀ n, P8655164497313451368.a n = A398053 n

end A398053

/-! ## A398053.P17147612401350610561

`A398051(n)+A398052(n)-A398050(n)`
-/

namespace A398053.P17147612401350610561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 n + (A398052 n - A398050 n)

end

end A398053.P17147612401350610561

namespace A398053

/-- `A398051(n)+A398052(n)-A398050(n)` -/
def P17147612401350610561.Spec : Prop :=
  ∀ n, P17147612401350610561.a n = A398053 n

end A398053

/-! ## A398053.P3968513210370953313

`A398052(n)+A398055(n)-A398054(n)`
-/

namespace A398053.P3968513210370953313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398055 n - A398054 n)

end

end A398053.P3968513210370953313

namespace A398053

/-- `A398052(n)+A398055(n)-A398054(n)` -/
def P3968513210370953313.Spec : Prop :=
  ∀ n, P3968513210370953313.a n = A398053 n

end A398053

/-! ## A398053.P3087972513139767240

`A036408(2*n)+∑[n]`
-/

namespace A398053.P3087972513139767240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398053.P3087972513139767240

namespace A398053

/-- `A036408(2*n)+∑[n]` -/
def P3087972513139767240.Spec : Prop :=
  ∀ n, P3087972513139767240.a n = A398053 n

end A398053

/-! ## A398053.P7544891475970614062

`A130520(3*n+4)-n`
-/

namespace A398053.P7544891475970614062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (3 * n + 4) - (n : ℤ)

end

end A398053.P7544891475970614062

namespace A398053

/-- `A130520(3*n+4)-n` -/
def P7544891475970614062.Spec : Prop :=
  ∀ n, P7544891475970614062.a n = A398053 n

end A398053

/-!
# A398054: Lower (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398054, the canonical program `A398054.P7192411579253713733` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398054 has offset 0).

The definition of A398054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398054.P7496013267535951580

`floor(n*(11*n+5)/10)`
-/

namespace A398054.P7496013267535951580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (11 * n + 5) : ℚ) / 10⌋

end

end A398054.P7496013267535951580

namespace A398054

/-- `floor(n*(11*n+5)/10)` -/
def P7496013267535951580.Spec : Prop :=
  ∀ n, P7496013267535951580.a n = A398054 n

end A398054

/-! ## A398054.P12699492551182442271

`ogf((x+3x^2+2x^3+2x^4+3x^5)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398054.P12699492551182442271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 2, 3] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398054.P12699492551182442271

namespace A398054

/-- `ogf((x+3x^2+2x^3+2x^4+3x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P12699492551182442271.Spec : Prop :=
  ∀ n, P12699492551182442271.a n = A398054 n

end A398054

/-! ## A398054.P7192411579253713733

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=19, a(5)=30, a(6)=42`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398054

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P7192411579253713733.Spec : Prop :=
  ∀ n, P7192411579253713733.a n = A398054 n

theorem P7192411579253713733.correct : P7192411579253713733.Spec := by
  intro n
  simp only [A398054]

end A398054

/-! ## A398054.P16621786590683703238

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398054.P16621786590683703238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 2, 3] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398054.P16621786590683703238

namespace A398054

/-- `∑[∑[floor(a(n-5))]]` -/
def P16621786590683703238.Spec : Prop :=
  ∀ n, (P16621786590683703238.a n : ℤ) = A398054 n

end A398054

/-! ## A398054.P604243349855659996

`∑[A239492(n)+n]`
-/

namespace A398054.P604243349855659996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398054.P604243349855659996

namespace A398054

/-- `∑[A239492(n)+n]` -/
def P604243349855659996.Spec : Prop :=
  ∀ n, P604243349855659996.a n = A398054 n

end A398054

/-! ## A398054.P4439152686052943924

`A249013(n+1)+n²`
-/

namespace A398054.P4439152686052943924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 1) + (n ^ 2 : ℤ)

end

end A398054.P4439152686052943924

namespace A398054

/-- `A249013(n+1)+n²` -/
def P4439152686052943924.Spec : Prop :=
  ∀ n, P4439152686052943924.a n = A398054 n

end A398054

/-! ## A398054.P16489366880455565364

`A398052(n)+A008738(n)`
-/

namespace A398054.P16489366880455565364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + A008738 n

end

end A398054.P16489366880455565364

namespace A398054

/-- `A398052(n)+A008738(n)` -/
def P16489366880455565364.Spec : Prop :=
  ∀ n, P16489366880455565364.a n = A398054 n

end A398054

/-! ## A398054.P9577959237592272464

`A398060(n)+A288156(n)`
-/

namespace A398054.P9577959237592272464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398060 n + A288156 n

end

end A398054.P9577959237592272464

namespace A398054

/-- `A398060(n)+A288156(n)` -/
def P9577959237592272464.Spec : Prop :=
  ∀ n, P9577959237592272464.a n = A398054 n

end A398054

/-! ## A398054.P9208121333872027190

`A398056(n)-A008738(n)`
-/

namespace A398054.P9208121333872027190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398056 n - A008738 n

end

end A398054.P9208121333872027190

namespace A398054

/-- `A398056(n)-A008738(n)` -/
def P9208121333872027190.Spec : Prop :=
  ∀ n, P9208121333872027190.a n = A398054 n

end A398054

/-! ## A398054.P4304338896537078415

`A398055(n)-A011558(n)`
-/

namespace A398054.P4304338896537078415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n - A011558 n

end

end A398054.P4304338896537078415

namespace A398054

/-- `A398055(n)-A011558(n)` -/
def P4304338896537078415.Spec : Prop :=
  ∀ n, P4304338896537078415.a n = A398054 n

end A398054

/-! ## A398054.P11992870187952612287

`A014105(n)-A398053(n)`
-/

namespace A398054.P11992870187952612287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398053 n

end

end A398054.P11992870187952612287

namespace A398054

/-- `A014105(n)-A398053(n)` -/
def P11992870187952612287.Spec : Prop :=
  ∀ n, P11992870187952612287.a n = A398054 n

end A398054

/-! ## A398054.P513486338710831652

`A249020(n)-A258837(n)`
-/

namespace A398054.P513486338710831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 n - A258837 n

end

end A398054.P513486338710831652

namespace A398054

/-- `A249020(n)-A258837(n)` -/
def P513486338710831652.Spec : Prop :=
  ∀ n, P513486338710831652.a n = A398054 n

end A398054

/-! ## A398054.P3657336094688665219

`A279169(n)+A227353(n+1)`
-/

namespace A398054.P3657336094688665219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279169 n + A227353 (n + 1)

end

end A398054.P3657336094688665219

namespace A398054

/-- `A279169(n)+A227353(n+1)` -/
def P3657336094688665219.Spec : Prop :=
  ∀ n, P3657336094688665219.a n = A398054 n

end A398054

/-! ## A398054.P6635299503328116605

`A000217(2*n)-A398053(n)`
-/

namespace A398054.P6635299503328116605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398053 n

end

end A398054.P6635299503328116605

namespace A398054

/-- `A000217(2*n)-A398053(n)` -/
def P6635299503328116605.Spec : Prop :=
  ∀ n, P6635299503328116605.a n = A398054 n

end A398054

/-! ## A398054.P14766438249132869277

`A397972(n)+A397975(n)-A398053(n)`
-/

namespace A398054.P14766438249132869277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + (A397975 n - A398053 n)

end

end A398054.P14766438249132869277

namespace A398054

/-- `A397972(n)+A397975(n)-A398053(n)` -/
def P14766438249132869277.Spec : Prop :=
  ∀ n, P14766438249132869277.a n = A398054 n

end A398054

/-! ## A398054.P18316749906779845900

`A398052(n)+A398052(n)-A398050(n)`
-/

namespace A398054.P18316749906779845900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398052 n - A398050 n)

end

end A398054.P18316749906779845900

namespace A398054

/-- `A398052(n)+A398052(n)-A398050(n)` -/
def P18316749906779845900.Spec : Prop :=
  ∀ n, P18316749906779845900.a n = A398054 n

end A398054

/-! ## A398054.P7317371961214377623

`A398052(n)+A398053(n)-A398051(n)`
-/

namespace A398054.P7317371961214377623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398053 n - A398051 n)

end

end A398054.P7317371961214377623

namespace A398054

/-- `A398052(n)+A398053(n)-A398051(n)` -/
def P7317371961214377623.Spec : Prop :=
  ∀ n, P7317371961214377623.a n = A398054 n

end A398054

/-! ## A398054.P17785471576775389411

`A057355(n²)+∑[n]`
-/

namespace A398054.P17785471576775389411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (n ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398054.P17785471576775389411

namespace A398054

/-- `A057355(n²)+∑[n]` -/
def P17785471576775389411.Spec : Prop :=
  ∀ n, P17785471576775389411.a n = A398054 n

end A398054

/-!
# A398055: Upper (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398055, the canonical program `A398055.P7592882292166257935` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398055 has offset 0).

The definition of A398055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398055.P3462087431053905744

`ceil(n*(11*n+5)/10)`
-/

namespace A398055.P3462087431053905744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (11 * n + 5) : ℚ) / 10⌉

end

end A398055.P3462087431053905744

namespace A398055

/-- `ceil(n*(11*n+5)/10)` -/
def P3462087431053905744.Spec : Prop :=
  ∀ n, P3462087431053905744.a n = A398055 n

end A398055

/-! ## A398055.P7623303793320725560

`ogf((2x+2x^2+2x^3+2x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398055.P7623303793320725560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, 2, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398055.P7623303793320725560

namespace A398055

/-- `ogf((2x+2x^2+2x^3+2x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P7623303793320725560.Spec : Prop :=
  ∀ n, P7623303793320725560.a n = A398055 n

end A398055

/-! ## A398055.P7592882292166257935

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=30, a(6)=43`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398055

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P7592882292166257935.Spec : Prop :=
  ∀ n, P7592882292166257935.a n = A398055 n

theorem P7592882292166257935.correct : P7592882292166257935.Spec := by
  intro n
  simp only [A398055]

end A398055

/-! ## A398055.P16444585934150439967

`∑[comp[lcm(6, n+3)]+n]`
-/

namespace A398055.P16444585934150439967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P16444585934150439967

namespace A398055

/-- `∑[comp[lcm(6, n+3)]+n]` -/
def P16444585934150439967.Spec : Prop :=
  ∀ n, (P16444585934150439967.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P14678780183640289214

`∑[comp[∑[∑[-T(n-2,k)]]]+n]` with `a(0)=6`
-/

namespace A398055.P14678780183640289214
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f4 =>
  -SequenceMachineLib.triUp2 f4 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P14678780183640289214

namespace A398055

/-- `∑[comp[∑[∑[-T(n-2,k)]]]+n]` -/
def P14678780183640289214.Spec : Prop :=
  ∀ n, (P14678780183640289214.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P14990709104801639780

`∑[A364668(n)]-n`
-/

namespace A398055.P14990709104801639780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398055.P14990709104801639780

namespace A398055

/-- `∑[A364668(n)]-n` -/
def P14990709104801639780.Spec : Prop :=
  ∀ n, P14990709104801639780.a n = A398055 n

end A398055

/-! ## A398055.P10498500783501651353

`∑[comp[A052380(n+1)]+n]`
-/

namespace A398055.P10498500783501651353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052380 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P10498500783501651353

namespace A398055

/-- `∑[comp[A052380(n+1)]+n]` -/
def P10498500783501651353.Spec : Prop :=
  ∀ n, (P10498500783501651353.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P13101307955338528482

`∑[comp[A004277(3*(n+1))]+n]`
-/

namespace A398055.P13101307955338528482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P13101307955338528482

namespace A398055

/-- `∑[comp[A004277(3*(n+1))]+n]` -/
def P13101307955338528482.Spec : Prop :=
  ∀ n, (P13101307955338528482.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P11890329551555373772

`∑[comp[A005843(3*(n+1))]+n]`
-/

namespace A398055.P11890329551555373772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P11890329551555373772

namespace A398055

/-- `∑[comp[A005843(3*(n+1))]+n]` -/
def P11890329551555373772.Spec : Prop :=
  ∀ n, (P11890329551555373772.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P3412299558635544974

`∑[comp[A047238(2*n+3)]+n]`
-/

namespace A398055.P3412299558635544974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (2 * n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398055.P3412299558635544974

namespace A398055

/-- `∑[comp[A047238(2*n+3)]+n]` -/
def P3412299558635544974.Spec : Prop :=
  ∀ n, (P3412299558635544974.a n : ℤ) = A398055 n

end A398055

/-! ## A398055.P2145495535692990231

`A398053(n)+A008738(n)`
-/

namespace A398055.P2145495535692990231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398053 n + A008738 n

end

end A398055.P2145495535692990231

namespace A398055

/-- `A398053(n)+A008738(n)` -/
def P2145495535692990231.Spec : Prop :=
  ∀ n, P2145495535692990231.a n = A398055 n

end A398055

/-! ## A398055.P8785152174170435158

`A398054(n)+A011558(n)`
-/

namespace A398055.P8785152174170435158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n + A011558 n

end

end A398055.P8785152174170435158

namespace A398055

/-- `A398054(n)+A011558(n)` -/
def P8785152174170435158.Spec : Prop :=
  ∀ n, P8785152174170435158.a n = A398055 n

end A398055

/-! ## A398055.P13497271022409427440

`A005449(n)-A033437(n)`
-/

namespace A398055.P13497271022409427440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A033437 n

end

end A398055.P13497271022409427440

namespace A398055

/-- `A005449(n)-A033437(n)` -/
def P13497271022409427440.Spec : Prop :=
  ∀ n, P13497271022409427440.a n = A398055 n

end A398055

/-! ## A398055.P9516031246437988619

`A265078(n)-A008732(n)`
-/

namespace A398055.P9516031246437988619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265078 n - A008732 n

end

end A398055.P9516031246437988619

namespace A398055

/-- `A265078(n)-A008732(n)` -/
def P9516031246437988619.Spec : Prop :=
  ∀ n, P9516031246437988619.a n = A398055 n

end A398055

/-! ## A398055.P1693059068461472772

`A398057(n)-A008738(n)`
-/

namespace A398055.P1693059068461472772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398057 n - A008738 n

end

end A398055.P1693059068461472772

namespace A398055

/-- `A398057(n)-A008738(n)` -/
def P1693059068461472772.Spec : Prop :=
  ∀ n, P1693059068461472772.a n = A398055 n

end A398055

/-! ## A398055.P10882414265022816353

`A398199(n)-A011858(n)`
-/

namespace A398055.P10882414265022816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398199 n - A011858 n

end

end A398055.P10882414265022816353

namespace A398055

/-- `A398199(n)-A011858(n)` -/
def P10882414265022816353.Spec : Prop :=
  ∀ n, P10882414265022816353.a n = A398055 n

end A398055

/-! ## A398055.P1665970742195879633

`A014105(n)-A398052(n)`
-/

namespace A398055.P1665970742195879633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398052 n

end

end A398055.P1665970742195879633

namespace A398055

/-- `A014105(n)-A398052(n)` -/
def P1665970742195879633.Spec : Prop :=
  ∀ n, P1665970742195879633.a n = A398055 n

end A398055

/-! ## A398055.P913521754035029220

`A398197(n)-A130520(n)`
-/

namespace A398055.P913521754035029220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398197 n - A130520 n

end

end A398055.P913521754035029220

namespace A398055

/-- `A398197(n)-A130520(n)` -/
def P913521754035029220.Spec : Prop :=
  ∀ n, P913521754035029220.a n = A398055 n

end A398055

/-! ## A398055.P4240201703419304044

`A008137(n)-A089071(n+1)`
-/

namespace A398055.P4240201703419304044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n - A089071 (n + 1)

end

end A398055.P4240201703419304044

namespace A398055

/-- `A008137(n)-A089071(n+1)` -/
def P4240201703419304044.Spec : Prop :=
  ∀ n, P4240201703419304044.a n = A398055 n

end A398055

/-! ## A398055.P1788720505537117720

`A000217(2*n)-A398052(n)`
-/

namespace A398055.P1788720505537117720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398052 n

end

end A398055.P1788720505537117720

namespace A398055

/-- `A000217(2*n)-A398052(n)` -/
def P1788720505537117720.Spec : Prop :=
  ∀ n, P1788720505537117720.a n = A398055 n

end A398055

/-!
# A398056: Lower (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398056, the canonical program `A398056.P10782441881184105247` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398056 has offset 0).

The definition of A398056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398056.P10712401861896658111

`floor(n*(13*n+5)/10)`
-/

namespace A398056.P10712401861896658111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (13 * n + 5) : ℚ) / 10⌋

end

end A398056.P10712401861896658111

namespace A398056

/-- `floor(n*(13*n+5)/10)` -/
def P10712401861896658111.Spec : Prop :=
  ∀ n, P10712401861896658111.a n = A398056 n

end A398056

/-! ## A398056.P2665265978279198496

`ogf((x+4x^2+2x^3+2x^4+4x^5)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398056.P2665265978279198496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 2, 2, 4] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398056.P2665265978279198496

namespace A398056

/-- `ogf((x+4x^2+2x^3+2x^4+4x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P2665265978279198496.Spec : Prop :=
  ∀ n, P2665265978279198496.a n = A398056 n

end A398056

/-! ## A398056.P10782441881184105247

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=22, a(5)=35, a(6)=49`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398056

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P10782441881184105247.Spec : Prop :=
  ∀ n, P10782441881184105247.a n = A398056 n

theorem P10782441881184105247.correct : P10782441881184105247.Spec := by
  intro n
  simp only [A398056]

end A398056

/-! ## A398056.P6952984111882012178

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2, a(4)=2, a(5)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A398056.P6952984111882012178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 2, 2, 4] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398056.P6952984111882012178

namespace A398056

/-- `∑[∑[floor(a(n-5))]]` -/
def P6952984111882012178.Spec : Prop :=
  ∀ n, (P6952984111882012178.a n : ℤ) = A398056 n

end A398056

/-! ## A398056.P1196797650174359001

`A279169(n)+∑[n]`
-/

namespace A398056.P1196797650174359001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279169 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398056.P1196797650174359001

namespace A398056

/-- `A279169(n)+∑[n]` -/
def P1196797650174359001.Spec : Prop :=
  ∀ n, P1196797650174359001.a n = A398056 n

end A398056

/-! ## A398056.P3856331003694605884

`A398054(n)+A008738(n)`
-/

namespace A398056.P3856331003694605884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n + A008738 n

end

end A398056.P3856331003694605884

namespace A398056

/-- `A398054(n)+A008738(n)` -/
def P3856331003694605884.Spec : Prop :=
  ∀ n, P3856331003694605884.a n = A398056 n

end A398056

/-! ## A398056.P15547445780977200961

`A005449(n)-A036404(n)`
-/

namespace A398056.P15547445780977200961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A036404 n

end

end A398056.P15547445780977200961

namespace A398056

/-- `A005449(n)-A036404(n)` -/
def P15547445780977200961.Spec : Prop :=
  ∀ n, P15547445780977200961.a n = A398056 n

end A398056

/-! ## A398056.P12395583184506654197

`A398057(n)-A011558(n)`
-/

namespace A398056.P12395583184506654197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398057 n - A011558 n

end

end A398056.P12395583184506654197

namespace A398056

/-- `A398057(n)-A011558(n)` -/
def P12395583184506654197.Spec : Prop :=
  ∀ n, P12395583184506654197.a n = A398056 n

end A398056

/-! ## A398056.P10733440428613838524

`A014105(n)-A398051(n)`
-/

namespace A398056.P10733440428613838524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398051 n

end

end A398056.P10733440428613838524

namespace A398056

/-- `A014105(n)-A398051(n)` -/
def P10733440428613838524.Spec : Prop :=
  ∀ n, P10733440428613838524.a n = A398056 n

end A398056

/-! ## A398056.P11746902201313744904

`A186496(n+1)+A165900(n)`
-/

namespace A398056.P11746902201313744904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186496 (n + 1) + A165900 n

end

end A398056.P11746902201313744904

namespace A398056

/-- `A186496(n+1)+A165900(n)` -/
def P11746902201313744904.Spec : Prop :=
  ∀ n, P11746902201313744904.a n = A398056 n

end A398056

/-! ## A398056.P5391297913069050823

`A000217(2*n)-A398051(n)`
-/

namespace A398056.P5391297913069050823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398051 n

end

end A398056.P5391297913069050823

namespace A398056

/-- `A000217(2*n)-A398051(n)` -/
def P5391297913069050823.Spec : Prop :=
  ∀ n, P5391297913069050823.a n = A398056 n

end A398056

/-! ## A398056.P2351283539876494306

`A398052(n)+A398054(n)-A398050(n)`
-/

namespace A398056.P2351283539876494306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n + (A398054 n - A398050 n)

end

end A398056.P2351283539876494306

namespace A398056

/-- `A398052(n)+A398054(n)-A398050(n)` -/
def P2351283539876494306.Spec : Prop :=
  ∀ n, P2351283539876494306.a n = A398056 n

end A398056

/-! ## A398056.P9190804308222329835

`A118015(2*n)+A000217(n)`
-/

namespace A398056.P9190804308222329835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (2 * n) + A000217 n

end

end A398056.P9190804308222329835

namespace A398056

/-- `A118015(2*n)+A000217(n)` -/
def P9190804308222329835.Spec : Prop :=
  ∀ n, P9190804308222329835.a n = A398056 n

end A398056

/-! ## A398056.P403765011981626024

`A090223(n²)+∑[n]`
-/

namespace A398056.P403765011981626024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398056.P403765011981626024

namespace A398056

/-- `A090223(n²)+∑[n]` -/
def P403765011981626024.Spec : Prop :=
  ∀ n, P403765011981626024.a n = A398056 n

end A398056

/-!
# A398057: Upper (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398057, the canonical program `A398057.P7266038583036540664` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398057 has offset 0).

The definition of A398057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398057.P4217987663089034995

`ogf((2x+3x^2+2x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398057.P4217987663089034995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 2, 3, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398057.P4217987663089034995

namespace A398057

/-- `ogf((2x+3x^2+2x^3+2x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P4217987663089034995.Spec : Prop :=
  ∀ n, P4217987663089034995.a n = A398057 n

end A398057

/-! ## A398057.P7266038583036540664

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=23, a(5)=35, a(6)=50`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398057

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P7266038583036540664.Spec : Prop :=
  ∀ n, P7266038583036540664.a n = A398057 n

theorem P7266038583036540664.correct : P7266038583036540664.Spec := by
  intro n
  simp only [A398057]

end A398057

/-! ## A398057.P258823860928355609

`ceil(∑[n]+(2*n)²/5)`
-/

namespace A398057.P258823860928355609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((2 * n) ^ 2 : ℚ) / 5⌉

end

end A398057.P258823860928355609

namespace A398057

/-- `ceil(∑[n]+(2*n)²/5)` -/
def P258823860928355609.Spec : Prop :=
  ∀ n, P258823860928355609.a n = A398057 n

end A398057

/-! ## A398057.P10225586428241475513

`A398056(n)+(n^4)%5`
-/

namespace A398057.P10225586428241475513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398056 n + ((n ^ 4 % 5 : ℕ) : ℤ)

end

end A398057.P10225586428241475513

namespace A398057

/-- `A398056(n)+(n^4)%5` -/
def P10225586428241475513.Spec : Prop :=
  ∀ n, P10225586428241475513.a n = A398057 n

end A398057

/-! ## A398057.P42673031291669228

`A008738(n)+n²+∑[ceil(n/5)]`
-/

namespace A398057.P42673031291669228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n + ((n ^ 2 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398057.P42673031291669228

namespace A398057

/-- `A008738(n)+n²+∑[ceil(n/5)]` -/
def P42673031291669228.Spec : Prop :=
  ∀ n, P42673031291669228.a n = A398057 n

end A398057

/-! ## A398057.P3479996028053452556

`A398055(n)+A008738(n)`
-/

namespace A398057.P3479996028053452556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398055 n + A008738 n

end

end A398057.P3479996028053452556

namespace A398057

/-- `A398055(n)+A008738(n)` -/
def P3479996028053452556.Spec : Prop :=
  ∀ n, P3479996028053452556.a n = A398057 n

end A398057

/-! ## A398057.P16578492279259220914

`A398056(n)+A011558(n)`
-/

namespace A398057.P16578492279259220914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398056 n + A011558 n

end

end A398057.P16578492279259220914

namespace A398057

/-- `A398056(n)+A011558(n)` -/
def P16578492279259220914.Spec : Prop :=
  ∀ n, P16578492279259220914.a n = A398057 n

end A398057

/-! ## A398057.P9730544367996936259

`A005449(n)-A118015(n)`
-/

namespace A398057.P9730544367996936259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A118015 n

end

end A398057.P9730544367996936259

namespace A398057

/-- `A005449(n)-A118015(n)` -/
def P9730544367996936259.Spec : Prop :=
  ∀ n, P9730544367996936259.a n = A398057 n

end A398057

/-! ## A398057.P3326734762549252921

`A014105(n)-A398050(n)`
-/

namespace A398057.P3326734762549252921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A398050 n

end

end A398057.P3326734762549252921

namespace A398057

/-- `A014105(n)-A398050(n)` -/
def P3326734762549252921.Spec : Prop :=
  ∀ n, P3326734762549252921.a n = A398057 n

end A398057

/-! ## A398057.P9998972109117710148

`A000217(2*n)-A398050(n)`
-/

namespace A398057.P9998972109117710148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A398050 n

end

end A398057.P9998972109117710148

namespace A398057

/-- `A000217(2*n)-A398050(n)` -/
def P9998972109117710148.Spec : Prop :=
  ∀ n, P9998972109117710148.a n = A398057 n

end A398057

/-! ## A398057.P14037083487521333079

`A398053(n)+A398054(n)-A398050(n)`
-/

namespace A398057.P14037083487521333079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398053 n + (A398054 n - A398050 n)

end

end A398057.P14037083487521333079

namespace A398057

/-- `A398053(n)+A398054(n)-A398050(n)` -/
def P14037083487521333079.Spec : Prop :=
  ∀ n, P14037083487521333079.a n = A398057 n

end A398057

/-! ## A398057.P13317573368450544266

`A398054(n)+A398055(n)-A398052(n)`
-/

namespace A398057.P13317573368450544266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n + (A398055 n - A398052 n)

end

end A398057.P13317573368450544266

namespace A398057

/-- `A398054(n)+A398055(n)-A398052(n)` -/
def P13317573368450544266.Spec : Prop :=
  ∀ n, P13317573368450544266.a n = A398057 n

end A398057

/-! ## A398057.P3093022281360060904

`A036404(2*n)+∑[n]`
-/

namespace A398057.P3093022281360060904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398057.P3093022281360060904

namespace A398057

/-- `A036404(2*n)+∑[n]` -/
def P3093022281360060904.Spec : Prop :=
  ∀ n, P3093022281360060904.a n = A398057 n

end A398057

/-!
# A398058: Lower (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398058, the canonical program `A398058.P73160130068751543` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398058 has offset 0).

The definition of A398058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398058.P17141253076530089396

`floor(n*(11*n+3)/6)`
-/

namespace A398058.P17141253076530089396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (11 * n + 3) : ℚ) / 6⌋

end

end A398058.P17141253076530089396

namespace A398058

/-- `floor(n*(11*n+3)/6)` -/
def P17141253076530089396.Spec : Prop :=
  ∀ n, P17141253076530089396.a n = A398058 n

end A398058

/-! ## A398058.P10073650447259016895

`ogf((2x+4x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398058.P10073650447259016895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, 4, 1] [1, -2, 1, -1, 2, -1] n

end

end A398058.P10073650447259016895

namespace A398058

/-- `ogf((2x+4x^2+4x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P10073650447259016895.Spec : Prop :=
  ∀ n, P10073650447259016895.a n = A398058 n

end A398058

/-! ## A398058.P73160130068751543

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=18, a(4)=31`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398058

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P73160130068751543.Spec : Prop :=
  ∀ n, P73160130068751543.a n = A398058 n

theorem P73160130068751543.correct : P73160130068751543.Spec := by
  intro n
  simp only [A398058]

end A398058

/-! ## A398058.P8848882928877061749

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A398058.P8848882928877061749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 4, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398058.P8848882928877061749

namespace A398058

/-- `∑[∑[floor(a(n-3))]]` -/
def P8848882928877061749.Spec : Prop :=
  ∀ n, (P8848882928877061749.a n : ℤ) = A398058 n

end A398058

/-! ## A398058.P14439351998961840932

`A389614(n)-1`
-/

namespace A398058.P14439351998961840932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389614 n - 1

end

end A398058.P14439351998961840932

namespace A398058

/-- `A389614(n)-1` -/
def P14439351998961840932.Spec : Prop :=
  ∀ n, P14439351998961840932.a n = A398058 n

end A398058

/-! ## A398058.P6385489438567872822

`A397972(n)+n²`
-/

namespace A398058.P6385489438567872822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + (n ^ 2 : ℤ)

end

end A398058.P6385489438567872822

namespace A398058

/-- `A397972(n)+n²` -/
def P6385489438567872822.Spec : Prop :=
  ∀ n, P6385489438567872822.a n = A398058 n

end A398058

/-! ## A398058.P7573700813974336051

`A256320(n)+∑[n]`
-/

namespace A398058.P7573700813974336051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398058.P7573700813974336051

namespace A398058

/-- `A256320(n)+∑[n]` -/
def P7573700813974336051.Spec : Prop :=
  ∀ n, P7573700813974336051.a n = A398058 n

end A398058

/-! ## A398058.P14693533863556525497

`∑[A343028(n)]-n`
-/

namespace A398058.P14693533863556525497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A398058.P14693533863556525497

namespace A398058

/-- `∑[A343028(n)]-n` -/
def P14693533863556525497.Spec : Prop :=
  ∀ n, P14693533863556525497.a n = A398058 n

end A398058

/-! ## A398058.P16386080970248478892

`∑[A047220(n+1)]+n²`
-/

namespace A398058.P16386080970248478892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A398058.P16386080970248478892

namespace A398058

/-- `∑[A047220(n+1)]+n²` -/
def P16386080970248478892.Spec : Prop :=
  ∀ n, P16386080970248478892.a n = A398058 n

end A398058

/-! ## A398058.P11484138274524835112

`A005449(n)+A000212(n)`
-/

namespace A398058.P11484138274524835112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A000212 n

end

end A398058.P11484138274524835112

namespace A398058

/-- `A005449(n)+A000212(n)` -/
def P11484138274524835112.Spec : Prop :=
  ∀ n, P11484138274524835112.a n = A398058 n

end A398058

/-! ## A398058.P17331495478169472871

`A222170(n)+A001840(n)`
-/

namespace A398058.P17331495478169472871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n + A001840 n

end

end A398058.P17331495478169472871

namespace A398058

/-- `A222170(n)+A001840(n)` -/
def P17331495478169472871.Spec : Prop :=
  ∀ n, P17331495478169472871.a n = A398058 n

end A398058

/-! ## A398058.P13594622676918178728

`A398856(n)+A004396(n)`
-/

namespace A398058.P13594622676918178728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398856 n + A004396 n

end

end A398058.P13594622676918178728

namespace A398058

/-- `A398856(n)+A004396(n)` -/
def P13594622676918178728.Spec : Prop :=
  ∀ n, P13594622676918178728.a n = A398058 n

end A398058

/-! ## A398058.P13846535296519852589

`A398857(n)+A004523(n)`
-/

namespace A398058.P13846535296519852589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398857 n + A004523 n

end

end A398058.P13846535296519852589

namespace A398058

/-- `A398857(n)+A004523(n)` -/
def P13846535296519852589.Spec : Prop :=
  ∀ n, P13846535296519852589.a n = A398058 n

end A398058

/-! ## A398058.P9035010648990266449

`A397974(n)+A071619(n)`
-/

namespace A398058.P9035010648990266449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397974 n + A071619 n

end

end A398058.P9035010648990266449

namespace A398058

/-- `A397974(n)+A071619(n)` -/
def P9035010648990266449.Spec : Prop :=
  ∀ n, P9035010648990266449.a n = A398058 n

end A398058

/-! ## A398058.P9576939585046644476

`A398202(n)+A130518(n)`
-/

namespace A398058.P9576939585046644476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398202 n + A130518 n

end

end A398058.P9576939585046644476

namespace A398058

/-- `A398202(n)+A130518(n)` -/
def P9576939585046644476.Spec : Prop :=
  ∀ n, P9576939585046644476.a n = A398058 n

end A398058

/-! ## A398058.P12644133323466198813

`A397983(n)+A389142(n)`
-/

namespace A398058.P12644133323466198813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n + A389142 n

end

end A398058.P12644133323466198813

namespace A398058

/-- `A397983(n)+A389142(n)` -/
def P12644133323466198813.Spec : Prop :=
  ∀ n, P12644133323466198813.a n = A398058 n

end A398058

/-! ## A398058.P8677690132115772307

`A397986(n)+A397979(n)`
-/

namespace A398058.P8677690132115772307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397986 n + A397979 n

end

end A398058.P8677690132115772307

namespace A398058

/-- `A397986(n)+A397979(n)` -/
def P8677690132115772307.Spec : Prop :=
  ∀ n, P8677690132115772307.a n = A398058 n

end A398058

/-! ## A398058.P14539167641198036906

`A014105(n)-A001840(n)`
-/

namespace A398058.P14539167641198036906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A001840 n

end

end A398058.P14539167641198036906

namespace A398058

/-- `A014105(n)-A001840(n)` -/
def P14539167641198036906.Spec : Prop :=
  ∀ n, P14539167641198036906.a n = A398058 n

end A398058

/-! ## A398058.P17852849586433398367

`A005475(n)-A071619(n)`
-/

namespace A398058.P17852849586433398367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A071619 n

end

end A398058.P17852849586433398367

namespace A398058

/-- `A005475(n)-A071619(n)` -/
def P17852849586433398367.Spec : Prop :=
  ∀ n, P17852849586433398367.a n = A398058 n

end A398058

/-! ## A398058.P13723858653085219205

`A022265(n)-A113422(n)`
-/

namespace A398058.P13723858653085219205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A113422 n

end

end A398058.P13723858653085219205

namespace A398058

/-- `A022265(n)-A113422(n)` -/
def P13723858653085219205.Spec : Prop :=
  ∀ n, P13723858653085219205.a n = A398058 n

end A398058

/-!
# A398059: Upper (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398059, the canonical program `A398059.P16397645256083524581` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398059 has offset 0).

The definition of A398059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398059.P7624439923740494571

`ogf((3x+3x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398059.P7624439923740494571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A398059.P7624439923740494571

namespace A398059

/-- `ogf((3x+3x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P7624439923740494571.Spec : Prop :=
  ∀ n, P7624439923740494571.a n = A398059 n

end A398059

/-! ## A398059.P16397645256083524581

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=18, a(4)=32`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398059

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P16397645256083524581.Spec : Prop :=
  ∀ n, P16397645256083524581.a n = A398059 n

theorem P16397645256083524581.correct : P16397645256083524581.Spec := by
  intro n
  simp only [A398059]

end A398059

/-! ## A398059.P12169843644651122528

`ceil(∑[n]+(2*n)²/3)`
-/

namespace A398059.P12169843644651122528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((2 * n) ^ 2 : ℚ) / 3⌉

end

end A398059.P12169843644651122528

namespace A398059

/-- `ceil(∑[n]+(2*n)²/3)` -/
def P12169843644651122528.Spec : Prop :=
  ∀ n, P12169843644651122528.a n = A398059 n

end A398059

/-! ## A398059.P16559449169941236908

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=3, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A398059.P16559449169941236908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3, 3, 5] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398059.P16559449169941236908

namespace A398059

/-- `∑[∑[floor(a(n-3))]]` -/
def P16559449169941236908.Spec : Prop :=
  ∀ n, (P16559449169941236908.a n : ℤ) = A398059 n

end A398059

/-! ## A398059.P5687006627748457945

`∑[n]+floor(or(2, (2*n)²)/3)`
-/

namespace A398059.P5687006627748457945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 3⌋

end

end A398059.P5687006627748457945

namespace A398059

/-- `∑[n]+floor(or(2, (2*n)²)/3)` -/
def P5687006627748457945.Spec : Prop :=
  ∀ n, P5687006627748457945.a n = A398059 n

end A398059

/-! ## A398059.P9829211504626243336

`∑[n]+round(or(1, (2*n)²)/3)`
-/

namespace A398059.P9829211504626243336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.lor 1 ((2 * n) ^ 2) : ℚ) / 3)

end

end A398059.P9829211504626243336

namespace A398059

/-- `∑[n]+round(or(1, (2*n)²)/3)` -/
def P9829211504626243336.Spec : Prop :=
  ∀ n, P9829211504626243336.a n = A398059 n

end A398059

/-! ## A398059.P8715048765412561253

`∑[n]+round(xor(1, (2*n)²)/3)`
-/

namespace A398059.P8715048765412561253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n) ^ 2) : ℚ) / 3)

end

end A398059.P8715048765412561253

namespace A398059

/-- `∑[n]+round(xor(1, (2*n)²)/3)` -/
def P8715048765412561253.Spec : Prop :=
  ∀ n, P8715048765412561253.a n = A398059 n

end A398059

/-! ## A398059.P6927653629083295991

`∑[11+a(n-3)]-1` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9`
-/

namespace A398059.P6927653629083295991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 9] fun n f1 =>
  11 + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A398059.P6927653629083295991

namespace A398059

/-- `∑[11+a(n-3)]-1` -/
def P6927653629083295991.Spec : Prop :=
  ∀ n, P6927653629083295991.a n = A398059 n

end A398059

/-! ## A398059.P10537093823930715916

`ceil((4*n)²/12)+C(n+1, 2)`
-/

namespace A398059.P10537093823930715916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 * n) ^ 2 : ℚ) / 12⌉ + (Nat.choose (n + 1) 2 : ℤ)

end

end A398059.P10537093823930715916

namespace A398059

/-- `ceil((4*n)²/12)+C(n+1, 2)` -/
def P10537093823930715916.Spec : Prop :=
  ∀ n, P10537093823930715916.a n = A398059 n

end A398059

/-! ## A398059.P17492445062364779446

`floor(C(n+2, 2)/3)+floor((5*n²+1)/3)`
-/

namespace A398059.P17492445062364779446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 3⌋ + ⌊(5 * n ^ 2 + 1 : ℚ) / 3⌋

end

end A398059.P17492445062364779446

namespace A398059

/-- `floor(C(n+2, 2)/3)+floor((5*n²+1)/3)` -/
def P17492445062364779446.Spec : Prop :=
  ∀ n, P17492445062364779446.a n = A398059 n

end A398059

/-! ## A398059.P7566351085961166298

`A397973(n)+n²`
-/

namespace A398059.P7566351085961166298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397973 n + (n ^ 2 : ℤ)

end

end A398059.P7566351085961166298

namespace A398059

/-- `A397973(n)+n²` -/
def P7566351085961166298.Spec : Prop :=
  ∀ n, P7566351085961166298.a n = A398059 n

end A398059

/-! ## A398059.P17775587843804639051

`A147623(n)+∑[n]`
-/

namespace A398059.P17775587843804639051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398059.P17775587843804639051

namespace A398059

/-- `A147623(n)+∑[n]` -/
def P17775587843804639051.Spec : Prop :=
  ∀ n, P17775587843804639051.a n = A398059 n

end A398059

/-! ## A398059.P16487104248928912217

`A008810(n)+A005449(n)`
-/

namespace A398059.P16487104248928912217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n + A005449 n

end

end A398059.P16487104248928912217

namespace A398059

/-- `A008810(n)+A005449(n)` -/
def P16487104248928912217.Spec : Prop :=
  ∀ n, P16487104248928912217.a n = A398059 n

end A398059

/-! ## A398059.P6283958704735440507

`A113422(n)+A001840(n)`
-/

namespace A398059.P6283958704735440507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + A001840 n

end

end A398059.P6283958704735440507

namespace A398059

/-- `A113422(n)+A001840(n)` -/
def P6283958704735440507.Spec : Prop :=
  ∀ n, P6283958704735440507.a n = A398059 n

end A398059

/-! ## A398059.P14332313864589352932

`A398058(n)+A011655(n)`
-/

namespace A398059.P14332313864589352932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398058 n + A011655 n

end

end A398059.P14332313864589352932

namespace A398059

/-- `A398058(n)+A011655(n)` -/
def P14332313864589352932.Spec : Prop :=
  ∀ n, P14332313864589352932.a n = A398059 n

end A398059

/-! ## A398059.P17139498933683386381

`A397975(n)+A071619(n)`
-/

namespace A398059.P17139498933683386381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397975 n + A071619 n

end

end A398059.P17139498933683386381

namespace A398059

/-- `A397975(n)+A071619(n)` -/
def P17139498933683386381.Spec : Prop :=
  ∀ n, P17139498933683386381.a n = A398059 n

end A398059

/-! ## A398059.P110722828127800828

`A398856(n)+A302402(n)`
-/

namespace A398059.P110722828127800828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398856 n + A302402 n

end

end A398059.P110722828127800828

namespace A398059

/-- `A398856(n)+A302402(n)` -/
def P110722828127800828.Spec : Prop :=
  ∀ n, P110722828127800828.a n = A398059 n

end A398059

/-! ## A398059.P13025342865665879108

`A397983(n)+A389143(n)`
-/

namespace A398059.P13025342865665879108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n + A389143 n

end

end A398059.P13025342865665879108

namespace A398059

/-- `A397983(n)+A389143(n)` -/
def P13025342865665879108.Spec : Prop :=
  ∀ n, P13025342865665879108.a n = A398059 n

end A398059

/-! ## A398059.P8795979294943211657

`A058331(n)-A058212(n)`
-/

namespace A398059.P8795979294943211657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n - A058212 n

end

end A398059.P8795979294943211657

namespace A398059

/-- `A058331(n)-A058212(n)` -/
def P8795979294943211657.Spec : Prop :=
  ∀ n, P8795979294943211657.a n = A398059 n

end A398059

/-! ## A398059.P2593509222932972811

`A022265(n)-A222170(n)`
-/

namespace A398059.P2593509222932972811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - A222170 n

end

end A398059.P2593509222932972811

namespace A398059

/-- `A022265(n)-A222170(n)` -/
def P2593509222932972811.Spec : Prop :=
  ∀ n, P2593509222932972811.a n = A398059 n

end A398059

/-!
# A398060: Lower (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398060, the canonical program `A398060.P18309468618007377721` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398060 has offset 0).

The definition of A398060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398060.P4248185970901356871

`floor(n*(11*n+1)/10)`
-/

namespace A398060.P4248185970901356871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (11 * n + 1) : ℚ) / 10⌋

end

end A398060.P4248185970901356871

namespace A398060

/-- `floor(n*(11*n+1)/10)` -/
def P4248185970901356871.Spec : Prop :=
  ∀ n, P4248185970901356871.a n = A398060 n

end A398060

/-! ## A398060.P17330684947306047294

`ogf((x+2x^2+3x^3+2x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398060.P17330684947306047294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 2, 2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398060.P17330684947306047294

namespace A398060

/-- `ogf((x+2x^2+3x^3+2x^4+2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P17330684947306047294.Spec : Prop :=
  ∀ n, P17330684947306047294.a n = A398060 n

end A398060

/-! ## A398060.P18309468618007377721

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=18, a(5)=28, a(6)=40`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398060

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P18309468618007377721.Spec : Prop :=
  ∀ n, P18309468618007377721.a n = A398060 n

theorem P18309468618007377721.correct : P18309468618007377721.Spec := by
  intro n
  simp only [A398060]

end A398060

/-! ## A398060.P10683992826960344149

`floor(C(n+1, 2)/5)+n²`
-/

namespace A398060.P10683992826960344149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / 5⌋ + (n ^ 2 : ℤ)

end

end A398060.P10683992826960344149

namespace A398060

/-- `floor(C(n+1, 2)/5)+n²` -/
def P10683992826960344149.Spec : Prop :=
  ∀ n, P10683992826960344149.a n = A398060 n

end A398060

/-! ## A398060.P11873989516608192607

`floor(A000124(n)/5)+n²`
-/

namespace A398060.P11873989516608192607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 n : ℚ) / 5⌋ + (n ^ 2 : ℤ)

end

end A398060.P11873989516608192607

namespace A398060

/-- `floor(A000124(n)/5)+n²` -/
def P11873989516608192607.Spec : Prop :=
  ∀ n, P11873989516608192607.a n = A398060 n

end A398060

/-! ## A398060.P16002777399042514309

`n²+floor(A000217(n)/5)`
-/

namespace A398060.P16002777399042514309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ⌊(A000217 n : ℚ) / 5⌋

end

end A398060.P16002777399042514309

namespace A398060

/-- `n²+floor(A000217(n)/5)` -/
def P16002777399042514309.Spec : Prop :=
  ∀ n, P16002777399042514309.a n = A398060 n

end A398060

/-! ## A398060.P9722442652320421343

`A005475(n)-A398201(n)`
-/

namespace A398060.P9722442652320421343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398201 n

end

end A398060.P9722442652320421343

namespace A398060

/-- `A005475(n)-A398201(n)` -/
def P9722442652320421343.Spec : Prop :=
  ∀ n, P9722442652320421343.a n = A398060 n

end A398060

/-! ## A398060.P14449897482130838156

`A398054(n)-A288156(n)`
-/

namespace A398060.P14449897482130838156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n - A288156 n

end

end A398060.P14449897482130838156

namespace A398060

/-- `A398054(n)-A288156(n)` -/
def P14449897482130838156.Spec : Prop :=
  ∀ n, P14449897482130838156.a n = A398060 n

end A398060

/-! ## A398060.P7755117371247810430

`A130520(n+2)+n²`
-/

namespace A398060.P7755117371247810430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 2) + (n ^ 2 : ℤ)

end

end A398060.P7755117371247810430

namespace A398060

/-- `A130520(n+2)+n²` -/
def P7755117371247810430.Spec : Prop :=
  ∀ n, P7755117371247810430.a n = A398060 n

end A398060

/-! ## A398060.P7123271689642527940

`∑[A002266(n+2)]+n²`
-/

namespace A398060.P7123271689642527940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A398060.P7123271689642527940

namespace A398060

/-- `∑[A002266(n+2)]+n²` -/
def P7123271689642527940.Spec : Prop :=
  ∀ n, P7123271689642527940.a n = A398060 n

end A398060

/-! ## A398060.P4983238976823056139

`A227353(n+1)+A011858(2*n)`
-/

namespace A398060.P4983238976823056139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1) + A011858 (2 * n)

end

end A398060.P4983238976823056139

namespace A398060

/-- `A227353(n+1)+A011858(2*n)` -/
def P4983238976823056139.Spec : Prop :=
  ∀ n, P4983238976823056139.a n = A398060 n

end A398060

/-! ## A398060.P7986679667035900651

`∑[A311807(n)]-(n+1)²`
-/

namespace A398060.P7986679667035900651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A398060.P7986679667035900651

namespace A398060

/-- `∑[A311807(n)]-(n+1)²` -/
def P7986679667035900651.Spec : Prop :=
  ∀ n, P7986679667035900651.a n = A398060 n

end A398060

/-! ## A398060.P4499103863007048872

`A002266(∑[n])+n²`
-/

namespace A398060.P4499103863007048872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A398060.P4499103863007048872

namespace A398060

/-- `A002266(∑[n])+n²` -/
def P4499103863007048872.Spec : Prop :=
  ∀ n, P4499103863007048872.a n = A398060 n

end A398060

/-! ## A398060.P14702953300176701814

`A111851((n+1)²)+n²`
-/

namespace A398060.P14702953300176701814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111851 ((n + 1) ^ 2) + (n ^ 2 : ℤ)

end

end A398060.P14702953300176701814

namespace A398060

/-- `A111851((n+1)²)+n²` -/
def P14702953300176701814.Spec : Prop :=
  ∀ n, P14702953300176701814.a n = A398060 n

end A398060

/-! ## A398060.P3504103877593889246

`A111853((n+1)²)+n²`
-/

namespace A398060.P3504103877593889246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 ((n + 1) ^ 2) + (n ^ 2 : ℤ)

end

end A398060.P3504103877593889246

namespace A398060

/-- `A111853((n+1)²)+n²` -/
def P3504103877593889246.Spec : Prop :=
  ∀ n, P3504103877593889246.a n = A398060 n

end A398060

/-!
# A398061: Upper (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A398061, the canonical program `A398061.P3303424021516592682` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398061 has offset 0).

The definition of A398061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398061.P14605004601734525131

`ogf((2x+x^2+3x^3+x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A398061.P14605004601734525131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 3, 1, 3, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A398061.P14605004601734525131

namespace A398061

/-- `ogf((2x+x^2+3x^3+x^4+3x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P14605004601734525131.Spec : Prop :=
  ∀ n, P14605004601734525131.a n = A398061 n

end A398061

/-! ## A398061.P3303424021516592682

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=18, a(5)=28, a(6)=41`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398061

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P3303424021516592682.Spec : Prop :=
  ∀ n, P3303424021516592682.a n = A398061 n

theorem P3303424021516592682.correct : P3303424021516592682.Spec := by
  intro n
  simp only [A398061]

end A398061

/-! ## A398061.P14960406624722463181

`ceil(∑[n/5]+n²)`
-/

namespace A398061.P14960406624722463181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌉

end

end A398061.P14960406624722463181

namespace A398061

/-- `ceil(∑[n/5]+n²)` -/
def P14960406624722463181.Spec : Prop :=
  ∀ n, P14960406624722463181.a n = A398061 n

end A398061

/-! ## A398061.P17474028821977416402

`ceil(A000217(n)/5)+n²`
-/

namespace A398061.P17474028821977416402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n : ℚ) / 5⌉ + (n ^ 2 : ℤ)

end

end A398061.P17474028821977416402

namespace A398061

/-- `ceil(A000217(n)/5)+n²` -/
def P17474028821977416402.Spec : Prop :=
  ∀ n, P17474028821977416402.a n = A398061 n

end A398061

/-! ## A398061.P12466586669061443303

`A000290(n)+ceil(∑[n]/5)`
-/

namespace A398061.P12466586669061443303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌉

end

end A398061.P12466586669061443303

namespace A398061

/-- `A000290(n)+ceil(∑[n]/5)` -/
def P12466586669061443303.Spec : Prop :=
  ∀ n, P12466586669061443303.a n = A398061 n

end A398061

/-! ## A398061.P5849554067892598102

`A005475(n)-A398200(n)`
-/

namespace A398061.P5849554067892598102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A398200 n

end

end A398061.P5849554067892598102

namespace A398061

/-- `A005475(n)-A398200(n)` -/
def P5849554067892598102.Spec : Prop :=
  ∀ n, P5849554067892598102.a n = A398061 n

end A398061

/-! ## A398061.P12619799654061554441

`A364668(∑[n])-n`
-/

namespace A398061.P12619799654061554441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A398061.P12619799654061554441

namespace A398061

/-- `A364668(∑[n])-n` -/
def P12619799654061554441.Spec : Prop :=
  ∀ n, P12619799654061554441.a n = A398061 n

end A398061

/-!
# A398063: Antidiagonal sums of the array A398062.

The programs for A398063, there is no canonical definition to state claims against.
-/

/-! ## A398063.P2195186007520900050

`∑[A070939(A331520(3*n+4))]`
-/

namespace A398063.P2195186007520900050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A331520 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398063.P2195186007520900050

/-! ## A398063.P13428697855403965978

`A398332(n+1)+A398302(A287117(n+1))`
-/

namespace A398063.P13428697855403965978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398332 (n + 1) + A398302 (A287117 (n + 1)).toNat

end

end A398063.P13428697855403965978

/-! ## A398063.P3695277865521099749

`A398332(n+1)+A398302(A331728(n+1))`
-/

namespace A398063.P3695277865521099749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398332 (n + 1) + A398302 (A331728 (n + 1)).toNat

end

end A398063.P3695277865521099749

/-! ## A398063.P11638554678653622777

`A398332(n+1)+A010815(A081831(n+4))`
-/

namespace A398063.P11638554678653622777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398332 (n + 1) + A010815 (A081831 (n + 4)).toNat

end

end A398063.P11638554678653622777

/-! ## A398063.P6690511396970568130

`A398332(n+1)+A079978(A384990(n+4))`
-/

namespace A398063.P6690511396970568130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398332 (n + 1) + A079978 (A384990 (n + 4)).toNat

end

end A398063.P6690511396970568130

/-!
# A398065: Partial sums of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2).

The programs for A398065, the canonical program `A398065.P7452325410805279517` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398065 has offset 1).

The definition of A398065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398065.P7452325410805279517

`a(n-1)+A069268(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398065

/-- `a(n-1)+A069268(n+1)` -/
def P7452325410805279517.Spec : Prop :=
  ∀ n, P7452325410805279517.a n = A398065 (n + 1)

theorem P7452325410805279517.correct : P7452325410805279517.Spec := by
  intro n
  simp only [A398065, Nat.add_sub_cancel]

end A398065

/-! ## A398065.P16658197325329032860

`∑[A069268(1+n)]`
-/

namespace A398065.P16658197325329032860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P16658197325329032860

namespace A398065

/-- `∑[A069268(1+n)]` -/
def P16658197325329032860.Spec : Prop :=
  ∀ n, P16658197325329032860.a n = A398065 (n + 1)

end A398065

/-! ## A398065.P11813494843484903504

`A069268(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A398065.P11813494843484903504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069268 (n + 1) + a (n - 1)

end

end A398065.P11813494843484903504

namespace A398065

/-- `A069268(n+1)+a(n-1)` -/
def P11813494843484903504.Spec : Prop :=
  ∀ n, P11813494843484903504.a n = A398065 (n + 1)

end A398065

/-! ## A398065.P11859165626878437775

`∑[∑[n+1]/A090585(n+1)]`
-/

namespace A398065.P11859165626878437775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A090585 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P11859165626878437775

namespace A398065

/-- `∑[∑[n+1]/A090585(n+1)]` -/
def P11859165626878437775.Spec : Prop :=
  ∀ n, P11859165626878437775.a n = (A398065 (n + 1) : ℚ)

end A398065

/-! ## A398065.P7263569590763987752

`∑[gcd(∑[n+1], A175567(n+1))]`
-/

namespace A398065.P7263569590763987752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A175567 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P7263569590763987752

namespace A398065

/-- `∑[gcd(∑[n+1], A175567(n+1))]` -/
def P7263569590763987752.Spec : Prop :=
  ∀ n, (P7263569590763987752.a n : ℤ) = A398065 (n + 1)

end A398065

/-! ## A398065.P2824653204075910619

`∑[gcd(A253145(n), A392539(n))]`
-/

namespace A398065.P2824653204075910619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253145 n) (A392539 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P2824653204075910619

namespace A398065

/-- `∑[gcd(A253145(n), A392539(n))]` -/
def P2824653204075910619.Spec : Prop :=
  ∀ n, (P2824653204075910619.a n : ℤ) = A398065 (n + 1)

end A398065

/-! ## A398065.P14988040679369020715

`∑[gcd(A000217(n+1), A002209(n))]`
-/

namespace A398065.P14988040679369020715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 1)) (A002209 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P14988040679369020715

namespace A398065

/-- `∑[gcd(A000217(n+1), A002209(n))]` -/
def P14988040679369020715.Spec : Prop :=
  ∀ n, (P14988040679369020715.a n : ℤ) = A398065 (n + 1)

end A398065

/-! ## A398065.P13984241333303883437

`∑[gcd((n+1)!, ∑[n+1])]`
-/

namespace A398065.P13984241333303883437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P13984241333303883437

namespace A398065

/-- `∑[gcd((n+1)!, ∑[n+1])]` -/
def P13984241333303883437.Spec : Prop :=
  ∀ n, (P13984241333303883437.a n : ℤ) = A398065 (n + 1)

end A398065

/-! ## A398065.P1792741836838154739

`∑[gcd(A000142(n+1), A089594(n+1))]`
-/

namespace A398065.P1792741836838154739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1)) (A089594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P1792741836838154739

namespace A398065

/-- `∑[gcd(A000142(n+1), A089594(n+1))]` -/
def P1792741836838154739.Spec : Prop :=
  ∀ n, (P1792741836838154739.a n : ℤ) = A398065 (n + 1)

end A398065

/-! ## A398065.P15777113025717555734

`∑[gcd(∑[n+1], A014479(n))]`
-/

namespace A398065.P15777113025717555734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A014479 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398065.P15777113025717555734

namespace A398065

/-- `∑[gcd(∑[n+1], A014479(n))]` -/
def P15777113025717555734.Spec : Prop :=
  ∀ n, (P15777113025717555734.a n : ℤ) = A398065 (n + 1)

end A398065

/-!
# A398066: Number of n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 2.

The programs for A398066, there is no canonical definition to state claims against.
-/

/-! ## A398066.P17771793501269398008

`A397930(∑[n+3])`
-/

namespace A398066.P17771793501269398008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398066.P17771793501269398008

/-! ## A398066.P1025472794174084562

`record[A397930(eq[1, A107424(n+3)])]`
-/

namespace A398066.P1025472794174084562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107424 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398066.P1025472794174084562

/-! ## A398066.P8399447906921870811

`record[A397930(n)/A398069(n+2)]`
-/

namespace A398066.P8399447906921870811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397930 n : ℚ) / (A398069 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398066.P8399447906921870811

/-! ## A398066.P1822540307783081697

`record[A397930(gcd(n, A397930(n+2)))]`
-/

namespace A398066.P1822540307783081697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (Int.gcd (n : ℤ) (A397930 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398066.P1822540307783081697

/-!
# A398067: Number of n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 3.

The programs for A398067, there is no canonical definition to state claims against.
-/

/-! ## A398067.P16048470137725214814

`A397930(n+3+∑[n+3])`
-/

namespace A398067.P16048470137725214814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (n + 3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398067.P16048470137725214814

/-! ## A398067.P8630540487511980333

`record[A397930(gcd(n, A397930(n+3)))]`
-/

namespace A398067.P8630540487511980333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (Int.gcd (n : ℤ) (A397930 (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398067.P8630540487511980333

/-!
# A398068: Number of n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 4.

The programs for A398068, there is no canonical definition to state claims against.
-/

/-! ## A398068.P13856804124593794460

`A397930(A000217(n+4)+n)`
-/

namespace A398068.P13856804124593794460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A398068.P13856804124593794460

/-! ## A398068.P3778245149947889523

`A397930(A055998(n+2)+n+3)`
-/

namespace A398068.P3778245149947889523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A398068.P3778245149947889523

/-! ## A398068.P12789323183691962338

`A397930(A167614(n+1)+A000027(3*n+4))`
-/

namespace A398068.P12789323183691962338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (A167614 (n + 1) + A000027 (3 * n + 4)).toNat

end

end A398068.P12789323183691962338

/-!
# A398070: Number of n X n symmetric nonnegative integer matrices with each row sum at most n.

The programs for A398070, there is no canonical definition to state claims against.
-/

/-! ## A398070.P13168812167236108750

`A398069(∑[4*n])`
-/

namespace A398070.P13168812167236108750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398070.P13168812167236108750

/-! ## A398070.P7961761105922050738

`A290105(n+1)*A398069(A046092(n))`
-/

namespace A398070.P7961761105922050738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1) * A398069 (A046092 n).toNat

end

end A398070.P7961761105922050738

/-!
# A398071: Number of n X n symmetric nonnegative integer matrices with each row sum at most 2.

The programs for A398071, there is no canonical definition to state claims against.
-/

/-! ## A398071.P13712980450408627802

`A398069(∑[n+3])`
-/

namespace A398071.P13712980450408627802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398071.P13712980450408627802

/-! ## A398071.P2608512158924537274

`record[gcd(A213887(n+3), A398069(n))]`
-/

namespace A398071.P2608512158924537274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213887 (n + 3)) (A398069 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398071.P2608512158924537274

/-! ## A398071.P7295842150725970954

`record[gcd(A106356(n+4), A398069(n+2))]`
-/

namespace A398071.P7295842150725970954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 4)) (A398069 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398071.P7295842150725970954

/-!
# A398072: Number of n X n symmetric nonnegative integer matrices with each row sum at most 3.

The programs for A398072, there is no canonical definition to state claims against.
-/

/-! ## A398072.P13925206432237513516

`A398069(A000217(n+4)-4)`
-/

namespace A398072.P13925206432237513516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A000217 (n + 4) - 4).toNat

end

end A398072.P13925206432237513516

/-! ## A398072.P772935520069171254

`A398069(A016825(n+1)+∑[n])`
-/

namespace A398072.P772935520069171254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A016825 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A398072.P772935520069171254

/-! ## A398072.P6776947727325239113

`A398069(A000027(3*n+5)+∑[n+1])`
-/

namespace A398072.P6776947727325239113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A000027 (3 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A398072.P6776947727325239113

/-! ## A398072.P14580125252492238786

`A398069(A005843(2*n+3)+A000217(n))`
-/

namespace A398072.P14580125252492238786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A005843 (2 * n + 3) + A000217 n).toNat

end

end A398072.P14580125252492238786

/-!
# A398073: Number of n X n symmetric nonnegative integer matrices with each row sum at most 4.

The programs for A398073, there is no canonical definition to state claims against.
-/

/-! ## A398073.P4724516935283786557

`A398069(A000217(n+4)+n)`
-/

namespace A398073.P4724516935283786557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A398073.P4724516935283786557

/-! ## A398073.P6806619802454820050

`A398069(A167614(n+1)+A000027(3*n+4))`
-/

namespace A398073.P6806619802454820050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398069 (A167614 (n + 1) + A000027 (3 * n + 4)).toNat

end

end A398073.P6806619802454820050

/-!
# A398074: Array read by antidiagonals: T(n,k) is the number of nonisomorphic n X n symmetric nonnegative integer matrices with each row sum nonzero and at most k, under row and column permutations, n >= 0, k >= 0.

The programs for A398074, there is no canonical definition to state claims against.
-/

/-! ## A398074.P17563750793235868910

`A329567(A343097(n))`
-/

namespace A398074.P17563750793235868910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329567 (A343097 n).toNat

end

end A398074.P17563750793235868910

/-! ## A398074.P11064660338844738946

`A381425(n)+A000007(A022095(n))`
-/

namespace A398074.P11064660338844738946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381425 n + A000007 (A022095 n).toNat

end

end A398074.P11064660338844738946

/-! ## A398074.P14285169023682555799

`A381425(A000007(A096000(n))+n)`
-/

namespace A398074.P14285169023682555799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381425 (A000007 (A096000 n).toNat + (n : ℤ)).toNat

end

end A398074.P14285169023682555799

/-! ## A398074.P6144594712198744833

`A381425(n-A000007(A096000(n)))`
-/

namespace A398074.P6144594712198744833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381425 ((n : ℤ) - A000007 (A096000 n).toNat).toNat

end

end A398074.P6144594712198744833

/-!
# A398075: Number of nonisomorphic n X n symmetric nonnegative integer matrices with each row sum nonzero and at most n, under row and column permutations.

The programs for A398075, there is no canonical definition to state claims against.
-/

/-! ## A398075.P5124087544882350373

`A398074(∑[4*n])`
-/

namespace A398075.P5124087544882350373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398075.P5124087544882350373

/-! ## A398075.P2774192415694685287

`or(A000007(n), A398074(A046092(n)))`
-/

namespace A398075.P2774192415694685287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A398074 (A046092 n).toNat)

end

end A398075.P2774192415694685287

/-! ## A398075.P3560185946128598957

`or(A010052(n), A398074(A046092(n)))`
-/

namespace A398075.P3560185946128598957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A398074 (A046092 n).toNat)

end

end A398075.P3560185946128598957

/-! ## A398075.P15941162692859354862

`A398074(A046092(n))+A294889(n+1)`
-/

namespace A398075.P15941162692859354862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A046092 n).toNat + A294889 (n + 1)

end

end A398075.P15941162692859354862

/-!
# A398083: a(n) = 2^n mod 73.

The programs for A398083, the canonical program `A398083.P12615553176713925664` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398083 has offset 0).

The definition of A398083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%73` (program `A398083.P12615553176713925664`, by `A398083.P12615553176713925664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398083.P5444329234471849369

`ogf((1+x+2x^2+5x^3+9x^4+18x^5+37x^6)/(1-x+x^3-x^4+x^6-x^7))`
-/

namespace A398083.P5444329234471849369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 5, 9, 18, 37] [1, -1, 0, 1, -1, 0, 1, -1] n

end

end A398083.P5444329234471849369

namespace A398083

/-- `ogf((1+x+2x^2+5x^3+9x^4+18x^5+37x^6)/(1-x+x^3-x^4+x^6-x^7))` -/
def P5444329234471849369.Spec : Prop :=
  ∀ n, P5444329234471849369.a n = A398083 n

end A398083

/-! ## A398083.P12615553176713925664

`(2^n)%73`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398083

/-- `(2^n)%73` -/
def P12615553176713925664.Spec : Prop :=
  ∀ n, (P12615553176713925664.a n : ℤ) = A398083 n

theorem P12615553176713925664.correct : P12615553176713925664.Spec := by
  intro n
  simp only [A398083]

end A398083

/-!
# A398084: a(n) = 3^n mod 73.

The programs for A398084, the canonical program `A398084.P3058219852828067056` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398084 has offset 0).

The definition of A398084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%73` (program `A398084.P3058219852828067056`, by `A398084.P3058219852828067056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A398084.P15871647364643597242

`ogf((1+2x+6x^2+18x^3-19x^4+16x^5+49x^6)/(1-x+x^6-x^7))`
-/

namespace A398084.P15871647364643597242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6, 18, -19, 16, 49] [1, -1, 0, 0, 0, 0, 1, -1] n

end

end A398084.P15871647364643597242

namespace A398084

/-- `ogf((1+2x+6x^2+18x^3-19x^4+16x^5+49x^6)/(1-x+x^6-x^7))` -/
def P15871647364643597242.Spec : Prop :=
  ∀ n, P15871647364643597242.a n = A398084 n

end A398084

/-! ## A398084.P3058219852828067056

`(3^n)%73`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398084

/-- `(3^n)%73` -/
def P3058219852828067056.Spec : Prop :=
  ∀ n, (P3058219852828067056.a n : ℤ) = A398084 n

theorem P3058219852828067056.correct : P3058219852828067056.Spec := by
  intro n
  simp only [A398084]

end A398084

/-!
# A398088: Upper end of record gaps between numbers that are the sum of two squares (A001481).

The programs for A398088, there is no canonical definition to state claims against.
-/

/-! ## A398088.P12899264833899661228

`A297350(n+1)+A357018(n+1)+1`
-/

namespace A398088.P12899264833899661228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297350 (n + 1) + A357018 (n + 1) + 1

end

end A398088.P12899264833899661228

/-! ## A398088.P10973613357992018817

`A297350(n+1)+A357018(n+1)+1`
-/

namespace A398088.P10973613357992018817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297350 (n + 1) + (A357018 (n + 1) + 1)

end

end A398088.P10973613357992018817

/-!
# A398089: a(n) is the number of Loeschian numbers (A003136) < 10^n.

The programs for A398089, there is no canonical definition to state claims against.
-/

/-! ## A398089.P17629171700091403117

`A383576(n+1)+A368110(A383597(n))`
-/

namespace A398089.P17629171700091403117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383576 (n + 1) + A368110 (A383597 n).toNat

end

end A398089.P17629171700091403117

/-!
# A398096: Number of nonisomorphic n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 2, under row and column permutations.

The programs for A398096, there is no canonical definition to state claims against.
-/

/-! ## A398096.P3913248989227171505

`A398074(∑[n+3])`
-/

namespace A398096.P3913248989227171505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398096.P3913248989227171505

/-! ## A398096.P17366877060215720804

`record[A398074(gcd(n, A398074(n+2)))]`
-/

namespace A398096.P17366877060215720804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (Int.gcd (n : ℤ) (A398074 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398096.P17366877060215720804

/-! ## A398096.P11202761790355379172

`record[A398074(A055998(n))%A131884(3*(n+1))]`
-/

namespace A398096.P11202761790355379172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398074 (A055998 n).toNat) (A131884 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398096.P11202761790355379172

/-! ## A398096.P14208675570577603541

`record[A144558(A261697(n+1))]`
-/

namespace A398096.P14208675570577603541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144558 (A261697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398096.P14208675570577603541

/-! ## A398096.P8674874696332910515

`A123577(A002572(n+1))+A000041(2*n)`
-/

namespace A398096.P8674874696332910515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123577 (A002572 (n + 1)).toNat + A000041 (2 * n)

end

end A398096.P8674874696332910515

/-!
# A398097: Number of nonisomorphic n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 3, under row and column permutations.

The programs for A398097, there is no canonical definition to state claims against.
-/

/-! ## A398097.P5697412757308298646

`A398074(A046691(2+n))`
-/

namespace A398097.P5697412757308298646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A046691 (2 + n)).toNat

end

end A398097.P5697412757308298646

/-! ## A398097.P430063168021975666

`A398074(A055998(n+2)-1)`
-/

namespace A398097.P430063168021975666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A055998 (n + 2) - 1).toNat

end

end A398097.P430063168021975666

/-! ## A398097.P4689385313900922591

`A398074(eq[4, A004736(n+1)])`
-/

namespace A398097.P4689385313900922591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A398097.P4689385313900922591

/-! ## A398097.P6924285854850865079

`A398074(A000217(n+3)+n)`
-/

namespace A398097.P6924285854850865079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A398097.P6924285854850865079

/-! ## A398097.P3875789495789793674

`A398074(A161680(n+4)+n)`
-/

namespace A398097.P3875789495789793674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A161680 (n + 4) + (n : ℤ)).toNat

end

end A398097.P3875789495789793674

/-!
# A398098: Number of nonisomorphic n X n symmetric nonnegative integer matrices with each row sum nonzero and at most 4, under row and column permutations.

The programs for A398098, there is no canonical definition to state claims against.
-/

/-! ## A398098.P10329704506123351169

`record[A398074(eq[2, A004736(n+4)])]`
-/

namespace A398098.P10329704506123351169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398098.P10329704506123351169

/-! ## A398098.P15815353017937732649

`A398074(A055998(n+2)+n+3)`
-/

namespace A398098.P15815353017937732649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398074 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A398098.P15815353017937732649

/-!
# A398099: Array read by antidiagonals: T(n,k) is the number of inequivalent n X n symmetric nonnegative integer matrices with each row sum nonzero and at most k, up to simultaneous row and column permutations, n >= 0, k >= 0.

The programs for A398099, there is no canonical definition to state claims against.
-/

/-! ## A398099.P1764564476795338068

`A141272(A103881(n+1))`
-/

namespace A398099.P1764564476795338068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141272 (A103881 (n + 1)).toNat

end

end A398099.P1764564476795338068

/-! ## A398099.P6063407456491280569

`A144074(n)-A010815(A264090(n+1))`
-/

namespace A398099.P6063407456491280569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 n - A010815 (A264090 (n + 1)).toNat

end

end A398099.P6063407456491280569

/-! ## A398099.P17238161131073206780

`A246106(n)+A011731(A223041(n+1))`
-/

namespace A398099.P17238161131073206780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 n + A011731 (A223041 (n + 1)).toNat

end

end A398099.P17238161131073206780

/-! ## A398099.P12056411447857027049

`A261780(n)-A191928(A320955(3*(n+1)))`
-/

namespace A398099.P12056411447857027049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261780 n - A191928 (A320955 (3 * (n + 1))).toNat

end

end A398099.P12056411447857027049

/-! ## A398099.P6557179842542958277

`A246106(n)*A317245(A343097(n+3))`
-/

namespace A398099.P6557179842542958277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 n * A317245 (A343097 (n + 3)).toNat

end

end A398099.P6557179842542958277

