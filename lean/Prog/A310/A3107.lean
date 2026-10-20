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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A310700: Coordination sequence Gal.5.2.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310700, there is no canonical definition to state claims against.
-/

/-! ## A310700.P9769520051642913808

`xor(A083894(A000108(n)), A360247(3*n+1))`
-/

namespace A310700.P9769520051642913808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083894 (A000108 n).toNat) (A360247 (3 * n + 1))

end

end A310700.P9769520051642913808

/-! ## A310700.P3694945856517336503

`eq[p?[A324180(n+1)], ∏{p}[n+1, 3%#²]]`
-/

namespace A310700.P3694945856517336503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), 3 % p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n

end

end A310700.P3694945856517336503

/-! ## A310700.P13736633347399261897

`∑[A262945(record[A347361(3*n+2)])]`
-/

namespace A310700.P13736633347399261897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347361 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262945 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310700.P13736633347399261897

/-! ## A310700.P14268390373507080610

`∑[A071465(A196355(n+1)+3^n)]`
-/

namespace A310700.P14268390373507080610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071465 (A196355 (n + 1) + (3 ^ n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310700.P14268390373507080610

/-! ## A310700.P10782562468393507724

`xor(A010059(A241891(n)), A161187(n+1))`
-/

namespace A310700.P10782562468393507724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010059 (A241891 n).toNat) (A161187 (n + 1))

end

end A310700.P10782562468393507724

/-!
# A310701: Coordination sequence Gal.6.31.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310701, there is no canonical definition to state claims against.
-/

/-! ## A310701.P12901055090940313001

`A008574(n)-A009947(A062399(n))`
-/

namespace A310701.P12901055090940313001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A009947 (A062399 n).toNat

end

end A310701.P12901055090940313001

/-! ## A310701.P11022334653925822372

`A008574(n)-A009947(A351870(n))`
-/

namespace A310701.P11022334653925822372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A009947 (A351870 n).toNat

end

end A310701.P11022334653925822372

/-!
# A310702: Coordination sequence Gal.4.2.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310702, there is no canonical definition to state claims against.
-/

/-! ## A310702.P1707679336806807345

`A091238(n+1)+lt[A201700(2*(n+1)), A361206(2*n+1)]`
-/

namespace A310702.P1707679336806807345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A310702.P1707679336806807345

/-! ## A310702.P703203373894957963

`A261466(A255056(n+1)-A027359(3*n+1))`
-/

namespace A310702.P703203373894957963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A255056 (n + 1) - A027359 (3 * n + 1)).toNat

end

end A310702.P703203373894957963

/-! ## A310702.P12853889135611134816

`A085516(A001197(n+2)-3)`
-/

namespace A310702.P12853889135611134816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A001197 (n + 2) - 3).toNat

end

end A310702.P12853889135611134816

/-! ## A310702.P4593591038645223358

`A340205(∑[n+3])+A209229(n)`
-/

namespace A310702.P4593591038645223358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (∑ j ∈ Finset.range (n + 1), f1 j) + A209229 n

end

end A310702.P4593591038645223358

/-! ## A310702.P5399994874216580969

`A228369(A001159(n+1))+A004744(3*n+1)`
-/

namespace A310702.P5399994874216580969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A001159 (n + 1)).toNat + A004744 (3 * n + 1)

end

end A310702.P5399994874216580969

/-!
# A310703: Coordination sequence Gal.5.17.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310703, there is no canonical definition to state claims against.
-/

/-! ## A310703.P13775522354939252001

`A111660(A270383(n)+A051597(n))`
-/

namespace A310703.P13775522354939252001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A270383 n + A051597 n).toNat

end

end A310703.P13775522354939252001

/-! ## A310703.P13331174323140013028

`A365659(2*(n+2))+A056239(A058312(n+1))`
-/

namespace A310703.P13331174323140013028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365659 (2 * (n + 2)) + A056239 (A058312 (n + 1)).toNat

end

end A310703.P13331174323140013028

/-! ## A310703.P12293278000864143301

`∑[A102853(A038620(n)²)]`
-/

namespace A310703.P12293278000864143301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 (A038620 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310703.P12293278000864143301

/-! ## A310703.P13386736038239256974

`A016813(n)-A001222(A091353(n))`
-/

namespace A310703.P13386736038239256974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A001222 (A091353 n).toNat

end

end A310703.P13386736038239256974

/-! ## A310703.P824898617282569921

`A311228(n)-A001221(A226877(n))`
-/

namespace A310703.P824898617282569921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n - A001221 (A226877 n).toNat

end

end A310703.P824898617282569921

/-!
# A310704: Coordination sequence Gal.3.2.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310704, the canonical program `A310704.P4671266649933956123` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310704 has offset 0).

The definition of A310704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310704.P4671266649933956123

`A008574(n)-A124072(A080412(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310704

/-- `A008574(n)-A124072(A080412(n))` -/
def P4671266649933956123.Spec : Prop :=
  ∀ n, P4671266649933956123.a n = A310704 n

theorem P4671266649933956123.correct : P4671266649933956123.Spec := by
  intro n
  simp only [A310704]

end A310704

/-! ## A310704.P16020943415876361998

`A008486(n)+n-A124072(A080412(n))`
-/

namespace A310704.P16020943415876361998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A124072 (A080412 n).toNat)

end

end A310704.P16020943415876361998

namespace A310704

/-- `A008486(n)+n-A124072(A080412(n))` -/
def P16020943415876361998.Spec : Prop :=
  ∀ n, P16020943415876361998.a n = A310704 n

end A310704

/-! ## A310704.P1221622203252093371

`A016777(n)+(2*n)%(n+1)-A124072(A080412(n))`
-/

namespace A310704.P1221622203252093371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (((2 * n % (n + 1) : ℕ) : ℤ) - A124072 (A080412 n).toNat)

end

end A310704.P1221622203252093371

namespace A310704

/-- `A016777(n)+(2*n)%(n+1)-A124072(A080412(n))` -/
def P1221622203252093371.Spec : Prop :=
  ∀ n, P1221622203252093371.a n = A310704 n

end A310704

/-! ## A310704.P12287355552931183212

`A008574(n)-A246552(A266491(n))`
-/

namespace A310704.P12287355552931183212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A246552 (A266491 n).toNat

end

end A310704.P12287355552931183212

namespace A310704

/-- `A008574(n)-A246552(A266491(n))` -/
def P12287355552931183212.Spec : Prop :=
  ∀ n, P12287355552931183212.a n = A310704 n

end A310704

/-! ## A310704.P8924350345226962608

`A004273(n)+A005408(n)-A246552(A266491(n))`
-/

namespace A310704.P8924350345226962608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A005408 n - A246552 (A266491 n).toNat)

end

end A310704.P8924350345226962608

namespace A310704

/-- `A004273(n)+A005408(n)-A246552(A266491(n))` -/
def P8924350345226962608.Spec : Prop :=
  ∀ n, P8924350345226962608.a n = A310704 n

end A310704

/-! ## A310704.P5748346609356873660

`A004277(2*n)-A246552(A266491(n))`
-/

namespace A310704.P5748346609356873660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A246552 (A266491 n).toNat

end

end A310704.P5748346609356873660

namespace A310704

/-- `A004277(2*n)-A246552(A266491(n))` -/
def P5748346609356873660.Spec : Prop :=
  ∀ n, P5748346609356873660.a n = A310704 n

end A310704

/-! ## A310704.P13945027523060455857

`A103517(A004273(n))-A124072(A080412(n))`
-/

namespace A310704.P13945027523060455857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A004273 n).toNat - A124072 (A080412 n).toNat

end

end A310704.P13945027523060455857

namespace A310704

/-- `A103517(A004273(n))-A124072(A080412(n))` -/
def P13945027523060455857.Spec : Prop :=
  ∀ n, P13945027523060455857.a n = A310704 n

end A310704

/-! ## A310704.P9233017890496495409

`A022998(A004277(n))-A246552(A266491(n))`
-/

namespace A310704.P9233017890496495409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A004277 n).toNat - A246552 (A266491 n).toNat

end

end A310704.P9233017890496495409

namespace A310704

/-- `A022998(A004277(n))-A246552(A266491(n))` -/
def P9233017890496495409.Spec : Prop :=
  ∀ n, P9233017890496495409.a n = A310704 n

end A310704

/-! ## A310704.P2555690572357856470

`record[A257088(n)]-A246552(A266491(n))`
-/

namespace A310704.P2555690572357856470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A246552 (A266491 n).toNat

end

end A310704.P2555690572357856470

namespace A310704

/-- `record[A257088(n)]-A246552(A266491(n))` -/
def P2555690572357856470.Spec : Prop :=
  ∀ n, P2555690572357856470.a n = A310704 n

end A310704

/-! ## A310704.P8707134034960944984

`A257088(2*n)-A246552(A266491(n))`
-/

namespace A310704.P8707134034960944984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) - A246552 (A266491 n).toNat

end

end A310704.P8707134034960944984

namespace A310704

/-- `A257088(2*n)-A246552(A266491(n))` -/
def P8707134034960944984.Spec : Prop :=
  ∀ n, P8707134034960944984.a n = A310704 n

end A310704

/-! ## A310704.P16583981798443545256

`A004525(A022144(n))-A124072(A080412(n))`
-/

namespace A310704.P16583981798443545256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat - A124072 (A080412 n).toNat

end

end A310704.P16583981798443545256

namespace A310704

/-- `A004525(A022144(n))-A124072(A080412(n))` -/
def P16583981798443545256.Spec : Prop :=
  ∀ n, P16583981798443545256.a n = A310704 n

end A310704

/-! ## A310704.P9340027607260569382

`A004525(A022144(n))-A246552(A266491(n))`
-/

namespace A310704.P9340027607260569382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat - A246552 (A266491 n).toNat

end

end A310704.P9340027607260569382

namespace A310704

/-- `A004525(A022144(n))-A246552(A266491(n))` -/
def P9340027607260569382.Spec : Prop :=
  ∀ n, P9340027607260569382.a n = A310704 n

end A310704

/-!
# A310705: Coordination sequence Gal.6.70.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310705, there is no canonical definition to state claims against.
-/

/-! ## A310705.P8756962642389438602

`∑[A285512(A320387(2*n+1)²)]`
-/

namespace A310705.P8756962642389438602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285512 (A320387 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310705.P8756962642389438602

/-! ## A310705.P11868552416738580985

`∑[A326082(A326083(n)+A326066(n+1))]`
-/

namespace A310705.P11868552416738580985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326082 (A326083 n + A326066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310705.P11868552416738580985

/-!
# A310706: Coordination sequence Gal.5.207.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310706, there is no canonical definition to state claims against.
-/

/-! ## A310706.P1786090618186260556

`record[A011974(n+1)-A000930(n)]`
-/

namespace A310706.P1786090618186260556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) - A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310706.P1786090618186260556

/-! ## A310706.P6049855134821253774

`A311342(n)-A001221(A015446(n))`
-/

namespace A310706.P6049855134821253774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 n - A001221 (A015446 n).toNat

end

end A310706.P6049855134821253774

/-! ## A310706.P3586974749637426283

`(A011974(n+1)-A000930(n))^A136400(n)!`
-/

namespace A310706.P3586974749637426283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011974 (n + 1) - A000930 n) ^ Nat.factorial (A136400 n).toNat

end

end A310706.P3586974749637426283

/-!
# A310707: Coordination sequence Gal.6.8.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310707, there is no canonical definition to state claims against.
-/

/-! ## A310707.P10244556740897700011

`A310742(n)-A083035(A249001(n+1))`
-/

namespace A310707.P10244556740897700011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310742 n - A083035 (A249001 (n + 1)).toNat

end

end A310707.P10244556740897700011

/-! ## A310707.P11864856319885102971

`A020960(n+1)-A181796(A001008(n+1))`
-/

namespace A310707.P11864856319885102971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A181796 (A001008 (n + 1)).toNat

end

end A310707.P11864856319885102971

/-! ## A310707.P4010431044327306532

`A314517(n)-A163352(A007089(n))`
-/

namespace A310707.P4010431044327306532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314517 n - A163352 (A007089 n).toNat

end

end A310707.P4010431044327306532

/-!
# A310708: Coordination sequence Gal.6.69.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310708, there is no canonical definition to state claims against.
-/

/-! ## A310708.P5187705731388277857

`lt[A357894(2*(n+2)), A357880(n+4)]+n`
-/

namespace A310708.P5187705731388277857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357894 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357880 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n

end

end A310708.P5187705731388277857

/-! ## A310708.P18145054403969541693

`A310709(n)-A235145(A148311(n))`
-/

namespace A310708.P18145054403969541693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310709 n - A235145 (A148311 n).toNat

end

end A310708.P18145054403969541693

/-! ## A310708.P14718747567975937402

`∑[A191162(A062887(n))+A020639(n+1)]`
-/

namespace A310708.P14718747567975937402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191162 (A062887 n).toNat + A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310708.P14718747567975937402

/-! ## A310708.P1233124502842226490

`A179209(n+1)-A011738(A291190(n+1))`
-/

namespace A310708.P1233124502842226490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179209 (n + 1) - A011738 (A291190 (n + 1)).toNat

end

end A310708.P1233124502842226490

/-! ## A310708.P12955405052769675778

`A066401(A310709(n)²)`
-/

namespace A310708.P12955405052769675778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (A310709 n ^ 2).toNat

end

end A310708.P12955405052769675778

/-!
# A310709: Coordination sequence Gal.6.51.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310709, there is no canonical definition to state claims against.
-/

/-! ## A310709.P12911499635829250717

`A310708(n)+A235145(A148311(n))`
-/

namespace A310709.P12911499635829250717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310708 n + A235145 (A148311 n).toNat

end

end A310709.P12911499635829250717

/-! ## A310709.P16317300635180633988

`A325194(A275950(n+1))+A310708(n)`
-/

namespace A310709.P16317300635180633988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A275950 (n + 1)).toNat + A310708 n

end

end A310709.P16317300635180633988

/-!
# A310710: Coordination sequence Gal.4.4.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310710, there is no canonical definition to state claims against.
-/

/-! ## A310710.P5565309611544585139

`A310711(n)-A010894(A310738(n))`
-/

namespace A310710.P5565309611544585139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310711 n - A010894 ((A310738 n).toNat + 21)

end

end A310710.P5565309611544585139

/-! ## A310710.P17732828633442193439

`A310764(n)-A084360(A000085(n))`
-/

namespace A310710.P17732828633442193439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310764 n - A084360 (A000085 n).toNat

end

end A310710.P17732828633442193439

/-! ## A310710.P8735199300015436822

`A310764(n)-A095792(A086581(n))`
-/

namespace A310710.P8735199300015436822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310764 n - A095792 (A086581 n).toNat

end

end A310710.P8735199300015436822

/-! ## A310710.P13546409633107693622

`A310711(n)-A010894(A310716(n))`
-/

namespace A310710.P13546409633107693622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310711 n - A010894 ((A310716 n).toNat + 21)

end

end A310710.P13546409633107693622

/-! ## A310710.P1839130009240485456

`A310764(n)-A001222(A322111(n))`
-/

namespace A310710.P1839130009240485456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310764 n - A001222 (A322111 n).toNat

end

end A310710.P1839130009240485456

/-!
# A310711: Coordination sequence Gal.6.16.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310711, there is no canonical definition to state claims against.
-/

/-! ## A310711.P2406675026812602202

`or(A160383(A000055(n)), A310710(n))`
-/

namespace A310711.P2406675026812602202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160383 (A000055 n).toNat) (A310710 n)

end

end A310711.P2406675026812602202

/-! ## A310711.P13273778040621698877

`or(A179776(A001157(n+1)), A310710(n))`
-/

namespace A310711.P13273778040621698877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179776 (A001157 (n + 1)).toNat) (A310710 n)

end

end A310711.P13273778040621698877

/-! ## A310711.P1636786792376119353

`A310710(n)+A010894(A310738(n))`
-/

namespace A310711.P1636786792376119353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A010894 ((A310738 n).toNat + 21)

end

end A310711.P1636786792376119353

/-! ## A310711.P13559709788525664847

`or(A010894(A008574(n)), A310710(n))`
-/

namespace A310711.P13559709788525664847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A008574 n).toNat + 21)) (A310710 n)

end

end A310711.P13559709788525664847

/-!
# A310715: Coordination sequence Gal.6.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310715, there is no canonical definition to state claims against.
-/

/-! ## A310715.P2965350364466826038

`A097087(A049881(n+4))`
-/

namespace A310715.P2965350364466826038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097087 (A049881 (n + 4)).toNat

end

end A310715.P2965350364466826038

/-! ## A310715.P13018664178168456682

`∑[A001222(A006756(2*(n+1)))]`
-/

namespace A310715.P13018664178168456682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006756 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310715.P13018664178168456682

/-! ## A310715.P9669144183878253936

`A300272(n+1)+A151763(A062209(n+1))`
-/

namespace A310715.P9669144183878253936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1) + A151763 (A062209 (n + 1)).toNat

end

end A310715.P9669144183878253936

/-! ## A310715.P11289490879734615435

`A323023(A080880(n))+A247810(3*n+1)`
-/

namespace A310715.P11289490879734615435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A080880 n).toNat + A247810 (3 * n + 1)

end

end A310715.P11289490879734615435

/-! ## A310715.P14421780725565378838

`A376268(3*n+1)+A054354(A333278(2*(n+1)))`
-/

namespace A310715.P14421780725565378838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376268 (3 * n + 1) + A054354 (A333278 (2 * (n + 1))).toNat

end

end A310715.P14421780725565378838

/-!
# A310716: Coordination sequence Gal.5.24.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310716, there is no canonical definition to state claims against.
-/

/-! ## A310716.P3760245243147890848

`∑[∑{e}[A345960(A016861(n)), #]]`
-/

namespace A310716.P3760245243147890848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345960 (A016861 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310716.P3760245243147890848

/-! ## A310716.P7063619477183339891

`∑[A073780(A123364(n+1)²)]`
-/

namespace A310716.P7063619477183339891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073780 (A123364 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310716.P7063619477183339891

/-! ## A310716.P7326700357703532823

`A336562(A104629(n))+A138694(n+1)`
-/

namespace A310716.P7326700357703532823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A104629 n).toNat + A138694 (n + 1)

end

end A310716.P7326700357703532823

/-! ## A310716.P13402494819220118456

`A336562(A104629(n))+3*A059325(n+2)-2`
-/

namespace A310716.P13402494819220118456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A104629 n).toNat + (3 * A059325 (n + 2) - 2)

end

end A310716.P13402494819220118456

/-! ## A310716.P14807575859330784652

`A336562(A104629(n))+(A007528(n+2)-9)/2`
-/

namespace A310716.P14807575859330784652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336562 (A104629 n).toNat : ℚ) + (A007528 (n + 2) - 9 : ℚ) / 2

end

end A310716.P14807575859330784652

/-!
# A310717: Coordination sequence Gal.6.59.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310717, there is no canonical definition to state claims against.
-/

/-! ## A310717.P11810323449188068844

`A309970(A309919(n+4))+A309960(2*(n+1))`
-/

namespace A310717.P11810323449188068844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309970 (A309919 (n + 4)).toNat + A309960 (2 * (n + 1))

end

end A310717.P11810323449188068844

/-! ## A310717.P927528241879633224

`A096533(∑[A141425(and(9, n+1)+n)+4])`
-/

namespace A310717.P927528241879633224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141425 (Nat.land 9 (n + 1) + n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096533 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310717.P927528241879633224

/-! ## A310717.P4123944473893507052

`A244736(lt[A052382(n+5), A031186(2*n)])`
-/

namespace A310717.P4123944473893507052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244736 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310717.P4123944473893507052

/-! ## A310717.P13516495791405925631

`A327984(2*n+1)+A214314(A032555(n+1))`
-/

namespace A310717.P13516495791405925631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (2 * n + 1) + A214314 (A032555 (n + 1)).toNat

end

end A310717.P13516495791405925631

/-!
# A310722: Coordination sequence Gal.6.6.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310722, there is no canonical definition to state claims against.
-/

/-! ## A310722.P17965221355850164794

`A051953(n+1)+A005245(A018031(n))`
-/

namespace A310722.P17965221355850164794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A005245 (A018031 n).toNat

end

end A310722.P17965221355850164794

/-!
# A310723: Coordination sequence Gal.6.84.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310723, there is no canonical definition to state claims against.
-/

/-! ## A310723.P14909550416317672288

`∑[A001222(A122430(n+1)*A324395(n))]+n`
-/

namespace A310723.P14909550416317672288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122430 (n + 1) * A324395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310723.P14909550416317672288

/-! ## A310723.P9281123680694753781

`∑[A001222(A215429(n+1)*A324395(n))]+n`
-/

namespace A310723.P9281123680694753781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A215429 (n + 1) * A324395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310723.P9281123680694753781

/-! ## A310723.P4015207860133496826

`xor(A011708(A001787(n)), A351290(3*n+2))`
-/

namespace A310723.P4015207860133496826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011708 (A001787 n).toNat) (A351290 (3 * n + 2))

end

end A310723.P4015207860133496826

/-! ## A310723.P2191240843387955505

`∑[A001511(A079612(n+1))]-A257993(n+1)`
-/

namespace A310723.P2191240843387955505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A079612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A257993 (n + 1)

end

end A310723.P2191240843387955505

/-! ## A310723.P5036546195633001278

`lt[A087888(n+1), A087889(A087875(3*(n+1)))]`
-/

namespace A310723.P5036546195633001278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087889 (A087875 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310723.P5036546195633001278

/-!
# A310725: Coordination sequence Gal.5.19.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310725, there is no canonical definition to state claims against.
-/

/-! ## A310725.P3980414659848872777

`A156261(A108806(3*n+2)-A327239(n+2))`
-/

namespace A310725.P3980414659848872777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A108806 (3 * n + 2) - A327239 (n + 2)).toNat

end

end A310725.P3980414659848872777

/-! ## A310725.P12789486926272982946

`A167688(A000108(n))+A052382(3*n+1)`
-/

namespace A310725.P12789486926272982946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A000108 n).toNat + A052382 (3 * n + 1)

end

end A310725.P12789486926272982946

/-! ## A310725.P15102732675691868736

`A156261(A171056(n+1)+A001651(3*n+1))`
-/

namespace A310725.P15102732675691868736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A171056 (n + 1) + A001651 (3 * n + 1)).toNat

end

end A310725.P15102732675691868736

/-! ## A310725.P1772278959897898734

`A191610(3*(n+1))-A191302(A058710(2*n+3))`
-/

namespace A310725.P1772278959897898734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (3 * (n + 1)) - A191302 (A058710 (2 * n + 3)).toNat

end

end A310725.P1772278959897898734

/-!
# A310726: Coordination sequence Gal.6.1.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310726, there is no canonical definition to state claims against.
-/

/-! ## A310726.P8850015871507886849

`A314847(n)-A083894(A000085(n)+1)-n`
-/

namespace A310726.P8850015871507886849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n - A083894 (A000085 n + 1).toNat - (n : ℤ)

end

end A310726.P8850015871507886849

/-! ## A310726.P9431221160371600587

`3*n+A026927(n+1)+A011817(n)!`
-/

namespace A310726.P9431221160371600587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A026927 (n + 1) + (Nat.factorial (A011817 n).toNat : ℤ))

end

end A310726.P9431221160371600587

/-! ## A310726.P7824648791501666930

`A103517(n)+A102364(A033191(n))`
-/

namespace A310726.P7824648791501666930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A102364 (A033191 n).toNat

end

end A310726.P7824648791501666930

/-! ## A310726.P7618340490278310188

`A004709(3*n+1)-A280710(A041151(n))`
-/

namespace A310726.P7618340490278310188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (3 * n + 1) - A280710 (A041151 n).toNat

end

end A310726.P7618340490278310188

/-!
# A310727: Coordination sequence Gal.6.37.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310727, there is no canonical definition to state claims against.
-/

/-! ## A310727.P15161876945156925093

`A340610(2*n+1)-A000035(A042984(n))`
-/

namespace A310727.P15161876945156925093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (2 * n + 1) - A000035 (A042984 n).toNat

end

end A310727.P15161876945156925093

/-! ## A310727.P2295016509660329262

`A069010(A033950(n+1))+A055571(3*n+1)`
-/

namespace A310727.P2295016509660329262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A033950 (n + 1)).toNat + A055571 (3 * n + 1)

end

end A310727.P2295016509660329262

/-! ## A310727.P18334679898876497211

`A055571(3*n+1)+A014695(A346698(n+1))`
-/

namespace A310727.P18334679898876497211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (3 * n + 1) + A014695 (A346698 (n + 1)).toNat

end

end A310727.P18334679898876497211

/-! ## A310727.P4334203510272606598

`A008574(n)-A049115(A097893(n))`
-/

namespace A310727.P4334203510272606598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A049115 (A097893 n).toNat

end

end A310727.P4334203510272606598

/-! ## A310727.P17203507189402497110

`A008574(n)-A001222(A149672(n))`
-/

namespace A310727.P17203507189402497110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001222 (A149672 n).toNat

end

end A310727.P17203507189402497110

/-!
# A310728: Coordination sequence Gal.4.27.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310728, there is no canonical definition to state claims against.
-/

/-! ## A310728.P17430141712154335181

`record[A325352(3*n+5)+A002265(n)]`
-/

namespace A310728.P17430141712154335181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (3 * n + 5) + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310728.P17430141712154335181

/-! ## A310728.P4104117551234463347

`A113773(A122762(n+2))+A037474(3*n)`
-/

namespace A310728.P4104117551234463347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113773 (A122762 (n + 2)).toNat + A037474 (3 * n)

end

end A310728.P4104117551234463347

/-! ## A310728.P1359098282442918817

`A103775(A157612(n))+A003726(3*n+1)`
-/

namespace A310728.P1359098282442918817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103775 (A157612 n).toNat + A003726 (3 * n + 1)

end

end A310728.P1359098282442918817

/-! ## A310728.P9651504924649218455

`A103775(A321467(n))+A003726(3*n+1)`
-/

namespace A310728.P9651504924649218455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103775 (A321467 n).toNat + A003726 (3 * n + 1)

end

end A310728.P9651504924649218455

/-!
# A310729: Coordination sequence Gal.5.1.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310729, there is no canonical definition to state claims against.
-/

/-! ## A310729.P10611856671444987811

`A247157(n+1)+∑[A304034(n+1)]`
-/

namespace A310729.P10611856671444987811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247157 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310729.P10611856671444987811

/-! ## A310729.P1195341018506106622

`A045716(n+1)+A001221(A004663(n))`
-/

namespace A310729.P1195341018506106622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) + A001221 (A004663 n).toNat

end

end A310729.P1195341018506106622

/-! ## A310729.P7152443613994402979

`∑[A007895(A225430(n+3))]`
-/

namespace A310729.P7152443613994402979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A225430 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310729.P7152443613994402979

/-! ## A310729.P16502764814653908468

`∑[A000031(A001222(4*3^n-3))]`
-/

namespace A310729.P16502764814653908468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A001222 (4 * 3 ^ n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310729.P16502764814653908468

/-!
# A310730: Coordination sequence Gal.6.104.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310730, there is no canonical definition to state claims against.
-/

/-! ## A310730.P15252418093621937024

`A106744(or(1, A311273(n)))`
-/

namespace A310730.P15252418093621937024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (Int.lor 1 (A311273 n)).toNat

end

end A310730.P15252418093621937024

/-! ## A310730.P9536674519806553237

`A322534(n+1)+A305053(A306564(n+1))`
-/

namespace A310730.P9536674519806553237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322534 (n + 1) + A305053 (A306564 (n + 1)).toNat

end

end A310730.P9536674519806553237

/-! ## A310730.P15740602440453659319

`A340599(A206727(n+1))+A004709(3*n+1)`
-/

namespace A310730.P15740602440453659319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A206727 (n + 1)).toNat + A004709 (3 * n + 1)

end

end A310730.P15740602440453659319

/-!
# A310731: Coordination sequence Gal.6.105.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310731, there is no canonical definition to state claims against.
-/

/-! ## A310731.P2773090705099221367

`or(A001222(A008610(n)), A247157(n+1))`
-/

namespace A310731.P2773090705099221367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A008610 n).toNat) (A247157 (n + 1))

end

end A310731.P2773090705099221367

/-! ## A310731.P4807961347002564622

`or(A004524(A027420(n)), A247157(n+1))`
-/

namespace A310731.P4807961347002564622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004524 (A027420 n).toNat) (A247157 (n + 1))

end

end A310731.P4807961347002564622

/-! ## A310731.P10693593248984712328

`or(A008676(A320124(n)), A247157(n+1))`
-/

namespace A310731.P10693593248984712328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008676 (A320124 n).toNat) (A247157 (n + 1))

end

end A310731.P10693593248984712328

/-! ## A310731.P14250138075977294581

`or(A025480(A321464(n)), A247157(n+1))`
-/

namespace A310731.P14250138075977294581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025480 (A321464 n).toNat) (A247157 (n + 1))

end

end A310731.P14250138075977294581

/-! ## A310731.P15785764736985046924

`or(A247157(n+1), A347696(A006068(n)))`
-/

namespace A310731.P15785764736985046924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A247157 (n + 1)) (A347696 (A006068 n).toNat)

end

end A310731.P15785764736985046924

/-!
# A310732: Coordination sequence Gal.5.16.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310732, there is no canonical definition to state claims against.
-/

/-! ## A310732.P3848856895884620937

`∑[A152271(n)+∑{p}[4^n, #]]`
-/

namespace A310732.P3848856895884620937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310732.P3848856895884620937

/-! ## A310732.P12572059482257552203

`∑[A098201(A098092(n))]-1`
-/

namespace A310732.P12572059482257552203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098201 (A098092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A310732.P12572059482257552203

/-! ## A310732.P4165284909532288533

`A023750(3*n+2)%A322644(n+1)`
-/

namespace A310732.P4165284909532288533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023750 (3 * n + 2)) (A322644 (n + 1))

end

end A310732.P4165284909532288533

/-! ## A310732.P4649858710345491221

`A238617(C(A005349(n+1), n))+n+n`
-/

namespace A310732.P4649858710345491221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (Nat.choose (A005349 (n + 1)).toNat n) + (n : ℤ) + (n : ℤ)

end

end A310732.P4649858710345491221

/-! ## A310732.P2543841753966944962

`A032896(3*n+1)%∑[A138699(n+1)]`
-/

namespace A310732.P2543841753966944962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032896 (3 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A310732.P2543841753966944962

/-!
# A310734: Coordination sequence Gal.6.69.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310734, there is no canonical definition to state claims against.
-/

/-! ## A310734.P7024931780568159438

`A325194(A275950(n+1))+A310733(n)`
-/

namespace A310734.P7024931780568159438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A275950 (n + 1)).toNat + A310733 n

end

end A310734.P7024931780568159438

/-! ## A310734.P1464865363331047686

`or(A310733(n), A319759(A001414(n+1)))`
-/

namespace A310734.P1464865363331047686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310733 n) (A319759 (A001414 (n + 1)).toNat)

end

end A310734.P1464865363331047686

/-!
# A310735: Coordination sequence Gal.6.8.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310735, there is no canonical definition to state claims against.
-/

/-! ## A310735.P11990189436830292873

`A365624(n+1)-A045545(A115509(n+1))`
-/

namespace A310735.P11990189436830292873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365624 (n + 1) - A045545 (A115509 (n + 1)).toNat

end

end A310735.P11990189436830292873

/-! ## A310735.P18258047756926322626

`A371447(A276463(n)+2)-A006218(A326851(n))`
-/

namespace A310735.P18258047756926322626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A006218 (A326851 n).toNat

end

end A310735.P18258047756926322626

/-! ## A310735.P5865734325017322462

`A371447(A276463(n)+2)-A144156(A119467(n+1))`
-/

namespace A310735.P5865734325017322462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A144156 (A119467 (n + 1)).toNat

end

end A310735.P5865734325017322462

/-! ## A310735.P17542231343299566193

`A371447(A276463(n)+2)-A202812(A064989(n+1))`
-/

namespace A310735.P17542231343299566193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A202812 (A064989 (n + 1)).toNat

end

end A310735.P17542231343299566193

/-! ## A310735.P17576440482470873626

`A371447(A276463(n)+2)-A318812(A057762(n+2))`
-/

namespace A310735.P17576440482470873626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A318812 (A057762 (n + 2)).toNat

end

end A310735.P17576440482470873626

/-!
# A310736: Coordination sequence Gal.5.34.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310736, there is no canonical definition to state claims against.
-/

/-! ## A310736.P17571881727811229405

`A362416(n+1)+A305079(A002426(n))`
-/

namespace A310736.P17571881727811229405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362416 (n + 1) + A305079 (A002426 n).toNat

end

end A310736.P17571881727811229405

/-! ## A310736.P12656094166780635442

`A334944(A063983(n))+A325097(3*n+1)`
-/

namespace A310736.P12656094166780635442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334944 (A063983 n).toNat + A325097 (3 * n + 1)

end

end A310736.P12656094166780635442

/-!
# A310737: Coordination sequence Gal.3.35.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310737, there is no canonical definition to state claims against.
-/

/-! ## A310737.P13123556699754879090

`A276854(n)+A231335(A002620(n))`
-/

namespace A310737.P13123556699754879090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + A231335 (A002620 n).toNat

end

end A310737.P13123556699754879090

/-! ## A310737.P1214469558342403195

`or(A106404(A106421(n)), A239215(3*n+1))`
-/

namespace A310737.P1214469558342403195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106404 (A106421 n).toNat) (A239215 (3 * n + 1))

end

end A310737.P1214469558342403195

/-! ## A310737.P1034797262844809321

`A346128(A095375(n+1))`
-/

namespace A310737.P1034797262844809321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346128 (A095375 (n + 1)).toNat

end

end A310737.P1034797262844809321

/-! ## A310737.P5619605599739812115

`A311813(n)-A297033(A002878(n))`
-/

namespace A310737.P5619605599739812115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311813 n - A297033 (A002878 n).toNat

end

end A310737.P5619605599739812115

/-! ## A310737.P5437496315775458876

`A004709(3*n+2)-A119395(A026641(n))`
-/

namespace A310737.P5437496315775458876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (3 * n + 2) - A119395 (A026641 n).toNat

end

end A310737.P5437496315775458876

/-!
# A310738: Coordination sequence Gal.6.83.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310738, there is no canonical definition to state claims against.
-/

/-! ## A310738.P3176681344251966315

`A310073(n)+A219098(A314253(n))`
-/

namespace A310738.P3176681344251966315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310073 n + A219098 (A314253 n).toNat

end

end A310738.P3176681344251966315

/-! ## A310738.P9366611469147124195

`A312143(n)-A000120(A014335(n))`
-/

namespace A310738.P9366611469147124195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n - A000120 (A014335 n).toNat

end

end A310738.P9366611469147124195

/-! ## A310738.P17214122713543731987

`A311257(n)-A001222(A149662(n))`
-/

namespace A310738.P17214122713543731987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n - A001222 (A149662 n).toNat

end

end A310738.P17214122713543731987

/-! ## A310738.P16410320934922074756

`A008574(n)-A001822(A001008(n+1))`
-/

namespace A310738.P16410320934922074756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001822 (A001008 (n + 1)).toNat

end

end A310738.P16410320934922074756

/-! ## A310738.P7813009175698311456

`A302696(2*n+1)-A141738(A106529(n+1))`
-/

namespace A310738.P7813009175698311456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (2 * n + 1) - A141738 (A106529 (n + 1)).toNat

end

end A310738.P7813009175698311456

/-!
# A310739: Coordination sequence Gal.6.26.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310739, there is no canonical definition to state claims against.
-/

/-! ## A310739.P5581812974166490341

`A002202(2*n+1)-A001222(A086595(n+1))`
-/

namespace A310739.P5581812974166490341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (2 * n + 1) - A001222 (A086595 (n + 1)).toNat

end

end A310739.P5581812974166490341

/-! ## A310739.P6986616587416367248

`A171587(A003418(n))+A067278(n)`
-/

namespace A310739.P6986616587416367248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A003418 n).toNat + A067278 n

end

end A310739.P6986616587416367248

/-! ## A310739.P18341275925466337855

`A311510(n)-A001222(A149062(n))`
-/

namespace A310739.P18341275925466337855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311510 n - A001222 (A149062 n).toNat

end

end A310739.P18341275925466337855

/-! ## A310739.P1336361698457346805

`A311813(n)-A001221(A328435(n))`
-/

namespace A310739.P1336361698457346805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311813 n - A001221 (A328435 n).toNat

end

end A310739.P1336361698457346805

/-! ## A310739.P2380971755553639213

`A311946(n)-A297033(A048498(n))`
-/

namespace A310739.P2380971755553639213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311946 n - A297033 (A048498 n).toNat

end

end A310739.P2380971755553639213

/-!
# A310740: Coordination sequence Gal.4.3.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310740, there is no canonical definition to state claims against.
-/

/-! ## A310740.P5558691820408068470

`A007149(A017197(n))-A269175(n)`
-/

namespace A310740.P5558691820408068470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A017197 n).toNat - A269175 n

end

end A310740.P5558691820408068470

/-! ## A310740.P8795440496324918934

`A060831(2*n+1)+A011745(A000588(n))`
-/

namespace A310740.P8795440496324918934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (2 * n + 1) + A011745 (A000588 n).toNat

end

end A310740.P8795440496324918934

/-! ## A310740.P12134432072305573052

`A356841(3*n+2)+A347244(A286409(3*(n+1)))`
-/

namespace A310740.P12134432072305573052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (3 * n + 2) + A347244 (A286409 (3 * (n + 1))).toNat

end

end A310740.P12134432072305573052

/-! ## A310740.P2225231049576385363

`∑[dr(A056556(A234849(n+1)))]`
-/

namespace A310740.P2225231049576385363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A056556 (A234849 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310740.P2225231049576385363

/-! ## A310740.P1341760075882508660

`A313162(n)-A001222(A214372(n+1))`
-/

namespace A310740.P1341760075882508660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313162 n - A001222 (A214372 (n + 1)).toNat

end

end A310740.P1341760075882508660

/-!
# A310741: Coordination sequence Gal.4.21.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310741, there is no canonical definition to state claims against.
-/

/-! ## A310741.P10902454025114124698

`A311340(n)+A057428(A091002(n))`
-/

namespace A310741.P10902454025114124698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + A057428 (A091002 n).toNat

end

end A310741.P10902454025114124698

/-! ## A310741.P8653954840633959478

`A311340(n)+A057428(A097861(n))`
-/

namespace A310741.P8653954840633959478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n + A057428 (A097861 n).toNat

end

end A310741.P8653954840633959478

/-! ## A310741.P9741365457667455270

`A311340(n)-A060576(A002537(n))`
-/

namespace A310741.P9741365457667455270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n - A060576 (A002537 n).toNat

end

end A310741.P9741365457667455270

/-! ## A310741.P425894849462345969

`A311340(n)-A124010(A002426(n))`
-/

namespace A310741.P425894849462345969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n - A124010 (A002426 n).toNat

end

end A310741.P425894849462345969

/-! ## A310741.P4064578594346274096

`A311340(n)-A060576(A126292(n))`
-/

namespace A310741.P4064578594346274096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311340 n - A060576 (A126292 n).toNat

end

end A310741.P4064578594346274096

/-!
# A310742: Coordination sequence Gal.6.9.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310742, there is no canonical definition to state claims against.
-/

/-! ## A310742.P5242578195919908037

`A310707(n)+A083035(A249001(n+1))`
-/

namespace A310742.P5242578195919908037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310707 n + A083035 (A249001 (n + 1)).toNat

end

end A310742.P5242578195919908037

/-! ## A310742.P16463957494126265599

`A269164(3*n+1)-A010059(A042281(n))`
-/

namespace A310742.P16463957494126265599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (3 * n + 1) - A010059 (A042281 n).toNat

end

end A310742.P16463957494126265599

/-! ## A310742.P10411571967295125605

`A314871(n)-A001221(A154638(n))`
-/

namespace A310742.P10411571967295125605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314871 n - A001221 (A154638 n).toNat

end

end A310742.P10411571967295125605

/-! ## A310742.P10722866415260871974

`A312177(n)-A000120(A211606(n))`
-/

namespace A310742.P10722866415260871974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312177 n - A000120 (A211606 n).toNat

end

end A310742.P10722866415260871974

/-! ## A310742.P11163021055840185394

`A311765(n)-A322307(A223171(n))`
-/

namespace A310742.P11163021055840185394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311765 n - A322307 (A223171 n).toNat

end

end A310742.P11163021055840185394

/-!
# A310743: Coordination sequence Gal.6.5.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310743, there is no canonical definition to state claims against.
-/

/-! ## A310743.P1376833496602040370

`A311404(n)-A004216(A303220(n+1))`
-/

namespace A310743.P1376833496602040370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311404 n - A004216 (A303220 (n + 1)).toNat

end

end A310743.P1376833496602040370

/-! ## A310743.P14471240270042439250

`A354581(3*n)+A353932(A003242(n))`
-/

namespace A310743.P14471240270042439250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (3 * n) + A353932 (A003242 n).toNat

end

end A310743.P14471240270042439250

/-! ## A310743.P1241274243750013667

`eq[A101608(n+1), A133265(A000292(n))]`
-/

namespace A310743.P1241274243750013667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A000292 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310743.P1241274243750013667

/-! ## A310743.P3309391016329532637

`A298784(n)+∑[A279952(A017985(2*n))]`
-/

namespace A310743.P3309391016329532637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (A017985 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310743.P3309391016329532637

/-! ## A310743.P11070570488432166681

`A001177(A005248(n))+1-A110569(n+3)`
-/

namespace A310743.P11070570488432166681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A005248 n).toNat + 1 - A110569 (n + 3)

end

end A310743.P11070570488432166681

/-!
# A310744: Coordination sequence Gal.4.11.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310744, the canonical program `A310744.P2102905835264257855` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310744 has offset 0).

The definition of A310744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310744.P2102905835264257855

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=11, a(4)=16, a(5)=18, a(6)=23, a(7)=27, a(8)=29, a(9)=34`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310744

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P2102905835264257855.Spec : Prop :=
  ∀ n, P2102905835264257855.a n = A310744 n

theorem P2102905835264257855.correct : P2102905835264257855.Spec := by
  intro n
  simp only [A310744]

end A310744

/-! ## A310744.P2546959216659166059

`A008574(n)-A008612(A222257(n))`
-/

namespace A310744.P2546959216659166059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A008612 (A222257 n).toNat

end

end A310744.P2546959216659166059

namespace A310744

/-- `A008574(n)-A008612(A222257(n))` -/
def P2546959216659166059.Spec : Prop :=
  ∀ n, P2546959216659166059.a n = A310744 n

end A310744

/-! ## A310744.P6154006513667127018

`record[A257088(n)]-A008612(A222257(n))`
-/

namespace A310744.P6154006513667127018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008612 (A222257 n).toNat

end

end A310744.P6154006513667127018

namespace A310744

/-- `record[A257088(n)]-A008612(A222257(n))` -/
def P6154006513667127018.Spec : Prop :=
  ∀ n, P6154006513667127018.a n = A310744 n

end A310744

/-! ## A310744.P5608620076875419061

`A004277(2*n)-A008612(A222257(n))`
-/

namespace A310744.P5608620076875419061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A008612 (A222257 n).toNat

end

end A310744.P5608620076875419061

namespace A310744

/-- `A004277(2*n)-A008612(A222257(n))` -/
def P5608620076875419061.Spec : Prop :=
  ∀ n, P5608620076875419061.a n = A310744 n

end A310744

/-! ## A310744.P2940038827581433313

`A257088(2*n)-A008612(A222257(n))`
-/

namespace A310744.P2940038827581433313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) - A008612 (A222257 n).toNat

end

end A310744.P2940038827581433313

namespace A310744

/-- `A257088(2*n)-A008612(A222257(n))` -/
def P2940038827581433313.Spec : Prop :=
  ∀ n, P2940038827581433313.a n = A310744 n

end A310744

/-! ## A310744.P8944058564408408934

`A117910(n+2)+A008574(n)-A117910(2*n+3)`
-/

namespace A310744.P8944058564408408934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (n + 2) + (A008574 n - A117910 (2 * n + 3))

end

end A310744.P8944058564408408934

namespace A310744

/-- `A117910(n+2)+A008574(n)-A117910(2*n+3)` -/
def P8944058564408408934.Spec : Prop :=
  ∀ n, P8944058564408408934.a n = A310744 n

end A310744

/-! ## A310744.P6008240718798863622

`A004396(A008458(n))-A008612(A222257(n))`
-/

namespace A310744.P6008240718798863622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008458 n).toNat - A008612 (A222257 n).toNat

end

end A310744.P6008240718798863622

namespace A310744

/-- `A004396(A008458(n))-A008612(A222257(n))` -/
def P6008240718798863622.Spec : Prop :=
  ∀ n, P6008240718798863622.a n = A310744 n

end A310744

/-! ## A310744.P5343884328061172441

`A004525(A022144(n))-A008612(A222257(n))`
-/

namespace A310744.P5343884328061172441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat - A008612 (A222257 n).toNat

end

end A310744.P5343884328061172441

namespace A310744

/-- `A004525(A022144(n))-A008612(A222257(n))` -/
def P5343884328061172441.Spec : Prop :=
  ∀ n, P5343884328061172441.a n = A310744 n

end A310744

/-!
# A310745: Coordination sequence Gal.4.7.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310745, there is no canonical definition to state claims against.
-/

/-! ## A310745.P4654565064651135689

`A359159(2*n+1)-A329340(A000045(n+2))`
-/

namespace A310745.P4654565064651135689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359159 (2 * n + 1) - A329340 (A000045 (n + 2)).toNat

end

end A310745.P4654565064651135689

/-! ## A310745.P8332295735114432260

`A115729(n²)+A047222(n+1)`
-/

namespace A310745.P8332295735114432260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115729 (n ^ 2) + A047222 (n + 1)

end

end A310745.P8332295735114432260

/-! ## A310745.P15022005136890063192

`record[A247655(n+1)+A247641(n+2)]`
-/

namespace A310745.P15022005136890063192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A247641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310745.P15022005136890063192

/-! ## A310745.P531206459314173827

`A008574(n)+A005094(A149018(n))`
-/

namespace A310745.P531206459314173827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005094 (A149018 n).toNat

end

end A310745.P531206459314173827

/-! ## A310745.P14238033019174752654

`A310708(n)+A188086(A005470(n))`
-/

namespace A310745.P14238033019174752654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310708 n + A188086 (A005470 n).toNat

end

end A310745.P14238033019174752654

/-!
# A310746: Coordination sequence Gal.6.41.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310746, there is no canonical definition to state claims against.
-/

/-! ## A310746.P5735160327240105876

`A311827(n)-A001222(A120305(n))`
-/

namespace A310746.P5735160327240105876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311827 n - A001222 (A120305 n).toNat

end

end A310746.P5735160327240105876

/-! ## A310746.P15323508109770026474

`A311445(n)-A001222(A148767(n))`
-/

namespace A310746.P15323508109770026474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311445 n - A001222 (A148767 n).toNat

end

end A310746.P15323508109770026474

/-! ## A310746.P304036134861801734

`A196563(A319778(n))+A131098(n+1)`
-/

namespace A310746.P304036134861801734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A319778 n).toNat + A131098 (n + 1)

end

end A310746.P304036134861801734

/-! ## A310746.P14290399873161169325

`A311883(n)-A001222(A001226(n+1))`
-/

namespace A310746.P14290399873161169325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311883 n - A001222 (A001226 (n + 1)).toNat

end

end A310746.P14290399873161169325

/-! ## A310746.P8428789761116112641

`A311918(n)-A001221(A098746(n))`
-/

namespace A310746.P8428789761116112641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n - A001221 (A098746 n).toNat

end

end A310746.P8428789761116112641

/-!
# A310747: Coordination sequence Gal.6.32.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310747, there is no canonical definition to state claims against.
-/

/-! ## A310747.P17174039531784409691

`record[xor(3, n)]-A083399(A063488(2*(n+2)))`
-/

namespace A310747.P17174039531784409691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A083399 (A063488 (2 * (n + 2))).toNat

end

end A310747.P17174039531784409691

/-! ## A310747.P14056494108962258557

`floor((sqrt(3)+2)*(n+1))-1-A014963(A018261(n+1))`
-/

namespace A310747.P14056494108962258557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋ - 1 - A014963 (A018261 (n + 1)).toNat

end

end A310747.P14056494108962258557

/-! ## A310747.P12357542126657623641

`A312065(n)-A001221(A155069(n))`
-/

namespace A310747.P12357542126657623641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A001221 (A155069 n).toNat

end

end A310747.P12357542126657623641

/-! ## A310747.P9912323521477982696

`A340205(A325544(2*n+3)-A050176(n+1))`
-/

namespace A310747.P9912323521477982696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A325544 (2 * n + 3) - A050176 (n + 1)).toNat

end

end A310747.P9912323521477982696

/-!
# A310748: Coordination sequence Gal.6.47.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310748, there is no canonical definition to state claims against.
-/

/-! ## A310748.P937358719270261321

`A314708(n)-A001221(A231331(2*n))`
-/

namespace A310748.P937358719270261321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n - A001221 (A231331 (2 * n)).toNat

end

end A310748.P937358719270261321

/-! ## A310748.P9287723583267332926

`A013948(2*n+1)-A257023(A000578(n+1))`
-/

namespace A310748.P9287723583267332926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (2 * n + 1) - A257023 (A000578 (n + 1)).toNat

end

end A310748.P9287723583267332926

/-! ## A310748.P402303723723350274

`A060644(n)+A001222(n!)`
-/

namespace A310748.P402303723723350274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 n + A001222 (Nat.factorial n)

end

end A310748.P402303723723350274

/-! ## A310748.P12038546672118320127

`∑[A087175(Δ[A005043(n+4)])]`
-/

namespace A310748.P12038546672118320127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310748.P12038546672118320127

/-! ## A310748.P12450493177107738135

`∑[A116543(Δ[A002182(2*(n+2))])]`
-/

namespace A310748.P12450493177107738135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310748.P12450493177107738135

/-!
# A310749: Coordination sequence Gal.6.13.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310749, there is no canonical definition to state claims against.
-/

/-! ## A310749.P2184752912800512153

`A106744(A250120(n)-A294881(n+1))`
-/

namespace A310749.P2184752912800512153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A250120 n - A294881 (n + 1)).toNat

end

end A310749.P2184752912800512153

/-! ## A310749.P8468769430149794711

`A106744(A072154(2*n)-A294881(n+1))`
-/

namespace A310749.P8468769430149794711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A072154 (2 * n) - A294881 (n + 1)).toNat

end

end A310749.P8468769430149794711

/-! ## A310749.P5245388259018367323

`A351393(3*n+5)-A010054(A147386(n+1))`
-/

namespace A310749.P5245388259018367323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351393 (3 * n + 5) - A010054 (A147386 (n + 1)).toNat

end

end A310749.P5245388259018367323

/-! ## A310749.P14892817270951871377

`A351393(3*n+5)-A237048(A134534(3*n+1))`
-/

namespace A310749.P14892817270951871377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351393 (3 * n + 5) - A237048 (A134534 (3 * n + 1)).toNat

end

end A310749.P14892817270951871377

/-! ## A310749.P4377694538842383377

`A351393(3*n+5)-A019590(A351352(2*(n+5)))`
-/

namespace A310749.P4377694538842383377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351393 (3 * n + 5) - A019590 (A351352 (2 * (n + 5))).toNat

end

end A310749.P4377694538842383377

/-!
# A310750: Coordination sequence Gal.6.481.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310750, there is no canonical definition to state claims against.
-/

/-! ## A310750.P15852277512460864769

`A320058(3*n+1)+A280816(A001608(2*(n+2)))`
-/

namespace A310750.P15852277512460864769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320058 (3 * n + 1) + A280816 (A001608 (2 * (n + 2))).toNat

end

end A310750.P15852277512460864769

/-! ## A310750.P7874019881814433761

`A311493(A062399(n))-A004396(A057365(n))`
-/

namespace A310750.P7874019881814433761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A062399 n).toNat - A004396 (A057365 n).toNat

end

end A310750.P7874019881814433761

/-! ## A310750.P8828213792352142700

`A311493(A120126(n))-A004396(A057365(n))`
-/

namespace A310750.P8828213792352142700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A120126 n).toNat - A004396 (A057365 n).toNat

end

end A310750.P8828213792352142700

/-! ## A310750.P17487881225018959076

`A311493(A351870(n))-A004396(A057365(n))`
-/

namespace A310750.P17487881225018959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 (A351870 n).toNat - A004396 (A057365 n).toNat

end

end A310750.P17487881225018959076

/-! ## A310750.P16294899563677403105

`∑[A336361(A282629(3*n+2))]`
-/

namespace A310750.P16294899563677403105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (A282629 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310750.P16294899563677403105

/-!
# A310751: Coordination sequence Gal.6.82.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310751, there is no canonical definition to state claims against.
-/

/-! ## A310751.P3770605957380559507

`∑[A318928(∑[A192860(n+2)])]`
-/

namespace A310751.P3770605957380559507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192860 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310751.P3770605957380559507

/-! ## A310751.P561097659996305811

`A314712(n)-A001221(A156945(n))`
-/

namespace A310751.P561097659996305811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n - A001221 (A156945 n).toNat

end

end A310751.P561097659996305811

/-! ## A310751.P5305082807328733863

`A311187(n)-A188009(A107694(n+1))`
-/

namespace A310751.P5305082807328733863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311187 n - A188009 (A107694 (n + 1)).toNat

end

end A310751.P5305082807328733863

/-! ## A310751.P4760712107980948221

`∑[A001222(A055427(n))+1]+n`
-/

namespace A310751.P4760712107980948221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055427 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310751.P4760712107980948221

/-! ## A310751.P10080189439411713384

`∑[A001222(A083859(n+1)+1)+2]-2`
-/

namespace A310751.P10080189439411713384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083859 (n + 1) + 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A310751.P10080189439411713384

/-!
# A310752: Coordination sequence Gal.6.14.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310752, there is no canonical definition to state claims against.
-/

/-! ## A310752.P3083247752175865267

`A311598(n)-A001221(A149064(n))`
-/

namespace A310752.P3083247752175865267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 n - A001221 (A149064 n).toNat

end

end A310752.P3083247752175865267

/-! ## A310752.P5092988812383773491

`A312100(n)-A001221(A149489(n))`
-/

namespace A310752.P5092988812383773491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - A001221 (A149489 n).toNat

end

end A310752.P5092988812383773491

/-! ## A310752.P15455135670393480365

`A314761(n)-A001222(A186021(n))`
-/

namespace A310752.P15455135670393480365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n - A001222 (A186021 n).toNat

end

end A310752.P15455135670393480365

/-! ## A310752.P4336523450946630360

`A114904(3*n+1)-A068202(A327742(3*n+1))`
-/

namespace A310752.P4336523450946630360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114904 (3 * n + 1) - A068202 (A327742 (3 * n + 1)).toNat

end

end A310752.P4336523450946630360

/-! ## A310752.P194382604924636709

`record[A002378(n+1)-A327516(2*n+1)]`
-/

namespace A310752.P194382604924636709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - A327516 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310752.P194382604924636709

/-!
# A310754: Coordination sequence Gal.6.66.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310754, there is no canonical definition to state claims against.
-/

/-! ## A310754.P11778174768654540589

`A310790(n)-A344120(A000071(n+1))`
-/

namespace A310754.P11778174768654540589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310790 n - A344120 (A000071 (n + 1)).toNat

end

end A310754.P11778174768654540589

/-! ## A310754.P10721620490870040704

`eq[A002260(n+1), A002828(A027193(n))]`
-/

namespace A310754.P10721620490870040704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A027193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310754.P10721620490870040704

/-! ## A310754.P1750465850458555825

`A311598(n)-A001221(A001003(n))`
-/

namespace A310754.P1750465850458555825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 n - A001221 (A001003 n).toNat

end

end A310754.P1750465850458555825

/-! ## A310754.P6127733842287374274

`A311885(n)-A325166(A292400(n))`
-/

namespace A310754.P6127733842287374274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 n - A325166 (A292400 n).toNat

end

end A310754.P6127733842287374274

/-! ## A310754.P8950630331920154265

`A137579(A097634(n+1))+A016777(n)`
-/

namespace A310754.P8950630331920154265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A097634 (n + 1)).toNat + A016777 n

end

end A310754.P8950630331920154265

/-!
# A310755: Coordination sequence Gal.5.217.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310755, there is no canonical definition to state claims against.
-/

/-! ## A310755.P7778735362723743940

`A310673(n)+A310676(n)-A310658(n)`
-/

namespace A310755.P7778735362723743940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310673 n + (A310676 n - A310658 n)

end

end A310755.P7778735362723743940

/-! ## A310755.P16736446517110611682

`A317193(A220777(n))+A310076(n)%A267554(n+1)`
-/

namespace A310755.P16736446517110611682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (A220777 n).toNat + Int.tmod (A310076 n) (A267554 (n + 1))

end

end A310755.P16736446517110611682

/-!
# A310757: Coordination sequence Gal.6.317.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310757, there is no canonical definition to state claims against.
-/

/-! ## A310757.P11860467403883124340

`A311366(n)-A005369(A192401(n))`
-/

namespace A310757.P11860467403883124340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311366 n - A005369 (A192401 n).toNat

end

end A310757.P11860467403883124340

/-! ## A310757.P46402592185108504

`A311547(n)-A043545(A294800(n))`
-/

namespace A310757.P46402592185108504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311547 n - A043545 (A294800 n).toNat

end

end A310757.P46402592185108504

/-! ## A310757.P16187191612619991888

`A311547(n)-A191904(A148653(n))`
-/

namespace A310757.P16187191612619991888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311547 n - A191904 (A148653 n).toNat

end

end A310757.P16187191612619991888

/-! ## A310757.P12820817791932885089

`A311547(n)-A191904(A096020(n+1))`
-/

namespace A310757.P12820817791932885089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311547 n - A191904 (A096020 (n + 1)).toNat

end

end A310757.P12820817791932885089

/-!
# A310758: Coordination sequence Gal.6.16.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310758, there is no canonical definition to state claims against.
-/

/-! ## A310758.P4697781253013520350

`A000040(n+1)+A001221(A000737(n))+n-1`
-/

namespace A310758.P4697781253013520350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001221 (A000737 n).toNat + ((n : ℤ) - 1))

end

end A310758.P4697781253013520350

/-! ## A310758.P1031431040683436881

`A311518(n)-A298804(A298804(n+2))`
-/

namespace A310758.P1031431040683436881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311518 n - A298804 (A298804 (n + 2)).toNat

end

end A310758.P1031431040683436881

/-!
# A310760: Coordination sequence Gal.3.4.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310760, there is no canonical definition to state claims against.
-/

/-! ## A310760.P8886744859183506127

`A298789(n)+A001221(A202705(n))`
-/

namespace A310760.P8886744859183506127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 n + A001221 (A202705 n).toNat

end

end A310760.P8886744859183506127

/-! ## A310760.P16447052713011436892

`A310707(n)+A217207(A001200(n))`
-/

namespace A310760.P16447052713011436892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310707 n + A217207 (A001200 n).toNat

end

end A310760.P16447052713011436892

/-! ## A310760.P821512934483638835

`A301291(n)-A001222(A150928(n))`
-/

namespace A310760.P821512934483638835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A001222 (A150928 n).toNat

end

end A310760.P821512934483638835

/-! ## A310760.P14824288441795627824

`A311555(n)-A089840(A349800(n))`
-/

namespace A310760.P14824288441795627824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311555 n - A089840 (A349800 n).toNat

end

end A310760.P14824288441795627824

/-! ## A310760.P6904297389481266856

`A312678(n)-A356159(A005750(n+1))`
-/

namespace A310760.P6904297389481266856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312678 n - A356159 (A005750 (n + 1)).toNat

end

end A310760.P6904297389481266856

/-!
# A310761: Coordination sequence Gal.6.71.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310761, there is no canonical definition to state claims against.
-/

/-! ## A310761.P1620428181959828386

`∑[A194832(A298670(2*(n+1)))]`
-/

namespace A310761.P1620428181959828386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A298670 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310761.P1620428181959828386

/-! ## A310761.P17696901621695457538

`∑[A359211(∑[A099003(n)])]`
-/

namespace A310761.P17696901621695457538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359211 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310761.P17696901621695457538

/-! ## A310761.P4361101700596405783

`A076368(n+1)+∑[A262682(∑[n^4])+2]-2`
-/

namespace A310761.P4361101700596405783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262682 (∑ j ∈ Finset.range (n + 1), f2 j) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A310761.P4361101700596405783

/-! ## A310761.P9495775830079593844

`A100053(A293735(n))+A003622(n+1)`
-/

namespace A310761.P9495775830079593844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (A293735 n).toNat + A003622 (n + 1)

end

end A310761.P9495775830079593844

/-! ## A310761.P11374735262699364333

`A314880(n)-A089263(A068620(n+1))`
-/

namespace A310761.P11374735262699364333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314880 n - A089263 (A068620 (n + 1)).toNat

end

end A310761.P11374735262699364333

/-!
# A310762: Coordination sequence Gal.5.27.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310762, there is no canonical definition to state claims against.
-/

/-! ## A310762.P11548662330986353250

`A312134(n)-A001222(A217666(n))`
-/

namespace A310762.P11548662330986353250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312134 n - A001222 (A217666 n).toNat

end

end A310762.P11548662330986353250

/-! ## A310762.P7006407913959090909

`or(A310710(n), A331273(A000108(n)))`
-/

namespace A310762.P7006407913959090909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310710 n) (A331273 (A000108 n).toNat)

end

end A310762.P7006407913959090909

/-! ## A310762.P2321472964704314063

`or(A310710(n), A331273(A332051(n)))`
-/

namespace A310762.P2321472964704314063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310710 n) (A331273 (A332051 n).toNat)

end

end A310762.P2321472964704314063

/-! ## A310762.P1653614238309509627

`or(A001222(A322111(n+1)), A310710(n))`
-/

namespace A310762.P1653614238309509627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A322111 (n + 1)).toNat) (A310710 n)

end

end A310762.P1653614238309509627

/-! ## A310762.P12582563683061130314

`or(A001222(A322111(n+1)), A310711(n))`
-/

namespace A310762.P12582563683061130314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A322111 (n + 1)).toNat) (A310711 n)

end

end A310762.P12582563683061130314

/-!
# A310763: Coordination sequence Gal.4.19.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310763, there is no canonical definition to state claims against.
-/

/-! ## A310763.P11237190486550385016

`A007094(2*n)+A006530(A000984(n))`
-/

namespace A310763.P11237190486550385016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n) + A006530 (A000984 n).toNat

end

end A310763.P11237190486550385016

/-! ## A310763.P16643878925400512586

`∑[A262611(A262829(n+1))]+n`
-/

namespace A310763.P16643878925400512586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A262829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310763.P16643878925400512586

/-! ## A310763.P4839288901580302759

`A238468(A001250(n))+A008574(n)`
-/

namespace A310763.P4839288901580302759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A001250 n).toNat + A008574 n

end

end A310763.P4839288901580302759

/-! ## A310763.P5492851725003425772

`A311593(n)-A001222(A051296(n))`
-/

namespace A310763.P5492851725003425772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n - A001222 (A051296 n).toNat

end

end A310763.P5492851725003425772

/-! ## A310763.P7999785406736959213

`A064415(A001793(n+1))+A006093(n+1)`
-/

namespace A310763.P7999785406736959213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A001793 (n + 1)).toNat + A006093 (n + 1)

end

end A310763.P7999785406736959213

/-!
# A310764: Coordination sequence Gal.4.8.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310764, there is no canonical definition to state claims against.
-/

/-! ## A310764.P6835787578020871441

`A310710(n)+A084360(A000085(n))`
-/

namespace A310764.P6835787578020871441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A084360 (A000085 n).toNat

end

end A310764.P6835787578020871441

/-! ## A310764.P5625845483161124906

`A310710(n)+A095792(A086581(n))`
-/

namespace A310764.P5625845483161124906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A095792 (A086581 n).toNat

end

end A310764.P5625845483161124906

/-! ## A310764.P11947959559723390264

`A310710(n)+A001221(A322111(n))`
-/

namespace A310764.P11947959559723390264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A001221 (A322111 n).toNat

end

end A310764.P11947959559723390264

/-! ## A310764.P13470334192615732748

`A310710(n)+A095792(A000108(n))`
-/

namespace A310764.P13470334192615732748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A095792 (A000108 n).toNat

end

end A310764.P13470334192615732748

/-! ## A310764.P8593437509776118799

`A310710(n)+A095792(A148356(n))`
-/

namespace A310764.P8593437509776118799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310710 n + A095792 (A148356 n).toNat

end

end A310764.P8593437509776118799

/-!
# A310765: Coordination sequence Gal.5.7.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310765, there is no canonical definition to state claims against.
-/

/-! ## A310765.P1899678425916732693

`∑[A343638(A141214(n+1))]`
-/

namespace A310765.P1899678425916732693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (A141214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310765.P1899678425916732693

/-! ## A310765.P12032539544909477211

`A301672(n)-A067255(A066723(n))`
-/

namespace A310765.P12032539544909477211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A067255 (A066723 n).toNat

end

end A310765.P12032539544909477211

/-! ## A310765.P2604605203948942812

`A314933(n)-A001222(A150163(n))`
-/

namespace A310765.P2604605203948942812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314933 n - A001222 (A150163 n).toNat

end

end A310765.P2604605203948942812

/-! ## A310765.P12860036962346891105

`A301672(n)-A345197(A221915(2*n+1))`
-/

namespace A310765.P12860036962346891105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A345197 (A221915 (2 * n + 1)).toNat

end

end A310765.P12860036962346891105

/-! ## A310765.P17496180410655777229

`A070939(A048816(2*(n+1)))+A007093(2*n)`
-/

namespace A310765.P17496180410655777229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A048816 (2 * (n + 1))).toNat + A007093 (2 * n)

end

end A310765.P17496180410655777229

/-!
# A310766: Coordination sequence Gal.6.613.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310766, there is no canonical definition to state claims against.
-/

/-! ## A310766.P10114437670094093970

`record[A097366(A098551(2*n+3))]`
-/

namespace A310766.P10114437670094093970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A098551 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310766.P10114437670094093970

/-! ## A310766.P15294245451786125586

`A307285(n)+A036225(A150120(n))`
-/

namespace A310766.P15294245451786125586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307285 n + A036225 (A150120 n).toNat

end

end A310766.P15294245451786125586

/-! ## A310766.P17419800564185501015

`A310711(n)+A144569(A255062(n))`
-/

namespace A310766.P17419800564185501015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310711 n + A144569 (A255062 n).toNat

end

end A310766.P17419800564185501015

/-! ## A310766.P9873211117867975885

`or(A003849(A091588(n)), A310752(n))`
-/

namespace A310766.P9873211117867975885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A091588 n).toNat) (A310752 n)

end

end A310766.P9873211117867975885

/-!
# A310767: Coordination sequence Gal.6.79.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310767, there is no canonical definition to state claims against.
-/

/-! ## A310767.P14839576394990593264

`A250120(n)-A302242(A001497(3*n+1))`
-/

namespace A310767.P14839576394990593264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A302242 (A001497 (3 * n + 1)).toNat

end

end A310767.P14839576394990593264

/-!
# A310768: Coordination sequence Gal.5.22.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310768, there is no canonical definition to state claims against.
-/

/-! ## A310768.P3132772707176093714

`∑[A033307(A178334(n)+A104150(n))]`
-/

namespace A310768.P3132772707176093714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A178334 n + A104150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310768.P3132772707176093714

/-!
# A310769: Coordination sequence Gal.3.1.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310769, there is no canonical definition to state claims against.
-/

/-! ## A310769.P6078289708129146733

`A258116(n+1)+A001221(A364755(3*n+1))`
-/

namespace A310769.P6078289708129146733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1) + A001221 (A364755 (3 * n + 1)).toNat

end

end A310769.P6078289708129146733

/-!
# A310770: Coordination sequence Gal.6.67.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310770, there is no canonical definition to state claims against.
-/

/-! ## A310770.P17076957086153778749

`A311852(n)-A165073(A002529(n))`
-/

namespace A310770.P17076957086153778749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311852 n - A165073 (A002529 n).toNat

end

end A310770.P17076957086153778749

/-! ## A310770.P6048637559862591027

`A311854(n)-A165073(A002529(n))`
-/

namespace A310770.P6048637559862591027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311854 n - A165073 (A002529 n).toNat

end

end A310770.P6048637559862591027

/-! ## A310770.P2568476618569007345

`A311855(n)-A165073(A002529(n))`
-/

namespace A310770.P2568476618569007345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A165073 (A002529 n).toNat

end

end A310770.P2568476618569007345

/-! ## A310770.P15438141425549955173

`eq[A173749(n), A284905(A330099(n+2))]`
-/

namespace A310770.P15438141425549955173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (A330099 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310770.P15438141425549955173

/-! ## A310770.P1695068717953102467

`A279006(n)+A055571(A055571(3*n+2))`
-/

namespace A310770.P1695068717953102467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 n + A055571 (A055571 (3 * n + 2)).toNat

end

end A310770.P1695068717953102467

/-!
# A310771: Coordination sequence Gal.6.9.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310771, there is no canonical definition to state claims against.
-/

/-! ## A310771.P911647892889597550

`A229300(A032793(2*n+1)*A103380(n+1))`
-/

namespace A310771.P911647892889597550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A032793 (2 * n + 1) * A103380 (n + 1)).toNat

end

end A310771.P911647892889597550

/-! ## A310771.P13651035728643401468

`A245562(A208301(n+1))+A007094(3*n)`
-/

namespace A310771.P13651035728643401468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245562 (A208301 (n + 1)).toNat + A007094 (3 * n)

end

end A310771.P13651035728643401468

/-! ## A310771.P17567993096610573259

`A238747(A229291(n+1))+A007094(3*n)`
-/

namespace A310771.P17567993096610573259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238747 (A229291 (n + 1)).toNat + A007094 (3 * n)

end

end A310771.P17567993096610573259

/-! ## A310771.P11481889006655045627

`A057627(A007953(n+1))+A055571(3*n+2)`
-/

namespace A310771.P11481889006655045627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A007953 (n + 1)).toNat + A055571 (3 * n + 2)

end

end A310771.P11481889006655045627

/-! ## A310771.P6560555969176164773

`A140473(A077359(2*(n+2))-5)`
-/

namespace A310771.P6560555969176164773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A077359 (2 * (n + 2)) - 5).toNat

end

end A310771.P6560555969176164773

/-!
# A310772: Coordination sequence Gal.5.94.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310772, there is no canonical definition to state claims against.
-/

/-! ## A310772.P5216620165466311172

`A310725(n)+A064547(A004110(n))`
-/

namespace A310772.P5216620165466311172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310725 n + A064547 (A004110 n).toNat

end

end A310772.P5216620165466311172

/-! ## A310772.P14457360456308050790

`xor(A263977(3*n+1), A264009(A264027(2*n+5)))`
-/

namespace A310772.P14457360456308050790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A263977 (3 * n + 1)) (A264009 (A264027 (2 * n + 5)).toNat)

end

end A310772.P14457360456308050790

/-!
# A310773: Coordination sequence Gal.5.25.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310773, there is no canonical definition to state claims against.
-/

/-! ## A310773.P2693003614536808822

`∑[A091222(A014787(n))]+1`
-/

namespace A310773.P2693003614536808822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A014787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A310773.P2693003614536808822

/-! ## A310773.P16853072783021327342

`∑[A290399(A033553(n+1))]`
-/

namespace A310773.P16853072783021327342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290399 (A033553 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310773.P16853072783021327342

/-! ## A310773.P2374820177897493316

`∑[A001511(A247383(n+1)²)]`
-/

namespace A310773.P2374820177897493316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A247383 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310773.P2374820177897493316

/-! ## A310773.P16979179166852115104

`∑[A007920(∑[A055691(n+2)])]`
-/

namespace A310773.P16979179166852115104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055691 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310773.P16979179166852115104

/-! ## A310773.P9597732146327632697

`A046080(A001181(n))+A007094(3*n+1)`
-/

namespace A310773.P9597732146327632697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A001181 n).toNat + A007094 (3 * n + 1)

end

end A310773.P9597732146327632697

/-!
# A310774: Coordination sequence Gal.6.7.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310774, there is no canonical definition to state claims against.
-/

/-! ## A310774.P2246465815825293081

`A086251(A000071(n+5))+A039153(3*n+1)`
-/

namespace A310774.P2246465815825293081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A000071 (n + 5)).toNat + A039153 (3 * n + 1)

end

end A310774.P2246465815825293081

/-! ## A310774.P4947640680512635288

`A056556(3*A000605(n))`
-/

namespace A310774.P4947640680512635288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (3 * A000605 n).toNat

end

end A310774.P4947640680512635288

/-! ## A310774.P3082816678631944423

`∑[A204169(A280204(n))]+4*n`
-/

namespace A310774.P3082816678631944423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204169 (A280204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 * n : ℤ)

end

end A310774.P3082816678631944423

/-! ## A310774.P9171427039655974057

`A313681(n)-A001222(A104934(n))`
-/

namespace A310774.P9171427039655974057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313681 n - A001222 (A104934 n).toNat

end

end A310774.P9171427039655974057

/-! ## A310774.P6658936102861528064

`A242374(A148713(n+1))`
-/

namespace A310774.P6658936102861528064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242374 (A148713 (n + 1)).toNat

end

end A310774.P6658936102861528064

/-!
# A310775: Coordination sequence Gal.6.26.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310775, there is no canonical definition to state claims against.
-/

/-! ## A310775.P1049672011621574087

`A312617(n)-A001222(A324131(n))`
-/

namespace A310775.P1049672011621574087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312617 n - A001222 (A324131 n).toNat

end

end A310775.P1049672011621574087

/-! ## A310775.P281717305600600002

`A061503(n+1)-A048105(A088218(n))`
-/

namespace A310775.P281717305600600002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061503 (n + 1) - A048105 (A088218 n).toNat

end

end A310775.P281717305600600002

/-! ## A310775.P11926043849533453981

`A234022(A122886(2*(n+1)))+A008585(n)`
-/

namespace A310775.P11926043849533453981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (A122886 (2 * (n + 1))).toNat + A008585 n

end

end A310775.P11926043849533453981

/-!
# A310776: Coordination sequence Gal.5.27.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310776, there is no canonical definition to state claims against.
-/

/-! ## A310776.P8941359121155303158

`∑[A357623(A289625(n+2))]`
-/

namespace A310776.P8941359121155303158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A289625 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310776.P8941359121155303158

/-!
# A310777: Coordination sequence Gal.6.71.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310777, there is no canonical definition to state claims against.
-/

/-! ## A310777.P8282973187155571955

`A007093(3*n+2)-A207378(A032168(n))`
-/

namespace A310777.P8282973187155571955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n + 2) - A207378 (A032168 (n + 11)).toNat

end

end A310777.P8282973187155571955

/-!
# A310778: Coordination sequence Gal.6.67.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310778, there is no canonical definition to state claims against.
-/

/-! ## A310778.P2328503065393888863

`A154453(A248776(n+1)*A311096(n))`
-/

namespace A310778.P2328503065393888863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A248776 (n + 1) * A311096 n).toNat

end

end A310778.P2328503065393888863

/-! ## A310778.P6688894546882138860

`A154453(A311096(n)^A248776(n+1))`
-/

namespace A310778.P6688894546882138860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (SequenceMachineLib.roundAway ((A311096 n : ℚ) ^ (A248776 (n + 1) : ℤ))).toNat

end

end A310778.P6688894546882138860

/-! ## A310778.P16766567697639672083

`A154453(lcm(A248776(n+1), A311096(n)))`
-/

namespace A310778.P16766567697639672083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (Int.lcm (A248776 (n + 1)) (A311096 n))

end

end A310778.P16766567697639672083

/-! ## A310778.P17233402801683657412

`A001222(3*n+1)+A000005(A002001(n))`
-/

namespace A310778.P17233402801683657412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1) + A000005 (A002001 n).toNat

end

end A310778.P17233402801683657412

/-! ## A310778.P2227372228879533344

`A001222(3*n+1)+A000005(A003947(n))`
-/

namespace A310778.P2227372228879533344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1) + A000005 (A003947 n).toNat

end

end A310778.P2227372228879533344

/-!
# A310779: Coordination sequence Gal.6.66.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310779, there is no canonical definition to state claims against.
-/

/-! ## A310779.P10852643118590821422

`∑[A375636(∑[A000667(n)])]`
-/

namespace A310779.P10852643118590821422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375636 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310779.P10852643118590821422

/-! ## A310779.P16544857476676697336

`A160102(n+1)+∑[∑{e}[A179603(n), #]]`
-/

namespace A310779.P16544857476676697336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179603 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A310779.P16544857476676697336

/-! ## A310779.P200176168949747025

`A008579(n)-A001221(A151490(n))`
-/

namespace A310779.P200176168949747025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A001221 (A151490 n).toNat

end

end A310779.P200176168949747025

/-! ## A310779.P11950465405771093548

`A311395(n)-A353558(A001075(n))`
-/

namespace A310779.P11950465405771093548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311395 n - A353558 (A001075 n).toNat

end

end A310779.P11950465405771093548

/-! ## A310779.P152730423761293748

`A311769(n)-A163351(A255062(n))`
-/

namespace A310779.P152730423761293748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 n - A163351 (A255062 n).toNat

end

end A310779.P152730423761293748

/-!
# A310780: Coordination sequence Gal.5.9.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310780, there is no canonical definition to state claims against.
-/

/-! ## A310780.P17315733286612491372

`eq[A095111(3*(n+1)), A134313(A170819(n+1))]`
-/

namespace A310780.P17315733286612491372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134313 (A170819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310780.P17315733286612491372

/-! ## A310780.P8191955183104187660

`A005098(n+1)+record[A155727(n)]`
-/

namespace A310780.P8191955183104187660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310780.P8191955183104187660

/-! ## A310780.P3934544137656602887

`A311770(n)-A316824(A290199(n))`
-/

namespace A310780.P3934544137656602887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311770 n - A316824 (A290199 n).toNat

end

end A310780.P3934544137656602887

/-! ## A310780.P10387915045532920546

`A318274(A002144(n+1)*A249517(n+1))`
-/

namespace A310780.P10387915045532920546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A002144 (n + 1) * A249517 (n + 1)).toNat

end

end A310780.P10387915045532920546

/-! ## A310780.P4139036542821847439

`A386236(A084078(n))+A105760(2*n+1)`
-/

namespace A310780.P4139036542821847439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A084078 n).toNat + A105760 (2 * n + 1)

end

end A310780.P4139036542821847439

/-!
# A310781: Coordination sequence Gal.6.64.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310781, there is no canonical definition to state claims against.
-/

/-! ## A310781.P10668821289923326022

`A062537(A118932(n))+A016777(n)`
-/

namespace A310781.P10668821289923326022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (A118932 n).toNat + A016777 n

end

end A310781.P10668821289923326022

/-! ## A310781.P1415139547978685408

`A314941(n)-A001222(A308564(n+1))`
-/

namespace A310781.P1415139547978685408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314941 n - A001222 (A308564 (n + 1)).toNat

end

end A310781.P1415139547978685408

/-! ## A310781.P16334838239738181331

`A034047(3*n+1)+A014963(A061129(n))`
-/

namespace A310781.P16334838239738181331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034047 (3 * n + 1) + A014963 (A061129 n).toNat

end

end A310781.P16334838239738181331

/-! ## A310781.P9951416734280210469

`A390673(3*n+1)+A357135(A078310(n+1))`
-/

namespace A310781.P9951416734280210469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390673 (3 * n + 1) + A357135 (A078310 (n + 1)).toNat

end

end A310781.P9951416734280210469

/-!
# A310782: Coordination sequence Gal.4.18.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310782, there is no canonical definition to state claims against.
-/

/-! ## A310782.P6151381107570126132

`A287554(n+1)-A035173(A128001(n+1))`
-/

namespace A310782.P6151381107570126132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287554 (n + 1) - A035173 (A128001 (n + 1)).toNat

end

end A310782.P6151381107570126132

/-! ## A310782.P6257890764033931532

`A310815(A087051(n))-A319394(A189467(n+1))`
-/

namespace A310782.P6257890764033931532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 (A087051 n).toNat - A319394 (A189467 (n + 1)).toNat

end

end A310782.P6257890764033931532

/-! ## A310782.P17792416279316317547

`record[A314490(n)-A121211(n+1)]`
-/

namespace A310782.P17792416279316317547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314490 n - A121211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310782.P17792416279316317547

/-! ## A310782.P888109210186200206

`A029931(A094626(n)+A056798(n+1))`
-/

namespace A310782.P888109210186200206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A094626 n + A056798 (n + 1)).toNat

end

end A310782.P888109210186200206

/-! ## A310782.P7106549493067952441

`A256966(n+1)+A001222(A175934(n))`
-/

namespace A310782.P7106549493067952441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256966 (n + 1) + A001222 (A175934 n).toNat

end

end A310782.P7106549493067952441

/-!
# A310783: Coordination sequence Gal.4.111.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310783, there is no canonical definition to state claims against.
-/

/-! ## A310783.P1468213740966796845

`∑[A309425(record[A193648(n+1)])]`
-/

namespace A310783.P1468213740966796845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309425 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310783.P1468213740966796845

/-! ## A310783.P8912029920677231703

`A311398(n)-A055641(A100058(n))`
-/

namespace A310783.P8912029920677231703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311398 n - A055641 (A100058 n).toNat

end

end A310783.P8912029920677231703

/-!
# A310785: Coordination sequence Gal.6.64.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310785, there is no canonical definition to state claims against.
-/

/-! ## A310785.P16562695588808339043

`A106744(A315564(n))-n`
-/

namespace A310785.P16562695588808339043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A315564 n).toNat - (n : ℤ)

end

end A310785.P16562695588808339043

/-! ## A310785.P7560493900754732475

`eq[A325530(n+1), A325699(2*n+5)]`
-/

namespace A310785.P7560493900754732475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325699 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310785.P7560493900754732475

/-! ## A310785.P13019673804366480000

`A008585(n)+A000120(A114695(n))`
-/

namespace A310785.P13019673804366480000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A000120 (A114695 n).toNat

end

end A310785.P13019673804366480000

/-! ## A310785.P1220494542464291778

`A310788(n)-A105700(A020081(n))`
-/

namespace A310785.P1220494542464291778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310788 n - A105700 (A020081 n).toNat

end

end A310785.P1220494542464291778

/-! ## A310785.P12102015640296914864

`A290334(2*n+1)+A279209(A001790(n))`
-/

namespace A310785.P12102015640296914864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290334 (2 * n + 1) + A279209 (A001790 n).toNat

end

end A310785.P12102015640296914864

/-!
# A310786: Coordination sequence Gal.5.26.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310786, there is no canonical definition to state claims against.
-/

/-! ## A310786.P12479136606777662219

`A229951(A173465(3*n+2))+A131098(n+1)`
-/

namespace A310786.P12479136606777662219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229951 (A173465 (3 * n + 2)).toNat + A131098 (n + 1)

end

end A310786.P12479136606777662219

/-! ## A310786.P5130283205209361098

`A261133(A315349(n)+n)`
-/

namespace A310786.P5130283205209361098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A315349 n + (n : ℤ)).toNat

end

end A310786.P5130283205209361098

/-! ## A310786.P6472501479937453453

`round(7/(5*acot(3*n)))-A288729(A161006(n))`
-/

namespace A310786.P6472501479937453453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (5 * SequenceMachineLib.acot (3 * n : ℝ))) - A288729 (A161006 n).toNat

end

end A310786.P6472501479937453453

/-! ## A310786.P8834919237324512160

`round(7/(5*acot(3*n)))-A021913(A006866(n+4))`
-/

namespace A310786.P8834919237324512160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (5 * SequenceMachineLib.acot (3 * n : ℝ))) - A021913 (A006866 (n + 4)).toNat

end

end A310786.P8834919237324512160

/-! ## A310786.P7873963860877750349

`A156262(∑[A191818(n)+n+2])`
-/

namespace A310786.P7873963860877750349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191818 n + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310786.P7873963860877750349

/-!
# A310787: Coordination sequence Gal.6.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310787, there is no canonical definition to state claims against.
-/

/-! ## A310787.P6883926312945776528

`A312101(n)-A098893(A098888(n+1))`
-/

namespace A310787.P6883926312945776528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n - A098893 (A098888 (n + 1)).toNat

end

end A310787.P6883926312945776528

/-! ## A310787.P13826931803112179918

`∑[A181520(A098542(n)+11*n)]`
-/

namespace A310787.P13826931803112179918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181520 (A098542 n + (11 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310787.P13826931803112179918

/-! ## A310787.P8095893210003138463

`∑[a(A161906(A320809(n))-1)+2]` with `a(0)=1`
-/

namespace A310787.P8095893210003138463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A161906 (A320809 n).toNat - 1).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310787.P8095893210003138463

/-! ## A310787.P3696724250548845570

`∑[A351566(A000040(n*2^n+1))]`
-/

namespace A310787.P3696724250548845570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (A000040 (n * 2 ^ n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310787.P3696724250548845570

/-! ## A310787.P12890750499671807501

`A311436(A087051(n))-A154103(n)`
-/

namespace A310787.P12890750499671807501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311436 (A087051 n).toNat - A154103 n

end

end A310787.P12890750499671807501

/-!
# A310788: Coordination sequence Gal.4.22.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310788, there is no canonical definition to state claims against.
-/

/-! ## A310788.P3704081814974252114

`A311458(n)-A000035(A212150(n))`
-/

namespace A310788.P3704081814974252114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n - A000035 (A212150 n).toNat

end

end A310788.P3704081814974252114

/-! ## A310788.P419593602841718858

`A311842(n)-A064911(A149826(n))`
-/

namespace A310788.P419593602841718858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311842 n - A064911 (A149826 n).toNat

end

end A310788.P419593602841718858

/-! ## A310788.P16717566016903872017

`A310791(n)-A275947(A199248(n))`
-/

namespace A310788.P16717566016903872017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310791 n - A275947 (A199248 n).toNat

end

end A310788.P16717566016903872017

/-! ## A310788.P18050572092177931866

`A310791(n)-A162781(A079092(n+1))`
-/

namespace A310788.P18050572092177931866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310791 n - A162781 (A079092 (n + 1)).toNat

end

end A310788.P18050572092177931866

/-! ## A310788.P17739512540602190989

`A105760(2*(n+1))-A054973(A251335(n+1))`
-/

namespace A310788.P17739512540602190989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * (n + 1)) - A054973 (A251335 (n + 1)).toNat

end

end A310788.P17739512540602190989

/-!
# A310789: Coordination sequence Gal.6.480.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310789, there is no canonical definition to state claims against.
-/

/-! ## A310789.P1229386228562797780

`A301299(n)-A182907(A279787(n))`
-/

namespace A310789.P1229386228562797780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n - A182907 (A279787 n).toNat

end

end A310789.P1229386228562797780

/-! ## A310789.P5780863840525098604

`A237514(n+1)+A175609(A098293(n+1))`
-/

namespace A310789.P5780863840525098604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237514 (n + 1) + A175609 (A098293 (n + 1)).toNat

end

end A310789.P5780863840525098604

/-! ## A310789.P12454657715276462287

`A312065(n)-A001221(A035009(n))`
-/

namespace A310789.P12454657715276462287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A001221 (A035009 n).toNat

end

end A310789.P12454657715276462287

/-! ## A310789.P15342993479995879971

`A301291(n)-A001222(A150990(n))`
-/

namespace A310789.P15342993479995879971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A001222 (A150990 n).toNat

end

end A310789.P15342993479995879971

/-! ## A310789.P799075556139399469

`A285384(A124574(3*n+2))+A050761(3*n)`
-/

namespace A310789.P799075556139399469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (A124574 (3 * n + 2)).toNat + A050761 (3 * n)

end

end A310789.P799075556139399469

/-!
# A310790: Coordination sequence Gal.6.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310790, there is no canonical definition to state claims against.
-/

/-! ## A310790.P5859165520259092998

`A344120(A000071(n+1))+A310754(n)`
-/

namespace A310790.P5859165520259092998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344120 (A000071 (n + 1)).toNat + A310754 n

end

end A310790.P5859165520259092998

/-! ## A310790.P5316602219676228245

`record[A311601(n)-A000673(n)]`
-/

namespace A310790.P5316602219676228245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n - A000673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310790.P5316602219676228245

/-! ## A310790.P16391195480920810639

`A131098(n+1)+A001222(A141488(n))`
-/

namespace A310790.P16391195480920810639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A001222 (A141488 n).toNat

end

end A310790.P16391195480920810639

/-! ## A310790.P4161286165907882521

`A312053(n)-A125005(A102305(n+1))`
-/

namespace A310790.P4161286165907882521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312053 n - A125005 (A102305 (n + 1)).toNat

end

end A310790.P4161286165907882521

/-! ## A310790.P3168910256459090716

`A189170(2*n+1)-A112377(A300660(n))`
-/

namespace A310790.P3168910256459090716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189170 (2 * n + 1) - A112377 (A300660 n).toNat

end

end A310790.P3168910256459090716

/-!
# A310791: Coordination sequence Gal.6.15.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310791, there is no canonical definition to state claims against.
-/

/-! ## A310791.P4610983964032886685

`A301676(n)-A160380(A077850(n))`
-/

namespace A310791.P4610983964032886685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A160380 (A077850 n).toNat

end

end A310791.P4610983964032886685

/-! ## A310791.P86783877173487859

`A311861(n)-A099104(A046288(n+1))`
-/

namespace A310791.P86783877173487859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n - A099104 (A046288 (n + 1)).toNat

end

end A310791.P86783877173487859

/-! ## A310791.P16605900302401850929

`A360399(n+2)-A317960(A022170(n))`
-/

namespace A310791.P16605900302401850929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360399 (n + 2) - A317960 (A022170 n).toNat

end

end A310791.P16605900302401850929

/-! ## A310791.P5660312320639219529

`A032793(A008576(n)%A046288(n+1))`
-/

namespace A310791.P5660312320639219529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (Int.tmod (A008576 n) (A046288 (n + 1))).toNat

end

end A310791.P5660312320639219529

/-!
# A310792: Coordination sequence Gal.5.23.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310792, there is no canonical definition to state claims against.
-/

/-! ## A310792.P14194690518443622059

`A315075(n)-A001222(A147748(n))`
-/

namespace A310792.P14194690518443622059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - A001222 (A147748 n).toNat

end

end A310792.P14194690518443622059

/-! ## A310792.P14979214274611242818

`∑[A234360(A234399(A234310(n+1)))]`
-/

namespace A310792.P14979214274611242818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234360 (A234399 (A234310 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310792.P14979214274611242818

/-! ## A310792.P3577636228007379738

`A314889(n)-A001221(A026026(n+2))`
-/

namespace A310792.P3577636228007379738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314889 n - A001221 (A026026 (n + 2)).toNat

end

end A310792.P3577636228007379738

/-! ## A310792.P16167255478593997203

`A312528(n)-A333628(A000045(n+2))`
-/

namespace A310792.P16167255478593997203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312528 n - A333628 (A000045 (n + 2)).toNat

end

end A310792.P16167255478593997203

/-! ## A310792.P8221044363036239913

`A087436(A357964(n))+A087087(3*n+1)`
-/

namespace A310792.P8221044363036239913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A357964 n).toNat + A087087 (3 * n + 1)

end

end A310792.P8221044363036239913

/-!
# A310795: Coordination sequence Gal.5.31.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310795, there is no canonical definition to state claims against.
-/

/-! ## A310795.P1418601469816251800

`A299202(A192494(n+1))+4*n`
-/

namespace A310795.P1418601469816251800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A192494 (n + 1)).toNat + (4 * n : ℤ)

end

end A310795.P1418601469816251800

/-! ## A310795.P2755243789228897249

`A346130(A314249(n)-A265188(n+1))`
-/

namespace A310795.P2755243789228897249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A314249 n - A265188 (n + 1)).toNat

end

end A310795.P2755243789228897249

/-! ## A310795.P9309142402135279669

`Δ[gcd(2, A197795(n+1))]+4*n`
-/

namespace A310795.P9309142402135279669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A197795 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (4 * n : ℤ)

end

end A310795.P9309142402135279669

/-! ## A310795.P7127262251444591985

`A008683(∑[4^n]-n)+4*n`
-/

namespace A310795.P7127262251444591985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j - n) + (4 * n : ℤ)

end

end A310795.P7127262251444591985

/-! ## A310795.P6177236408671246135

`abs(Δ[A118251(A052536(n))]-4*n)`
-/

namespace A310795.P6177236408671246135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118251 (A052536 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (4 * n : ℤ)|

end

end A310795.P6177236408671246135

/-!
# A310796: Coordination sequence Gal.5.24.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310796, there is no canonical definition to state claims against.
-/

/-! ## A310796.P14789502776174155525

`A312714(n)-A001221(A000142(n))`
-/

namespace A310796.P14789502776174155525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312714 n - A001221 (A000142 n).toNat

end

end A310796.P14789502776174155525

/-! ## A310796.P10536345387372227534

`or(A084888(A001845(n)), A310795(n))`
-/

namespace A310796.P10536345387372227534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084888 (A001845 n).toNat) (A310795 n)

end

end A310796.P10536345387372227534

/-! ## A310796.P5826807086456264739

`A250120(n)-A103183(A125118(n+1))`
-/

namespace A310796.P5826807086456264739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A103183 (A125118 (n + 1)).toNat

end

end A310796.P5826807086456264739

/-! ## A310796.P835561544973389053

`A348528(A003052(n+4))+A008585(n)`
-/

namespace A310796.P835561544973389053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 (A003052 (n + 4)).toNat + A008585 n

end

end A310796.P835561544973389053

/-! ## A310796.P1881376984199725670

`A314474(n)-A001222(A155406(n+5))`
-/

namespace A310796.P1881376984199725670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314474 n - A001222 (A155406 (n + 5)).toNat

end

end A310796.P1881376984199725670

/-!
# A310797: Coordination sequence Gal.6.419.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310797, there is no canonical definition to state claims against.
-/

/-! ## A310797.P7337146052091796087

`A312891(n)-A186034(A000225(n))`
-/

namespace A310797.P7337146052091796087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312891 n - A186034 (A000225 n).toNat

end

end A310797.P7337146052091796087

/-! ## A310797.P15723811294604520388

`A310832(n)-A003849(A015128(2*n+1))`
-/

namespace A310797.P15723811294604520388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310832 n - A003849 (A015128 (2 * n + 1)).toNat

end

end A310797.P15723811294604520388

/-! ## A310797.P13926355559657860055

`record[xor(5, n)%A285815(3*n+2)]`
-/

namespace A310797.P13926355559657860055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor 5 n : ℤ) (A285815 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310797.P13926355559657860055

/-!
# A310798: Coordination sequence Gal.5.172.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310798, there is no canonical definition to state claims against.
-/

/-! ## A310798.P17278687106419634529

`A312893(n)-A007814(A289586(n+1))`
-/

namespace A310798.P17278687106419634529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n - A007814 (A289586 (n + 1)).toNat

end

end A310798.P17278687106419634529

/-! ## A310798.P7453149971362450390

`∑[A033031(A033040(2^n))]`
-/

namespace A310798.P7453149971362450390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033031 (A033040 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310798.P7453149971362450390

/-! ## A310798.P7167163046123104686

`A310797(n)+A185284(A310796(n))`
-/

namespace A310798.P7167163046123104686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310797 n + A185284 (A310796 n).toNat

end

end A310798.P7167163046123104686

/-! ## A310798.P12688532984171553082

`record[A242374(A107785(n))]`
-/

namespace A310798.P12688532984171553082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242374 (A107785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310798.P12688532984171553082

/-! ## A310798.P435140037057660600

`A057078(A194950(n))+A008574(n)`
-/

namespace A310798.P435140037057660600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A194950 n).toNat + A008574 n

end

end A310798.P435140037057660600

/-!
# A310799: Coordination sequence Gal.4.89.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310799, there is no canonical definition to state claims against.
-/

/-! ## A310799.P3143092869473604764

`A312274(n)-A010051(A149072(n))`
-/

namespace A310799.P3143092869473604764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312274 n - A010051 (A149072 n).toNat

end

end A310799.P3143092869473604764

/-! ## A310799.P4874388977634038489

`record[A176981(A027195(n+1))+A109044(n)]`
-/

namespace A310799.P4874388977634038489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (A027195 (n + 1)).toNat + A109044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310799.P4874388977634038489

/-! ## A310799.P6364274013944263399

`or(A225099(A111039(2*n+3)), A310774(n))`
-/

namespace A310799.P6364274013944263399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225099 (A111039 (2 * n + 3)).toNat) (A310774 n)

end

end A310799.P6364274013944263399

/-! ## A310799.P15457513676550765683

`A168389(A298033(n))-n`
-/

namespace A310799.P15457513676550765683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A298033 n).toNat - (n : ℤ)

end

end A310799.P15457513676550765683

