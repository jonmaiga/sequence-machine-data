import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A315800: Coordination sequence Gal.6.605.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315800, there is no canonical definition to state claims against.
-/

/-! ## A315800.P13623046726674520318

`A035019(n)*A182535(A000110(n))`
-/

namespace A315800.P13623046726674520318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n * A182535 (A000110 n).toNat

end

end A315800.P13623046726674520318

/-! ## A315800.P3615116112154453110

`A035019(n)*A182535(A164863(n))`
-/

namespace A315800.P3615116112154453110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n * A182535 (A164863 n).toNat

end

end A315800.P3615116112154453110

/-!
# A315801: Coordination sequence Gal.3.43.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315801, there is no canonical definition to state claims against.
-/

/-! ## A315801.P10099217397494810869

`2*A315798(n)-A315793(n)`
-/

namespace A315801.P10099217397494810869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315798 n - A315793 n

end

end A315801.P10099217397494810869

/-! ## A315801.P6236151195411959755

`A005843(A315798(n))-A315793(n)`
-/

namespace A315801.P6236151195411959755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315798 n).toNat - A315793 n

end

end A315801.P6236151195411959755

/-! ## A315801.P15881588533619052303

`A161645(3*n+1)/A324924(A144439(n+3))`
-/

namespace A315801.P15881588533619052303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161645 (3 * n + 1) : ℚ) / (A324924 (A144439 (n + 3)).toNat : ℚ)

end

end A315801.P15881588533619052303

/-! ## A315801.P4411890316884044549

`A161645(3*n+1)%A058944(A000238(n+1))`
-/

namespace A315801.P4411890316884044549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161645 (3 * n + 1)) (A058944 (A000238 (n + 1)).toNat)

end

end A315801.P4411890316884044549

/-! ## A315801.P15457546948000625885

`gcd(A050295(A227610(n+1)), A161645(3*n+1))`
-/

namespace A315801.P15457546948000625885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050295 (A227610 (n + 1)).toNat) (A161645 (3 * n + 1))

end

end A315801.P15457546948000625885

/-!
# A315804: Coordination sequence Gal.5.2.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315804, there is no canonical definition to state claims against.
-/

/-! ## A315804.P2806385916977946204

`A315805(n)-A142150(A018242(n))`
-/

namespace A315804.P2806385916977946204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315805 n - A142150 (A018242 n).toNat

end

end A315804.P2806385916977946204

/-! ## A315804.P8384779288333873555

`or(A130824(n), A244339(A036289(n)))`
-/

namespace A315804.P8384779288333873555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130824 n) (A244339 (A036289 n).toNat)

end

end A315804.P8384779288333873555

/-! ## A315804.P3821215623768983496

`or(A035096(A025576(n+1)), A130824(n))`
-/

namespace A315804.P3821215623768983496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035096 (A025576 (n + 1)).toNat) (A130824 n)

end

end A315804.P3821215623768983496

/-! ## A315804.P9420455060686553058

`or(A111284(n+1), A244339(A036289(n)))`
-/

namespace A315804.P9420455060686553058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111284 (n + 1)) (A244339 (A036289 n).toNat)

end

end A315804.P9420455060686553058

/-!
# A315805: Coordination sequence Gal.5.17.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315805, there is no canonical definition to state claims against.
-/

/-! ## A315805.P2877109111524871346

`A315804(n)+A142150(A018242(n))`
-/

namespace A315805.P2877109111524871346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315804 n + A142150 (A018242 n).toNat

end

end A315805.P2877109111524871346

/-! ## A315805.P11575260806348681109

`A315187(A087051(n)-A008615(n))`
-/

namespace A315805.P11575260806348681109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (A087051 n - A008615 n).toNat

end

end A315805.P11575260806348681109

/-! ## A315805.P5994346450430928278

`A301730(A227549(n+1)-A008615(n))`
-/

namespace A315805.P5994346450430928278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 (A227549 (n + 1) - A008615 n).toNat

end

end A315805.P5994346450430928278

/-! ## A315805.P9951683062792910108

`A315187(A227549(n+1)-A008615(n))`
-/

namespace A315805.P9951683062792910108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (A227549 (n + 1) - A008615 n).toNat

end

end A315805.P9951683062792910108

/-!
# A315806: Coordination sequence Gal.4.4.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315806, there is no canonical definition to state claims against.
-/

/-! ## A315806.P12642753559618047755

`A192109(and(3, A003484(n*C(n+4, 4)+1))+n)`
-/

namespace A315806.P12642753559618047755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (Int.land 3 (A003484 (n * Nat.choose (n + 4) 4 + 1)) + (n : ℤ)).toNat

end

end A315806.P12642753559618047755

/-! ## A315806.P8428212040563156206

`A113127(A032555(n+1)-A058176(n))`
-/

namespace A315806.P8428212040563156206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (A032555 (n + 1) - A058176 n).toNat

end

end A315806.P8428212040563156206

/-! ## A315806.P2478405934420316854

`A113127(A078213(n+1)-A058176(n))`
-/

namespace A315806.P2478405934420316854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (A078213 (n + 1) - A058176 n).toNat

end

end A315806.P2478405934420316854

/-! ## A315806.P6879366973813724341

`or(A004016(n), A302796(A084092(n+1)))`
-/

namespace A315806.P6879366973813724341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004016 n) (A302796 (A084092 (n + 1)).toNat)

end

end A315806.P6879366973813724341

/-! ## A315806.P3537431067368019904

`A113127(xor(A032555(n+1), A058176(n)))`
-/

namespace A315806.P3537431067368019904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (Int.xor (A032555 (n + 1)) (A058176 n)).toNat

end

end A315806.P3537431067368019904

/-!
# A315808: Coordination sequence Gal.4.19.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315808, the canonical program `A315808.P6560214606252712380` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315808 has offset 0).

The definition of A315808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 794 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315808.P6560214606252712380

`A004277(A315187(2*n))-A313583(3*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315808

/-- `A004277(A315187(2*n))-A313583(3*n)` -/
def P6560214606252712380.Spec : Prop :=
  ∀ n, P6560214606252712380.a n = A315808 n

theorem P6560214606252712380.correct : P6560214606252712380.Spec := by
  intro n
  simp only [A315808]

end A315808

/-!
# A315816: Coordination sequence Gal.6.505.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315816, there is no canonical definition to state claims against.
-/

/-! ## A315816.P2169870835651403450

`A298026(lt[A107234(n), A266416(2*(n+2))])`
-/

namespace A315816.P2169870835651403450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315816.P2169870835651403450

/-! ## A315816.P4923639560822392878

`A298026(lt[A001008(n+1), A104453(n+3)])`
-/

namespace A315816.P4923639560822392878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104453 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315816.P4923639560822392878

/-! ## A315816.P15833961385812067352

`A298026(lt[A025529(n+1), A104453(n+3)])`
-/

namespace A315816.P15833961385812067352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104453 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315816.P15833961385812067352

/-! ## A315816.P10826547083888021060

`A298026(lt[A027457(n+2), A104453(n+3)])`
-/

namespace A315816.P10826547083888021060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104453 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315816.P10826547083888021060

/-! ## A315816.P1660623917339206062

`A298026(lt[A340601(n), A170893(2*n+3)])`
-/

namespace A315816.P1660623917339206062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315816.P1660623917339206062

/-!
# A315817: Coordination sequence Gal.4.111.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315817, there is no canonical definition to state claims against.
-/

/-! ## A315817.P16602744535041290726

`2*A316069(n)-A008458(n)`
-/

namespace A315817.P16602744535041290726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316069 n - A008458 n

end

end A315817.P16602744535041290726

/-! ## A315817.P13586429211090195986

`A103517(A316069(n)-A016777(n))`
-/

namespace A315817.P13586429211090195986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A316069 n - A016777 n).toNat

end

end A315817.P13586429211090195986

/-! ## A315817.P15154577583070419975

`A103517(A316069(n)%A016777(n))`
-/

namespace A315817.P15154577583070419975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A316069 n) (A016777 n)).toNat

end

end A315817.P15154577583070419975

/-! ## A315817.P6707756845241956035

`A008486(A004396(A316069(n)-A008486(n)))`
-/

namespace A315817.P6707756845241956035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 (A316069 n - A008486 n).toNat).toNat

end

end A315817.P6707756845241956035

/-! ## A315817.P13221749565365265564

`A008458(n)-A005843(A008458(n)-A316069(n))`
-/

namespace A315817.P13221749565365265564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A316069 n).toNat

end

end A315817.P13221749565365265564

/-! ## A315817.P7904507714447061168

`A008458(A315559(n)-A008706(n))`
-/

namespace A315817.P7904507714447061168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315559 n - A008706 n).toNat

end

end A315817.P7904507714447061168

/-! ## A315817.P16966291782413925826

`A008458(A315559(n)%A008706(n))`
-/

namespace A315817.P16966291782413925826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A315559 n) (A008706 n)).toNat

end

end A315817.P16966291782413925826

/-! ## A315817.P14436193365431618481

`A008458(A315559(n)+n-A008458(n))`
-/

namespace A315817.P14436193365431618481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315559 n + ((n : ℤ) - A008458 n)).toNat

end

end A315817.P14436193365431618481

/-! ## A315817.P11171143293165522535

`A008458(n-(A008458(n)-A315559(n)))`
-/

namespace A315817.P11171143293165522535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - (A008458 n - A315559 n)).toNat

end

end A315817.P11171143293165522535

/-! ## A315817.P17557632060168766015

`A005843(A316069(n))-A008458(n)`
-/

namespace A315817.P17557632060168766015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A316069 n).toNat - A008458 n

end

end A315817.P17557632060168766015

/-!
# A315818: Coordination sequence Gal.5.230.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315818, the canonical program `A315818.P9651563668626176741` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315818 has offset 0).

The definition of A315818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315818.P2485726946897586940

`A008458(A301694(n)-A314754(n))`
-/

namespace A315818.P2485726946897586940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A301694 n - A314754 n).toNat

end

end A315818.P2485726946897586940

namespace A315818

/-- `A008458(A301694(n)-A314754(n))` -/
def P2485726946897586940.Spec : Prop :=
  ∀ n, P2485726946897586940.a n = A315818 n

end A315818

/-! ## A315818.P5570329804197778481

`A008458(A301694(n)%A314754(n))`
-/

namespace A315818.P5570329804197778481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A301694 n) (A314754 n)).toNat

end

end A315818.P5570329804197778481

namespace A315818

/-- `A008458(A301694(n)%A314754(n))` -/
def P5570329804197778481.Spec : Prop :=
  ∀ n, P5570329804197778481.a n = A315818 n

end A315818

/-! ## A315818.P9651563668626176741

`A008486(A008574(A008576(n))%A314754(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315818

/-- `A008486(A008574(A008576(n))%A314754(n))` -/
def P9651563668626176741.Spec : Prop :=
  ∀ n, P9651563668626176741.a n = A315818 n

theorem P9651563668626176741.correct : P9651563668626176741.Spec := by
  intro n
  simp only [A315818]

end A315818

/-! ## A315818.P10006801747463714532

`A028310(6*(A301694(n)-A314754(n)))`
-/

namespace A315818.P10006801747463714532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (6 * (A301694 n - A314754 n)).toNat

end

end A315818.P10006801747463714532

namespace A315818

/-- `A028310(6*(A301694(n)-A314754(n)))` -/
def P10006801747463714532.Spec : Prop :=
  ∀ n, P10006801747463714532.a n = A315818 n

end A315818

/-! ## A315818.P8985831660481689751

`A008458(Δ[ceil(n²/3)]%A163889(n))`
-/

namespace A315818.P8985831660481689751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (f1 (n + 1) - f1 n) (A163889 n)).toNat

end

end A315818.P8985831660481689751

namespace A315818

/-- `A008458(Δ[ceil(n²/3)]%A163889(n))` -/
def P8985831660481689751.Spec : Prop :=
  ∀ n, P8985831660481689751.a n = A315818 n

end A315818

/-!
# A315819: Coordination sequence Gal.5.231.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315819, there is no canonical definition to state claims against.
-/

/-! ## A315819.P148402975816446970

`A028310(A315578(2*n)-A315578(n))`
-/

namespace A315819.P148402975816446970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A315578 (2 * n) - A315578 n).toNat

end

end A315819.P148402975816446970

/-! ## A315819.P8189165460957277978

`A065190(A315578(2*n)-A315578(n)+1)`
-/

namespace A315819.P8189165460957277978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A315578 (2 * n) - A315578 n + 1).toNat

end

end A315819.P8189165460957277978

/-! ## A315819.P6382060257940275576

`A019590(n+2)+A315578(2*n)-A315578(n)`
-/

namespace A315819.P6382060257940275576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (A315578 (2 * n) - A315578 n)

end

end A315819.P6382060257940275576

/-! ## A315819.P18254550427803236178

`A315578(2*n)-A315578(n)%A001160(n+1)`
-/

namespace A315819.P18254550427803236178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315578 (2 * n) - Int.tmod (A315578 n) (A001160 (n + 1))

end

end A315819.P18254550427803236178

/-! ## A315819.P5599373610911305795

`A137688(n)%2+A315578(2*n)-A315578(n)`
-/

namespace A315819.P5599373610911305795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) 2 + (A315578 (2 * n) - A315578 n)

end

end A315819.P5599373610911305795

/-!
# A315823: Coordination sequence Gal.6.507.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315823, there is no canonical definition to state claims against.
-/

/-! ## A315823.P16117843286246581602

`A008458(A008579(n)+n-A313072(n))`
-/

namespace A315823.P16117843286246581602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008579 n + ((n : ℤ) - A313072 n)).toNat

end

end A315823.P16117843286246581602

/-! ## A315823.P14483578212410204740

`A008458(n-(A313072(n)-A008579(n)))`
-/

namespace A315823.P14483578212410204740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - (A313072 n - A008579 n)).toNat

end

end A315823.P14483578212410204740

/-! ## A315823.P17259747020193493626

`2*A316071(n)-A008458(n)`
-/

namespace A315823.P17259747020193493626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316071 n - A008458 n

end

end A315823.P17259747020193493626

/-! ## A315823.P11830934638459461512

`A008458(n)-A005843(A008458(n)-A316071(n))`
-/

namespace A315823.P11830934638459461512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A316071 n).toNat

end

end A315823.P11830934638459461512

/-! ## A315823.P2767861665122268939

`A008486(A315365(n)-A008574(n))`
-/

namespace A315823.P2767861665122268939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315365 n - A008574 n).toNat

end

end A315823.P2767861665122268939

/-! ## A315823.P5983904385182621163

`A008486(A315365(n)%A008574(n))`
-/

namespace A315823.P5983904385182621163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315365 n) (A008574 n)).toNat

end

end A315823.P5983904385182621163

/-! ## A315823.P11288435209940999967

`A008486(A315365(n)-(A008486(n)+n))`
-/

namespace A315823.P11288435209940999967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315365 n - (A008486 n + (n : ℤ))).toNat

end

end A315823.P11288435209940999967

/-! ## A315823.P9321089880904343798

`A008486(A315365(n)-n-A008486(n))`
-/

namespace A315823.P9321089880904343798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315365 n - (n : ℤ) - A008486 n).toNat

end

end A315823.P9321089880904343798

/-! ## A315823.P11376087115291842529

`A008458(A315564(n)-A008706(n))`
-/

namespace A315823.P11376087115291842529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315564 n - A008706 n).toNat

end

end A315823.P11376087115291842529

/-! ## A315823.P11163245564859448456

`A008458(A315564(n)+n-A008458(n))`
-/

namespace A315823.P11163245564859448456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A315564 n + ((n : ℤ) - A008458 n)).toNat

end

end A315823.P11163245564859448456

/-! ## A315823.P1598257486922493147

`A008458(n-(A008458(n)-A315564(n)))`
-/

namespace A315823.P1598257486922493147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ((n : ℤ) - (A008458 n - A315564 n)).toNat

end

end A315823.P1598257486922493147

/-! ## A315823.P18328924843420468657

`A005843(A316071(n))-A008458(n)`
-/

namespace A315823.P18328924843420468657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A316071 n).toNat - A008458 n

end

end A315823.P18328924843420468657

/-!
# A315824: Coordination sequence Gal.5.153.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315824, there is no canonical definition to state claims against.
-/

/-! ## A315824.P16784061922970708385

`A315825(n)-A279315(A272375(n+1))`
-/

namespace A315824.P16784061922970708385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315825 n - A279315 (A272375 (n + 1)).toNat

end

end A315824.P16784061922970708385

/-! ## A315824.P10542158856746952531

`A005153(A033740(n+3)%A033706(3*n+5))`
-/

namespace A315824.P10542158856746952531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (Int.tmod (A033740 (n + 3)) (A033706 (3 * n + 5))).toNat

end

end A315824.P10542158856746952531

/-!
# A315825: Coordination sequence Gal.6.508.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315825, there is no canonical definition to state claims against.
-/

/-! ## A315825.P16337204721914543527

`A315824(n)+A279315(A272375(n+1))`
-/

namespace A315825.P16337204721914543527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315824 n + A279315 (A272375 (n + 1)).toNat

end

end A315825.P16337204721914543527

/-! ## A315825.P10517648327659322160

`A315801(n)+A181834(A157391(3*(n+1)))`
-/

namespace A315825.P10517648327659322160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315801 n + A181834 (A157391 (3 * (n + 1))).toNat

end

end A315825.P10517648327659322160

/-!
# A315828: Coordination sequence Gal.3.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315828, the canonical program `A315828.P14903365613760459994` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315828 has offset 0).

The definition of A315828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315828.P14903365613760459994

`A008486(A250120(n)-A310252(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315828

/-- `A008486(A250120(n)-A310252(n))` -/
def P14903365613760459994.Spec : Prop :=
  ∀ n, P14903365613760459994.a n = A315828 n

theorem P14903365613760459994.correct : P14903365613760459994.Spec := by
  intro n
  simp only [A315828]

end A315828

/-! ## A315828.P17409891225578959791

`A008486(A250120(n)%A310252(n))`
-/

namespace A315828.P17409891225578959791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A250120 n) (A310252 n)).toNat

end

end A315828.P17409891225578959791

namespace A315828

/-- `A008486(A250120(n)%A310252(n))` -/
def P17409891225578959791.Spec : Prop :=
  ∀ n, P17409891225578959791.a n = A315828 n

end A315828

/-! ## A315828.P9911424864393181865

`2*A315959(n)-A008458(n)`
-/

namespace A315828.P9911424864393181865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315959 n - A008458 n

end

end A315828.P9911424864393181865

namespace A315828

/-- `2*A315959(n)-A008458(n)` -/
def P9911424864393181865.Spec : Prop :=
  ∀ n, P9911424864393181865.a n = A315828 n

end A315828

/-! ## A315828.P8107229118010490375

`A103517(A315959(n)-A016777(n))`
-/

namespace A315828.P8107229118010490375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315959 n - A016777 n).toNat

end

end A315828.P8107229118010490375

namespace A315828

/-- `A103517(A315959(n)-A016777(n))` -/
def P8107229118010490375.Spec : Prop :=
  ∀ n, P8107229118010490375.a n = A315828 n

end A315828

/-! ## A315828.P15363180984129678803

`A103517(A315959(n)%A016777(n))`
-/

namespace A315828.P15363180984129678803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315959 n) (A016777 n)).toNat

end

end A315828.P15363180984129678803

namespace A315828

/-- `A103517(A315959(n)%A016777(n))` -/
def P15363180984129678803.Spec : Prop :=
  ∀ n, P15363180984129678803.a n = A315828 n

end A315828

/-! ## A315828.P17713350270724954505

`A004277(A315959(n)-(A004277(n)+n))`
-/

namespace A315828.P17713350270724954505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315959 n - (A004277 n + (n : ℤ))).toNat

end

end A315828.P17713350270724954505

namespace A315828

/-- `A004277(A315959(n)-(A004277(n)+n))` -/
def P17713350270724954505.Spec : Prop :=
  ∀ n, P17713350270724954505.a n = A315828 n

end A315828

/-! ## A315828.P5599108476973062146

`A004277(A315959(n)-n-A004277(n))`
-/

namespace A315828.P5599108476973062146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315959 n - (n : ℤ) - A004277 n).toNat

end

end A315828.P5599108476973062146

namespace A315828

/-- `A004277(A315959(n)-n-A004277(n))` -/
def P5599108476973062146.Spec : Prop :=
  ∀ n, P5599108476973062146.a n = A315828 n

end A315828

/-! ## A315828.P4314086220409775872

`A008458(n)-A005843(A008458(n)-A315959(n))`
-/

namespace A315828.P4314086220409775872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315959 n).toNat

end

end A315828.P4314086220409775872

namespace A315828

/-- `A008458(n)-A005843(A008458(n)-A315959(n))` -/
def P4314086220409775872.Spec : Prop :=
  ∀ n, P4314086220409775872.a n = A315828 n

end A315828

/-! ## A315828.P2375255768738902411

`A008486(A315213(n)-A008574(n))`
-/

namespace A315828.P2375255768738902411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315213 n - A008574 n).toNat

end

end A315828.P2375255768738902411

namespace A315828

/-- `A008486(A315213(n)-A008574(n))` -/
def P2375255768738902411.Spec : Prop :=
  ∀ n, P2375255768738902411.a n = A315828 n

end A315828

/-! ## A315828.P2723514217221529104

`A008486(A315213(n)%A008574(n))`
-/

namespace A315828.P2723514217221529104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315213 n) (A008574 n)).toNat

end

end A315828.P2723514217221529104

namespace A315828

/-- `A008486(A315213(n)%A008574(n))` -/
def P2723514217221529104.Spec : Prop :=
  ∀ n, P2723514217221529104.a n = A315828 n

end A315828

/-! ## A315828.P7564633908893768390

`A008486(A315213(n)-(A008486(n)+n))`
-/

namespace A315828.P7564633908893768390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315213 n - (A008486 n + (n : ℤ))).toNat

end

end A315828.P7564633908893768390

namespace A315828

/-- `A008486(A315213(n)-(A008486(n)+n))` -/
def P7564633908893768390.Spec : Prop :=
  ∀ n, P7564633908893768390.a n = A315828 n

end A315828

/-! ## A315828.P2730991454334055819

`A008486(A315213(n)-n-A008486(n))`
-/

namespace A315828.P2730991454334055819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315213 n - (n : ℤ) - A008486 n).toNat

end

end A315828.P2730991454334055819

namespace A315828

/-- `A008486(A315213(n)-n-A008486(n))` -/
def P2730991454334055819.Spec : Prop :=
  ∀ n, P2730991454334055819.a n = A315828 n

end A315828

/-! ## A315828.P6519060216756344356

`A005843(A315959(n))-A008458(n)`
-/

namespace A315828.P6519060216756344356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315959 n).toNat - A008458 n

end

end A315828.P6519060216756344356

namespace A315828

/-- `A005843(A315959(n))-A008458(n)` -/
def P6519060216756344356.Spec : Prop :=
  ∀ n, P6519060216756344356.a n = A315828 n

end A315828

/-!
# A315832: Coordination sequence Gal.5.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315832, the canonical program `A315832.P11173554786775722333` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315832 has offset 0).

The definition of A315832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315832.P1555400407763798328

`A047448(n+1)+A004396(A301690(n))`
-/

namespace A315832.P1555400407763798328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004396 (A301690 n).toNat

end

end A315832.P1555400407763798328

namespace A315832

/-- `A047448(n+1)+A004396(A301690(n))` -/
def P1555400407763798328.Spec : Prop :=
  ∀ n, P1555400407763798328.a n = A315832 n

end A315832

/-! ## A315832.P41563943799256571

`(A315874(n)+A301690(n))/2`
-/

namespace A315832.P41563943799256571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315874 n + A301690 n : ℚ) / 2

end

end A315832.P41563943799256571

namespace A315832

/-- `(A315874(n)+A301690(n))/2` -/
def P41563943799256571.Spec : Prop :=
  ∀ n, P41563943799256571.a n = (A315832 n : ℚ)

end A315832

/-! ## A315832.P15733662379576568500

`A014682(A315874(n)+A301690(n))`
-/

namespace A315832.P15733662379576568500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315874 n + A301690 n).toNat

end

end A315832.P15733662379576568500

namespace A315832

/-- `A014682(A315874(n)+A301690(n))` -/
def P15733662379576568500.Spec : Prop :=
  ∀ n, P15733662379576568500.a n = A315832 n

end A315832

/-! ## A315832.P8908773286773381420

`A301690(n)+A001281(A315874(n)-A301690(n))`
-/

namespace A315832.P8908773286773381420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n + A001281 (A315874 n - A301690 n).toNat

end

end A315832.P8908773286773381420

namespace A315832

/-- `A301690(n)+A001281(A315874(n)-A301690(n))` -/
def P8908773286773381420.Spec : Prop :=
  ∀ n, P8908773286773381420.a n = A315832 n

end A315832

/-! ## A315832.P17038755374058792140

`A301690(n)+A004525(A315874(n)-A301690(n))`
-/

namespace A315832.P17038755374058792140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n + A004525 (A315874 n - A301690 n).toNat

end

end A315832.P17038755374058792140

namespace A315832

/-- `A301690(n)+A004525(A315874(n)-A301690(n))` -/
def P17038755374058792140.Spec : Prop :=
  ∀ n, P17038755374058792140.a n = A315832 n

end A315832

/-! ## A315832.P9859364632859300372

`A301690(n)+A006370(A315874(n)-A301690(n))`
-/

namespace A315832.P9859364632859300372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n + A006370 (A315874 n - A301690 n).toNat

end

end A315832.P9859364632859300372

namespace A315832

/-- `A301690(n)+A006370(A315874(n)-A301690(n))` -/
def P9859364632859300372.Spec : Prop :=
  ∀ n, P9859364632859300372.a n = A315832 n

end A315832

/-! ## A315832.P7567251459743621710

`A301690(n)+A025480(A315874(n)-A301690(n))`
-/

namespace A315832.P7567251459743621710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 n + A025480 (A315874 n - A301690 n).toNat

end

end A315832.P7567251459743621710

namespace A315832

/-- `A301690(n)+A025480(A315874(n)-A301690(n))` -/
def P7567251459743621710.Spec : Prop :=
  ∀ n, P7567251459743621710.a n = A315832 n

end A315832

/-! ## A315832.P10140616036807991432

`A315874(n)-A004526(A315874(n)-A301690(n))`
-/

namespace A315832.P10140616036807991432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315874 n - A004526 (A315874 n - A301690 n).toNat

end

end A315832.P10140616036807991432

namespace A315832

/-- `A315874(n)-A004526(A315874(n)-A301690(n))` -/
def P10140616036807991432.Spec : Prop :=
  ∀ n, P10140616036807991432.a n = A315832 n

end A315832

/-! ## A315832.P11173554786775722333

`A315213(n)-A265188(n+1)+n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315832

/-- `A315213(n)-A265188(n+1)+n` -/
def P11173554786775722333.Spec : Prop :=
  ∀ n, P11173554786775722333.a n = A315832 n

theorem P11173554786775722333.correct : P11173554786775722333.Spec := by
  intro n
  simp only [A315832]

end A315832

/-! ## A315832.P17881324049697737644

`A004396(A301690(n)+A072154(n))`
-/

namespace A315832.P17881324049697737644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301690 n + A072154 n).toNat

end

end A315832.P17881324049697737644

namespace A315832

/-- `A004396(A301690(n)+A072154(n))` -/
def P17881324049697737644.Spec : Prop :=
  ∀ n, P17881324049697737644.a n = A315832 n

end A315832

/-! ## A315832.P4385055783863332333

`A004525(A315874(n)+A301690(n))`
-/

namespace A315832.P4385055783863332333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315874 n + A301690 n).toNat

end

end A315832.P4385055783863332333

namespace A315832

/-- `A004525(A315874(n)+A301690(n))` -/
def P4385055783863332333.Spec : Prop :=
  ∀ n, P4385055783863332333.a n = A315832 n

end A315832

/-! ## A315832.P16567716398078573374

`A025480(A315874(n)+A301690(n))`
-/

namespace A315832.P16567716398078573374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315874 n + A301690 n).toNat

end

end A315832.P16567716398078573374

namespace A315832

/-- `A025480(A315874(n)+A301690(n))` -/
def P16567716398078573374.Spec : Prop :=
  ∀ n, P16567716398078573374.a n = A315832 n

end A315832

/-! ## A315832.P18288227398109536450

`A001281(A315874(n)+A301690(n))`
-/

namespace A315832.P18288227398109536450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315874 n + A301690 n).toNat

end

end A315832.P18288227398109536450

namespace A315832

/-- `A001281(A315874(n)+A301690(n))` -/
def P18288227398109536450.Spec : Prop :=
  ∀ n, P18288227398109536450.a n = A315832 n

end A315832

/-! ## A315832.P3318257838449317767

`A004526(A315874(n)+A301690(n))`
-/

namespace A315832.P3318257838449317767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315874 n + A301690 n).toNat

end

end A315832.P3318257838449317767

namespace A315832

/-- `A004526(A315874(n)+A301690(n))` -/
def P3318257838449317767.Spec : Prop :=
  ∀ n, P3318257838449317767.a n = A315832 n

end A315832

/-! ## A315832.P2104446454362913379

`A006370(A315874(n)+A301690(n))`
-/

namespace A315832.P2104446454362913379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315874 n + A301690 n).toNat

end

end A315832.P2104446454362913379

namespace A315832

/-- `A006370(A315874(n)+A301690(n))` -/
def P2104446454362913379.Spec : Prop :=
  ∀ n, P2104446454362913379.a n = A315832 n

end A315832

/-!
# A315833: Coordination sequence Gal.6.47.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315833, there is no canonical definition to state claims against.
-/

/-! ## A315833.P1501389788176295914

`A016825(n)-A210850(A002961(n+1))`
-/

namespace A315833.P1501389788176295914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A210850 (A002961 (n + 1)).toNat

end

end A315833.P1501389788176295914

/-! ## A315833.P16684333913401832133

`∑[(A310412(n)+A001222(A064641(n)))%10]`
-/

namespace A315833.P16684333913401832133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310412 n + A001222 (A064641 n).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315833.P16684333913401832133

/-! ## A315833.P15630357234923348800

`∑[(A314057(n)+A213728(A093160(n)))%10]`
-/

namespace A315833.P15630357234923348800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314057 n + A213728 (A093160 n).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315833.P15630357234923348800

/-! ## A315833.P14559023813667390143

`∑[(A313117(n)+A001222(A037529(n+1)))%10]`
-/

namespace A315833.P14559023813667390143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313117 n + A001222 (A037529 (n + 1)).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315833.P14559023813667390143

/-!
# A315838: Coordination sequence Gal.5.7.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315838, there is no canonical definition to state claims against.
-/

/-! ## A315838.P17925542294549858603

`A216091(n+1)+A008687(A266732(n))`
-/

namespace A315838.P17925542294549858603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216091 (n + 1) + A008687 (A266732 n).toNat

end

end A315838.P17925542294549858603

/-!
# A315842: Coordination sequence Gal.6.62.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315842, there is no canonical definition to state claims against.
-/

/-! ## A315842.P7630086749095684196

`eq[A155899(n+1), A261319(n)]`
-/

namespace A315842.P7630086749095684196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315842.P7630086749095684196

/-! ## A315842.P2547090578506910686

`eq[n-C(∑[char[∑[n]]], 2), A008683(A252473(n+1))]`
-/

namespace A315842.P2547090578506910686
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A252473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f5 j) n

end

end A315842.P2547090578506910686

/-! ## A315842.P8362107617241042126

`eq[A000035(A182230(n)), A002262(n)]`
-/

namespace A315842.P8362107617241042126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A182230 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315842.P8362107617241042126

/-! ## A315842.P8253369083914828452

`eq[A122856(A112626(n)), A244127(n)]`
-/

namespace A315842.P8253369083914828452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (A112626 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315842.P8253369083914828452

/-! ## A315842.P14338654426026446425

`A292266(lt[A103999(n+4), A040489(n)])`
-/

namespace A315842.P14338654426026446425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103999 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292266 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315842.P14338654426026446425

/-!
# A315845: Coordination sequence Gal.6.501.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315845, there is no canonical definition to state claims against.
-/

/-! ## A315845.P17892525048653243268

`∑[dr(A096889(A179145(n+1)))]`
-/

namespace A315845.P17892525048653243268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096889 (A179145 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315845.P17892525048653243268

/-!
# A315847: Coordination sequence Gal.5.232.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315847, the canonical program `A315847.P3242230208927172562` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315847 has offset 0).

The definition of A315847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315847.P3242230208927172562

`A301682(n)+A087509(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315847

/-- `A301682(n)+A087509(n)` -/
def P3242230208927172562.Spec : Prop :=
  ∀ n, P3242230208927172562.a n = A315847 n

theorem P3242230208927172562.correct : P3242230208927172562.Spec := by
  intro n
  simp only [A315847]

end A315847

/-! ## A315847.P10349059752956359552

`A301682(n)+Δ[A008133(n)]`
-/

namespace A315847.P10349059752956359552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n + (f1 (n + 1) - f1 n)

end

end A315847.P10349059752956359552

namespace A315847

/-- `A301682(n)+Δ[A008133(n)]` -/
def P10349059752956359552.Spec : Prop :=
  ∀ n, P10349059752956359552.a n = A315847 n

end A315847

/-! ## A315847.P10036109399191901875

`A008706(n-A087509(n))+n`
-/

namespace A315847.P10036109399191901875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 ((n : ℤ) - A087509 n).toNat + (n : ℤ)

end

end A315847.P10036109399191901875

namespace A315847

/-- `A008706(n-A087509(n))+n` -/
def P10036109399191901875.Spec : Prop :=
  ∀ n, P10036109399191901875.a n = A315847 n

end A315847

/-! ## A315847.P269363162907975639

`A008458(n)-A008587(A087509(n))`
-/

namespace A315847.P269363162907975639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A008587 (A087509 n).toNat

end

end A315847.P269363162907975639

namespace A315847

/-- `A008458(n)-A008587(A087509(n))` -/
def P269363162907975639.Spec : Prop :=
  ∀ n, P269363162907975639.a n = A315847 n

end A315847

/-! ## A315847.P6501737337132421240

`A087509(n)+A008458(n-A087509(n))`
-/

namespace A315847.P6501737337132421240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + A008458 ((n : ℤ) - A087509 n).toNat

end

end A315847.P6501737337132421240

namespace A315847

/-- `A087509(n)+A008458(n-A087509(n))` -/
def P6501737337132421240.Spec : Prop :=
  ∀ n, P6501737337132421240.a n = A315847 n

end A315847

/-! ## A315847.P16493155368933153892

`A008706(A008706(n)-A301688(n))+n`
-/

namespace A315847.P16493155368933153892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 n - A301688 n).toNat + (n : ℤ)

end

end A315847.P16493155368933153892

namespace A315847

/-- `A008706(A008706(n)-A301688(n))+n` -/
def P16493155368933153892.Spec : Prop :=
  ∀ n, P16493155368933153892.a n = A315847 n

end A315847

/-! ## A315847.P12859272656281505191

`A315943(n)-A087509(n)`
-/

namespace A315847.P12859272656281505191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - A087509 n

end

end A315847.P12859272656281505191

namespace A315847

/-- `A315943(n)-A087509(n)` -/
def P12859272656281505191.Spec : Prop :=
  ∀ n, P12859272656281505191.a n = A315847 n

end A315847

/-! ## A315847.P10916542444221554694

`A315943(n)-Δ[A008133(n)]`
-/

namespace A315847.P10916542444221554694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315943 n - (f1 (n + 1) - f1 n)

end

end A315847.P10916542444221554694

namespace A315847

/-- `A315943(n)-Δ[A008133(n)]` -/
def P10916542444221554694.Spec : Prop :=
  ∀ n, P10916542444221554694.a n = A315847 n

end A315847

/-! ## A315847.P7395083355840431286

`A301720(n)-2*A087509(n)`
-/

namespace A315847.P7395083355840431286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - 2 * A087509 n

end

end A315847.P7395083355840431286

namespace A315847

/-- `A301720(n)-2*A087509(n)` -/
def P7395083355840431286.Spec : Prop :=
  ∀ n, P7395083355840431286.a n = A315847 n

end A315847

/-! ## A315847.P956974658020709547

`A301720(n)-Δ[2*A008133(n)]`
-/

namespace A315847.P956974658020709547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - (f1 (n + 1) - f1 n)

end

end A315847.P956974658020709547

namespace A315847

/-- `A301720(n)-Δ[2*A008133(n)]` -/
def P956974658020709547.Spec : Prop :=
  ∀ n, P956974658020709547.a n = A315847 n

end A315847

/-! ## A315847.P5088439796811683100

`A301720(n)-A005843(A087509(n))`
-/

namespace A315847.P5088439796811683100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - A005843 (A087509 n).toNat

end

end A315847.P5088439796811683100

namespace A315847

/-- `A301720(n)-A005843(A087509(n))` -/
def P5088439796811683100.Spec : Prop :=
  ∀ n, P5088439796811683100.a n = A315847 n

end A315847

/-! ## A315847.P14375912021426962899

`A008706(A315563(n)-A008706(n))+n`
-/

namespace A315847.P14375912021426962899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A315563 n - A008706 n).toNat + (n : ℤ)

end

end A315847.P14375912021426962899

namespace A315847

/-- `A008706(A315563(n)-A008706(n))+n` -/
def P14375912021426962899.Spec : Prop :=
  ∀ n, P14375912021426962899.a n = A315847 n

end A315847

/-!
# A315853: Coordination sequence Gal.6.101.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315853, there is no canonical definition to state claims against.
-/

/-! ## A315853.P7006039995376660900

`eq[A000120(A106543(3*(n+1))), A003059(n+1)]`
-/

namespace A315853.P7006039995376660900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A106543 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315853.P7006039995376660900

/-!
# A315857: Coordination sequence Gal.6.11.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315857, there is no canonical definition to state claims against.
-/

/-! ## A315857.P17511637908455716614

`A260091(A051223(n+1))+A007310(n+1)`
-/

namespace A315857.P17511637908455716614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260091 (A051223 (n + 1)).toNat + A007310 (n + 1)

end

end A315857.P17511637908455716614

/-! ## A315857.P9113796126196787598

`A092596(n+1)+A330025(A004525(n))+A014601(n)`
-/

namespace A315857.P9113796126196787598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092596 (n + 1) + (A330025 (A004525 n).toNat + A014601 n)

end

end A315857.P9113796126196787598

/-!
# A315858: Coordination sequence Gal.5.20.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315858, there is no canonical definition to state claims against.
-/

/-! ## A315858.P3583250418547165794

`A158439(A181807(n+1))-(floor(acot(n))-1)`
-/

namespace A315858.P3583250418547165794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158439 (A181807 (n + 1)).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A315858.P3583250418547165794

/-! ## A315858.P2649976121408806090

`eq[A001222(A090110(n+1)), A131017(n)]`
-/

namespace A315858.P2649976121408806090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090110 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315858.P2649976121408806090

/-! ## A315858.P6704696027850345348

`eq[A001222(A090110(n+1)), A244227(n)]`
-/

namespace A315858.P6704696027850345348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090110 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315858.P6704696027850345348

/-! ## A315858.P2490473331666665263

`A010063(A138308(n+1)%A101535(n+1))`
-/

namespace A315858.P2490473331666665263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010063 (Int.tmod (A138308 (n + 1)) (A101535 (n + 1))).toNat

end

end A315858.P2490473331666665263

/-!
# A315860: Coordination sequence Gal.4.12.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315860, there is no canonical definition to state claims against.
-/

/-! ## A315860.P4341674785004411464

`A139706(3*n+1)+A023416(A037278(n+1))`
-/

namespace A315860.P4341674785004411464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (3 * n + 1) + A023416 (A037278 (n + 1)).toNat

end

end A315860.P4341674785004411464

/-!
# A315863: Coordination sequence Gal.6.266.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315863, there is no canonical definition to state claims against.
-/

/-! ## A315863.P4585192457747829238

`A315864(A073295(n)%A018627(n+1))`
-/

namespace A315863.P4585192457747829238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 (Int.tmod (A073295 n) (A018627 (n + 1))).toNat

end

end A315863.P4585192457747829238

/-! ## A315863.P10930281209789294496

`A315864(n*A287378(n))`
-/

namespace A315863.P10930281209789294496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 ((n : ℤ) * A287378 n).toNat

end

end A315863.P10930281209789294496

/-! ## A315863.P6754055508939234714

`A315864(n^A238352(n))`
-/

namespace A315863.P6754055508939234714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A238352 n : ℤ))).toNat

end

end A315863.P6754055508939234714

/-! ## A315863.P6257732801443710741

`A315864(n^A287378(n))`
-/

namespace A315863.P6257732801443710741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A315863.P6257732801443710741

/-! ## A315863.P1345365949690486891

`A315864(n)%A095617(n)`
-/

namespace A315863.P1345365949690486891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315864 n) (A095617 n)

end

end A315863.P1345365949690486891

/-!
# A315864: Coordination sequence Gal.6.518.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315864, there is no canonical definition to state claims against.
-/

/-! ## A315864.P12904409189096650640

`2*A315906(n)-A315935(n)`
-/

namespace A315864.P12904409189096650640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315906 n - A315935 n

end

end A315864.P12904409189096650640

/-! ## A315864.P10030344613165415967

`A004277(A315906(n))-A315935(n)`
-/

namespace A315864.P10030344613165415967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315906 n).toNat - A315935 n

end

end A315864.P10030344613165415967

/-! ## A315864.P1816517913744170339

`A315935(n)-A005843(A315935(n)-A315906(n))`
-/

namespace A315864.P1816517913744170339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315935 n - A005843 (A315935 n - A315906 n).toNat

end

end A315864.P1816517913744170339

/-! ## A315864.P8640811195589560781

`or(A185284(A315855(n)), A315863(n))`
-/

namespace A315864.P8640811195589560781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A315855 n).toNat) (A315863 n)

end

end A315864.P8640811195589560781

/-!
# A315865: Coordination sequence Gal.6.213.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315865, there is no canonical definition to state claims against.
-/

/-! ## A315865.P13519661108723113304

`record[A257088(n)-A089368(n+1)]`
-/

namespace A315865.P13519661108723113304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n - A089368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315865.P13519661108723113304

/-! ## A315865.P4337900445873294007

`A160950(n+1)-A020639(A340388(n+1))`
-/

namespace A315865.P4337900445873294007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160950 (n + 1) - A020639 (A340388 (n + 1)).toNat

end

end A315865.P4337900445873294007

/-!
# A315868: Coordination sequence Gal.6.318.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315868, there is no canonical definition to state claims against.
-/

/-! ## A315868.P13916444262671085274

`A315864(n)+A037881(A080929(n))`
-/

namespace A315868.P13916444262671085274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 n + A037881 (A080929 n).toNat

end

end A315868.P13916444262671085274

/-! ## A315868.P11814113315056376681

`A287321(A110801(n+1)*A287378(n))`
-/

namespace A315868.P11814113315056376681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287321 (A110801 (n + 1) * A287378 n).toNat

end

end A315868.P11814113315056376681

/-! ## A315868.P14705129434376934280

`A287321(A110801(n+1)^A287378(n))`
-/

namespace A315868.P14705129434376934280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287321 (SequenceMachineLib.roundAway ((A110801 (n + 1) : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A315868.P14705129434376934280

/-!
# A315870: Coordination sequence Gal.6.474.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315870, there is no canonical definition to state claims against.
-/

/-! ## A315870.P16260645665353948229

`record[A092338(A030014(n+1)²)]`
-/

namespace A315870.P16260645665353948229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A030014 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315870.P16260645665353948229

/-! ## A315870.P4316899369278533989

`A265436(A265436(6*comp[∑[2*n]]))`
-/

namespace A315870.P4316899369278533989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A265436 (6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A315870.P4316899369278533989

/-! ## A315870.P2764091441801515566

`A311656(n)+A063725(A239462(n+1))`
-/

namespace A315870.P2764091441801515566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311656 n + A063725 (A239462 (n + 1)).toNat

end

end A315870.P2764091441801515566

/-! ## A315870.P5041910123021587346

`A189302(A189297(n+1))-A189298(A189316(n))`
-/

namespace A315870.P5041910123021587346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (A189297 (n + 1)).toNat - A189298 (A189316 n).toNat

end

end A315870.P5041910123021587346

/-!
# A315872: Coordination sequence Gal.5.252.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315872, there is no canonical definition to state claims against.
-/

/-! ## A315872.P12475830090372264539

`A312849(2*n)-3*n`
-/

namespace A315872.P12475830090372264539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312849 (2 * n) - (3 * n : ℤ)

end

end A315872.P12475830090372264539

/-!
# A315874: Coordination sequence Gal.5.211.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315874, the canonical program `A315874.P5730925477117979781` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315874 has offset 0).

The definition of A315874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315874.P14068888517730868382

`2*A315832(n)-A301690(n)`
-/

namespace A315874.P14068888517730868382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315832 n - A301690 n

end

end A315874.P14068888517730868382

namespace A315874

/-- `2*A315832(n)-A301690(n)` -/
def P14068888517730868382.Spec : Prop :=
  ∀ n, P14068888517730868382.a n = A315874 n

end A315874

/-! ## A315874.P1336805459012913884

`A005843(A315832(n))-A301690(n)`
-/

namespace A315874.P1336805459012913884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315832 n).toNat - A301690 n

end

end A315874.P1336805459012913884

namespace A315874

/-- `A005843(A315832(n))-A301690(n)` -/
def P1336805459012913884.Spec : Prop :=
  ∀ n, P1336805459012913884.a n = A315874 n

end A315874

/-! ## A315874.P6550547516208108021

`A008458(n)+A301690(n)-A315213(n)`
-/

namespace A315874.P6550547516208108021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A301690 n - A315213 n)

end

end A315874.P6550547516208108021

namespace A315874

/-- `A008458(n)+A301690(n)-A315213(n)` -/
def P6550547516208108021.Spec : Prop :=
  ∀ n, P6550547516208108021.a n = A315874 n

end A315874

/-! ## A315874.P8207533035807776599

`A008486(2*n)+A301690(n)-A315213(n)`
-/

namespace A315874.P8207533035807776599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A301690 n - A315213 n)

end

end A315874.P8207533035807776599

namespace A315874

/-- `A008486(2*n)+A301690(n)-A315213(n)` -/
def P8207533035807776599.Spec : Prop :=
  ∀ n, P8207533035807776599.a n = A315874 n

end A315874

/-! ## A315874.P17881753331859471217

`2*n+A008574(n)+A301690(n)-A315213(n)`
-/

namespace A315874.P17881753331859471217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A008574 n + (A301690 n - A315213 n))

end

end A315874.P17881753331859471217

namespace A315874

/-- `2*n+A008574(n)+A301690(n)-A315213(n)` -/
def P17881753331859471217.Spec : Prop :=
  ∀ n, P17881753331859471217.a n = A315874 n

end A315874

/-! ## A315874.P5226194829166287401

`A004275(A016777(n))+A301690(n)-A315213(n)`
-/

namespace A315874.P5226194829166287401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A016777 n).toNat + (A301690 n - A315213 n)

end

end A315874.P5226194829166287401

namespace A315874

/-- `A004275(A016777(n))+A301690(n)-A315213(n)` -/
def P5226194829166287401.Spec : Prop :=
  ∀ n, P5226194829166287401.a n = A315874 n

end A315874

/-! ## A315874.P5730925477117979781

`A047448(n+1)+A004525(A315832(n)+A047448(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315874

/-- `A047448(n+1)+A004525(A315832(n)+A047448(n+1))` -/
def P5730925477117979781.Spec : Prop :=
  ∀ n, P5730925477117979781.a n = A315874 n

theorem P5730925477117979781.correct : P5730925477117979781.Spec := by
  intro n
  simp only [A315874]

end A315874

/-! ## A315874.P11119898703040885172

`A123108(12*n)+A301690(n)-A315213(n)`
-/

namespace A315874.P11119898703040885172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (12 * n) + (A301690 n - A315213 n)

end

end A315874.P11119898703040885172

namespace A315874

/-- `A123108(12*n)+A301690(n)-A315213(n)` -/
def P11119898703040885172.Spec : Prop :=
  ∀ n, P11119898703040885172.a n = A315874 n

end A315874

/-!
# A315875: Coordination sequence Gal.6.34.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315875, there is no canonical definition to state claims against.
-/

/-! ## A315875.P4221496967762527671

`A321100(A004881(n+1))+A310803(n)`
-/

namespace A315875.P4221496967762527671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 (A004881 (n + 1)).toNat + A310803 n

end

end A315875.P4221496967762527671

/-!
# A315880: Coordination sequence Gal.6.39.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315880, there is no canonical definition to state claims against.
-/

/-! ## A315880.P13642193979274060918

`A315879(A087051(n))+A110841(n)`
-/

namespace A315880.P13642193979274060918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315879 (A087051 n).toNat + A110841 n

end

end A315880.P13642193979274060918

/-!
# A315885: Coordination sequence Gal.6.24.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315885, there is no canonical definition to state claims against.
-/

/-! ## A315885.P9959064011474276298

`record[gcd(A315886(n), A326634(n))]`
-/

namespace A315885.P9959064011474276298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A315886 n) (A326634 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315885.P9959064011474276298

/-! ## A315885.P9155110139441124499

`A315886(n)-A010894(A315874(n))`
-/

namespace A315885.P9155110139441124499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315886 n - A010894 ((A315874 n).toNat + 21)

end

end A315885.P9155110139441124499

/-! ## A315885.P4594690883768436859

`A315886(n)-A010894(A315889(n))`
-/

namespace A315885.P4594690883768436859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315886 n - A010894 ((A315889 n).toNat + 21)

end

end A315885.P4594690883768436859

/-! ## A315885.P9462850206639443424

`A315886(n)-A010894(A315891(n))`
-/

namespace A315885.P9462850206639443424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315886 n - A010894 ((A315891 n).toNat + 21)

end

end A315885.P9462850206639443424

/-! ## A315885.P17829860975376465493

`A315886(A087051(n))`
-/

namespace A315885.P17829860975376465493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315886 (A087051 n).toNat

end

end A315885.P17829860975376465493

/-!
# A315886: Coordination sequence Gal.6.527.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315886, the canonical program `A315886.P13104561643966838140` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315886 has offset 0).

The definition of A315886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315886.P13104561643966838140

`A163980(A047592(n+1))+A004273(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315886

/-- `A163980(A047592(n+1))+A004273(n)` -/
def P13104561643966838140.Spec : Prop :=
  ∀ n, P13104561643966838140.a n = A315886 n

theorem P13104561643966838140.correct : P13104561643966838140.Spec := by
  intro n
  simp only [A315886]

end A315886

/-! ## A315886.P1253245080241535584

`2*A314674(n)-A310341(n)`
-/

namespace A315886.P1253245080241535584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314674 n - A310341 n

end

end A315886.P1253245080241535584

namespace A315886

/-- `2*A314674(n)-A310341(n)` -/
def P1253245080241535584.Spec : Prop :=
  ∀ n, P1253245080241535584.a n = A315886 n

end A315886

/-! ## A315886.P8313026317394000681

`A314674(n)+A175629(A175629(n)+n)`
-/

namespace A315886.P8313026317394000681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A175629 (A175629 n + (n : ℤ)).toNat

end

end A315886.P8313026317394000681

namespace A315886

/-- `A314674(n)+A175629(A175629(n)+n)` -/
def P8313026317394000681.Spec : Prop :=
  ∀ n, P8313026317394000681.a n = A315886 n

end A315886

/-! ## A315886.P13518849060587477134

`A005843(A314674(n))-A310341(n)`
-/

namespace A315886.P13518849060587477134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314674 n).toNat - A310341 n

end

end A315886.P13518849060587477134

namespace A315886

/-- `A005843(A314674(n))-A310341(n)` -/
def P13518849060587477134.Spec : Prop :=
  ∀ n, P13518849060587477134.a n = A315886 n

end A315886

/-! ## A315886.P2787600337104701039

`2*A315309(n)-A008458(n)`
-/

namespace A315886.P2787600337104701039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315309 n - A008458 n

end

end A315886.P2787600337104701039

namespace A315886

/-- `2*A315309(n)-A008458(n)` -/
def P2787600337104701039.Spec : Prop :=
  ∀ n, P2787600337104701039.a n = A315886 n

end A315886

/-! ## A315886.P17875268269417573846

`A103517(A315309(n)-A016777(n))`
-/

namespace A315886.P17875268269417573846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315309 n - A016777 n).toNat

end

end A315886.P17875268269417573846

namespace A315886

/-- `A103517(A315309(n)-A016777(n))` -/
def P17875268269417573846.Spec : Prop :=
  ∀ n, P17875268269417573846.a n = A315886 n

end A315886

/-! ## A315886.P9976978805825637715

`A315309(n)-A052928(A145569(n))`
-/

namespace A315886.P9976978805825637715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n - A052928 (A145569 n).toNat

end

end A315886.P9976978805825637715

namespace A315886

/-- `A315309(n)-A052928(A145569(n))` -/
def P9976978805825637715.Spec : Prop :=
  ∀ n, P9976978805825637715.a n = A315886 n

end A315886

/-! ## A315886.P10574077840776594519

`A103517(A315309(n)%A016777(n))`
-/

namespace A315886.P10574077840776594519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315309 n) (A016777 n)).toNat

end

end A315886.P10574077840776594519

namespace A315886

/-- `A103517(A315309(n)%A016777(n))` -/
def P10574077840776594519.Spec : Prop :=
  ∀ n, P10574077840776594519.a n = A315886 n

end A315886

/-! ## A315886.P5228283162299515482

`A008458(n)-A005843(A008458(n)-A315309(n))`
-/

namespace A315886.P5228283162299515482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315309 n).toNat

end

end A315886.P5228283162299515482

namespace A315886

/-- `A008458(n)-A005843(A008458(n)-A315309(n))` -/
def P5228283162299515482.Spec : Prop :=
  ∀ n, P5228283162299515482.a n = A315886 n

end A315886

/-! ## A315886.P17939110484340349015

`A005843(A315309(n))-A008458(n)`
-/

namespace A315886.P17939110484340349015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315309 n).toNat - A008458 n

end

end A315886.P17939110484340349015

namespace A315886

/-- `A005843(A315309(n))-A008458(n)` -/
def P17939110484340349015.Spec : Prop :=
  ∀ n, P17939110484340349015.a n = A315886 n

end A315886

/-! ## A315886.P16045380394382519930

`A257088(A315309(n))-A008588(n)`
-/

namespace A315886.P16045380394382519930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A315309 n).toNat - A008588 n

end

end A315886.P16045380394382519930

namespace A315886

/-- `A257088(A315309(n))-A008588(n)` -/
def P16045380394382519930.Spec : Prop :=
  ∀ n, P16045380394382519930.a n = A315886 n

end A315886

/-!
# A315888: Coordination sequence Gal.6.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315888, there is no canonical definition to state claims against.
-/

/-! ## A315888.P9558096791617525225

`or(A100112(A000116(n)), A312292(n))`
-/

namespace A315888.P9558096791617525225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100112 (A000116 n).toNat) (A312292 n)

end

end A315888.P9558096791617525225

/-! ## A315888.P3258471333615313425

`or(A142150(A195858(n)), A312292(n))`
-/

namespace A315888.P3258471333615313425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A142150 (A195858 n).toNat) (A312292 n)

end

end A315888.P3258471333615313425

/-! ## A315888.P8923139700839543857

`A312292(n)+A105661(A130279(n+1))`
-/

namespace A315888.P8923139700839543857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312292 n + A105661 (A130279 (n + 1)).toNat

end

end A315888.P8923139700839543857

/-! ## A315888.P13300367499190911322

`or(A000005(A270682(n)), A312292(n))`
-/

namespace A315888.P13300367499190911322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A270682 n).toNat) (A312292 n)

end

end A315888.P13300367499190911322

/-! ## A315888.P258920563691732853

`A312292(n)+A049084(A000550(n+8))`
-/

namespace A315888.P258920563691732853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312292 n + A049084 (A000550 (n + 8)).toNat

end

end A315888.P258920563691732853

/-!
# A315889: Coordination sequence Gal.5.253.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315889, the canonical program `A315889.P11537963570160076459` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315889 has offset 0).

The definition of A315889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315889.P11537963570160076459

`A008574(round(8*n/5))-2*n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315889

/-- `A008574(round(8*n/5))-2*n` -/
def P11537963570160076459.Spec : Prop :=
  ∀ n, P11537963570160076459.a n = A315889 n

theorem P11537963570160076459.correct : P11537963570160076459.Spec := by
  intro n
  simp only [A315889]

end A315889

/-! ## A315889.P4200695383463543834

`A316026(n)-Δ[A011858(n)]`
-/

namespace A315889.P4200695383463543834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316026 n - (f1 (n + 1) - f1 n)

end

end A315889.P4200695383463543834

namespace A315889

/-- `A316026(n)-Δ[A011858(n)]` -/
def P4200695383463543834.Spec : Prop :=
  ∀ n, P4200695383463543834.a n = A315889 n

end A315889

/-! ## A315889.P16510858440209801932

`A314685(n)+A244895(2*n)`
-/

namespace A315889.P16510858440209801932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + A244895 (2 * n)

end

end A315889.P16510858440209801932

namespace A315889

/-- `A314685(n)+A244895(2*n)` -/
def P16510858440209801932.Spec : Prop :=
  ∀ n, P16510858440209801932.a n = A315889 n

end A315889

/-! ## A315889.P3774615667350808916

`2*A315311(n)-A008458(n)`
-/

namespace A315889.P3774615667350808916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315311 n - A008458 n

end

end A315889.P3774615667350808916

namespace A315889

/-- `2*A315311(n)-A008458(n)` -/
def P3774615667350808916.Spec : Prop :=
  ∀ n, P3774615667350808916.a n = A315889 n

end A315889

/-! ## A315889.P7366491009980791199

`2*A250120(n)-A310518(n)`
-/

namespace A315889.P7366491009980791199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A310518 n

end

end A315889.P7366491009980791199

namespace A315889

/-- `2*A250120(n)-A310518(n)` -/
def P7366491009980791199.Spec : Prop :=
  ∀ n, P7366491009980791199.a n = A315889 n

end A315889

/-! ## A315889.P8699451449755017610

`A004275(A286717(2*n+1)+n)`
-/

namespace A315889.P8699451449755017610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A286717 (2 * n + 1) + (n : ℤ)).toNat

end

end A315889.P8699451449755017610

namespace A315889

/-- `A004275(A286717(2*n+1)+n)` -/
def P8699451449755017610.Spec : Prop :=
  ∀ n, P8699451449755017610.a n = A315889 n

end A315889

/-! ## A315889.P6968103355663155797

`A315525(n)-A265188(n+1)+n`
-/

namespace A315889.P6968103355663155797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315525 n - A265188 (n + 1) + (n : ℤ)

end

end A315889.P6968103355663155797

namespace A315889

/-- `A315525(n)-A265188(n+1)+n` -/
def P6968103355663155797.Spec : Prop :=
  ∀ n, P6968103355663155797.a n = A315889 n

end A315889

/-! ## A315889.P8828072161548635651

`A063225(2*n+1)-2*A047287(2*(n+1))`
-/

namespace A315889.P8828072161548635651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (2 * n + 1) - 2 * A047287 (2 * (n + 1))

end

end A315889.P8828072161548635651

namespace A315889

/-- `A063225(2*n+1)-2*A047287(2*(n+1))` -/
def P8828072161548635651.Spec : Prop :=
  ∀ n, P8828072161548635651.a n = A315889 n

end A315889

/-! ## A315889.P8030550258399927652

`A201629(A072154(n))+A004277(n)`
-/

namespace A315889.P8030550258399927652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A072154 n).toNat + A004277 n

end

end A315889.P8030550258399927652

namespace A315889

/-- `A201629(A072154(n))+A004277(n)` -/
def P8030550258399927652.Spec : Prop :=
  ∀ n, P8030550258399927652.a n = A315889 n

end A315889

/-! ## A315889.P5766059053227564423

`A004773(A316026(n))-A005843(n)`
-/

namespace A315889.P5766059053227564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A316026 n).toNat - A005843 n

end

end A315889.P5766059053227564423

namespace A315889

/-- `A004773(A316026(n))-A005843(n)` -/
def P5766059053227564423.Spec : Prop :=
  ∀ n, P5766059053227564423.a n = A315889 n

end A315889

/-! ## A315889.P9434188083436902518

`A005843(A315311(n))-A008458(n)`
-/

namespace A315889.P9434188083436902518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315311 n).toNat - A008458 n

end

end A315889.P9434188083436902518

namespace A315889

/-- `A005843(A315311(n))-A008458(n)` -/
def P9434188083436902518.Spec : Prop :=
  ∀ n, P9434188083436902518.a n = A315889 n

end A315889

/-! ## A315889.P14560799065372097577

`A005843(A250120(n))-A310518(n)`
-/

namespace A315889.P14560799065372097577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250120 n).toNat - A310518 n

end

end A315889.P14560799065372097577

namespace A315889

/-- `A005843(A250120(n))-A310518(n)` -/
def P14560799065372097577.Spec : Prop :=
  ∀ n, P14560799065372097577.a n = A315889 n

end A315889

/-! ## A315889.P17539645138860483304

`A004277(A315311(n)-(A004277(n)+n))`
-/

namespace A315889.P17539645138860483304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315311 n - (A004277 n + (n : ℤ))).toNat

end

end A315889.P17539645138860483304

namespace A315889

/-- `A004277(A315311(n)-(A004277(n)+n))` -/
def P17539645138860483304.Spec : Prop :=
  ∀ n, P17539645138860483304.a n = A315889 n

end A315889

/-! ## A315889.P3306396943471911289

`A004277(A315311(n)-n-A004277(n))`
-/

namespace A315889.P3306396943471911289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315311 n - (n : ℤ) - A004277 n).toNat

end

end A315889.P3306396943471911289

namespace A315889

/-- `A004277(A315311(n)-n-A004277(n))` -/
def P3306396943471911289.Spec : Prop :=
  ∀ n, P3306396943471911289.a n = A315889 n

end A315889

/-! ## A315889.P4607446255989697138

`A313506(2*n)-2*A047263(2*n+1)`
-/

namespace A315889.P4607446255989697138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 (2 * n) - 2 * A047263 (2 * n + 1)

end

end A315889.P4607446255989697138

namespace A315889

/-- `A313506(2*n)-2*A047263(2*n+1)` -/
def P4607446255989697138.Spec : Prop :=
  ∀ n, P4607446255989697138.a n = A315889 n

end A315889

/-! ## A315889.P10283776701543271679

`A315637(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315889.P10283776701543271679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315637 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315889.P10283776701543271679

namespace A315889

/-- `A315637(2*n)+A008458(n+1)-(12*n+6)` -/
def P10283776701543271679.Spec : Prop :=
  ∀ n, P10283776701543271679.a n = A315889 n

end A315889

/-!
# A315892: Coordination sequence Gal.5.264.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315892, there is no canonical definition to state claims against.
-/

/-! ## A315892.P9140572076457371193

`xor(A010673(n²²), A311611(n))`
-/

namespace A315892.P9140572076457371193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 ((n ^ 2) ^ 2)) (A311611 n)

end

end A315892.P9140572076457371193

/-!
# A315894: Coordination sequence Gal.6.558.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315894, there is no canonical definition to state claims against.
-/

/-! ## A315894.P18277077583428899806

`A028629(A000143(n))+A008579(n)`
-/

namespace A315894.P18277077583428899806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (A000143 n).toNat + A008579 n

end

end A315894.P18277077583428899806

/-!
# A315896: Coordination sequence Gal.6.454.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315896, there is no canonical definition to state claims against.
-/

/-! ## A315896.P6385614440865286474

`A315190(n)-A055668(A083379(n+1))`
-/

namespace A315896.P6385614440865286474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315190 n - A055668 (A083379 (n + 1)).toNat

end

end A315896.P6385614440865286474

/-!
# A315897: Coordination sequence Gal.6.476.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315897, there is no canonical definition to state claims against.
-/

/-! ## A315897.P6418292983206684181

`A065475(eq[A057237(n+3), A186714(2*n+1)])`
-/

namespace A315897.P6418292983206684181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186714 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315897.P6418292983206684181

/-! ## A315897.P10604219784781113782

`A314488(n)+A000035(A003422(n))`
-/

namespace A315897.P10604219784781113782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314488 n + A000035 (A003422 n).toNat

end

end A315897.P10604219784781113782

/-! ## A315897.P4425853733416567761

`A314488(n)+A209229(A181305(n))`
-/

namespace A315897.P4425853733416567761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314488 n + A209229 (A181305 n).toNat

end

end A315897.P4425853733416567761

/-! ## A315897.P17654722890272909848

`A314488(n)+A000035(A274561(n+1))`
-/

namespace A315897.P17654722890272909848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314488 n + A000035 (A274561 (n + 1)).toNat

end

end A315897.P17654722890272909848

/-! ## A315897.P9701831723837909102

`and(A047253(A227512(n+1)), A315188(n))`
-/

namespace A315897.P9701831723837909102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047253 (A227512 (n + 1)).toNat) (A315188 n)

end

end A315897.P9701831723837909102

/-!
# A315898: Coordination sequence Gal.6.296.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315898, there is no canonical definition to state claims against.
-/

/-! ## A315898.P8822202249816214997

`A315902(n)+A315915(n)-A315916(n)`
-/

namespace A315898.P8822202249816214997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 n + (A315915 n - A315916 n)

end

end A315898.P8822202249816214997

