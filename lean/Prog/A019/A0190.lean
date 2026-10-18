import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B012.C000
import Seq.B013.C000
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
# A019000: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite CLO = Cloverite starting with a T4 atom.

The programs for A019000, there is no canonical definition to state claims against.
-/

/-! ## A019000.P4682577795162100694

`A019001(n+2)-A326910(A116540(n))`
-/

namespace A019000.P4682577795162100694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019001 (n + 2) - A326910 (A116540 n).toNat

end

end A019000.P4682577795162100694

/-!
# A019001: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite CLO = Cloverite starting with a T3 atom.

The programs for A019001, there is no canonical definition to state claims against.
-/

/-! ## A019001.P9043136145746019842

`A326910(A116540(n))+A019000(n+2)`
-/

namespace A019001.P9043136145746019842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (A116540 n).toNat + A019000 (n + 2)

end

end A019001.P9043136145746019842

/-!
# A019004: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite DFO = DAF-1 [Mg14Al52P66O264].7R.40H2O starting with a T2 atom.

The programs for A019004, there is no canonical definition to state claims against.
-/

/-! ## A019004.P12890415594989606010

`A192232(n+1)+A072114(A229366(n+1))`
-/

namespace A019004.P12890415594989606010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 1) + A072114 (A229366 (n + 1)).toNat

end

end A019004.P12890415594989606010

/-!
# A019005: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite DFO = DAF-1 [Mg14Al52P66O264].7R.40 H2O starting with a T3 atom.

The programs for A019005, there is no canonical definition to state claims against.
-/

/-! ## A019005.P6950769900368008889

`A156181(n)+A130351(A002457(n))`
-/

namespace A019005.P6950769900368008889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156181 n + A130351 (A002457 n).toNat

end

end A019005.P6950769900368008889

/-!
# A019010: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite EAB = TMA-E (Aiello and Barrer)(1) (Me4N)2Na7[Al9Si27O7] starting with a T2 atom.

The programs for A019010, there is no canonical definition to state claims against.
-/

/-! ## A019010.P10141046110170296295

`A055034(A344615(n)+A001579(n))`
-/

namespace A019010.P10141046110170296295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A344615 n + A001579 n).toNat

end

end A019010.P10141046110170296295

/-!
# A019012: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite EDI = Edingtonite Ba2[Al4Si6O20].8H2O starting with a T1 atom.

The programs for A019012, there is no canonical definition to state claims against.
-/

/-! ## A019012.P16798906378611580759

`A019061(A032559(n+1)+1)`
-/

namespace A019012.P16798906378611580759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019061 (A032559 (n + 1) + 1).toNat

end

end A019012.P16798906378611580759

/-! ## A019012.P7942385767011831506

`A019061(A061219(n+1)+1)`
-/

namespace A019012.P7942385767011831506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019061 (A061219 (n + 1) + 1).toNat

end

end A019012.P7942385767011831506

/-! ## A019012.P11013716784727804515

`A019061(A062998(n+1)+1)`
-/

namespace A019012.P11013716784727804515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019061 (A062998 (n + 1) + 1).toNat

end

end A019012.P11013716784727804515

/-! ## A019012.P17576053358858479281

`A019061(A066492(n+1)+1)`
-/

namespace A019012.P17576053358858479281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019061 (A066492 (n + 1) + 1).toNat

end

end A019012.P17576053358858479281

/-! ## A019012.P12320512278470739146

`A019061(A077739(n+1)+1)`
-/

namespace A019012.P12320512278470739146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019061 (A077739 (n + 1) + 1).toNat

end

end A019012.P12320512278470739146

/-!
# A019013: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite EDI = Edingtonite Ba2[Al4Si6O20].8H2O starting with a T2 atom.

The programs for A019013, there is no canonical definition to state claims against.
-/

/-! ## A019013.P7050173928894384588

`A019062(A082743(n)+1)`
-/

namespace A019013.P7050173928894384588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019062 (A082743 n + 1).toNat

end

end A019013.P7050173928894384588

/-! ## A019013.P3388049127437933185

`A019062(A199343(n)+1)`
-/

namespace A019013.P3388049127437933185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019062 (A199343 n + 1).toNat

end

end A019013.P3388049127437933185

/-! ## A019013.P2678283794121654889

`A019062(A183533(n+2))`
-/

namespace A019013.P2678283794121654889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019062 (A183533 (n + 2)).toNat

end

end A019013.P2678283794121654889

/-! ## A019013.P13716832919457562631

`A019062(A032569(n+1)+1)`
-/

namespace A019013.P13716832919457562631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019062 (A032569 (n + 1) + 1).toNat

end

end A019013.P13716832919457562631

/-! ## A019013.P7230834554154794056

`A019062(n+2)+A002819(A348810(n))`
-/

namespace A019013.P7230834554154794056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019062 (n + 2) + A002819 (A348810 n).toNat

end

end A019013.P7230834554154794056

/-!
# A019014: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ERI = Erionite (Na2,Ca..)3.5K2[Al9Si27O72].27H2O starting with a T2 atom.

The programs for A019014, there is no canonical definition to state claims against.
-/

/-! ## A019014.P4711468890354904907

`A081166(3*n+4)/A005186(n)*n²+2`
-/

namespace A019014.P4711468890354904907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081166 (3 * n + 4) : ℚ) / (A005186 n : ℚ) * (n ^ 2 : ℚ) + 2

end

end A019014.P4711468890354904907

/-!
# A019016: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite FAU = Faujasite (Na2,Ca,Mg)29 [ Al58Si134O384 ] . 240 H2O.

The programs for A019016, there is no canonical definition to state claims against.
-/

/-! ## A019016.P11172303552276713202

`A358150(A018041(n))+A214899(3*n)`
-/

namespace A019016.P11172303552276713202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358150 (A018041 n).toNat + A214899 (3 * n)

end

end A019016.P11172303552276713202

/-!
# A019017: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GIS = Cycle class sequences of Gismondine Ca4 [ Al8Si8O32 ] . 16 H2O.

The programs for A019017, there is no canonical definition to state claims against.
-/

/-! ## A019017.P13604102413546427113

`A048250(A007903(n+1)+A000578(n))`
-/

namespace A019017.P13604102413546427113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A007903 (n + 1) + A000578 n).toNat

end

end A019017.P13604102413546427113

/-!
# A019018: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GME = Gmelinite (Na2,Ca)4 [ Al8Si16O48 ] . 24 H2O.

The programs for A019018, there is no canonical definition to state claims against.
-/

/-! ## A019018.P17723570242711033203

`A233583(A277669(n))+A117625(n)`
-/

namespace A019018.P17723570242711033203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A277669 n).toNat + A117625 n

end

end A019018.P17723570242711033203

/-!
# A019019: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GOO = Goosecreekite Ca2[Al4Si12O32].10H2O starting with a T2 atom.

The programs for A019019, there is no canonical definition to state claims against.
-/

/-! ## A019019.P6806818305051704025

`2*A006530(A383965(n))`
-/

namespace A019019.P6806818305051704025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A383965 n).toNat

end

end A019019.P6806818305051704025

/-!
# A019020: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GOO starting with a T2 atom.

The programs for A019020, there is no canonical definition to state claims against.
-/

/-! ## A019020.P2221724434983662862

`A002372(Δ[(2*n-1)*a(n-1)])` with `a(0)=4, a(1)=10`
-/

namespace A019020.P2221724434983662862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n f1 =>
  ((2 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (f1 (n + 1) - f1 n).toNat

end

end A019020.P2221724434983662862

/-!
# A019021: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite GOO starting with a T1 atom.

The programs for A019021, there is no canonical definition to state claims against.
-/

/-! ## A019021.P9391303006950352441

`A319785(A319788(n+1))+ceil((lcm(2, n)+1+n)/2)`
-/

namespace A019021.P9391303006950352441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 (A319788 (n + 1)).toNat + ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉

end

end A019021.P9391303006950352441

/-!
# A019023: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite JBW = NaJ (Barrer and White) Na3[Al3Si3O12].1.5H2O starting with a T1 atom.

The programs for A019023, there is no canonical definition to state claims against.
-/

/-! ## A019023.P16657463160576911048

`A005599(∏[∑[A260451(n+1)]])`
-/

namespace A019023.P16657463160576911048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019023.P16657463160576911048

/-!
# A019024: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite KFI = ZK-5 Na30 [ Al30Si66O192 ] . 98 H2O.

The programs for A019024, there is no canonical definition to state claims against.
-/

/-! ## A019024.P4638559663273390596

`A233583(A270717(n))+abs(1-n)`
-/

namespace A019024.P4638559663273390596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A270717 n).toNat + |1 - (n : ℤ)|

end

end A019024.P4638559663273390596

/-!
# A019025: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LEV = Levyne Ca9[Al18Si36O108].50H2O starting with a T2 atom.

The programs for A019025, there is no canonical definition to state claims against.
-/

/-! ## A019025.P13347349071580214078

`A305117((∑[∑[2^n-1]]+2)²-1)`
-/

namespace A019025.P13347349071580214078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 ((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 - 1).toNat

end

end A019025.P13347349071580214078

/-!
# A019026: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LEV = Levyne Ca9[Al18Si36O108].50H2O starting with a T1 atom.

The programs for A019026, there is no canonical definition to state claims against.
-/

/-! ## A019026.P10253377183988768627

`A347205(A016090(n+1)-A039658(n+1))`
-/

namespace A019026.P10253377183988768627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A016090 (n + 1) - A039658 (n + 1)).toNat

end

end A019026.P10253377183988768627

/-!
# A019027: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LIO = Liottite (Ca,Na2,K2)9[Al18Si18O72] starting with a T1 atom.

The programs for A019027, there is no canonical definition to state claims against.
-/

/-! ## A019027.P6247121623896289683

`A080513(A016273(n))-A006516(n)`
-/

namespace A019027.P6247121623896289683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A016273 n).toNat - A006516 n

end

end A019027.P6247121623896289683

/-!
# A019028: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LIO = Liottite (Ca,Na2,K2)9[Al18Si18O72] starting with a T2 atom.

The programs for A019028, there is no canonical definition to state claims against.
-/

/-! ## A019028.P17196759278443499945

`A261585(A042244(n))-A035377(n)`
-/

namespace A019028.P17196759278443499945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A042244 n).toNat - A035377 n

end

end A019028.P17196759278443499945

/-!
# A019029: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LIO = Liottite (Ca,Na2,K2)9[Al18Si18O72] starting with a T3 atom.

The programs for A019029, there is no canonical definition to state claims against.
-/

/-! ## A019029.P15285506341038604319

`A355221(∑[n+1]*∏[n+1])+A104035(n)`
-/

namespace A019029.P15285506341038604319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 ((∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)) + A104035 n

end

end A019029.P15285506341038604319

/-!
# A019031: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LOS = Losod Na12[Al12Si12O48].18H2O starting with a T2 atom.

The programs for A019031, there is no canonical definition to state claims against.
-/

/-! ## A019031.P8194626585413558156

`A070803(∑[(n+1)*A304444(n)]+1)`
-/

namespace A019031.P8194626585413558156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A019031.P8194626585413558156

/-!
# A019035: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LTL = Linde Type L K6Na3[Al9Si27O72].21H2O starting with a T1 atom.

The programs for A019035, there is no canonical definition to state claims against.
-/

/-! ## A019035.P619664616531916832

`xor(A001970(A319320(2*n+1)), A139816(2*n+1))`
-/

namespace A019035.P619664616531916832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001970 (A319320 (2 * n + 1)).toNat) (A139816 (2 * n + 1))

end

end A019035.P619664616531916832

/-!
# A019036: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LTN = Linde Type N Na384[Al384Si384O1536].518H2O starting with a T1 atom.

The programs for A019036, there is no canonical definition to state claims against.
-/

/-! ## A019036.P10193151729886893071

`A134309(n)+A121291(A018012(n))`
-/

namespace A019036.P10193151729886893071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n + A121291 (A018012 n).toNat

end

end A019036.P10193151729886893071

/-!
# A019037: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LTN = Linde Type N Na384[Al384Si384O1536].518H2O starting with a T2 atom.

The programs for A019037, there is no canonical definition to state claims against.
-/

/-! ## A019037.P4197538190582522382

`A302478(A335506(n))+A048272(n+1)`
-/

namespace A019037.P4197538190582522382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A335506 n).toNat + A048272 (n + 1)

end

end A019037.P4197538190582522382

/-!
# A019038: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite LTN = Linde Type N Na384[Al384Si384O1536].518H2O starting with a T3 atom.

The programs for A019038, there is no canonical definition to state claims against.
-/

/-! ## A019038.P9855670515242216960

`A344399(n)+A001055(A295773(n))`
-/

namespace A019038.P9855670515242216960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344399 n + A001055 (A295773 n).toNat

end

end A019038.P9855670515242216960

/-!
# A019040: Expansion of 1/((1-4*x)*(1-5*x)*(1-11*x)).

The programs for A019040, the canonical program `A019040.P12728111244470191218` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019040 has offset 0).

The definition of A019040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019040.P12728111244470191218

`16*a(n-1)-55*a(n-2)+4^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019040

/-- `16*a(n-1)-55*a(n-2)+4^n` -/
def P12728111244470191218.Spec : Prop :=
  ∀ n, P12728111244470191218.a n = A019040 n

theorem P12728111244470191218.correct : P12728111244470191218.Spec := by
  intro n
  simp only [A019040]

end A019040

/-! ## A019040.P16973657360576191614

`A016226(n)+A021784(n)-A016238(n)`
-/

namespace A019040.P16973657360576191614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n + (A021784 n - A016238 n)

end

end A019040.P16973657360576191614

namespace A019040

/-- `A016226(n)+A021784(n)-A016238(n)` -/
def P16973657360576191614.Spec : Prop :=
  ∀ n, P16973657360576191614.a n = A019040 n

end A019040

/-! ## A019040.P3232474078217181678

`Δ[A016238(n)-A016226(n)]`
-/

namespace A019040.P3232474078217181678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n - A016226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019040.P3232474078217181678

namespace A019040

/-- `Δ[A016238(n)-A016226(n)]` -/
def P3232474078217181678.Spec : Prop :=
  ∀ n, P3232474078217181678.a n = A019040 n

end A019040

/-! ## A019040.P4526884016895759417

`A016165(n+1)-Δ[A016226(n)]`
-/

namespace A019040.P4526884016895759417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016165 (n + 1) - (f1 (n + 1) - f1 n)

end

end A019040.P4526884016895759417

namespace A019040

/-- `A016165(n+1)-Δ[A016226(n)]` -/
def P4526884016895759417.Spec : Prop :=
  ∀ n, P4526884016895759417.a n = A019040 n

end A019040

/-! ## A019040.P9452012773939930732

`Δ[A016238(n)]-A016158(n+1)`
-/

namespace A019040.P9452012773939930732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016158 (n + 1)

end

end A019040.P9452012773939930732

namespace A019040

/-- `Δ[A016238(n)]-A016158(n+1)` -/
def P9452012773939930732.Spec : Prop :=
  ∀ n, P9452012773939930732.a n = A019040 n

end A019040

/-! ## A019040.P14337977333124740900

`A016165(n+1)-A016158(n+1)`
-/

namespace A019040.P14337977333124740900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016165 (n + 1) - A016158 (n + 1)

end

end A019040.P14337977333124740900

namespace A019040

/-- `A016165(n+1)-A016158(n+1)` -/
def P14337977333124740900.Spec : Prop :=
  ∀ n, P14337977333124740900.a n = A019040 n

end A019040

/-! ## A019040.P1975916568394266147

`Δ[A016238(n)-A016158(n)]-A016158(n)`
-/

namespace A019040.P1975916568394266147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n - A016158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016158 n

end

end A019040.P1975916568394266147

namespace A019040

/-- `Δ[A016238(n)-A016158(n)]-A016158(n)` -/
def P1975916568394266147.Spec : Prop :=
  ∀ n, P1975916568394266147.a n = A019040 n

end A019040

/-!
# A019041: Expansion of 1/((1-4x)(1-5x)(1-12x)).

The programs for A019041, the canonical program `A019041.P8124077272208493528` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019041 has offset 0).

The definition of A019041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019041.P8124077272208493528

`17*a(n-1)-60*a(n-2)+4^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019041

/-- `17*a(n-1)-60*a(n-2)+4^n` -/
def P8124077272208493528.Spec : Prop :=
  ∀ n, P8124077272208493528.a n = A019041 n

theorem P8124077272208493528.correct : P8124077272208493528.Spec := by
  intro n
  simp only [A019041]

end A019041

/-! ## A019041.P17222994855738013822

`A016166(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019041.P17222994855738013822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016166 n + 4 * a (n - 1)

end

end A019041.P17222994855738013822

namespace A019041

/-- `A016166(n)+4*a(n-1)` -/
def P17222994855738013822.Spec : Prop :=
  ∀ n, P17222994855738013822.a n = A019041 n

end A019041

/-! ## A019041.P8378681243520298670

`A016159(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A019041.P8378681243520298670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016159 n + 5 * a (n - 1)

end

end A019041.P8378681243520298670

namespace A019041

/-- `A016159(n)+5*a(n-1)` -/
def P8378681243520298670.Spec : Prop :=
  ∀ n, P8378681243520298670.a n = A019041 n

end A019041

/-! ## A019041.P14137395048383583147

`A016227(n)+A021794(n)-A016239(n)`
-/

namespace A019041.P14137395048383583147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 n + (A021794 n - A016239 n)

end

end A019041.P14137395048383583147

namespace A019041

/-- `A016227(n)+A021794(n)-A016239(n)` -/
def P14137395048383583147.Spec : Prop :=
  ∀ n, P14137395048383583147.a n = A019041 n

end A019041

/-! ## A019041.P4116559302583520800

`Δ[A016239(n)-A016227(n)]`
-/

namespace A019041.P4116559302583520800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n - A016227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019041.P4116559302583520800

namespace A019041

/-- `Δ[A016239(n)-A016227(n)]` -/
def P4116559302583520800.Spec : Prop :=
  ∀ n, P4116559302583520800.a n = A019041 n

end A019041

/-!
# A019042: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite MER = Merlinoite K5Ca2[ Al9Si23O64 ] . 24 H2O.

The programs for A019042, there is no canonical definition to state claims against.
-/

/-! ## A019042.P4705857941304891713

`xor(2, A092038(A049685(n)))`
-/

namespace A019042.P4705857941304891713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A092038 (A049685 n).toNat)

end

end A019042.P4705857941304891713

/-!
# A019043: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite OFF = Offretite (Ca,Mg)1.5K[Al4Si14O36].14H2O starting from a T2 atom.

The programs for A019043, there is no canonical definition to state claims against.
-/

/-! ## A019043.P11511386038024774656

`xor(n+1, A036234(A115098(2*n+1)))`
-/

namespace A019043.P11511386038024774656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A036234 (A115098 (2 * n + 1)).toNat)

end

end A019043.P11511386038024774656

/-!
# A019044: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite OFF = Offretite (Ca,Mg)1.5K[Al4Si14O36].14H2O starting from a T1 atom.

The programs for A019044, there is no canonical definition to state claims against.
-/

/-! ## A019044.P17889186544764179019

`A076438(n+1)*A335425(A245236(2*n+1))`
-/

namespace A019044.P17889186544764179019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (n + 1) * A335425 (A245236 (2 * n + 1)).toNat

end

end A019044.P17889186544764179019

/-!
# A019045: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAR = Partheite Ca8[Al16Si16O60(OH)8].16H2O starting with a T1 atom.

The programs for A019045, there is no canonical definition to state claims against.
-/

/-! ## A019045.P14637868834436163574

`A325202(∑[(n+1)²])+1`
-/

namespace A019045.P14637868834436163574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325202 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A019045.P14637868834436163574

/-!
# A019046: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAR = Partheite Ca8[Al16Si16O60(OH)8].16H2O starting with a T4 atom.

The programs for A019046, there is no canonical definition to state claims against.
-/

/-! ## A019046.P10288588046573458337

`A049289(3*n+1)+n^3`
-/

namespace A019046.P10288588046573458337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049289 (3 * n + 1) + (n ^ 3 : ℤ)

end

end A019046.P10288588046573458337

/-!
# A019047: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAR = Partheite Ca8[Al16Si16O60(OH)8].16H2O starting with a T2 atom.

The programs for A019047, there is no canonical definition to state claims against.
-/

/-! ## A019047.P14264237899633407852

`A375123(A002318(n+1))+A081671(n)`
-/

namespace A019047.P14264237899633407852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (A002318 (n + 1)).toNat + A081671 n

end

end A019047.P14264237899633407852

/-!
# A019048: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAR = Partheite Ca8[Al16Si16O60(OH)8].16H2O starting with a T3 atom.

The programs for A019048, there is no canonical definition to state claims against.
-/

/-! ## A019048.P8397374791621922269

`floor(A205016(7^n+1)/4)`
-/

namespace A019048.P8397374791621922269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205016 (7 ^ n + 1) : ℚ) / 4⌋

end

end A019048.P8397374791621922269

/-!
# A019049: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T1 atom.

The programs for A019049, there is no canonical definition to state claims against.
-/

/-! ## A019049.P5329424423945986829

`A283190(A001018(n))+A188003(n+1)`
-/

namespace A019049.P5329424423945986829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283190 (A001018 n).toNat + A188003 (n + 1)

end

end A019049.P5329424423945986829

/-!
# A019050: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T2 atom.

The programs for A019050, there is no canonical definition to state claims against.
-/

/-! ## A019050.P12961897134824584967

`A023982(A353148(n)+A309224(n+1))`
-/

namespace A019050.P12961897134824584967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 (A353148 n + A309224 (n + 1)).toNat

end

end A019050.P12961897134824584967

/-!
# A019051: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T3 atom.

The programs for A019051, there is no canonical definition to state claims against.
-/

/-! ## A019051.P9983145844898355064

`Δ[A267111(A083355(n)+1)]+3`
-/

namespace A019051.P9983145844898355064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (A083355 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A019051.P9983145844898355064

/-!
# A019052: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T4 atom.

The programs for A019052, there is no canonical definition to state claims against.
-/

/-! ## A019052.P7869320710408971162

`A001414(∑[A277352(n)+1])+1`
-/

namespace A019052.P7869320710408971162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277352 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A019052.P7869320710408971162

/-!
# A019053: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T5 atom.

The programs for A019053, there is no canonical definition to state claims against.
-/

/-! ## A019053.P13882366849025323463

`A292047(n)+A180230(A045883(n))`
-/

namespace A019053.P13882366849025323463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292047 n + A180230 (A045883 n).toNat

end

end A019053.P13882366849025323463

/-!
# A019054: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T6 atom.

The programs for A019054, there is no canonical definition to state claims against.
-/

/-! ## A019054.P17180418698551955448

`A003485(A056604(n))+A001077(n)`
-/

namespace A019054.P17180418698551955448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A056604 n).toNat + A001077 n

end

end A019054.P17180418698551955448

/-!
# A019055: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T7 atom.

The programs for A019055, there is no canonical definition to state claims against.
-/

/-! ## A019055.P8967654717577481124

`Δ[A037918((n+1)!)]+2`
-/

namespace A019055.P8967654717577481124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A019055.P8967654717577481124

/-!
# A019056: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PAU = Paulingite (K2,Ca,Na2)76[Al152Si520O1344] starting with a T8 atom.

The programs for A019056, there is no canonical definition to state claims against.
-/

/-! ## A019056.P17444456418612532378

`A008620(A247895(2*n+1)+5)`
-/

namespace A019056.P17444456418612532378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A247895 (2 * n + 1) + 5).toNat

end

end A019056.P17444456418612532378

/-!
# A019057: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PHI = Phillipsite K2(Ca,Na2)2[Al6Si10O32].12H2O starting at a T1 atom.

The programs for A019057, there is no canonical definition to state claims against.
-/

/-! ## A019057.P18266921118803278542

`A306203(A317707(2*n+3))+1`
-/

namespace A019057.P18266921118803278542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306203 (A317707 (2 * n + 3)).toNat + 1

end

end A019057.P18266921118803278542

/-!
# A019058: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite PHI = Phillipsite K2(Ca,Na2)2[Al6Si10O32].12H2O starting at a T2 atom.

The programs for A019058, there is no canonical definition to state claims against.
-/

/-! ## A019058.P9700408056162505659

`A004526(A231331(3*n+1))+3`
-/

namespace A019058.P9700408056162505659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A231331 (3 * n + 1)).toNat + 3

end

end A019058.P9700408056162505659

/-!
# A019059: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite RHO = Rho (Na,Cs)12[ Al12Si36O96 ] . 44 H2O.

The programs for A019059, there is no canonical definition to state claims against.
-/

/-! ## A019059.P15719733831853661612

`A097508(A016897(∏[∑{d}[n+1, #]]))`
-/

namespace A019059.P15719733831853661612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A016897 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A019059.P15719733831853661612

/-!
# A019060: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite SOD = Sodalite Na6[ Al6Si6O24 ] . 2 NaCl.

The programs for A019060, there is no canonical definition to state claims against.
-/

/-! ## A019060.P3149287952073934644

`A292248(A006154(n+2))`
-/

namespace A019060.P3149287952073934644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A006154 (n + 2)).toNat

end

end A019060.P3149287952073934644

/-!
# A019065: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ZON = ZAPO-M1 R8[Zn8Al24P32O128] starting at a T1 atom.

The programs for A019065, there is no canonical definition to state claims against.
-/

/-! ## A019065.P12471884061139090546

`A303778(n)+A026741(A082035(n))`
-/

namespace A019065.P12471884061139090546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n + A026741 (A082035 n).toNat

end

end A019065.P12471884061139090546

/-!
# A019072: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite BEA = Beta Na7[Al7Si57O128] starting with a T6 atom.

The programs for A019072, there is no canonical definition to state claims against.
-/

/-! ## A019072.P10635863099164662966

`A018851(A019073(n+3)²)`
-/

namespace A019072.P10635863099164662966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A019073 (n + 3) ^ 2).toNat

end

end A019072.P10635863099164662966

/-! ## A019072.P8753407460836083614

`A056926(A019073(n+3)²)`
-/

namespace A019072.P8753407460836083614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A019073 (n + 3) ^ 2).toNat

end

end A019072.P8753407460836083614

/-! ## A019072.P10249228812771862135

`A019073(A004869(n+1)+3)`
-/

namespace A019072.P10249228812771862135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019073 (A004869 (n + 1) + 3).toNat

end

end A019072.P10249228812771862135

/-! ## A019072.P16684428285291071665

`A019073(C(n+3, A065941(n)))`
-/

namespace A019072.P16684428285291071665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019073 (Nat.choose (n + 3) (A065941 n).toNat)

end

end A019072.P16684428285291071665

/-!
# A019074: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite BEA = Beta Na7[Al7Si57O128] starting with a T8 atom.

The programs for A019074, there is no canonical definition to state claims against.
-/

/-! ## A019074.P14485044680780651885

`A019075(A004869(n+1)+3)`
-/

namespace A019074.P14485044680780651885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019075 (A004869 (n + 1) + 3).toNat

end

end A019074.P14485044680780651885

/-! ## A019074.P14653414532450410352

`A019075(A290848(n)+2+n)`
-/

namespace A019074.P14653414532450410352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019075 (A290848 n + 2 + (n : ℤ)).toNat

end

end A019074.P14653414532450410352

/-! ## A019074.P16925520264667001413

`A019075(C(n+3, A065941(n)))`
-/

namespace A019074.P16925520264667001413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019075 (Nat.choose (n + 3) (A065941 n).toNat)

end

end A019074.P16925520264667001413

/-! ## A019074.P9883943286211924990

`A019075(n+3)*A319099(n!)`
-/

namespace A019074.P9883943286211924990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019075 (n + 3) * A319099 (Nat.factorial n)

end

end A019074.P9883943286211924990

/-!
# A019092: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite CHI = Chiavennite Ca4Mn4[Be8Si20O52(OH)8].8H2O starting with a T2 atom.

The programs for A019092, there is no canonical definition to state claims against.
-/

/-! ## A019092.P3657377926779046627

`A186107(A342354(n))%A209218(n+1)`
-/

namespace A019092.P3657377926779046627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186107 (A342354 n).toNat) (A209218 (n + 1))

end

end A019092.P3657377926779046627

/-! ## A019092.P7019417272960265684

`A127291(A124482(n+1)+A099390(n+1))`
-/

namespace A019092.P7019417272960265684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A124482 (n + 1) + A099390 (n + 1)).toNat

end

end A019092.P7019417272960265684

/-!
# A019095: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite CON = CIT-1 H2[B2Si54O112] starting with a T2 atom.

The programs for A019095, there is no canonical definition to state claims against.
-/

/-! ## A019095.P7042755934473581132

`record[A062169(A144463(n))]`
-/

namespace A019095.P7042755934473581132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A144463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019095.P7042755934473581132

/-! ## A019095.P11102442494215714888

`record[A292441(n)-A111332(n)]`
-/

namespace A019095.P11102442494215714888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 n - A111332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019095.P11102442494215714888

/-! ## A019095.P17328619885844193201

`(C(n, 4)+n)*A001221(A008416(n))`
-/

namespace A019095.P17328619885844193201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 + n : ℤ) * A001221 (A008416 n).toNat

end

end A019095.P17328619885844193201

/-! ## A019095.P13188142535742173216

`A001221(A001850(n))*A014626(n)`
-/

namespace A019095.P13188142535742173216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001850 n).toNat * A014626 n

end

end A019095.P13188142535742173216

/-!
# A019096: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite CON = CIT-1 H2[B2Si54O112] starting with a T6 atom.

The programs for A019096, there is no canonical definition to state claims against.
-/

/-! ## A019096.P15143049908762831613

`A119570(A246868(n))%A078039(n)`
-/

namespace A019096.P15143049908762831613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119570 (A246868 n).toNat) (A078039 n)

end

end A019096.P15143049908762831613

