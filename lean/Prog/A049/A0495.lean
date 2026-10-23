import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A049500: Smallest prime p such that p + 4^k is also prime for all k = 1, ..., n.

The programs for A049500, there is no canonical definition to state claims against.
-/

/-! ## A049500.P15878976570846629233

`A026646(A000120(n!))`
-/

namespace A049500.P15878976570846629233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 (A000120 (Nat.factorial n)).toNat

end

end A049500.P15878976570846629233

/-! ## A049500.P4092877809782038045

`A026646(A086342(n!))`
-/

namespace A049500.P4092877809782038045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 (A086342 (Nat.factorial n)).toNat

end

end A049500.P4092877809782038045

/-! ## A049500.P6851248237996048471

`A026646(A116361(n!))`
-/

namespace A049500.P6851248237996048471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 (A116361 (Nat.factorial n)).toNat

end

end A049500.P6851248237996048471

/-! ## A049500.P14712674752201611602

`A134855(A048896(n!))`
-/

namespace A049500.P14712674752201611602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (A048896 (Nat.factorial n)).toNat

end

end A049500.P14712674752201611602

/-!
# A049501: Major index of n, first definition.

The programs for A049501, the canonical program `A049501.P2511382539437314283` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049501 has offset 0).

The definition of A049501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049501.P9707820663833108891

`A281388(A006068(A000007(n)+n))`
-/

namespace A049501.P9707820663833108891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A006068 (A000007 n + (n : ℤ)).toNat).toNat

end

end A049501.P9707820663833108891

namespace A049501

/-- `A281388(A006068(A000007(n)+n))` -/
def P9707820663833108891.Spec : Prop :=
  ∀ n, P9707820663833108891.a n = A049501 n

end A049501

/-! ## A049501.P3715252895147222735

`A281388(A006068(n)+A000038(n))`
-/

namespace A049501.P3715252895147222735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A006068 n + A000038 n).toNat

end

end A049501.P3715252895147222735

namespace A049501

/-- `A281388(A006068(n)+A000038(n))` -/
def P3715252895147222735.Spec : Prop :=
  ∀ n, P3715252895147222735.a n = A049501 n

end A049501

/-! ## A049501.P13729897518577194750

`A281388(or(A000007(n), A006068(n)))`
-/

namespace A049501.P13729897518577194750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (Int.lor (A000007 n) (A006068 n)).toNat

end

end A049501.P13729897518577194750

namespace A049501

/-- `A281388(or(A000007(n), A006068(n)))` -/
def P13729897518577194750.Spec : Prop :=
  ∀ n, P13729897518577194750.a n = A049501 n

end A049501

/-! ## A049501.P12688134555152975027

`A281388(or(A000038(n), A006068(n)))`
-/

namespace A049501.P12688134555152975027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (Int.lor (A000038 n) (A006068 n)).toNat

end

end A049501.P12688134555152975027

namespace A049501

/-- `A281388(or(A000038(n), A006068(n)))` -/
def P12688134555152975027.Spec : Prop :=
  ∀ n, P12688134555152975027.a n = A049501 n

end A049501

/-! ## A049501.P4346272951965058808

`A281388(xor(A000007(n), A006068(n)))`
-/

namespace A049501.P4346272951965058808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (Int.xor (A000007 n) (A006068 n)).toNat

end

end A049501.P4346272951965058808

namespace A049501

/-- `A281388(xor(A000007(n), A006068(n)))` -/
def P4346272951965058808.Spec : Prop :=
  ∀ n, P4346272951965058808.a n = A049501 n

end A049501

/-! ## A049501.P2511382539437314283

`A049502(A145341(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049501

/-- `A049502(A145341(n+1))` -/
def P2511382539437314283.Spec : Prop :=
  ∀ n, P2511382539437314283.a n = A049501 n

theorem P2511382539437314283.correct : P2511382539437314283.Spec := by
  intro n
  simp only [A049501]

end A049501

/-! ## A049501.P11883644031684343721

`A281388(A006068(2*n+1))`
-/

namespace A049501.P11883644031684343721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A006068 (2 * n + 1)).toNat

end

end A049501.P11883644031684343721

namespace A049501

/-- `A281388(A006068(2*n+1))` -/
def P11883644031684343721.Spec : Prop :=
  ∀ n, P11883644031684343721.a n = A049501 n

end A049501

/-! ## A049501.P1863013660845069828

`A281388(xor(1, A006068(2*n)))`
-/

namespace A049501.P1863013660845069828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (Int.xor 1 (A006068 (2 * n))).toNat

end

end A049501.P1863013660845069828

namespace A049501

/-- `A281388(xor(1, A006068(2*n)))` -/
def P1863013660845069828.Spec : Prop :=
  ∀ n, P1863013660845069828.a n = A049501 n

end A049501

/-! ## A049501.P13340127357483046708

`A281388(A006068(n)+or(1, A006068(n)))`
-/

namespace A049501.P13340127357483046708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A006068 n + Int.lor 1 (A006068 n)).toNat

end

end A049501.P13340127357483046708

namespace A049501

/-- `A281388(A006068(n)+or(1, A006068(n)))` -/
def P13340127357483046708.Spec : Prop :=
  ∀ n, P13340127357483046708.a n = A049501 n

end A049501

/-! ## A049501.P3579121768948125853

`A281388(A234612(A003188(A234612(2*n+1))))`
-/

namespace A049501.P3579121768948125853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A234612 (A003188 (A234612 (2 * n + 1)).toNat).toNat).toNat

end

end A049501.P3579121768948125853

namespace A049501

/-- `A281388(A234612(A003188(A234612(2*n+1))))` -/
def P3579121768948125853.Spec : Prop :=
  ∀ n, P3579121768948125853.a n = A049501 n

end A049501

/-! ## A049501.P5714243300999366695

`A281388(A234613(A003188(A234613(2*n+1))))`
-/

namespace A049501.P5714243300999366695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281388 (A234613 (A003188 (A234613 (2 * n + 1)).toNat).toNat).toNat

end

end A049501.P5714243300999366695

namespace A049501

/-- `A281388(A234613(A003188(A234613(2*n+1))))` -/
def P5714243300999366695.Spec : Prop :=
  ∀ n, P5714243300999366695.a n = A049501 n

end A049501

/-! ## A049501.P15971898525851155480

`A280800(A053194(n+1))`
-/

namespace A049501.P15971898525851155480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280800 (A053194 (n + 1)).toNat

end

end A049501.P15971898525851155480

namespace A049501

/-- `A280800(A053194(n+1))` -/
def P15971898525851155480.Spec : Prop :=
  ∀ n, P15971898525851155480.a n = A049501 n

end A049501

/-!
# A049502: Major index of n, 2nd definition.

The programs for A049502, the canonical program `A049502.P5742727287573319742` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049502 has offset 0).

The definition of A049502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049502.P15313712773904376268

`A124757(A292272(n))`
-/

namespace A049502.P15313712773904376268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A292272 n).toNat

end

end A049502.P15313712773904376268

namespace A049502

/-- `A124757(A292272(n))` -/
def P15313712773904376268.Spec : Prop :=
  ∀ n, P15313712773904376268.a n = A049502 n

end A049502

/-! ## A049502.P11837433859259337298

`A124757(n-A048735(n))`
-/

namespace A049502.P11837433859259337298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 ((n : ℤ) - A048735 n).toNat

end

end A049502.P11837433859259337298

namespace A049502

/-- `A124757(n-A048735(n))` -/
def P11837433859259337298.Spec : Prop :=
  ∀ n, P11837433859259337298.a n = A049502 n

end A049502

/-! ## A049502.P11752255181509641635

`A029931(and(n, A038554(n)))`
-/

namespace A049502.P11752255181509641635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.land (n : ℤ) (A038554 n)).toNat

end

end A049502.P11752255181509641635

namespace A049502

/-- `A029931(and(n, A038554(n)))` -/
def P11752255181509641635.Spec : Prop :=
  ∀ n, P11752255181509641635.a n = A049502 n

end A049502

/-! ## A049502.P18155118030264988019

`A124757(and(n, A003188(n)))`
-/

namespace A049502.P18155118030264988019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (Int.land (n : ℤ) (A003188 n)).toNat

end

end A049502.P18155118030264988019

namespace A049502

/-- `A124757(and(n, A003188(n)))` -/
def P18155118030264988019.Spec : Prop :=
  ∀ n, P18155118030264988019.a n = A049502 n

end A049502

/-! ## A049502.P17454237916029932937

`A073642(and(2*n, A035327(n)))`
-/

namespace A049502.P17454237916029932937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (Int.land (2 * n : ℤ) (A035327 n)).toNat

end

end A049502.P17454237916029932937

namespace A049502

/-- `A073642(and(2*n, A035327(n)))` -/
def P17454237916029932937.Spec : Prop :=
  ∀ n, P17454237916029932937.a n = A049502 n

end A049502

/-! ## A049502.P5742727287573319742

`A037800(n)+a(A004526(n))` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049502

/-- `A037800(n)+a(A004526(n))` -/
def P5742727287573319742.Spec : Prop :=
  ∀ n, P5742727287573319742.a n = A049502 n

theorem P5742727287573319742.correct : P5742727287573319742.Spec := by
  intro n
  simp only [A049502]

end A049502

/-!
# A049503: a(n) = A005130(n)^2.

The programs for A049503, there is no canonical definition to state claims against.
-/

/-! ## A049503.P18432770683943374846

`A005130(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049503.P18432770683943374846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n ^ 2

end

end A049503.P18432770683943374846

/-! ## A049503.P5185420074125379578

`A048601(∑[n+1])²`
-/

namespace A049503.P5185420074125379578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A049503.P5185420074125379578

/-! ## A049503.P17080437855829655989

`(A321511(n)+n!)²`
-/

namespace A049503.P17080437855829655989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321511 n + (Nat.factorial n : ℤ)) ^ 2

end

end A049503.P17080437855829655989

/-! ## A049503.P16463171982781237442

`(A321511(n)+A000142(n))²`
-/

namespace A049503.P16463171982781237442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321511 n + A000142 n) ^ 2

end

end A049503.P16463171982781237442

/-! ## A049503.P14074231566072037117

`(A049505(n)/A005157(n))²`
-/

namespace A049503.P14074231566072037117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A049505 n : ℚ) / (A005157 n : ℚ)) ^ 2

end

end A049503.P14074231566072037117

/-!
# A049505: a(n) = Product_{1<=i<=j<=n} (i+j+n-1)/(i+j-1), number of symmetric plane partitions in n-cube.

The programs for A049505, there is no canonical definition to state claims against.
-/

/-! ## A049505.P8948001800516718253

`A073165(∑[4*n])`
-/

namespace A049505.P8948001800516718253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049505.P8948001800516718253

/-! ## A049505.P9014613018962897190

`A005130(n)*A005157(n)`
-/

namespace A049505.P9014613018962897190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A005157 n

end

end A049505.P9014613018962897190

/-! ## A049505.P8385122468195088259

`A005157(n)*A048601(A000124(n))`
-/

namespace A049505.P8385122468195088259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005157 n * A048601 (A000124 n).toNat

end

end A049505.P8385122468195088259

/-! ## A049505.P15810011750983462641

`or(A000007(n), A073165(A046092(n)))`
-/

namespace A049505.P15810011750983462641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073165 (A046092 n).toNat)

end

end A049505.P15810011750983462641

/-! ## A049505.P5057423989220546621

`sqrt(A049503(n))*A005157(n)`
-/

namespace A049505.P5057423989220546621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ) * (A005157 n : ℝ)

end

end A049505.P5057423989220546621

/-!
# A049508: Numbers k such that prime(k) == 3 (mod 10).

The programs for A049508, the canonical program `A049508.P1111944552521367574` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049508 has offset 1).

The definition of A049508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049508.P1111944552521367574

`A000720(A030431(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049508

/-- `A000720(A030431(n+1))` -/
def P1111944552521367574.Spec : Prop :=
  ∀ n, P1111944552521367574.a n = A049508 (n + 1)

theorem P1111944552521367574.correct : P1111944552521367574.Spec := by
  intro n
  simp only [A049508, Nat.add_sub_cancel]

end A049508

/-! ## A049508.P18113030863831747607

`A244739(A065475(n+1))`
-/

namespace A049508.P18113030863831747607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (A065475 (n + 1)).toNat

end

end A049508.P18113030863831747607

namespace A049508

/-- `A244739(A065475(n+1))` -/
def P18113030863831747607.Spec : Prop :=
  ∀ n, P18113030863831747607.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P12596493177480342230

`A244739(A181440(n+2))`
-/

namespace A049508.P12596493177480342230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (A181440 (n + 2)).toNat

end

end A049508.P12596493177480342230

namespace A049508

/-- `A244739(A181440(n+2))` -/
def P12596493177480342230.Spec : Prop :=
  ∀ n, P12596493177480342230.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P13259840544811417160

`A244739(A184985(n+2))`
-/

namespace A049508.P13259840544811417160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (A184985 (n + 2)).toNat

end

end A049508.P13259840544811417160

namespace A049508

/-- `A244739(A184985(n+2))` -/
def P13259840544811417160.Spec : Prop :=
  ∀ n, P13259840544811417160.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P4215452960716560260

`∩[A244737(n+1), A244739(n+1)]`
-/

namespace A049508.P4215452960716560260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049508.P4215452960716560260

namespace A049508

/-- `∩[A244737(n+1), A244739(n+1)]` -/
def P4215452960716560260.Spec : Prop :=
  ∀ n, (P4215452960716560260.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P3000752950553847080

`A072971(a(n-1))+a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A049508.P3000752950553847080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  A072971 (a (n - 1)).toNat + a (n - 1)

end

end A049508.P3000752950553847080

namespace A049508

/-- `A072971(a(n-1))+a(n-1)` -/
def P3000752950553847080.Spec : Prop :=
  ∀ n, P3000752950553847080.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P13728244746803800352

`∩[A133398(n+1), A244739(n+1)]`
-/

namespace A049508.P13728244746803800352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049508.P13728244746803800352

namespace A049508

/-- `∩[A133398(n+1), A244739(n+1)]` -/
def P13728244746803800352.Spec : Prop :=
  ∀ n, (P13728244746803800352.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P6867959531015625876

`eq[3, A007652(n+1)]+1`
-/

namespace A049508.P6867959531015625876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049508.P6867959531015625876

namespace A049508

/-- `eq[3, A007652(n+1)]+1` -/
def P6867959531015625876.Spec : Prop :=
  ∀ n, (P6867959531015625876.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P10030764605598265111

`eq[1, A100484(n+1)%5]+1`
-/

namespace A049508.P10030764605598265111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049508.P10030764605598265111

namespace A049508

/-- `eq[1, A100484(n+1)%5]+1` -/
def P10030764605598265111.Spec : Prop :=
  ∀ n, (P10030764605598265111.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P17089652264066622860

`eq[3, A000040(n+1)%5]+1`
-/

namespace A049508.P17089652264066622860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049508.P17089652264066622860

namespace A049508

/-- `eq[3, A000040(n+1)%5]+1` -/
def P17089652264066622860.Spec : Prop :=
  ∀ n, (P17089652264066622860.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P10521179706937226574

`eq[3, (A001747(n+1)/2)%5]`
-/

namespace A049508.P10521179706937226574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049508.P10521179706937226574

namespace A049508

/-- `eq[3, (A001747(n+1)/2)%5]` -/
def P10521179706937226574.Spec : Prop :=
  ∀ n, (P10521179706937226574.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P10315809896385568508

`eq[4, 1--A008578(n+1)%10]`
-/

namespace A049508.P10315809896385568508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (-A008578 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049508.P10315809896385568508

namespace A049508

/-- `eq[4, 1--A008578(n+1)%10]` -/
def P10315809896385568508.Spec : Prop :=
  ∀ n, (P10315809896385568508.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P11519696759499553843

`eq[1, A007652(A028310(n))-2]`
-/

namespace A049508.P11519696759499553843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049508.P11519696759499553843

namespace A049508

/-- `eq[1, A007652(A028310(n))-2]` -/
def P11519696759499553843.Spec : Prop :=
  ∀ n, (P11519696759499553843.a n : ℤ) = A049508 (n + 1)

end A049508

/-! ## A049508.P11541355578400196626

`filter[A244739(n+1), A244735(#)]`
-/

namespace A049508.P11541355578400196626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A049508.P11541355578400196626

namespace A049508

/-- `filter[A244739(n+1), A244735(#)]` -/
def P11541355578400196626.Spec : Prop :=
  ∀ n, P11541355578400196626.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P12006301243426270807

`A244739(A244735(A244739(n+2))+n+1)`
-/

namespace A049508.P12006301243426270807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244739 (A244735 (A244739 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A049508.P12006301243426270807

namespace A049508

/-- `A244739(A244735(A244739(n+2))+n+1)` -/
def P12006301243426270807.Spec : Prop :=
  ∀ n, P12006301243426270807.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P13656665877933665737

`A000720(p?[5*n-2])`
-/

namespace A049508.P13656665877933665737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049508.P13656665877933665737

namespace A049508

/-- `A000720(p?[5*n-2])` -/
def P13656665877933665737.Spec : Prop :=
  ∀ n, P13656665877933665737.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P6830343020325267362

`record[A061395(A017197(n)+n)]`
-/

namespace A049508.P6830343020325267362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A017197 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049508.P6830343020325267362

namespace A049508

/-- `record[A061395(A017197(n)+n)]` -/
def P6830343020325267362.Spec : Prop :=
  ∀ n, P6830343020325267362.a n = A049508 (n + 1)

end A049508

/-! ## A049508.P1090392474447631361

`A000720(record[A020639(5*n+3)])`
-/

namespace A049508.P1090392474447631361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049508.P1090392474447631361

namespace A049508

/-- `A000720(record[A020639(5*n+3)])` -/
def P1090392474447631361.Spec : Prop :=
  ∀ n, P1090392474447631361.a n = A049508 (n + 1)

end A049508

/-!
# A049509: Numbers k such that prime(k) == 7 (mod 10).

The programs for A049509, the canonical program `A049509.P18024564109362952829` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049509 has offset 1).

The definition of A049509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049509.P18024564109362952829

`A000720(A030432(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A049509

/-- `A000720(A030432(n+1))` -/
def P18024564109362952829.Spec : Prop :=
  ∀ n, P18024564109362952829.a n = A049509 (n + 1)

theorem P18024564109362952829.correct : P18024564109362952829.Spec := by
  intro n
  simp only [A049509, Nat.add_sub_cancel]

end A049509

/-! ## A049509.P16179591076331051548

`A244741(n+2)`
-/

namespace A049509.P16179591076331051548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244741 (n + 2)

end

end A049509.P16179591076331051548

namespace A049509

/-- `A244741(n+2)` -/
def P16179591076331051548.Spec : Prop :=
  ∀ n, P16179591076331051548.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P251293900661018257

`eq[3, A072003(n+1)]+1`
-/

namespace A049509.P251293900661018257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049509.P251293900661018257

namespace A049509

/-- `eq[3, A072003(n+1)]+1` -/
def P251293900661018257.Spec : Prop :=
  ∀ n, (P251293900661018257.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P8202768891191811772

`eq[2, A039703(n+2)]+2`
-/

namespace A049509.P8202768891191811772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049509.P8202768891191811772

namespace A049509

/-- `eq[2, A039703(n+2)]+2` -/
def P8202768891191811772.Spec : Prop :=
  ∀ n, (P8202768891191811772.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P3476426894289933687

`eq[2, A244738(n+2)]+2`
-/

namespace A049509.P3476426894289933687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244738 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049509.P3476426894289933687

namespace A049509

/-- `eq[2, A244738(n+2)]+2` -/
def P3476426894289933687.Spec : Prop :=
  ∀ n, (P3476426894289933687.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P6158432189358216265

`eq[7, A007652(n+1)]+1`
-/

namespace A049509.P6158432189358216265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049509.P6158432189358216265

namespace A049509

/-- `eq[7, A007652(n+1)]+1` -/
def P6158432189358216265.Spec : Prop :=
  ∀ n, (P6158432189358216265.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P4173711909543981350

`eq[7, A008578(n+1)%10]`
-/

namespace A049509.P4173711909543981350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049509.P4173711909543981350

namespace A049509

/-- `eq[7, A008578(n+1)%10]` -/
def P4173711909543981350.Spec : Prop :=
  ∀ n, (P4173711909543981350.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P3130125232329064660

`eq[7, A000040(n+1)%10]+1`
-/

namespace A049509.P3130125232329064660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049509.P3130125232329064660

namespace A049509

/-- `eq[7, A000040(n+1)%10]+1` -/
def P3130125232329064660.Spec : Prop :=
  ∀ n, (P3130125232329064660.a n : ℤ) = A049509 (n + 1)

end A049509

/-! ## A049509.P16885903609710179787

`record[A061395(5*n+7)]`
-/

namespace A049509.P16885903609710179787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (5 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049509.P16885903609710179787

namespace A049509

/-- `record[A061395(5*n+7)]` -/
def P16885903609710179787.Spec : Prop :=
  ∀ n, P16885903609710179787.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P1711342070444131634

`A000720(p?[5*n+7])`
-/

namespace A049509.P1711342070444131634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049509.P1711342070444131634

namespace A049509

/-- `A000720(p?[5*n+7])` -/
def P1711342070444131634.Spec : Prop :=
  ∀ n, P1711342070444131634.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P8380957157994674985

`A061395(p?[5*n+7])`
-/

namespace A049509.P8380957157994674985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049509.P8380957157994674985

namespace A049509

/-- `A061395(p?[5*n+7])` -/
def P8380957157994674985.Spec : Prop :=
  ∀ n, P8380957157994674985.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P11492029500110886703

`A000720(A045380(n+2))`
-/

namespace A049509.P11492029500110886703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045380 (n + 2)).toNat

end

end A049509.P11492029500110886703

namespace A049509

/-- `A000720(A045380(n+2))` -/
def P11492029500110886703.Spec : Prop :=
  ∀ n, P11492029500110886703.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P16979468738083999948

`A000720(record[A006530(5*n+7)])`
-/

namespace A049509.P16979468738083999948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049509.P16979468738083999948

namespace A049509

/-- `A000720(record[A006530(5*n+7)])` -/
def P16979468738083999948.Spec : Prop :=
  ∀ n, P16979468738083999948.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P8899551944688076443

`A000720(record[A020639(10*n+7)])`
-/

namespace A049509.P8899551944688076443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049509.P8899551944688076443

namespace A049509

/-- `A000720(record[A020639(10*n+7)])` -/
def P8899551944688076443.Spec : Prop :=
  ∀ n, P8899551944688076443.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P5983641873105399827

`A066328(p?[A017377(n)-2])`
-/

namespace A049509.P5983641873105399827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049509.P5983641873105399827

namespace A049509

/-- `A066328(p?[A017377(n)-2])` -/
def P5983641873105399827.Spec : Prop :=
  ∀ n, P5983641873105399827.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P14560320314670494248

`record[A303753(xor(2, A016969(n))-n)]`
-/

namespace A049509.P14560320314670494248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (Int.xor 2 (A016969 n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049509.P14560320314670494248

namespace A049509

/-- `record[A303753(xor(2, A016969(n))-n)]` -/
def P14560320314670494248.Spec : Prop :=
  ∀ n, P14560320314670494248.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P11653695860763382246

`A289508(p?[a(n-1)+5])` with `a(0)=7`
-/

namespace A049509.P11653695860763382246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049509.P11653695860763382246

namespace A049509

/-- `A289508(p?[a(n-1)+5])` -/
def P11653695860763382246.Spec : Prop :=
  ∀ n, P11653695860763382246.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P2274984200130226759

`A065770(p?[5*n+7])`
-/

namespace A049509.P2274984200130226759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049509.P2274984200130226759

namespace A049509

/-- `A065770(p?[5*n+7])` -/
def P2274984200130226759.Spec : Prop :=
  ∀ n, P2274984200130226759.a n = A049509 (n + 1)

end A049509

/-! ## A049509.P16277801195730783913

`record[A065770(10*n+7)]`
-/

namespace A049509.P16277801195730783913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049509.P16277801195730783913

namespace A049509

/-- `record[A065770(10*n+7)]` -/
def P16277801195730783913.Spec : Prop :=
  ∀ n, P16277801195730783913.a n = A049509 (n + 1)

end A049509

/-!
# A049510: Numbers k such that prime(k) == 9 (mod 10).

The programs for A049510, the canonical program `A049510.P5320459567008850854` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049510 has offset 1).

The definition of A049510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049510.P5320459567008850854

`A000720(A030433(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049510

/-- `A000720(A030433(n+1))` -/
def P5320459567008850854.Spec : Prop :=
  ∀ n, P5320459567008850854.a n = A049510 (n + 1)

theorem P5320459567008850854.correct : P5320459567008850854.Spec := by
  intro n
  simp only [A049510, Nat.add_sub_cancel]

end A049510

/-! ## A049510.P7913720650069166867

`∩[A024707(n+1), A244736(n+1)]`
-/

namespace A049510.P7913720650069166867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049510.P7913720650069166867

namespace A049510

/-- `∩[A024707(n+1), A244736(n+1)]` -/
def P7913720650069166867.Spec : Prop :=
  ∀ n, (P7913720650069166867.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P591473940473811410

`eq[1, A072003(n+1)]+1`
-/

namespace A049510.P591473940473811410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049510.P591473940473811410

namespace A049510

/-- `eq[1, A072003(n+1)]+1` -/
def P591473940473811410.Spec : Prop :=
  ∀ n, (P591473940473811410.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P10830399861791891253

`eq[4, A039703(n+1)]+1`
-/

namespace A049510.P10830399861791891253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049510.P10830399861791891253

namespace A049510

/-- `eq[4, A039703(n+1)]+1` -/
def P10830399861791891253.Spec : Prop :=
  ∀ n, (P10830399861791891253.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P14998884098743026041

`lt[7, A007652(n+1)]+1`
-/

namespace A049510.P14998884098743026041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049510.P14998884098743026041

namespace A049510

/-- `lt[7, A007652(n+1)]+1` -/
def P14998884098743026041.Spec : Prop :=
  ∀ n, (P14998884098743026041.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P16785816268004464017

`lt[3, A000040(n+1)%5]+1`
-/

namespace A049510.P16785816268004464017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049510.P16785816268004464017

namespace A049510

/-- `lt[3, A000040(n+1)%5]+1` -/
def P16785816268004464017.Spec : Prop :=
  ∀ n, (P16785816268004464017.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P6809784212945192446

`eq[2, A113935(n+1)%10]+1`
-/

namespace A049510.P6809784212945192446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113935 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049510.P6809784212945192446

namespace A049510

/-- `eq[2, A113935(n+1)%10]+1` -/
def P6809784212945192446.Spec : Prop :=
  ∀ n, (P6809784212945192446.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P7512875671565057865

`eq[4, A000040(n)%a(3%n)]` with `a(0)=7`
-/

namespace A049510.P7512875671565057865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  Int.tmod (A000040 n) (f2 (3 % n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049510.P7512875671565057865

namespace A049510

/-- `eq[4, A000040(n)%a(3%n)]` -/
def P7512875671565057865.Spec : Prop :=
  ∀ n, (P7512875671565057865.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P13963306785120843422

`lt[A028815(n)%10*A000567(floor(n/10)+2), 1]`
-/

namespace A049510.P13963306785120843422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028815 n) 10 * A000567 (⌊(n : ℚ) / 10⌋ + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049510.P13963306785120843422

namespace A049510

/-- `lt[A028815(n)%10*A000567(floor(n/10)+2), 1]` -/
def P13963306785120843422.Spec : Prop :=
  ∀ n, (P13963306785120843422.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P1473706710185212953

`lt[A161625(A161625(n+1)), A161625(n+1)]+1`
-/

namespace A049510.P1473706710185212953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161625 (A161625 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049510.P1473706710185212953

namespace A049510

/-- `lt[A161625(A161625(n+1)), A161625(n+1)]+1` -/
def P1473706710185212953.Spec : Prop :=
  ∀ n, (P1473706710185212953.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P16603751706205530225

`eq[4, A008578(n+1)%5]`
-/

namespace A049510.P16603751706205530225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049510.P16603751706205530225

namespace A049510

/-- `eq[4, A008578(n+1)%5]` -/
def P16603751706205530225.Spec : Prop :=
  ∀ n, (P16603751706205530225.a n : ℤ) = A049510 (n + 1)

end A049510

/-! ## A049510.P350800222475237189

`A000720(p?[5*n-1])`
-/

namespace A049510.P350800222475237189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049510.P350800222475237189

namespace A049510

/-- `A000720(p?[5*n-1])` -/
def P350800222475237189.Spec : Prop :=
  ∀ n, P350800222475237189.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P11468856422900482339

`A038801(A105042(n+1))`
-/

namespace A049510.P11468856422900482339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A105042 (n + 1)).toNat

end

end A049510.P11468856422900482339

namespace A049510

/-- `A038801(A105042(n+1))` -/
def P11468856422900482339.Spec : Prop :=
  ∀ n, P11468856422900482339.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P17027339523825446803

`A000720(A045457(n+2))`
-/

namespace A049510.P17027339523825446803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045457 (n + 2)).toNat

end

end A049510.P17027339523825446803

namespace A049510

/-- `A000720(A045457(n+2))` -/
def P17027339523825446803.Spec : Prop :=
  ∀ n, P17027339523825446803.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P3698453341059182100

`A000720(record[A006530(5*(n+4)-1)])`
-/

namespace A049510.P3698453341059182100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (n + 4) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049510.P3698453341059182100

namespace A049510

/-- `A000720(record[A006530(5*(n+4)-1)])` -/
def P3698453341059182100.Spec : Prop :=
  ∀ n, P3698453341059182100.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P4458678924038546278

`A000720(A017377(A102700(n+1)))`
-/

namespace A049510.P4458678924038546278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A017377 (A102700 (n + 1)).toNat).toNat

end

end A049510.P4458678924038546278

namespace A049510

/-- `A000720(A017377(A102700(n+1)))` -/
def P4458678924038546278.Spec : Prop :=
  ∀ n, P4458678924038546278.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P1549491620598878782

`A066328(p?[A017377(n)])`
-/

namespace A049510.P1549491620598878782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049510.P1549491620598878782

namespace A049510

/-- `A066328(p?[A017377(n)])` -/
def P1549491620598878782.Spec : Prop :=
  ∀ n, P1549491620598878782.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P574635654382170500

`A061395(p?[A016885(n)+1])`
-/

namespace A049510.P574635654382170500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049510.P574635654382170500

namespace A049510

/-- `A061395(p?[A016885(n)+1])` -/
def P574635654382170500.Spec : Prop :=
  ∀ n, P574635654382170500.a n = A049510 (n + 1)

end A049510

/-! ## A049510.P7954819694586973533

`eq[4, A006530(A001747(n+1))%5]`
-/

namespace A049510.P7954819694586973533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A001747 (n + 1)).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049510.P7954819694586973533

namespace A049510

/-- `eq[4, A006530(A001747(n+1))%5]` -/
def P7954819694586973533.Spec : Prop :=
  ∀ n, (P7954819694586973533.a n : ℤ) = A049510 (n + 1)

end A049510

/-!
# A049511: Numbers k such that prime(k) == 1 (mod 10).

The programs for A049511, the canonical program `A049511.P8890718646906056889` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049511 has offset 1).

The definition of A049511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049511.P8890718646906056889

`A000720(A030430(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049511

/-- `A000720(A030430(n+1))` -/
def P8890718646906056889.Spec : Prop :=
  ∀ n, P8890718646906056889.a n = A049511 (n + 1)

theorem P8890718646906056889.correct : P8890718646906056889.Spec := by
  intro n
  simp only [A049511, Nat.add_sub_cancel]

end A049511

/-! ## A049511.P2668754260933920134

`∩[A024707(n+1), A244737(n+1)]`
-/

namespace A049511.P2668754260933920134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049511.P2668754260933920134

namespace A049511

/-- `∩[A024707(n+1), A244737(n+1)]` -/
def P2668754260933920134.Spec : Prop :=
  ∀ n, (P2668754260933920134.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P3667235992572076363

`A072971(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A049511.P3667235992572076363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A072971 (a (n - 1)).toNat + a (n - 1)

end

end A049511.P3667235992572076363

namespace A049511

/-- `A072971(a(n-1))+a(n-1)` -/
def P3667235992572076363.Spec : Prop :=
  ∀ n, P3667235992572076363.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P1043697060979472021

`eq[1, A007652(n+1)]+1`
-/

namespace A049511.P1043697060979472021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049511.P1043697060979472021

namespace A049511

/-- `eq[1, A007652(n+1)]+1` -/
def P1043697060979472021.Spec : Prop :=
  ∀ n, (P1043697060979472021.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P16982760390632822557

`eq[1, A039703(n+1)]+1`
-/

namespace A049511.P16982760390632822557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049511.P16982760390632822557

namespace A049511

/-- `eq[1, A039703(n+1)]+1` -/
def P16982760390632822557.Spec : Prop :=
  ∀ n, (P16982760390632822557.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P4477007948004763327

`lt[A161625(n+1), 2]+1`
-/

namespace A049511.P4477007948004763327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161625 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049511.P4477007948004763327

namespace A049511

/-- `lt[A161625(n+1), 2]+1` -/
def P4477007948004763327.Spec : Prop :=
  ∀ n, (P4477007948004763327.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P6476729029380429360

`lt[3, A277097(n+1)]+1`
-/

namespace A049511.P6476729029380429360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049511.P6476729029380429360

namespace A049511

/-- `lt[3, A277097(n+1)]+1` -/
def P6476729029380429360.Spec : Prop :=
  ∀ n, (P6476729029380429360.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P9238627119232273488

`lt[8, A072003(n+1)]+1`
-/

namespace A049511.P9238627119232273488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049511.P9238627119232273488

namespace A049511

/-- `lt[8, A072003(n+1)]+1` -/
def P9238627119232273488.Spec : Prop :=
  ∀ n, (P9238627119232273488.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P11063587766999770888

`lt[1, 3-A007652(n+2)]+2`
-/

namespace A049511.P11063587766999770888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A007652 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A049511.P11063587766999770888

namespace A049511

/-- `lt[1, 3-A007652(n+2)]+2` -/
def P11063587766999770888.Spec : Prop :=
  ∀ n, (P11063587766999770888.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P11577960748633003772

`eq[1, A000040(n+1)%5]+1`
-/

namespace A049511.P11577960748633003772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049511.P11577960748633003772

namespace A049511

/-- `eq[1, A000040(n+1)%5]+1` -/
def P11577960748633003772.Spec : Prop :=
  ∀ n, (P11577960748633003772.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P7476540472925189071

`lt[n*A008578(n+1)%10+1, 2*n]`
-/

namespace A049511.P7476540472925189071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A008578 (n + 1)) 10 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049511.P7476540472925189071

namespace A049511

/-- `lt[n*A008578(n+1)%10+1, 2*n]` -/
def P7476540472925189071.Spec : Prop :=
  ∀ n, (P7476540472925189071.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P8285918240009011537

`eq[1, A007652(A028310(n))]`
-/

namespace A049511.P8285918240009011537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049511.P8285918240009011537

namespace A049511

/-- `eq[1, A007652(A028310(n))]` -/
def P8285918240009011537.Spec : Prop :=
  ∀ n, (P8285918240009011537.a n : ℤ) = A049511 (n + 1)

end A049511

/-! ## A049511.P2725347052097361178

`filter[A024707(n+1), A244735(#)]`
-/

namespace A049511.P2725347052097361178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244735 (f1 j).toNat = 1) n)

end

end A049511.P2725347052097361178

namespace A049511

/-- `filter[A024707(n+1), A244735(#)]` -/
def P2725347052097361178.Spec : Prop :=
  ∀ n, P2725347052097361178.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P6934615295434221758

`A000720(p?[5*n+1])`
-/

namespace A049511.P6934615295434221758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A049511.P6934615295434221758

namespace A049511

/-- `A000720(p?[5*n+1])` -/
def P6934615295434221758.Spec : Prop :=
  ∀ n, P6934615295434221758.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P8282481446097961661

`A000720(A045453(n+2))`
-/

namespace A049511.P8282481446097961661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045453 (n + 2)).toNat

end

end A049511.P8282481446097961661

namespace A049511

/-- `A000720(A045453(n+2))` -/
def P8282481446097961661.Spec : Prop :=
  ∀ n, P8282481446097961661.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P2324765709648838455

`record[A303753(5*n+11)]`
-/

namespace A049511.P2324765709648838455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (5 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049511.P2324765709648838455

namespace A049511

/-- `record[A303753(5*n+11)]` -/
def P2324765709648838455.Spec : Prop :=
  ∀ n, P2324765709648838455.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P2596097596632443036

`A066328(p?[A017377(n)+2])`
-/

namespace A049511.P2596097596632443036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049511.P2596097596632443036

namespace A049511

/-- `A066328(p?[A017377(n)+2])` -/
def P2596097596632443036.Spec : Prop :=
  ∀ n, P2596097596632443036.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P8625079628280463498

`A061395(p?[A016885(n)-2])`
-/

namespace A049511.P8625079628280463498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049511.P8625079628280463498

namespace A049511

/-- `A061395(p?[A016885(n)-2])` -/
def P8625079628280463498.Spec : Prop :=
  ∀ n, P8625079628280463498.a n = A049511 (n + 1)

end A049511

/-! ## A049511.P16706647279314490616

`A263111(p?[A017281(n)])`
-/

namespace A049511.P16706647279314490616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A049511.P16706647279314490616

namespace A049511

/-- `A263111(p?[A017281(n)])` -/
def P16706647279314490616.Spec : Prop :=
  ∀ n, P16706647279314490616.a n = A049511 (n + 1)

end A049511

/-!
# A049512: Number of quasi-initially connected digraphs on n unlabeled nodes.

The programs for A049512, there is no canonical definition to state claims against.
-/

/-! ## A049512.P17050951981595032533

`floor(A026424(A003085(n+1))/2)+n`
-/

namespace A049512.P17050951981595032533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026424 (A003085 (n + 1)).toNat : ℚ) / 2⌋ + (n : ℤ)

end

end A049512.P17050951981595032533

/-!
# A049513: Array T by antidiagonals: T(k,n) = k*n*2^(n-1) + 1, n >= 0, k >= 0.

The programs for A049513, the canonical program `A049513.P3798320867267262351` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049513 has offset 0).

The definition of A049513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049513.P8544917129334168817

`A049069(A083920(n))`
-/

namespace A049513.P8544917129334168817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A083920 n).toNat

end

end A049513.P8544917129334168817

namespace A049513

/-- `A049069(A083920(n))` -/
def P8544917129334168817.Spec : Prop :=
  ∀ n, P8544917129334168817.a n = A049513 n

end A049513

/-! ## A049513.P17027993918921460473

`A049069(A271439(n))`
-/

namespace A049513.P17027993918921460473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A271439 n).toNat

end

end A049513.P17027993918921460473

namespace A049513

/-- `A049069(A271439(n))` -/
def P17027993918921460473.Spec : Prop :=
  ∀ n, P17027993918921460473.a n = A049513 n

end A049513

/-! ## A049513.P15494349040496975828

`A049069(n-A003056(n))`
-/

namespace A049513.P15494349040496975828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 ((n : ℤ) - A003056 n).toNat

end

end A049513.P15494349040496975828

namespace A049513

/-- `A049069(n-A003056(n))` -/
def P15494349040496975828.Spec : Prop :=
  ∀ n, P15494349040496975828.a n = A049513 n

end A049513

/-! ## A049513.P10493550173343225981

`A049069(A133280(n)-n)`
-/

namespace A049513.P10493550173343225981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A133280 n - (n : ℤ)).toNat

end

end A049513.P10493550173343225981

namespace A049513

/-- `A049069(A133280(n)-n)` -/
def P10493550173343225981.Spec : Prop :=
  ∀ n, P10493550173343225981.a n = A049513 n

end A049513

/-! ## A049513.P7883889960604687849

`A049069(∑[1-A010054(n)])`
-/

namespace A049513.P7883889960604687849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049513.P7883889960604687849

namespace A049513

/-- `A049069(∑[1-A010054(n)])` -/
def P7883889960604687849.Spec : Prop :=
  ∀ n, P7883889960604687849.a n = A049513 n

end A049513

/-! ## A049513.P3798320867267262351

`A004247(n)*A166692(n)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049513

/-- `A004247(n)*A166692(n)+1` -/
def P3798320867267262351.Spec : Prop :=
  ∀ n, P3798320867267262351.a n = A049513 n

theorem P3798320867267262351.correct : P3798320867267262351.Spec := by
  intro n
  simp only [A049513]

end A049513

/-! ## A049513.P42614097966599361

`A049069(A001614(n+1)-(n+1))`
-/

namespace A049513.P42614097966599361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (A001614 (n + 1) - (n + 1 : ℤ)).toNat

end

end A049513.P42614097966599361

namespace A049513

/-- `A049069(A001614(n+1)-(n+1))` -/
def P42614097966599361.Spec : Prop :=
  ∀ n, P42614097966599361.a n = A049513 n

end A049513

/-! ## A049513.P12594008803320335312

`A049069(1-A002024(n+1)+n)`
-/

namespace A049513.P12594008803320335312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (1 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A049513.P12594008803320335312

namespace A049513

/-- `A049069(1-A002024(n+1)+n)` -/
def P12594008803320335312.Spec : Prop :=
  ∀ n, P12594008803320335312.a n = A049513 n

end A049513

/-! ## A049513.P17756138972805700238

`A049069(A001614(n+1)%(n+1))`
-/

namespace A049513.P17756138972805700238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (Int.tmod (A001614 (n + 1)) (n + 1 : ℤ)).toNat

end

end A049513.P17756138972805700238

namespace A049513

/-- `A049069(A001614(n+1)%(n+1))` -/
def P17756138972805700238.Spec : Prop :=
  ∀ n, P17756138972805700238.a n = A049513 n

end A049513

/-! ## A049513.P1614612742713625905

`A049069(n-A025581(A057944(n)))`
-/

namespace A049513.P1614612742713625905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 ((n : ℤ) - A025581 (A057944 n).toNat).toNat

end

end A049513.P1614612742713625905

namespace A049513

/-- `A049069(n-A025581(A057944(n)))` -/
def P1614612742713625905.Spec : Prop :=
  ∀ n, P1614612742713625905.a n = A049513 n

end A049513

/-! ## A049513.P7660409185588788782

`A049069(∑[A001221(A059268(n))])`
-/

namespace A049513.P7660409185588788782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049513.P7660409185588788782

namespace A049513

/-- `A049069(∑[A001221(A059268(n))])` -/
def P7660409185588788782.Spec : Prop :=
  ∀ n, P7660409185588788782.a n = A049513 n

end A049513

/-!
# A049514: Starting index of a string of 2 or more consecutive equal digits in decimal expansion of Pi.

The programs for A049514, there is no canonical definition to state claims against.
-/

/-! ## A049514.P6884221110243770617

`eq[A000796(n+1), A000796(n)]+1`
-/

namespace A049514.P6884221110243770617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049514.P6884221110243770617

/-! ## A049514.P3413148753345394039

`eq[0, A095916(n+1)]+1`
-/

namespace A049514.P3413148753345394039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049514.P3413148753345394039

/-! ## A049514.P4213127474559197438

`eq[A030644(n), A153799(n)]+1`
-/

namespace A049514.P4213127474559197438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049514.P4213127474559197438

/-! ## A049514.P584394798806737264

`eq[A030644(n+1), A030644(n)]+1`
-/

namespace A049514.P584394798806737264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049514.P584394798806737264

/-! ## A049514.P7560394903722937608

`eq[A069159(n+1), A069159(n+3)]+2`
-/

namespace A049514.P7560394903722937608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069159 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A049514.P7560394903722937608

/-! ## A049514.P16731071942018224490

`A011760(eq[A000796(n+1), A000796(n)])`
-/

namespace A049514.P16731071942018224490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049514.P16731071942018224490

/-! ## A049514.P8966057391977103428

`A020725(eq[A000796(n+1), A000796(n)])`
-/

namespace A049514.P8966057391977103428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049514.P8966057391977103428

/-! ## A049514.P9060884642616081583

`A065475(eq[A000796(n+1), A000796(n)])`
-/

namespace A049514.P9060884642616081583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049514.P9060884642616081583

/-! ## A049514.P15797995004635029587

`A020725(eq[A030644(n+1), A030644(n)])`
-/

namespace A049514.P15797995004635029587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049514.P15797995004635029587

/-! ## A049514.P13810797632260573937

`eq[A001355(2*n+1), A001355(2*n+3)]+1`
-/

namespace A049514.P13810797632260573937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049514.P13810797632260573937

/-!
# A049515: Starting index of a string of 3 or more consecutive equal digits in decimal expansion of Pi.

The programs for A049515, there is no canonical definition to state claims against.
-/

/-! ## A049515.P9082169733065899027

`∩[A049514(n+1)-1, A049514(n+1)]`
-/

namespace A049515.P9082169733065899027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049515.P9082169733065899027

/-! ## A049515.P15956899168801150571

`∩[A049514(n+1), A023443(A049514(n+1))]`
-/

namespace A049515.P15956899168801150571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049514 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049515.P15956899168801150571

/-!
# A049516: Starting index of a string of 4 or more consecutive equal digits in decimal expansion of Pi.

The programs for A049516, there is no canonical definition to state claims against.
-/

/-! ## A049516.P9209414117944529564

`∩[A049515(n+1)-1, A049515(n+1)]`
-/

namespace A049516.P9209414117944529564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049516.P9209414117944529564

/-! ## A049516.P341156928759363882

`∩[A049515(n+1), A023443(A049515(n+1))]`
-/

namespace A049516.P341156928759363882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049515 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049516.P341156928759363882

/-!
# A049517: Starting index of a string of 5 or more consecutive equal digits in decimal expansion of Pi.

The programs for A049517, there is no canonical definition to state claims against.
-/

/-! ## A049517.P6263954465431445182

`∩[A049515(n+1)-2, A049515(n+1)]`
-/

namespace A049517.P6263954465431445182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049517.P6263954465431445182

/-! ## A049517.P6581695774773701192

`∩[A049516(n+1)-1, A049516(n+1)]`
-/

namespace A049517.P6581695774773701192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049516 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049517.P6581695774773701192

/-!
# A049518: Starting index of a string of exactly 2 consecutive equal digits in the decimal expansion of Pi.

The programs for A049518, there is no canonical definition to state claims against.
-/

/-! ## A049518.P13983925419081502140

`A049514(lt[A071607(n), A001076(n)])`
-/

namespace A049518.P13983925419081502140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049518.P13983925419081502140

/-! ## A049518.P10495123511373102994

`A049514(lt[A071607(n), A342632(n)])`
-/

namespace A049518.P10495123511373102994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049518.P10495123511373102994

/-! ## A049518.P981243235236264537

`A049514(lt[A071607(n), A000045(3*n)])`
-/

namespace A049518.P981243235236264537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049514 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049518.P981243235236264537

/-!
# A049519: Starting index of a string of exactly 3 consecutive equal digits in decimal expansion of Pi.

The programs for A049519, there is no canonical definition to state claims against.
-/

/-! ## A049519.P11005137475567751502

`A049515(A380294(n+1)-A092726(n))`
-/

namespace A049519.P11005137475567751502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (A380294 (n + 1) - A092726 n).toNat

end

end A049519.P11005137475567751502

/-! ## A049519.P8201705556865430712

`A049515(A380294(n+1)%A069406(n+1))`
-/

namespace A049519.P8201705556865430712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049515 (Int.tmod (A380294 (n + 1)) (A069406 (n + 1))).toNat

end

end A049519.P8201705556865430712

/-!
# A049520: Starting index of a string of exactly 4 consecutive equal digits in decimal expansion of Pi.

The programs for A049520, there is no canonical definition to state claims against.
-/

/-! ## A049520.P4191626741874256466

`A049516(A074156(n+1)+3)`
-/

namespace A049520.P4191626741874256466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049516 (A074156 (n + 1) + 3).toNat

end

end A049520.P4191626741874256466

/-! ## A049520.P17316865865576782174

`A049516(A004894(n+1)+4)`
-/

namespace A049520.P17316865865576782174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049516 (A004894 (n + 1) + 4).toNat

end

end A049520.P17316865865576782174

/-! ## A049520.P4816866965166865116

`A049516(ceil(sqrt(A225556(2*(n+2)))))`
-/

namespace A049520.P4816866965166865116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049516 ⌈Real.sqrt (A225556 (2 * (n + 2)) : ℝ)⌉.toNat

end

end A049520.P4816866965166865116

/-! ## A049520.P3167831753814062018

`A049516(n+4)%A083623(2*n+3)`
-/

namespace A049520.P3167831753814062018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049516 (n + 4)) (A083623 (2 * n + 3))

end

end A049520.P3167831753814062018

/-! ## A049520.P8927875711598718689

`A335462(∑[n+2]-1)+A049516(n+4)`
-/

namespace A049520.P8927875711598718689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A049516 (n + 4)

end

end A049520.P8927875711598718689

/-!
# A049521: Starting index of a string of exactly 5 consecutive equal digits in decimal expansion of Pi.

The programs for A049521, there is no canonical definition to state claims against.
-/

/-! ## A049521.P2552034312662010673

`A049517(A077342(n+3))`
-/

namespace A049521.P2552034312662010673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049517 (A077342 (n + 3)).toNat

end

end A049521.P2552034312662010673

/-! ## A049521.P1727702965972458594

`record[A049517(A222818(n+6))]`
-/

namespace A049521.P1727702965972458594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049517 (A222818 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049521.P1727702965972458594

/-! ## A049521.P3792477241592241288

`∑{e}[A131577(n+4), A049517(#)]`
-/

namespace A049521.P3792477241592241288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049517 (Nat.factorization (f1 n).natAbs p)

end

end A049521.P3792477241592241288

/-! ## A049521.P7902081953635970766

`A049517((n+3)*A171435(2^n))`
-/

namespace A049521.P7902081953635970766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049517 ((n + 3 : ℤ) * A171435 (2 ^ n)).toNat

end

end A049521.P7902081953635970766

/-! ## A049521.P7183376014978410545

`A049517((n+3)/A171435(2^n))`
-/

namespace A049521.P7183376014978410545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049517 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (A171435 (2 ^ n) : ℚ))).toNat

end

end A049521.P7183376014978410545

/-!
# A049522: Smallest starting index for a run of at least n consecutive equal digits in decimal expansion of Pi.

The programs for A049522, there is no canonical definition to state claims against.
-/

/-! ## A049522.P15588913904924640169

`A084073(∑[A262045(n+2)])`
-/

namespace A049522.P15588913904924640169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049522.P15588913904924640169

/-! ## A049522.P13352436202508967786

`A084073(∑[A000700(floor(n/2))])`
-/

namespace A049522.P13352436202508967786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049522.P13352436202508967786

/-! ## A049522.P4774911013428214098

`A084073(A247423(n+1)-(n+1))`
-/

namespace A049522.P4774911013428214098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084073 (A247423 (n + 1) - (n + 1 : ℤ)).toNat

end

end A049522.P4774911013428214098

/-! ## A049522.P5518536236916750963

`A084073(A337945(n+1)-(n+1))`
-/

namespace A049522.P5518536236916750963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084073 (A337945 (n + 1) - (n + 1 : ℤ)).toNat

end

end A049522.P5518536236916750963

/-! ## A049522.P11138733711575439395

`A084073(∑[(A147410(2*(n+2))%5)%2])`
-/

namespace A049522.P11138733711575439395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A147410 (2 * (n + 2))) 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049522.P11138733711575439395

/-!
# A049526: Number of possible sets {{row sums}, {column sums}} of a 2n X 2n matrix with entries from {0,1,-1} and all row and column sums distinct.

The programs for A049526, there is no canonical definition to state claims against.
-/

/-! ## A049526.P904345455053760567

`A289139(A351070(n+1)+ceil(2^(n-1)))`
-/

namespace A049526.P904345455053760567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 (A351070 (n + 1) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A049526.P904345455053760567

/-! ## A049526.P17468564953450508836

`A187251(n+2)-A298601(A321515(n))`
-/

namespace A049526.P17468564953450508836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 (n + 2) - A298601 (A321515 n).toNat

end

end A049526.P17468564953450508836

/-!
# A049530: pi(n) associated with A049529.

The programs for A049530, there is no canonical definition to state claims against.
-/

/-! ## A049530.P12543864866730895500

`A000720(A049529(n+1))`
-/

namespace A049530.P12543864866730895500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A049529 (n + 1)).toNat

end

end A049530.P12543864866730895500

/-! ## A049530.P210311247739963744

`∑{digits}[A049529(n+1), A000142(#)]`
-/

namespace A049530.P210311247739963744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A049530.P210311247739963744

/-! ## A049530.P1448259588162669342

`∑{digits}[A049529(n+1), A033647(#)]`
-/

namespace A049530.P1448259588162669342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033647 x).sum

end

end A049530.P1448259588162669342

/-! ## A049530.P11085441023464208922

`∑{digits}[A049529(n+1), A061602(#)]`
-/

namespace A049530.P11085441023464208922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A061602 x).sum

end

end A049530.P11085441023464208922

/-! ## A049530.P10412542297823334603

`∑{digits}[A049529(n+1), A062919(#)]`
-/

namespace A049530.P10412542297823334603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A062919 x).sum

end

end A049530.P10412542297823334603

/-!
# A049532: Numbers k such that k^2 + 1 is not squarefree.

The programs for A049532, there is no canonical definition to state claims against.
-/

/-! ## A049532.P17330384698599345324

`floor(sqrt(A124809(n+1)))`
-/

namespace A049532.P17330384698599345324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A124809 (n + 1))

end

end A049532.P17330384698599345324

/-! ## A049532.P6102162231221792637

`round(sqrt(A124809(C(n+1, n))))`
-/

namespace A049532.P6102162231221792637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A124809 (Nat.choose (n + 1) n) : ℝ))

end

end A049532.P6102162231221792637

/-! ## A049532.P1304363254316982816

`round(sqrt(A124809(Δ[n²]-n)))`
-/

namespace A049532.P1304363254316982816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A124809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A049532.P1304363254316982816

/-! ## A049532.P8203198134131090204

`A000027(round(sqrt(A124809(n+1))))`
-/

namespace A049532.P8203198134131090204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A124809 (n + 1) : ℝ))).toNat

end

end A049532.P8203198134131090204

/-! ## A049532.P3871230817017101936

`A000027(sqrt(A124809(n+1)-1))`
-/

namespace A049532.P3871230817017101936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A124809 (n + 1) - 1 : ℝ))).toNat

end

end A049532.P3871230817017101936

/-! ## A049532.P17136482158727022971

`round(sqrt(A124809(n+1)))%A001248(n+3)`
-/

namespace A049532.P17136482158727022971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A124809 (n + 1) : ℝ))) (A001248 (n + 3))

end

end A049532.P17136482158727022971

/-! ## A049532.P1050887251767569269

`lt[1, A059592(n)]`
-/

namespace A049532.P1050887251767569269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049532.P1050887251767569269

/-! ## A049532.P13559637949247205225

`lt[A059591(n), n²]`
-/

namespace A049532.P13559637949247205225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049532.P13559637949247205225

/-! ## A049532.P17720011143405946182

`eq[1, A054977(A059592(n)-1)]`
-/

namespace A049532.P17720011143405946182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A059592 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049532.P17720011143405946182

/-! ## A049532.P15591364503855510489

`eq[1, A057427(A059592(n)-1)]`
-/

namespace A049532.P15591364503855510489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A059592 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049532.P15591364503855510489

/-! ## A049532.P11898954464939206172

`eq[1, A158388(A059592(n)-1)]`
-/

namespace A049532.P11898954464939206172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A059592 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049532.P11898954464939206172

/-! ## A049532.P16823410010517741972

`A199969(ceil(sqrt(A124809(n+1))))`
-/

namespace A049532.P16823410010517741972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 ⌈Real.sqrt (A124809 (n + 1) : ℝ)⌉.toNat

end

end A049532.P16823410010517741972

/-! ## A049532.P18439113849365588506

`A028310(round(sqrt(A124809(n+1))))`
-/

namespace A049532.P18439113849365588506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A124809 (n + 1) : ℝ))).toNat

end

end A049532.P18439113849365588506

/-! ## A049532.P333596612973448861

`lt[A059591(n)+1, A059100(n)]`
-/

namespace A049532.P333596612973448861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049532.P333596612973448861

/-! ## A049532.P14102390438813276950

`eq[and(2, A278162(n)), A000007(n)]`
-/

namespace A049532.P14102390438813276950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A278162 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049532.P14102390438813276950

/-! ## A049532.P14597246110890889729

`eq[and(2, A278162(n)), A000038(n)]`
-/

namespace A049532.P14597246110890889729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A278162 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049532.P14597246110890889729

/-! ## A049532.P3807665594867691509

`A028310(sqrt(A124809(n+1)-1))`
-/

namespace A049532.P3807665594867691509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A124809 (n + 1) - 1 : ℝ))).toNat

end

end A049532.P3807665594867691509

/-! ## A049532.P10539537378630399911

`eq[2, A014673(A278162(n))]`
-/

namespace A049532.P10539537378630399911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A278162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049532.P10539537378630399911

/-!
# A049533: Numbers k such that k^2+1 is squarefree.

The programs for A049533, the canonical program `A049533.P347491331111619318` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049533 has offset 1).

The definition of A049533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049533.P1400590412897563441

`floor(sqrt(A069987(n+1)))`
-/

namespace A049533.P1400590412897563441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069987 (n + 1))

end

end A049533.P1400590412897563441

namespace A049533

/-- `floor(sqrt(A069987(n+1)))` -/
def P1400590412897563441.Spec : Prop :=
  ∀ n, P1400590412897563441.a n = A049533 (n + 1)

end A049533

/-! ## A049533.P2453208990407262541

`comp[A049532(n+1)-1]+1`
-/

namespace A049533.P2453208990407262541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A049533.P2453208990407262541

namespace A049533

/-- `comp[A049532(n+1)-1]+1` -/
def P2453208990407262541.Spec : Prop :=
  ∀ n, (P2453208990407262541.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P9442288496150065235

`∪[A005574(n+1), A134427(n+1)]`
-/

namespace A049533.P9442288496150065235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049533.P9442288496150065235

namespace A049533

/-- `∪[A005574(n+1), A134427(n+1)]` -/
def P9442288496150065235.Spec : Prop :=
  ∀ n, (P9442288496150065235.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P11418346387319216617

`∪[A134427(n+1), A333635(n+1)]`
-/

namespace A049533.P11418346387319216617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049533.P11418346387319216617

namespace A049533

/-- `∪[A134427(n+1), A333635(n+1)]` -/
def P11418346387319216617.Spec : Prop :=
  ∀ n, (P11418346387319216617.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P8866609346508570365

`eq[2, and(2, A278162(n))]`
-/

namespace A049533.P8866609346508570365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A278162 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049533.P8866609346508570365

namespace A049533

/-- `eq[2, and(2, A278162(n))]` -/
def P8866609346508570365.Spec : Prop :=
  ∀ n, (P8866609346508570365.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P347491331111619318

`record[floor(sqrt(A059591(n)))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049533

/-- `record[floor(sqrt(A059591(n)))]` -/
def P347491331111619318.Spec : Prop :=
  ∀ n, P347491331111619318.a n = A049533 (n + 1)

theorem P347491331111619318.correct : P347491331111619318.Spec := by
  intro n
  simp only [A049533, Nat.add_sub_cancel]

end A049533

/-! ## A049533.P8842801777231051779

`eq[1, A059592(n+1)]+1`
-/

namespace A049533.P8842801777231051779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049533.P8842801777231051779

namespace A049533

/-- `eq[1, A059592(n+1)]+1` -/
def P8842801777231051779.Spec : Prop :=
  ∀ n, (P8842801777231051779.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P385071108311919583

`eq[A054977(n), A059592(n)]`
-/

namespace A049533.P385071108311919583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049533.P385071108311919583

namespace A049533

/-- `eq[A054977(n), A059592(n)]` -/
def P385071108311919583.Spec : Prop :=
  ∀ n, (P385071108311919583.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P11818836748588348499

`eq[A057427(n), A059592(n)]`
-/

namespace A049533.P11818836748588348499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049533.P11818836748588348499

namespace A049533

/-- `eq[A057427(n), A059592(n)]` -/
def P11818836748588348499.Spec : Prop :=
  ∀ n, (P11818836748588348499.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P4522427656303660144

`eq[A059592(n), A158388(n)]`
-/

namespace A049533.P4522427656303660144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049533.P4522427656303660144

namespace A049533

/-- `eq[A059592(n), A158388(n)]` -/
def P4522427656303660144.Spec : Prop :=
  ∀ n, (P4522427656303660144.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P18416610823048378221

`lt[A059100(n), 2*A059591(n)]`
-/

namespace A049533.P18416610823048378221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049533.P18416610823048378221

namespace A049533

/-- `lt[A059100(n), 2*A059591(n)]` -/
def P18416610823048378221.Spec : Prop :=
  ∀ n, (P18416610823048378221.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P8230597747635283194

`lt[A002522(n), A059591(n)+n]`
-/

namespace A049533.P8230597747635283194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049533.P8230597747635283194

namespace A049533

/-- `lt[A002522(n), A059591(n)+n]` -/
def P8230597747635283194.Spec : Prop :=
  ∀ n, (P8230597747635283194.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P2578967540784935142

`lt[A000010(n+1)², A059591(n)]`
-/

namespace A049533.P2578967540784935142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049533.P2578967540784935142

namespace A049533

/-- `lt[A000010(n+1)², A059591(n)]` -/
def P2578967540784935142.Spec : Prop :=
  ∀ n, (P2578967540784935142.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P10967248732879384410

`lt[A059592(n), A001221(n+1)+1]`
-/

namespace A049533.P10967248732879384410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049533.P10967248732879384410

namespace A049533

/-- `lt[A059592(n), A001221(n+1)+1]` -/
def P10967248732879384410.Spec : Prop :=
  ∀ n, (P10967248732879384410.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P3371520104291327655

`lt[n², A001221(n+1)*A059591(n)]`
-/

namespace A049533.P3371520104291327655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A059591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049533.P3371520104291327655

namespace A049533

/-- `lt[n², A001221(n+1)*A059591(n)]` -/
def P3371520104291327655.Spec : Prop :=
  ∀ n, (P3371520104291327655.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P10030713301065862048

`lt[A059100(n), A059591(n)+A000203(n+1)]`
-/

namespace A049533.P10030713301065862048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n + A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049533.P10030713301065862048

namespace A049533

/-- `lt[A059100(n), A059591(n)+A000203(n+1)]` -/
def P10030713301065862048.Spec : Prop :=
  ∀ n, (P10030713301065862048.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P12662495211756072983

`eq[1, A306454(2*(n+1))]+1`
-/

namespace A049533.P12662495211756072983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306454 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049533.P12662495211756072983

namespace A049533

/-- `eq[1, A306454(2*(n+1))]+1` -/
def P12662495211756072983.Spec : Prop :=
  ∀ n, (P12662495211756072983.a n : ℤ) = A049533 (n + 1)

end A049533

/-! ## A049533.P5129374829969381600

`record[A091420(n+1)]`
-/

namespace A049533.P5129374829969381600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049533.P5129374829969381600

namespace A049533

/-- `record[A091420(n+1)]` -/
def P5129374829969381600.Spec : Prop :=
  ∀ n, P5129374829969381600.a n = A049533 (n + 1)

end A049533

/-! ## A049533.P738496083365084338

`record[sqrt(A091419(n+1))]`
-/

namespace A049533.P738496083365084338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A091419 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049533.P738496083365084338

namespace A049533

/-- `record[sqrt(A091419(n+1))]` -/
def P738496083365084338.Spec : Prop :=
  ∀ n, P738496083365084338.a n = (A049533 (n + 1) : ℝ)

end A049533

/-!
# A049536: Primes of the form lcm(1, ..., n) + 1 = A003418(n) + 1.

The programs for A049536, there is no canonical definition to state claims against.
-/

/-! ## A049536.P8083760432548635058

`record[A051454(n+1)]`
-/

namespace A049536.P8083760432548635058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049536.P8083760432548635058

/-! ## A049536.P6293603768869706953

`A060357(A051453(n+1))`
-/

namespace A049536.P6293603768869706953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A051453 (n + 1)).toNat

end

end A049536.P6293603768869706953

/-! ## A049536.P8933104766024291615

`record[gcd(A060357(n), A075059(n))]`
-/

namespace A049536.P8933104766024291615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060357 n) (A075059 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049536.P8933104766024291615

/-! ## A049536.P2783469548307944365

`A075059(A051453(2*n+1-n))`
-/

namespace A049536.P2783469548307944365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (A051453 (2 * n + 1 - n)).toNat

end

end A049536.P2783469548307944365

/-! ## A049536.P9717778873855333258

`A060357(∩[A000961(n+1), A049537(n+1)])`
-/

namespace A049536.P9717778873855333258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A049536.P9717778873855333258

/-!
# A049537: Values of k for which A075059(k) = A003418(k) + 1 is prime.

The programs for A049537, there is no canonical definition to state claims against.
-/

/-! ## A049537.P8436829032114210835

`eq[1, A060361(n)]`
-/

namespace A049537.P8436829032114210835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049537.P8436829032114210835

/-! ## A049537.P10318893596140162382

`lt[A060361(A028310(n)), 2]`
-/

namespace A049537.P10318893596140162382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A049537.P10318893596140162382

/-! ## A049537.P16162309366994992269

`lt[A060361(n), A007918(n)]`
-/

namespace A049537.P16162309366994992269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049537.P16162309366994992269

/-! ## A049537.P295726059982602612

`lt[A060361(n), A105397(n)]`
-/

namespace A049537.P295726059982602612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049537.P295726059982602612

/-! ## A049537.P13070424775646531715

`lt[A060361(n), A151800(n)]`
-/

namespace A049537.P13070424775646531715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049537.P13070424775646531715

/-!
# A049538: Number of distinct binary sequences that can be generated by a general (non-linear) binary feedback shift register of length n, but not by a shorter one.

The programs for A049538, there is no canonical definition to state claims against.
-/

/-! ## A049538.P17653299554014372093

`A184520(∑[A058785(n)])`
-/

namespace A049538.P17653299554014372093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049538.P17653299554014372093

/-!
# A049539: Number of distinct binary sequences of length k+n generated by a general (non-linear) binary feedback shift register of length k, for sufficiently large k.

The programs for A049539, there is no canonical definition to state claims against.
-/

/-! ## A049539.P3627033636013232353

`A086150(A233862(3*n+4))+A003946(n)`
-/

namespace A049539.P3627033636013232353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (A233862 (3 * n + 4)).toNat + A003946 n

end

end A049539.P3627033636013232353

/-!
# A049540: Number of n-ominoes for a high-dimensional orthoplex.

The programs for A049540, there is no canonical definition to state claims against.
-/

/-! ## A049540.P6394169203142702839

`A307447(A241768(n+1)+A025591(n))`
-/

namespace A049540.P6394169203142702839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307447 (A241768 (n + 1) + A025591 n).toNat

end

end A049540.P6394169203142702839

/-! ## A049540.P4185580490022901841

`A096182(A296231(n))+A054861(A128209(n)-1)`
-/

namespace A049540.P4185580490022901841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A296231 n).toNat + A054861 (A128209 n - 1).toNat

end

end A049540.P4185580490022901841

/-!
# A049541: Decimal expansion of 1/Pi.

The programs for A049541, there is no canonical definition to state claims against.
-/

/-! ## A049541.P14855198994038088142

`9-A188340(n)`
-/

namespace A049541.P14855198994038088142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A188340 n

end

end A049541.P14855198994038088142

/-! ## A049541.P8980803120763495994

`A095710(∑[n+1]+1)`
-/

namespace A049541.P8980803120763495994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A049541.P8980803120763495994

/-!
# A049542: Primes p such that x^10 = 2 has a solution mod p.

The programs for A049542, there is no canonical definition to state claims against.
-/

/-! ## A049542.P1210447801708346249

`∩[A038873(n+1), A040159(n+1)]`
-/

namespace A049542.P1210447801708346249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P1210447801708346249

/-! ## A049542.P389944002679041197

`∩[A040159(n+1), A055673(n+1)]`
-/

namespace A049542.P389944002679041197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P389944002679041197

/-! ## A049542.P10582971926998696756

`∩[A040159(n+1), A057126(n+1)]`
-/

namespace A049542.P10582971926998696756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P10582971926998696756

/-! ## A049542.P9924880770589634733

`∩[A040159(n+1), A227144(n+1)]`
-/

namespace A049542.P9924880770589634733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P9924880770589634733

/-! ## A049542.P16649347983457639095

`∩[A035251(n+1), A040159(n+1)]`
-/

namespace A049542.P16649347983457639095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P16649347983457639095

/-! ## A049542.P10240143226443338151

`∩[A040159(n+1), A385723(n+1)]`
-/

namespace A049542.P10240143226443338151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P10240143226443338151

/-! ## A049542.P10292945929002574241

`∩[A040159(n+1), A047526(n+1)]`
-/

namespace A049542.P10292945929002574241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P10292945929002574241

/-! ## A049542.P7099676715593159864

`∩[A040159(n+1), A047527(n+1)]`
-/

namespace A049542.P7099676715593159864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P7099676715593159864

/-! ## A049542.P7990988377954083761

`∩[A040159(n+1), A047541(n+1)]`
-/

namespace A049542.P7990988377954083761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P7990988377954083761

/-! ## A049542.P1369437482817182554

`∩[A040159(n+1), A047554(n+1)]`
-/

namespace A049542.P1369437482817182554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P1369437482817182554

/-! ## A049542.P17840066010113272156

`∩[A040159(n+1), A047476(n+1)-1]`
-/

namespace A049542.P17840066010113272156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P17840066010113272156

/-! ## A049542.P2973172792504214730

`∩[A040159(n+1), A047454(n+1)-2]`
-/

namespace A049542.P2973172792504214730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P2973172792504214730

/-! ## A049542.P717241075983482247

`∩[A040159(n+1), A066507(n+1)]`
-/

namespace A049542.P717241075983482247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P717241075983482247

/-! ## A049542.P16861423390387328931

`∩[A040159(n+1), A047512(n+1)]`
-/

namespace A049542.P16861423390387328931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P16861423390387328931

/-! ## A049542.P4750419361211455803

`∩[A040159(n+1), A047542(n+1)]`
-/

namespace A049542.P4750419361211455803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P4750419361211455803

/-! ## A049542.P5726847261011184511

`∩[A040159(n+1), A047555(n+1)]`
-/

namespace A049542.P5726847261011184511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P5726847261011184511

/-! ## A049542.P10699339929194850450

`∩[A040159(n+1), A047419(n+1)-2]`
-/

namespace A049542.P10699339929194850450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P10699339929194850450

/-! ## A049542.P12441398696776786875

`∩[A040159(n+1), A047453(n+1)-2]`
-/

namespace A049542.P12441398696776786875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P12441398696776786875

/-! ## A049542.P7643024888693501569

`∩[A040159(n+1), A260399(n+1)]`
-/

namespace A049542.P7643024888693501569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P7643024888693501569

/-! ## A049542.P1738313502253424259

`∩[A040159(n+1), A047513(n+1)]`
-/

namespace A049542.P1738313502253424259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049542.P1738313502253424259

/-!
# A049543: Primes p such that x^11 = 2 has a solution mod p.

The programs for A049543, there is no canonical definition to state claims against.
-/

/-! ## A049543.P3136935083607026620

`A000040(lt[A063851(n+4), A048376(n+1)])`
-/

namespace A049543.P3136935083607026620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049543.P3136935083607026620

/-!
# A049544: Primes p such that x^12 = 2 has a solution mod p.

The programs for A049544, there is no canonical definition to state claims against.
-/

/-! ## A049544.P10473823116136106308

`∩[A040098(n+1), A040992(n+1)]`
-/

namespace A049544.P10473823116136106308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049544.P10473823116136106308

/-! ## A049544.P10431009853355858080

`∩[A040028(n+1), A040098(n+1)]`
-/

namespace A049544.P10431009853355858080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049544.P10431009853355858080

/-! ## A049544.P18244301069111142278

`∩[A040098(n+1), A057760(n+1)]`
-/

namespace A049544.P18244301069111142278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049544.P18244301069111142278

/-! ## A049544.P12947938533308190941

`A050368(∪[A049556(n+1), A049568(n+1)])`
-/

namespace A049544.P12947938533308190941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050368 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A049544.P12947938533308190941

/-! ## A049544.P10198709745865487023

`A050368(∪[A049556(n+1), A070188(n+1)])`
-/

namespace A049544.P10198709745865487023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050368 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A049544.P10198709745865487023

/-!
# A049545: Primes p such that x^13 = 2 has a solution mod p.

The programs for A049545, there is no canonical definition to state claims against.
-/

/-! ## A049545.P8482627745066244207

`A000040(lt[A191728(n+1), A201464(2*(n+1))]+1)`
-/

namespace A049545.P8482627745066244207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201464 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A049545.P8482627745066244207

/-! ## A049545.P14989515098126970765

`A000040(lt[A122285(3*n+1), A324865(3*n+4)])`
-/

namespace A049545.P14989515098126970765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049545.P14989515098126970765

/-! ## A049545.P18400500130527129704

`A000040(∑[A327407(3*n+5)])`
-/

namespace A049545.P18400500130527129704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049545.P18400500130527129704

/-! ## A049545.P4603893802350242442

`A000040(∑[A358724(3*n+5)!])`
-/

namespace A049545.P4603893802350242442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A358724 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049545.P4603893802350242442

/-!
# A049546: Primes p such that x^14 = 2 has a solution mod p.

The programs for A049546, there is no canonical definition to state claims against.
-/

/-! ## A049546.P136319408295835064

`∩[A038873(n+1), A042966(n+1)]`
-/

namespace A049546.P136319408295835064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P136319408295835064

/-! ## A049546.P14323155418190555119

`∩[A042966(n+1), A055673(n+1)]`
-/

namespace A049546.P14323155418190555119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P14323155418190555119

/-! ## A049546.P5322559323687651836

`∩[A042966(n+1), A057126(n+1)]`
-/

namespace A049546.P5322559323687651836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P5322559323687651836

/-! ## A049546.P14947231431909945529

`∩[A042966(n+1), A227144(n+1)]`
-/

namespace A049546.P14947231431909945529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P14947231431909945529

/-! ## A049546.P494881510287113830

`∩[A035251(n+1), A042966(n+1)]`
-/

namespace A049546.P494881510287113830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P494881510287113830

/-! ## A049546.P4189178337253082219

`∩[A042966(n+1), A385723(n+1)]`
-/

namespace A049546.P4189178337253082219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P4189178337253082219

/-! ## A049546.P3866348007882387404

`∩[A042966(n+1), A047526(n+1)]`
-/

namespace A049546.P3866348007882387404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P3866348007882387404

/-! ## A049546.P3060287838775972180

`∩[A042966(n+1), A047527(n+1)]`
-/

namespace A049546.P3060287838775972180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P3060287838775972180

/-! ## A049546.P18205180683532675722

`∩[A042966(n+1), A047541(n+1)]`
-/

namespace A049546.P18205180683532675722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P18205180683532675722

/-! ## A049546.P18351389696455286984

`∩[A042966(n+1), A047554(n+1)]`
-/

namespace A049546.P18351389696455286984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P18351389696455286984

/-! ## A049546.P13953693617525088578

`∩[A042966(n+1), A047476(n+1)-1]`
-/

namespace A049546.P13953693617525088578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P13953693617525088578

/-! ## A049546.P6909132090003739696

`∩[A042966(n+1), A047454(n+1)-2]`
-/

namespace A049546.P6909132090003739696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P6909132090003739696

/-! ## A049546.P16648913005236093181

`∩[A042966(n+1), A066507(n+1)]`
-/

namespace A049546.P16648913005236093181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P16648913005236093181

/-! ## A049546.P15630192751171202022

`∩[A042966(n+1), A047512(n+1)]`
-/

namespace A049546.P15630192751171202022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P15630192751171202022

/-! ## A049546.P6329648172338371050

`∩[A042966(n+1), A047542(n+1)]`
-/

namespace A049546.P6329648172338371050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P6329648172338371050

/-! ## A049546.P3448073960751465213

`∩[A042966(n+1), A047555(n+1)]`
-/

namespace A049546.P3448073960751465213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P3448073960751465213

/-! ## A049546.P6631947865767468323

`∩[A042966(n+1), A047419(n+1)-2]`
-/

namespace A049546.P6631947865767468323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P6631947865767468323

/-! ## A049546.P7127852767432776599

`∩[A042966(n+1), A047453(n+1)-2]`
-/

namespace A049546.P7127852767432776599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P7127852767432776599

/-! ## A049546.P15490732534047680109

`∩[A042966(n+1), A260399(n+1)]`
-/

namespace A049546.P15490732534047680109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P15490732534047680109

/-! ## A049546.P4908528930160430026

`∩[A042966(n+1), A047513(n+1)]`
-/

namespace A049546.P4908528930160430026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049546.P4908528930160430026

/-!
# A049547: Primes p such that x^15 = 2 has a solution mod p.

The programs for A049547, there is no canonical definition to state claims against.
-/

/-! ## A049547.P10735236621474688447

`∩[A040028(n+1), A040159(n+1)]`
-/

namespace A049547.P10735236621474688447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049547.P10735236621474688447

/-! ## A049547.P804540637888375770

`∩[A040159(n+1), A057760(n+1)]`
-/

namespace A049547.P804540637888375770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049547.P804540637888375770

/-! ## A049547.P7383188311077764209

`p?[comp[A059308(n+1)]]`
-/

namespace A049547.P7383188311077764209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049547.P7383188311077764209

/-! ## A049547.P7553332515773882460

`record[A052274(p?[A259732(n+1)])]`
-/

namespace A049547.P7553332515773882460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052274 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049547.P7553332515773882460

/-! ## A049547.P13326203158138307494

`∩[A040159(n+1), A259732(n+1)]`
-/

namespace A049547.P13326203158138307494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049547.P13326203158138307494

/-!
# A049548: a(n+1) = smallest number not containing any digits of a(n), working in base 4.

The programs for A049548, there is no canonical definition to state claims against.
-/

/-! ## A049548.P15215687772006089637

`lcm(n, round(A013588(n+1)/18))+n-A309881(n)`
-/

namespace A049548.P15215687772006089637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((A013588 (n + 1) : ℚ) / 18)) : ℤ) + ((n : ℤ) - A309881 n)

end

end A049548.P15215687772006089637

/-! ## A049548.P1726590152025910418

`n*Δ[A054961(n)]`
-/

namespace A049548.P1726590152025910418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A049548.P1726590152025910418

/-! ## A049548.P8306457667474011814

`n*A230260(round(3^(n/2)))`
-/

namespace A049548.P8306457667474011814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230260 (SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat

end

end A049548.P8306457667474011814

/-! ## A049548.P12575600573298132277

`n*A001221(A007747(n))`
-/

namespace A049548.P12575600573298132277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (A007747 n).toNat

end

end A049548.P12575600573298132277

/-!
# A049549: Primes p such that x^17 = 2 has a solution mod p.

The programs for A049549, there is no canonical definition to state claims against.
-/

/-! ## A049549.P16324803756248382092

`A000040(lt[A205497(n), A295847(2*n+1)])`
-/

namespace A049549.P16324803756248382092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049549.P16324803756248382092

/-! ## A049549.P5679387648469104437

`A000040(lt[A281007(2*(n+2)), A320033(3*n+1)])`
-/

namespace A049549.P5679387648469104437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320033 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049549.P5679387648469104437

/-! ## A049549.P6708461117043547029

`A000040(lt[A115578(2*(n+2)), A013597(2*n+1)])`
-/

namespace A049549.P6708461117043547029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049549.P6708461117043547029

/-! ## A049549.P3308075758557013665

`A000040(lt[A006593(n+3), A037896(n+1)])`
-/

namespace A049549.P3308075758557013665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006593 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049549.P3308075758557013665

/-! ## A049549.P323604541232019980

`A000040(lt[A260322(n+1), A218319(2*n+1)])`
-/

namespace A049549.P323604541232019980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049549.P323604541232019980

/-!
# A049550: Primes p such that x^18 = 2 has a solution mod p.

The programs for A049550, there is no canonical definition to state claims against.
-/

/-! ## A049550.P2090317624395901737

`∩[A038873(n+1), A049596(n+1)]`
-/

namespace A049550.P2090317624395901737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P2090317624395901737

/-! ## A049550.P5584048126916133601

`∩[A040992(n+1), A049596(n+1)]`
-/

namespace A049550.P5584048126916133601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P5584048126916133601

/-! ## A049550.P1042510438786100920

`∩[A049596(n+1), A055673(n+1)]`
-/

namespace A049550.P1042510438786100920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P1042510438786100920

/-! ## A049550.P12095193746106302605

`∩[A049596(n+1), A057126(n+1)]`
-/

namespace A049550.P12095193746106302605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P12095193746106302605

/-! ## A049550.P8630779958797620926

`∩[A049596(n+1), A227144(n+1)]`
-/

namespace A049550.P8630779958797620926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P8630779958797620926

/-! ## A049550.P10757849574047681420

`∩[A035251(n+1), A049596(n+1)]`
-/

namespace A049550.P10757849574047681420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P10757849574047681420

/-! ## A049550.P4806689384551233860

`∩[A049596(n+1), A385723(n+1)]`
-/

namespace A049550.P4806689384551233860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P4806689384551233860

/-! ## A049550.P4539413276373916849

`∩[A047526(n+1), A049596(n+1)]`
-/

namespace A049550.P4539413276373916849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P4539413276373916849

/-! ## A049550.P17808770874923448055

`∩[A047527(n+1), A049596(n+1)]`
-/

namespace A049550.P17808770874923448055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P17808770874923448055

/-! ## A049550.P13347507718178529197

`∩[A047541(n+1), A049596(n+1)]`
-/

namespace A049550.P13347507718178529197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P13347507718178529197

/-! ## A049550.P14409101594659211281

`∩[A047554(n+1), A049596(n+1)]`
-/

namespace A049550.P14409101594659211281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P14409101594659211281

/-! ## A049550.P12978530377458111040

`∩[A047476(n+1)-1, A049596(n+1)]`
-/

namespace A049550.P12978530377458111040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P12978530377458111040

/-! ## A049550.P5036817411664910186

`∩[A047454(n+1)-2, A049596(n+1)]`
-/

namespace A049550.P5036817411664910186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P5036817411664910186

/-! ## A049550.P9887013448130817175

`∩[A049596(n+1), A066507(n+1)]`
-/

namespace A049550.P9887013448130817175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P9887013448130817175

/-! ## A049550.P17653635588494081114

`∩[A047512(n+1), A049596(n+1)]`
-/

namespace A049550.P17653635588494081114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P17653635588494081114

/-! ## A049550.P3019847389817484860

`∩[A047542(n+1), A049596(n+1)]`
-/

namespace A049550.P3019847389817484860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P3019847389817484860

/-! ## A049550.P13495206498693315678

`∩[A047419(n+1)-2, A049596(n+1)]`
-/

namespace A049550.P13495206498693315678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P13495206498693315678

/-! ## A049550.P18222973515993770349

`∩[A047453(n+1)-2, A049596(n+1)]`
-/

namespace A049550.P18222973515993770349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049550.P18222973515993770349

/-! ## A049550.P3500598208756126901

`filter[A049596(n+1), A260397(#)]`
-/

namespace A049550.P3500598208756126901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A049550.P3500598208756126901

/-!
# A049551: Primes p such that x^19 = 2 has a solution mod p.

The programs for A049551, there is no canonical definition to state claims against.
-/

/-! ## A049551.P8287382067972892131

`A000040(lt[A246690(2*n+1), A375740(n+1)])`
-/

namespace A049551.P8287382067972892131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246690 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P8287382067972892131

/-! ## A049551.P3369331019479804215

`A000040(lt[A333221(n+4), A039955(2*n+1)])`
-/

namespace A049551.P3369331019479804215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P3369331019479804215

/-! ## A049551.P2673928137406438936

`A000040(lt[A243833(2*(n+1)), A359907(n)])`
-/

namespace A049551.P2673928137406438936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P2673928137406438936

/-! ## A049551.P14737249198305541294

`A000040(lt[A331787(2*(n+3)), A324774(n)²])`
-/

namespace A049551.P14737249198305541294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331787 (2 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P14737249198305541294

/-! ## A049551.P10469848615824496194

`A000040(lt[A299038(2*n+1), A325700(n+1)])`
-/

namespace A049551.P10469848615824496194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P10469848615824496194

/-! ## A049551.P13352862254030660087

`A000040(lt[A318753(2*(n+1)), A154488(n+1)])`
-/

namespace A049551.P13352862254030660087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P13352862254030660087

/-! ## A049551.P4332581156046960146

`A000040(lt[A098158(2*n+1), A194440(n)])`
-/

namespace A049551.P4332581156046960146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P4332581156046960146

/-! ## A049551.P9592581202085701771

`A000040(lt[A240608(2*n), A333379(n+1)])`
-/

namespace A049551.P9592581202085701771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049551.P9592581202085701771

/-!
# A049552: Primes p such that x^20 = 2 has a solution mod p.

The programs for A049552, there is no canonical definition to state claims against.
-/

/-! ## A049552.P12145301135512931979

`∩[A040098(n+1), A049542(n+1)]`
-/

namespace A049552.P12145301135512931979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049552.P12145301135512931979

/-! ## A049552.P9526734155205868910

`∩[A040098(n+1), A040159(n+1)]`
-/

namespace A049552.P9526734155205868910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049552.P9526734155205868910

/-! ## A049552.P12720500832378395040

`A040098(lt[1, A215737(n+2)])`
-/

namespace A049552.P12720500832378395040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049552.P12720500832378395040

/-! ## A049552.P12944475750711475405

`A040098(∑[A033148(n+1)!])`
-/

namespace A049552.P12944475750711475405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A033148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049552.P12944475750711475405

/-! ## A049552.P16255742878463102126

`A049582(lt[A317554(2*n+5), A027642(n)])`
-/

namespace A049552.P16255742878463102126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317554 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049582 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049552.P16255742878463102126

/-!
# A049553: Primes p such that x^21 = 2 has a solution mod p.

The programs for A049553, there is no canonical definition to state claims against.
-/

/-! ## A049553.P8934582031090276909

`∩[A040028(n+1), A042966(n+1)]`
-/

namespace A049553.P8934582031090276909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049553.P8934582031090276909

/-! ## A049553.P11367294532064867232

`∩[A042966(n+1), A057760(n+1)]`
-/

namespace A049553.P11367294532064867232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049553.P11367294532064867232

/-! ## A049553.P10046155890051707496

`∩[A042966(n+1), A259732(n+1)]`
-/

namespace A049553.P10046155890051707496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049553.P10046155890051707496

/-! ## A049553.P7291144833702684355

`∩[A042997(n+1), A259732(n+1)]`
-/

namespace A049553.P7291144833702684355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049553.P7291144833702684355

/-! ## A049553.P9175508065806447422

`∩[A216881(n+1), A259732(n+1)]`
-/

namespace A049553.P9175508065806447422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049553.P9175508065806447422

/-!
# A049554: Primes p such that x^22 = 2 has a solution mod p.

The programs for A049554, there is no canonical definition to state claims against.
-/

/-! ## A049554.P13285065143069977919

`∩[A038873(n+1), A049543(n+1)]`
-/

namespace A049554.P13285065143069977919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P13285065143069977919

/-! ## A049554.P9330033957349775342

`∩[A049543(n+1), A055673(n+1)]`
-/

namespace A049554.P9330033957349775342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P9330033957349775342

/-! ## A049554.P9621755925579080162

`∩[A049543(n+1), A057126(n+1)]`
-/

namespace A049554.P9621755925579080162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P9621755925579080162

/-! ## A049554.P4889897480159011660

`∩[A049543(n+1), A227144(n+1)]`
-/

namespace A049554.P4889897480159011660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P4889897480159011660

/-! ## A049554.P9326367048183768027

`∩[A035251(n+1), A049543(n+1)]`
-/

namespace A049554.P9326367048183768027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P9326367048183768027

/-! ## A049554.P2389494073058600811

`∩[A049543(n+1), A385723(n+1)]`
-/

namespace A049554.P2389494073058600811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P2389494073058600811

/-! ## A049554.P3499743287891369541

`∩[A047526(n+1), A049543(n+1)]`
-/

namespace A049554.P3499743287891369541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P3499743287891369541

/-! ## A049554.P1311515820740560310

`∩[A047527(n+1), A049543(n+1)]`
-/

namespace A049554.P1311515820740560310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P1311515820740560310

/-! ## A049554.P4397205338300661089

`∩[A047541(n+1), A049543(n+1)]`
-/

namespace A049554.P4397205338300661089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P4397205338300661089

/-! ## A049554.P14960064221422859571

`∩[A047554(n+1), A049543(n+1)]`
-/

namespace A049554.P14960064221422859571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P14960064221422859571

/-! ## A049554.P13721594645192268371

`∩[A047476(n+1)-1, A049543(n+1)]`
-/

namespace A049554.P13721594645192268371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P13721594645192268371

/-! ## A049554.P14903390986111374406

`∩[A047454(n+1)-2, A049543(n+1)]`
-/

namespace A049554.P14903390986111374406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P14903390986111374406

/-! ## A049554.P14383784801843158545

`∩[A049543(n+1), A066507(n+1)]`
-/

namespace A049554.P14383784801843158545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P14383784801843158545

/-! ## A049554.P6750826766891563158

`∩[A047512(n+1), A049543(n+1)]`
-/

namespace A049554.P6750826766891563158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P6750826766891563158

/-! ## A049554.P5616827400787287073

`∩[A047542(n+1), A049543(n+1)]`
-/

namespace A049554.P5616827400787287073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P5616827400787287073

/-! ## A049554.P8354158765185976058

`∩[A047555(n+1), A049543(n+1)]`
-/

namespace A049554.P8354158765185976058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P8354158765185976058

/-! ## A049554.P6590118753149919765

`∩[A047419(n+1)-2, A049543(n+1)]`
-/

namespace A049554.P6590118753149919765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P6590118753149919765

/-! ## A049554.P3874139668719715054

`∩[A047453(n+1)-2, A049543(n+1)]`
-/

namespace A049554.P3874139668719715054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P3874139668719715054

/-! ## A049554.P6878757111688442468

`∩[A049543(n+1), A260399(n+1)]`
-/

namespace A049554.P6878757111688442468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049554.P6878757111688442468

/-! ## A049554.P3789484585232604706

`filter[A049543(n+1), A260397(#)]`
-/

namespace A049554.P3789484585232604706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A049554.P3789484585232604706

/-!
# A049555: Primes p such that x^23 = 2 has a solution mod p.

The programs for A049555, there is no canonical definition to state claims against.
-/

/-! ## A049555.P4347366389087330107

`eq[A003415(n), A063994(A234275(3*n))]`
-/

namespace A049555.P4347366389087330107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A234275 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049555.P4347366389087330107

/-! ## A049555.P10449517313595844523

`A008578(lt[A097439(n+1), A059100(n)])`
-/

namespace A049555.P10449517313595844523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049555.P10449517313595844523

/-! ## A049555.P5448975493901877022

`A008578(lt[A097439(n+1), A375714(n+1)])`
-/

namespace A049555.P5448975493901877022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049555.P5448975493901877022

/-! ## A049555.P7446091498365839908

`A000040(lt[A333483(n), A333483(2*n)])`
-/

namespace A049555.P7446091498365839908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049555.P7446091498365839908

/-! ## A049555.P11187313575269445072

`eq[A003415(n), A288864(A235578(n+1))]`
-/

namespace A049555.P11187313575269445072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A235578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049555.P11187313575269445072

/-!
# A049556: Primes p such that x^24 = 2 has a solution mod p.

The programs for A049556, there is no canonical definition to state claims against.
-/

/-! ## A049556.P4960754896113138633

`∩[A040992(n+1), A045315(n+1)]`
-/

namespace A049556.P4960754896113138633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049556.P4960754896113138633

/-! ## A049556.P17437217937349299369

`∩[A045315(n+1), A049544(n+1)]`
-/

namespace A049556.P17437217937349299369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049556.P17437217937349299369

/-! ## A049556.P2228822378504670205

`∩[A040028(n+1), A045315(n+1)]`
-/

namespace A049556.P2228822378504670205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049556.P2228822378504670205

/-! ## A049556.P196235038142988641

`∩[A045315(n+1), A057760(n+1)]`
-/

namespace A049556.P196235038142988641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049556.P196235038142988641

/-! ## A049556.P3384649278391495508

`lcm(A033999(A005586(n)), A049580(n+1))`
-/

namespace A049556.P3384649278391495508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A005586 n).toNat) (A049580 (n + 1))

end

end A049556.P3384649278391495508

/-!
# A049557: Primes p such that x^25 = 2 has a solution mod p.

The programs for A049557, there is no canonical definition to state claims against.
-/

/-! ## A049557.P2471296801449958169

`p?[(n+1)*gcd(5, A007733(n+1))]`
-/

namespace A049557.P2471296801449958169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 5 (A007733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049557.P2471296801449958169

/-! ## A049557.P8531969525634932569

`p?[(n+1)*A338775(A001343(2*n)+1)]`
-/

namespace A049557.P8531969525634932569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A338775 (A001343 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049557.P8531969525634932569

/-! ## A049557.P1959657475604518578

`record[A040988(n+1)*A267520(A227649(n+1))]`
-/

namespace A049557.P1959657475604518578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040988 (n + 1) * A267520 (A227649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049557.P1959657475604518578

/-!
# A049558: Primes p such that x^26 = 2 has a solution mod p.

The programs for A049558, there is no canonical definition to state claims against.
-/

/-! ## A049558.P11489687220879714436

`∩[A038873(n+1), A049545(n+1)]`
-/

namespace A049558.P11489687220879714436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P11489687220879714436

/-! ## A049558.P14261209142441234340

`∩[A049545(n+1), A055673(n+1)]`
-/

namespace A049558.P14261209142441234340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P14261209142441234340

/-! ## A049558.P2569746780768979413

`∩[A049545(n+1), A057126(n+1)]`
-/

namespace A049558.P2569746780768979413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P2569746780768979413

/-! ## A049558.P11666153208408410267

`∩[A049545(n+1), A227144(n+1)]`
-/

namespace A049558.P11666153208408410267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P11666153208408410267

/-! ## A049558.P4300835424202945883

`∩[A035251(n+1), A049545(n+1)]`
-/

namespace A049558.P4300835424202945883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P4300835424202945883

/-! ## A049558.P12841044809560376347

`∩[A049545(n+1), A385723(n+1)]`
-/

namespace A049558.P12841044809560376347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P12841044809560376347

/-! ## A049558.P5738885020518293267

`∩[A047526(n+1), A049545(n+1)]`
-/

namespace A049558.P5738885020518293267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P5738885020518293267

/-! ## A049558.P8517406746466313153

`∩[A047527(n+1), A049545(n+1)]`
-/

namespace A049558.P8517406746466313153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P8517406746466313153

/-! ## A049558.P13015259959386779062

`∩[A047541(n+1), A049545(n+1)]`
-/

namespace A049558.P13015259959386779062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P13015259959386779062

/-! ## A049558.P9997447556438462422

`∩[A047554(n+1), A049545(n+1)]`
-/

namespace A049558.P9997447556438462422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P9997447556438462422

/-! ## A049558.P17264957094473898236

`∩[A047476(n+1)-1, A049545(n+1)]`
-/

namespace A049558.P17264957094473898236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P17264957094473898236

/-! ## A049558.P8689369372468441441

`∩[A047454(n+1)-2, A049545(n+1)]`
-/

namespace A049558.P8689369372468441441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P8689369372468441441

/-! ## A049558.P12920748787691584237

`∩[A049545(n+1), A066507(n+1)]`
-/

namespace A049558.P12920748787691584237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P12920748787691584237

/-! ## A049558.P1507035707020370041

`∩[A047512(n+1), A049545(n+1)]`
-/

namespace A049558.P1507035707020370041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P1507035707020370041

/-! ## A049558.P12527761880200606891

`∩[A047542(n+1), A049545(n+1)]`
-/

namespace A049558.P12527761880200606891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P12527761880200606891

/-! ## A049558.P8742374913562499701

`∩[A047555(n+1), A049545(n+1)]`
-/

namespace A049558.P8742374913562499701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P8742374913562499701

/-! ## A049558.P10577335087545488892

`∩[A047419(n+1)-2, A049545(n+1)]`
-/

namespace A049558.P10577335087545488892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P10577335087545488892

/-! ## A049558.P226503033587036071

`∩[A047453(n+1)-2, A049545(n+1)]`
-/

namespace A049558.P226503033587036071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P226503033587036071

/-! ## A049558.P17275406022437212131

`∩[A049545(n+1), A260399(n+1)]`
-/

namespace A049558.P17275406022437212131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P17275406022437212131

/-! ## A049558.P18154848728258712928

`∩[A047513(n+1), A049545(n+1)]`
-/

namespace A049558.P18154848728258712928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049558.P18154848728258712928

/-!
# A049559: a(n) = gcd(n - 1, phi(n)).

The programs for A049559, the canonical program `A049559.P683289682242884598` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049559 has offset 1).

The definition of A049559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A219428, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049559.P14738370219306211332

`n+1-A318827(n+1)`
-/

namespace A049559.P14738370219306211332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318827 (n + 1)

end

end A049559.P14738370219306211332

namespace A049559

/-- `n+1-A318827(n+1)` -/
def P14738370219306211332.Spec : Prop :=
  ∀ n, P14738370219306211332.a n = A049559 (n + 1)

end A049559

/-! ## A049559.P12719609215425929017

`A000010(n+1)-A318830(n+1)`
-/

namespace A049559.P12719609215425929017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A318830 (n + 1)

end

end A049559.P12719609215425929017

namespace A049559

/-- `A000010(n+1)-A318830(n+1)` -/
def P12719609215425929017.Spec : Prop :=
  ∀ n, P12719609215425929017.a n = A049559 (n + 1)

end A049559

/-! ## A049559.P3044723247710945050

`A000010(n+1)/A160595(n+1)`
-/

namespace A049559.P3044723247710945050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A160595 (n + 1) : ℚ)

end

end A049559.P3044723247710945050

namespace A049559

/-- `A000010(n+1)/A160595(n+1)` -/
def P3044723247710945050.Spec : Prop :=
  ∀ n, P3044723247710945050.a n = (A049559 (n + 1) : ℚ)

end A049559

/-! ## A049559.P11210877738247714724

`A063994(n+1)/A318829(n+1)`
-/

namespace A049559.P11210877738247714724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A318829 (n + 1) : ℚ)

end

end A049559.P11210877738247714724

namespace A049559

/-- `A063994(n+1)/A318829(n+1)` -/
def P11210877738247714724.Spec : Prop :=
  ∀ n, P11210877738247714724.a n = (A049559 (n + 1) : ℚ)

end A049559

/-! ## A049559.P683289682242884598

`gcd(A000010(n+1), A219428(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049559

/-- `gcd(A000010(n+1), A219428(n+1))` -/
def P683289682242884598.Spec : Prop :=
  ∀ n, (P683289682242884598.a n : ℤ) = A049559 (n + 1)

theorem P683289682242884598.correct : P683289682242884598.Spec := by
  intro n
  simp only [A049559, Nat.add_sub_cancel]

end A049559

/-! ## A049559.P5853835734044541127

`gcd(n, ∏{p}[n+1, 1-#])`
-/

namespace A049559.P5853835734044541127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)))

end

end A049559.P5853835734044541127

namespace A049559

/-- `gcd(n, ∏{p}[n+1, 1-#])` -/
def P5853835734044541127.Spec : Prop :=
  ∀ n, (P5853835734044541127.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P5984995105148063270

`gcd(n, Δ[A002088(n)])`
-/

namespace A049559.P5984995105148063270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f1 (n + 1) - f1 n)

end

end A049559.P5984995105148063270

namespace A049559

/-- `gcd(n, Δ[A002088(n)])` -/
def P5984995105148063270.Spec : Prop :=
  ∀ n, (P5984995105148063270.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P17740894090668380918

`gcd(lcm(2, n), A063994(n+1))`
-/

namespace A049559.P17740894090668380918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lcm 2 n : ℤ) (A063994 (n + 1))

end

end A049559.P17740894090668380918

namespace A049559

/-- `gcd(lcm(2, n), A063994(n+1))` -/
def P17740894090668380918.Spec : Prop :=
  ∀ n, (P17740894090668380918.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P6048210910223372705

`sqrt(gcd(n², A127473(n+1)))`
-/

namespace A049559.P6048210910223372705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n ^ 2 : ℤ) (A127473 (n + 1)) : ℝ)

end

end A049559.P6048210910223372705

namespace A049559

/-- `sqrt(gcd(n², A127473(n+1)))` -/
def P6048210910223372705.Spec : Prop :=
  ∀ n, P6048210910223372705.a n = (A049559 (n + 1) : ℝ)

end A049559

/-! ## A049559.P10046266564791665338

`gcd(n*839, A000010(n+1))`
-/

namespace A049559.P10046266564791665338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * 839 : ℤ) (A000010 (n + 1))

end

end A049559.P10046266564791665338

namespace A049559

/-- `gcd(n*839, A000010(n+1))` -/
def P10046266564791665338.Spec : Prop :=
  ∀ n, (P10046266564791665338.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P6534941629254983583

`gcd(n-2*n, A002618(n+1))`
-/

namespace A049559.P6534941629254983583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (2 * n : ℤ)) (A002618 (n + 1))

end

end A049559.P6534941629254983583

namespace A049559

/-- `gcd(n-2*n, A002618(n+1))` -/
def P6534941629254983583.Spec : Prop :=
  ∀ n, (P6534941629254983583.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P11264346085375584429

`gcd(abs(1-n)+1, A039649(n+1)-1)`
-/

namespace A049559.P11264346085375584429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 1) (A039649 (n + 1) - 1)

end

end A049559.P11264346085375584429

namespace A049559

/-- `gcd(abs(1-n)+1, A039649(n+1)-1)` -/
def P11264346085375584429.Spec : Prop :=
  ∀ n, (P11264346085375584429.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P6898459346199727627

`gcd(A000010(n+1), A028310(n))`
-/

namespace A049559.P6898459346199727627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A028310 n)

end

end A049559.P6898459346199727627

namespace A049559

/-- `gcd(A000010(n+1), A028310(n))` -/
def P6898459346199727627.Spec : Prop :=
  ∀ n, (P6898459346199727627.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P9974023364565847025

`gcd(A013636(n), A023900(n+1))`
-/

namespace A049559.P9974023364565847025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013636 n) (A023900 (n + 1))

end

end A049559.P9974023364565847025

namespace A049559

/-- `gcd(A013636(n), A023900(n+1))` -/
def P9974023364565847025.Spec : Prop :=
  ∀ n, (P9974023364565847025.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P7738860257039855615

`gcd(A000384(n), A063994(n+1))`
-/

namespace A049559.P7738860257039855615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000384 n) (A063994 (n + 1))

end

end A049559.P7738860257039855615

namespace A049559

/-- `gcd(A000384(n), A063994(n+1))` -/
def P7738860257039855615.Spec : Prop :=
  ∀ n, (P7738860257039855615.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P11937178707063899148

`gcd(A038608(n), A053191(n+1))`
-/

namespace A049559.P11937178707063899148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A053191 (n + 1))

end

end A049559.P11937178707063899148

namespace A049559

/-- `gcd(A038608(n), A053191(n+1))` -/
def P11937178707063899148.Spec : Prop :=
  ∀ n, (P11937178707063899148.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P15358972234343715252

`gcd(A103164(n), A173557(n+1))`
-/

namespace A049559.P15358972234343715252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103164 n) (A173557 (n + 1))

end

end A049559.P15358972234343715252

namespace A049559

/-- `gcd(A103164(n), A173557(n+1))` -/
def P15358972234343715252.Spec : Prop :=
  ∀ n, (P15358972234343715252.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P485000147346628940

`gcd(A181983(n), A219428(n+1))`
-/

namespace A049559.P485000147346628940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181983 n) (A219428 (n + 1))

end

end A049559.P485000147346628940

namespace A049559

/-- `gcd(A181983(n), A219428(n+1))` -/
def P485000147346628940.Spec : Prop :=
  ∀ n, (P485000147346628940.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P13445956628934752689

`gcd(A274922(n), A299822(n+1))`
-/

namespace A049559.P13445956628934752689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274922 n) (A299822 (n + 1))

end

end A049559.P13445956628934752689

namespace A049559

/-- `gcd(A274922(n), A299822(n+1))` -/
def P13445956628934752689.Spec : Prop :=
  ∀ n, (P13445956628934752689.a n : ℤ) = A049559 (n + 1)

end A049559

/-! ## A049559.P9742904551874425951

`A187730(n+1)*A353801(n+1)`
-/

namespace A049559.P9742904551874425951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (n + 1) * A353801 (n + 1)

end

end A049559.P9742904551874425951

namespace A049559

/-- `A187730(n+1)*A353801(n+1)` -/
def P9742904551874425951.Spec : Prop :=
  ∀ n, P9742904551874425951.a n = A049559 (n + 1)

end A049559

/-!
# A049560: Primes p such that x^28 = 2 has a solution mod p.

The programs for A049560, there is no canonical definition to state claims against.
-/

/-! ## A049560.P11008635631380616082

`∩[A040098(n+1), A049546(n+1)]`
-/

namespace A049560.P11008635631380616082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049560.P11008635631380616082

/-! ## A049560.P17703843189486534316

`∩[A040098(n+1), A042966(n+1)]`
-/

namespace A049560.P17703843189486534316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049560.P17703843189486534316

/-! ## A049560.P11899712893126022194

`A006530(A049588(n+1)²)`
-/

namespace A049560.P11899712893126022194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049588 (n + 1) ^ 2).toNat

end

end A049560.P11899712893126022194

/-! ## A049560.P4468236962549298720

`A007947(A049588(n+1)²)`
-/

namespace A049560.P4468236962549298720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A049588 (n + 1) ^ 2).toNat

end

end A049560.P4468236962549298720

/-! ## A049560.P7214513242429398429

`∩[A046420(n+1), A049588(n+1)]`
-/

namespace A049560.P7214513242429398429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049560.P7214513242429398429

/-!
# A049561: Primes p such that x^29 = 2 has a solution mod p.

The programs for A049561, there is no canonical definition to state claims against.
-/

/-! ## A049561.P16153842540996790481

`A000040(lt[A272157(n+1), A257928(3*n+5)])`
-/

namespace A049561.P16153842540996790481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257928 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049561.P16153842540996790481

/-! ## A049561.P6225512124581077041

`A000040(ceil(A125852(n+3)/A103249(n+4)+n))`
-/

namespace A049561.P6225512124581077041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A125852 (n + 3) : ℚ) / (A103249 (n + 4) : ℚ) + (n : ℚ)⌉.toNat

end

end A049561.P6225512124581077041

/-! ## A049561.P15265743802308409117

`A008578(A242031(n+2)%(A176253(n+3)+1))`
-/

namespace A049561.P15265743802308409117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A242031 (n + 2)) (A176253 (n + 3) + 1)).toNat

end

end A049561.P15265743802308409117

/-! ## A049561.P6795076007770960917

`lt[A055672(A029143(n)), A055672(n)]`
-/

namespace A049561.P6795076007770960917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A029143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049561.P6795076007770960917

/-!
# A049562: Primes p such that x^30 = 2 has a solution mod p.

The programs for A049562, there is no canonical definition to state claims against.
-/

/-! ## A049562.P11129607883879773900

`∩[A040028(n+1), A049542(n+1)]`
-/

namespace A049562.P11129607883879773900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P11129607883879773900

/-! ## A049562.P11051334205510514787

`∩[A040992(n+1), A049542(n+1)]`
-/

namespace A049562.P11051334205510514787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P11051334205510514787

/-! ## A049562.P8988097265503770353

`∩[A038873(n+1), A049547(n+1)]`
-/

namespace A049562.P8988097265503770353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P8988097265503770353

/-! ## A049562.P9212156768804337836

`∩[A040992(n+1), A049547(n+1)]`
-/

namespace A049562.P9212156768804337836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P9212156768804337836

/-! ## A049562.P4193444105946253445

`∩[A049542(n+1), A049547(n+1)]`
-/

namespace A049562.P4193444105946253445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P4193444105946253445

/-! ## A049562.P15540835986955596665

`∩[A049547(n+1), A055673(n+1)]`
-/

namespace A049562.P15540835986955596665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P15540835986955596665

/-! ## A049562.P16208912754942972143

`∩[A040159(n+1), A040992(n+1)]`
-/

namespace A049562.P16208912754942972143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P16208912754942972143

/-! ## A049562.P5201703099992595599

`∩[A049547(n+1), A057126(n+1)]`
-/

namespace A049562.P5201703099992595599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P5201703099992595599

/-! ## A049562.P73003854435951485

`∩[A049547(n+1), A227144(n+1)]`
-/

namespace A049562.P73003854435951485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P73003854435951485

/-! ## A049562.P6831834766808729934

`∩[A035251(n+1), A049547(n+1)]`
-/

namespace A049562.P6831834766808729934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P6831834766808729934

/-! ## A049562.P3170023977648997858

`∩[A049547(n+1), A385723(n+1)]`
-/

namespace A049562.P3170023977648997858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P3170023977648997858

/-! ## A049562.P1030549866491002407

`∩[A049542(n+1), A057760(n+1)]`
-/

namespace A049562.P1030549866491002407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P1030549866491002407

/-! ## A049562.P17610870547582526402

`∩[A047526(n+1), A049547(n+1)]`
-/

namespace A049562.P17610870547582526402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P17610870547582526402

/-! ## A049562.P530763391410329898

`∩[A047527(n+1), A049547(n+1)]`
-/

namespace A049562.P530763391410329898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P530763391410329898

/-! ## A049562.P89601657933925175

`∩[A047541(n+1), A049547(n+1)]`
-/

namespace A049562.P89601657933925175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P89601657933925175

/-! ## A049562.P16506989115517481991

`∩[A047554(n+1), A049547(n+1)]`
-/

namespace A049562.P16506989115517481991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P16506989115517481991

/-! ## A049562.P13389880188253693243

`∩[A047476(n+1)-1, A049547(n+1)]`
-/

namespace A049562.P13389880188253693243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P13389880188253693243

/-! ## A049562.P8482705226981447014

`∩[A047454(n+1)-2, A049547(n+1)]`
-/

namespace A049562.P8482705226981447014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P8482705226981447014

/-! ## A049562.P15735707954875296119

`∩[A049547(n+1), A066507(n+1)]`
-/

namespace A049562.P15735707954875296119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P15735707954875296119

/-! ## A049562.P3139865499255484236

`∩[A047513(A047513(n+1)+2), A049547(n+1)]`
-/

namespace A049562.P3139865499255484236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A047513 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049562.P3139865499255484236

/-!
# A049563: a(n) = ((prime(n)-1)! + 1) mod (prime(n) + 2).

The programs for A049563, there is no canonical definition to state claims against.
-/

/-! ## A049563.P8325218319628296000

`gcd(A175217(n+1), A179546(n+1))`
-/

namespace A049563.P8325218319628296000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175217 (n + 1)) (A179546 (n + 1))

end

end A049563.P8325218319628296000

/-! ## A049563.P1963428175192639270

`A285982(A006093(n+1))+1`
-/

namespace A049563.P1963428175192639270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A006093 (n + 1)).toNat + 1

end

end A049563.P1963428175192639270

/-! ## A049563.P1013694703494370254

`ceil(A110560(p?[A014681(n)])/2)`
-/

namespace A049563.P1013694703494370254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2⌉

end

end A049563.P1013694703494370254

/-! ## A049563.P75673509203679353

`A285982(record[A000010(n+1)])+1`
-/

namespace A049563.P75673509203679353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A049563.P75673509203679353

/-! ## A049563.P9263581351477711076

`A285982(A000040(n+1)-1)+1`
-/

namespace A049563.P9263581351477711076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A000040 (n + 1) - 1).toNat + 1

end

end A049563.P9263581351477711076

/-! ## A049563.P15303727257660063804

`(A110560(A055670(n+1))+1)/2`
-/

namespace A049563.P15303727257660063804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110560 (A055670 (n + 1)).toNat + 1 : ℚ) / 2

end

end A049563.P15303727257660063804

/-! ## A049563.P14367368947609265313

`A000463(A110560(Δ[A007504(n)]))`
-/

namespace A049563.P14367368947609265313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A110560 (f1 (n + 1) - f1 n).toNat).toNat

end

end A049563.P14367368947609265313

/-! ## A049563.P4868739609027373574

`A000463(A110560(record[A051698(n)]))`
-/

namespace A049563.P4868739609027373574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A110560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A049563.P4868739609027373574

/-! ## A049563.P13526581966054017748

`A000463(A110560(p?[A014681(n)]))`
-/

namespace A049563.P13526581966054017748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A110560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A049563.P13526581966054017748

/-! ## A049563.P1047442082268220778

`A000224(gcd(A045344(n+1), A052147(n+1)))`
-/

namespace A049563.P1047442082268220778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (Int.gcd (A045344 (n + 1)) (A052147 (n + 1)))

end

end A049563.P1047442082268220778

/-! ## A049563.P17442641671503125930

`A000224(A110560(p?[A001057(n)]))`
-/

namespace A049563.P17442641671503125930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A110560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A049563.P17442641671503125930

/-! ## A049563.P15727261086702240072

`A000224(A110560(p?[A006370(n)]))`
-/

namespace A049563.P15727261086702240072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A110560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A049563.P15727261086702240072

/-!
# A049564: Primes p such that x^32 = 2 has a solution mod p.

The programs for A049564, there is no canonical definition to state claims against.
-/

/-! ## A049564.P8196512485009185602

`record[p?[A014661(A032742(n+1))]]`
-/

namespace A049564.P8196512485009185602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049564.P8196512485009185602

/-! ## A049564.P9035089121750434866

`p?[A032742(2*A014661(n+1))]`
-/

namespace A049564.P9035089121750434866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A014661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049564.P9035089121750434866

/-!
# A049565: Primes p such that x^33 = 2 has a solution mod p.

The programs for A049565, there is no canonical definition to state claims against.
-/

/-! ## A049565.P13272211781958751435

`∩[A040028(n+1), A049543(n+1)]`
-/

namespace A049565.P13272211781958751435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049565.P13272211781958751435

/-! ## A049565.P16432159555785318801

`∩[A049543(n+1), A057760(n+1)]`
-/

namespace A049565.P16432159555785318801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049565.P16432159555785318801

/-! ## A049565.P3193779137613433940

`∩[A049543(n+1), A259732(n+1)]`
-/

namespace A049565.P3193779137613433940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049565.P3193779137613433940

/-! ## A049565.P6723106586930380303

`p?[A259732(n+1)-char[A274457((n+2)²²-2)]]`
-/

namespace A049565.P6723106586930380303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274457 (((n + 2) ^ 2) ^ 2 - 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049565.P6723106586930380303

/-! ## A049565.P7274834116823234405

`∩[A040028(n+1), A258022(n+1)]`
-/

namespace A049565.P7274834116823234405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049565.P7274834116823234405

/-!
# A049566: Primes p such that x^34 = 2 has a solution mod p.

The programs for A049566, there is no canonical definition to state claims against.
-/

/-! ## A049566.P268479587355684448

`∩[A038873(n+1), A049549(n+1)]`
-/

namespace A049566.P268479587355684448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P268479587355684448

/-! ## A049566.P14249645739995779357

`∩[A049549(n+1), A055673(n+1)]`
-/

namespace A049566.P14249645739995779357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P14249645739995779357

/-! ## A049566.P8069554356217641167

`∩[A049549(n+1), A057126(n+1)]`
-/

namespace A049566.P8069554356217641167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P8069554356217641167

/-! ## A049566.P16362195979494166726

`∩[A049549(n+1), A227144(n+1)]`
-/

namespace A049566.P16362195979494166726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P16362195979494166726

/-! ## A049566.P13070659381949310749

`∩[A035251(n+1), A049549(n+1)]`
-/

namespace A049566.P13070659381949310749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P13070659381949310749

/-! ## A049566.P13999838492952543351

`∩[A049549(n+1), A385723(n+1)]`
-/

namespace A049566.P13999838492952543351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P13999838492952543351

/-! ## A049566.P9735011752258649555

`∩[A047526(n+1), A049549(n+1)]`
-/

namespace A049566.P9735011752258649555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P9735011752258649555

/-! ## A049566.P15177249772497042236

`∩[A047527(n+1), A049549(n+1)]`
-/

namespace A049566.P15177249772497042236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P15177249772497042236

/-! ## A049566.P6402463533490752537

`∩[A047541(n+1), A049549(n+1)]`
-/

namespace A049566.P6402463533490752537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P6402463533490752537

/-! ## A049566.P8169565377664952577

`∩[A047554(n+1), A049549(n+1)]`
-/

namespace A049566.P8169565377664952577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P8169565377664952577

/-! ## A049566.P8616237312234270276

`∩[A047476(n+1)-1, A049549(n+1)]`
-/

namespace A049566.P8616237312234270276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P8616237312234270276

/-! ## A049566.P7145820854775110526

`∩[A047454(n+1)-2, A049549(n+1)]`
-/

namespace A049566.P7145820854775110526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P7145820854775110526

/-! ## A049566.P7561345470668454220

`∩[A049549(n+1), A066507(n+1)]`
-/

namespace A049566.P7561345470668454220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P7561345470668454220

/-! ## A049566.P809270724709840084

`∩[A047512(n+1), A049549(n+1)]`
-/

namespace A049566.P809270724709840084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P809270724709840084

/-! ## A049566.P9438999949110759396

`∩[A047542(n+1), A049549(n+1)]`
-/

namespace A049566.P9438999949110759396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P9438999949110759396

/-! ## A049566.P9078334224499284138

`∩[A047555(n+1), A049549(n+1)]`
-/

namespace A049566.P9078334224499284138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P9078334224499284138

/-! ## A049566.P10832332208803282702

`∩[A047419(n+1)-2, A049549(n+1)]`
-/

namespace A049566.P10832332208803282702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P10832332208803282702

/-! ## A049566.P5936031580762774349

`∩[A047453(n+1)-2, A049549(n+1)]`
-/

namespace A049566.P5936031580762774349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P5936031580762774349

/-! ## A049566.P15400790564329591046

`∩[A049549(n+1), A260399(n+1)]`
-/

namespace A049566.P15400790564329591046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P15400790564329591046

/-! ## A049566.P13710641880140591765

`∩[A047513(n+1), A049549(n+1)]`
-/

namespace A049566.P13710641880140591765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049566.P13710641880140591765

/-!
# A049567: Primes p such that x^35 = 2 has a solution mod p.

The programs for A049567, there is no canonical definition to state claims against.
-/

/-! ## A049567.P8138083408403309480

`∩[A040159(n+1), A042966(n+1)]`
-/

namespace A049567.P8138083408403309480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049567.P8138083408403309480

/-! ## A049567.P16823617308044715591

`p?[comp[A059337(n+1)]]`
-/

namespace A049567.P16823617308044715591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059337 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049567.P16823617308044715591

/-! ## A049567.P16744127219872466074

`p?[A284254(A216309(n+1))+A235933(n+1)]`
-/

namespace A049567.P16744127219872466074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A216309 (n + 1)).toNat + A235933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049567.P16744127219872466074

/-! ## A049567.P3757078021995945641

`p?[gcd(35*n, A005843(A000217(n)-n))]`
-/

namespace A049567.P3757078021995945641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (35 * n : ℤ) (A005843 (A000217 n - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049567.P3757078021995945641

/-! ## A049567.P13896989213646163146

`record[A185642(n+2)/A279496(n+1)]`
-/

namespace A049567.P13896989213646163146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185642 (n + 2) : ℚ) / (A279496 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049567.P13896989213646163146

/-!
# A049568: Primes p such that x^36 = 2 has a solution mod p.

The programs for A049568, there is no canonical definition to state claims against.
-/

/-! ## A049568.P18278796680296769981

`∩[A040098(n+1), A049550(n+1)]`
-/

namespace A049568.P18278796680296769981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049568.P18278796680296769981

/-! ## A049568.P2674973227699568645

`∩[A040098(n+1), A049596(n+1)]`
-/

namespace A049568.P2674973227699568645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049568.P2674973227699568645

/-! ## A049568.P2072016696958925689

`∩[A049544(n+1), A049550(n+1)]`
-/

namespace A049568.P2072016696958925689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049568.P2072016696958925689

/-! ## A049568.P17083094139091568743

`∩[A049544(n+1), A049596(n+1)]`
-/

namespace A049568.P17083094139091568743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049568.P17083094139091568743

/-!
# A049569: Primes p such that x^37 = 2 has a solution mod p.

The programs for A049569, there is no canonical definition to state claims against.
-/

/-! ## A049569.P12115668804408929651

`A000040(lt[A296067(3*n+2), A220501(n)])`
-/

namespace A049569.P12115668804408929651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049569.P12115668804408929651

/-! ## A049569.P12660210331235881411

`A000040(lt[A343344(n), A245530(n+1)])`
-/

namespace A049569.P12660210331235881411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049569.P12660210331235881411

/-! ## A049569.P9100334439411449599

`A000040(lt[A304714(n+1), A245530(n+1)])`
-/

namespace A049569.P9100334439411449599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049569.P9100334439411449599

/-! ## A049569.P1573232564466503257

`A000040(lt[A355264(n+1), A320924(n+1)])`
-/

namespace A049569.P1573232564466503257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049569.P1573232564466503257

/-! ## A049569.P6498086485511641605

`A006093(lt[A355264(n+1), A320924(n+1)])+1`
-/

namespace A049569.P6498086485511641605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A049569.P6498086485511641605

/-! ## A049569.P3958121834572413515

`A008578(lt[A355264(n+1), A320924(n+1)]+1)`
-/

namespace A049569.P3958121834572413515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A049569.P3958121834572413515

/-!
# A049570: Primes p such that x^38 = 2 has a solution mod p.

The programs for A049570, there is no canonical definition to state claims against.
-/

/-! ## A049570.P6187257281252934889

`∩[A038873(n+1), A049551(n+1)]`
-/

namespace A049570.P6187257281252934889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P6187257281252934889

/-! ## A049570.P16034157037048628013

`∩[A049551(n+1), A055673(n+1)]`
-/

namespace A049570.P16034157037048628013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P16034157037048628013

/-! ## A049570.P15263129432662737473

`∩[A049551(n+1), A057126(n+1)]`
-/

namespace A049570.P15263129432662737473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P15263129432662737473

/-! ## A049570.P287002677019561490

`∩[A049551(n+1), A227144(n+1)]`
-/

namespace A049570.P287002677019561490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P287002677019561490

/-! ## A049570.P5605532319045875665

`∩[A035251(n+1), A049551(n+1)]`
-/

namespace A049570.P5605532319045875665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P5605532319045875665

/-! ## A049570.P12212304419007606155

`∩[A049551(n+1), A385723(n+1)]`
-/

namespace A049570.P12212304419007606155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P12212304419007606155

/-! ## A049570.P15811876302449359548

`∩[A047526(n+1), A049551(n+1)]`
-/

namespace A049570.P15811876302449359548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P15811876302449359548

/-! ## A049570.P12758217357623481838

`∩[A047527(n+1), A049551(n+1)]`
-/

namespace A049570.P12758217357623481838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P12758217357623481838

/-! ## A049570.P2894996442764015822

`∩[A047541(n+1), A049551(n+1)]`
-/

namespace A049570.P2894996442764015822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P2894996442764015822

/-! ## A049570.P5047141438547379915

`∩[A047554(n+1), A049551(n+1)]`
-/

namespace A049570.P5047141438547379915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P5047141438547379915

/-! ## A049570.P10244641579223973370

`∩[A047476(n+1)-1, A049551(n+1)]`
-/

namespace A049570.P10244641579223973370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P10244641579223973370

/-! ## A049570.P4302506145426499666

`∩[A047454(n+1)-2, A049551(n+1)]`
-/

namespace A049570.P4302506145426499666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P4302506145426499666

/-! ## A049570.P12235911809633839962

`∩[A049551(n+1), A066507(n+1)]`
-/

namespace A049570.P12235911809633839962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P12235911809633839962

/-! ## A049570.P619006401362668243

`∩[A047512(n+1), A049551(n+1)]`
-/

namespace A049570.P619006401362668243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P619006401362668243

/-! ## A049570.P3933367719455399094

`∩[A047542(n+1), A049551(n+1)]`
-/

namespace A049570.P3933367719455399094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P3933367719455399094

/-! ## A049570.P14074731851598378658

`∩[A047555(n+1), A049551(n+1)]`
-/

namespace A049570.P14074731851598378658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P14074731851598378658

/-! ## A049570.P17515994739416109844

`∩[A049551(n+1), A260399(n+1)]`
-/

namespace A049570.P17515994739416109844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P17515994739416109844

/-! ## A049570.P7215040091211839490

`∩[A047513(n+1), A049551(n+1)]`
-/

namespace A049570.P7215040091211839490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P7215040091211839490

/-! ## A049570.P10093972371599211270

`∩[A047420(n+1)-2, A049551(n+1)]`
-/

namespace A049570.P10093972371599211270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049570.P10093972371599211270

/-! ## A049570.P1651284091487483941

`filter[A049551(n+1), A260397(#)]`
-/

namespace A049570.P1651284091487483941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A049570.P1651284091487483941

/-!
# A049571: Primes p such that x^39 = 2 has a solution mod p.

The programs for A049571, there is no canonical definition to state claims against.
-/

/-! ## A049571.P4938725093449510552

`∩[A040028(n+1), A049545(n+1)]`
-/

namespace A049571.P4938725093449510552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049571.P4938725093449510552

/-! ## A049571.P15418951642964959055

`∩[A049545(n+1), A057760(n+1)]`
-/

namespace A049571.P15418951642964959055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049571.P15418951642964959055

/-! ## A049571.P17860769361774231561

`∩[A049545(n+1), A259732(n+1)]`
-/

namespace A049571.P17860769361774231561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049571.P17860769361774231561

/-!
# A049572: Primes p such that x^40 = 2 has a solution mod p.

The programs for A049572, there is no canonical definition to state claims against.
-/

/-! ## A049572.P13396325578719139445

`∩[A040159(n+1), A045315(n+1)]`
-/

namespace A049572.P13396325578719139445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049572.P13396325578719139445

/-! ## A049572.P7523055417321616701

`∩[A045315(n+1), A049542(n+1)]`
-/

namespace A049572.P7523055417321616701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049572.P7523055417321616701

/-! ## A049572.P1381805106206557767

`∩[A045315(n+1), A049552(n+1)]`
-/

namespace A049572.P1381805106206557767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049572.P1381805106206557767

/-! ## A049572.P5819484507892794094

`p?[C(A049552(n+1), A049586(n))]`
-/

namespace A049572.P5819484507892794094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049552 (n + 1)).toNat (A049586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049572.P5819484507892794094

/-! ## A049572.P9749648250517179390

`∩[A049552(n+1), A102348(n+1)]`
-/

namespace A049572.P9749648250517179390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049572.P9749648250517179390

/-!
# A049573: Primes p such that x^41 = 2 has a solution mod p.

The programs for A049573, the canonical program `A049573.P10186833783548255734` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049573 has offset 1).

The definition of A049573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049573.P4407396171771149232

`eq[A014963(A153355(2*(n+1))), A018783(n)]`
-/

namespace A049573.P4407396171771149232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A153355 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049573.P4407396171771149232

namespace A049573

/-- `eq[A014963(A153355(2*(n+1))), A018783(n)]` -/
def P4407396171771149232.Spec : Prop :=
  ∀ n, (P4407396171771149232.a n : ℤ) = A049573 (n + 1)

end A049573

/-! ## A049573.P14568255537727559977

`eq[A011600(n)², A054251(n)]`
-/

namespace A049573.P14568255537727559977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049573.P14568255537727559977

namespace A049573

/-- `eq[A011600(n)², A054251(n)]` -/
def P14568255537727559977.Spec : Prop :=
  ∀ n, (P14568255537727559977.a n : ℤ) = A049573 (n + 1)

end A049573

/-! ## A049573.P10186833783548255734

`A158611(A086858(n+5)+n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A049573

/-- `A158611(A086858(n+5)+n+1)` -/
def P10186833783548255734.Spec : Prop :=
  ∀ n, P10186833783548255734.a n = A049573 (n + 1)

theorem P10186833783548255734.correct : P10186833783548255734.Spec := by
  intro n
  simp only [A049573, Nat.add_sub_cancel]

end A049573

/-! ## A049573.P49085263617474550

`A000040(A086858(n+5)+n-1)`
-/

namespace A049573.P49085263617474550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086858 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A049573.P49085263617474550

namespace A049573

/-- `A000040(A086858(n+5)+n-1)` -/
def P49085263617474550.Spec : Prop :=
  ∀ n, P49085263617474550.a n = A049573 (n + 1)

end A049573

/-! ## A049573.P564980110635734532

`eq[A003415(n), A023532(A092221(n+1))]`
-/

namespace A049573.P564980110635734532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A092221 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049573.P564980110635734532

namespace A049573

/-- `eq[A003415(n), A023532(A092221(n+1))]` -/
def P564980110635734532.Spec : Prop :=
  ∀ n, (P564980110635734532.a n : ℤ) = A049573 (n + 1)

end A049573

/-! ## A049573.P10597422762654750281

`lt[A163282(2*n+3), A163282(A055671(n))]`
-/

namespace A049573.P10597422762654750281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049573.P10597422762654750281

namespace A049573

/-- `lt[A163282(2*n+3), A163282(A055671(n))]` -/
def P10597422762654750281.Spec : Prop :=
  ∀ n, (P10597422762654750281.a n : ℤ) = A049573 (n + 1)

end A049573

/-!
# A049574: Primes p such that x^42 = 2 has a solution mod p.

The programs for A049574, there is no canonical definition to state claims against.
-/

/-! ## A049574.P11187327036604598370

`∩[A038873(n+1), A049553(n+1)]`
-/

namespace A049574.P11187327036604598370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P11187327036604598370

/-! ## A049574.P4711578601452947280

`∩[A040028(n+1), A049546(n+1)]`
-/

namespace A049574.P4711578601452947280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P4711578601452947280

/-! ## A049574.P9159255046758900708

`∩[A040992(n+1), A049546(n+1)]`
-/

namespace A049574.P9159255046758900708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P9159255046758900708

/-! ## A049574.P15903545561404283496

`∩[A040992(n+1), A049553(n+1)]`
-/

namespace A049574.P15903545561404283496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P15903545561404283496

/-! ## A049574.P14830888518512911174

`∩[A049546(n+1), A049553(n+1)]`
-/

namespace A049574.P14830888518512911174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P14830888518512911174

/-! ## A049574.P5941905339081343286

`∩[A049553(n+1), A055673(n+1)]`
-/

namespace A049574.P5941905339081343286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P5941905339081343286

/-! ## A049574.P16473640200588782630

`∩[A040992(n+1), A042966(n+1)]`
-/

namespace A049574.P16473640200588782630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P16473640200588782630

/-! ## A049574.P5390067089704408592

`∩[A049553(n+1), A057126(n+1)]`
-/

namespace A049574.P5390067089704408592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P5390067089704408592

/-! ## A049574.P2492640808149945331

`∩[A049553(n+1), A227144(n+1)]`
-/

namespace A049574.P2492640808149945331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P2492640808149945331

/-! ## A049574.P13829542633027044167

`∩[A035251(n+1), A049553(n+1)]`
-/

namespace A049574.P13829542633027044167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P13829542633027044167

/-! ## A049574.P8296959267973235040

`∩[A049553(n+1), A385723(n+1)]`
-/

namespace A049574.P8296959267973235040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P8296959267973235040

/-! ## A049574.P17582264849422290150

`∩[A049546(n+1), A057760(n+1)]`
-/

namespace A049574.P17582264849422290150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P17582264849422290150

/-! ## A049574.P7667996464820245186

`∩[A047526(n+1), A049553(n+1)]`
-/

namespace A049574.P7667996464820245186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P7667996464820245186

/-! ## A049574.P11441933645181895137

`∩[A047527(n+1), A049553(n+1)]`
-/

namespace A049574.P11441933645181895137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P11441933645181895137

/-! ## A049574.P7240300923777941373

`∩[A047541(n+1), A049553(n+1)]`
-/

namespace A049574.P7240300923777941373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P7240300923777941373

/-! ## A049574.P6821047469986786605

`∩[A047554(n+1), A049553(n+1)]`
-/

namespace A049574.P6821047469986786605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P6821047469986786605

/-! ## A049574.P7381630542892498538

`∩[A047476(n+1)-1, A049553(n+1)]`
-/

namespace A049574.P7381630542892498538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P7381630542892498538

/-! ## A049574.P16253308981821515638

`∩[A047454(n+1)-2, A049553(n+1)]`
-/

namespace A049574.P16253308981821515638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P16253308981821515638

/-! ## A049574.P3632537628022038076

`∩[A049553(n+1), A066507(n+1)]`
-/

namespace A049574.P3632537628022038076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P3632537628022038076

/-! ## A049574.P15568070860301751173

`∩[A047513(A047513(n+1)+2), A049553(n+1)]`
-/

namespace A049574.P15568070860301751173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A047513 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049574.P15568070860301751173

/-!
# A049575: Prime partition numbers.

The programs for A049575, there is no canonical definition to state claims against.
-/

/-! ## A049575.P13822358557547382048

`A000041(A046063(n+1))`
-/

namespace A049575.P13822358557547382048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A046063 (n + 1)).toNat

end

end A049575.P13822358557547382048

/-! ## A049575.P17740856991051305171

`A000040(A051143(n+1))`
-/

namespace A049575.P17740856991051305171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051143 (n + 1)).toNat

end

end A049575.P17740856991051305171

/-! ## A049575.P16142642303394068926

`record[A087173(n+2)]`
-/

namespace A049575.P16142642303394068926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049575.P16142642303394068926

/-! ## A049575.P18032006851678216656

`A000041(eq[1, A085561(n)])`
-/

namespace A049575.P18032006851678216656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049575.P18032006851678216656

/-! ## A049575.P8962771486344635275

`A000041(eq[2, A085543(n)])`
-/

namespace A049575.P8962771486344635275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049575.P8962771486344635275

/-! ## A049575.P7330368219150600040

`A000041(eq[2, A278241(n)])`
-/

namespace A049575.P7330368219150600040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049575.P7330368219150600040

/-! ## A049575.P10119039511066160333

`A071963(A046063(2*n+1-n))`
-/

namespace A049575.P10119039511066160333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071963 (A046063 (2 * n + 1 - n)).toNat

end

end A049575.P10119039511066160333

/-!
# A049576: Primes p such that x^44 = 2 has a solution mod p.

The programs for A049576, there is no canonical definition to state claims against.
-/

/-! ## A049576.P2252021973532130708

`∩[A040098(n+1), A049554(n+1)]`
-/

namespace A049576.P2252021973532130708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049576.P2252021973532130708

/-! ## A049576.P6128118626737838187

`∩[A040098(n+1), A049543(n+1)]`
-/

namespace A049576.P6128118626737838187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049576.P6128118626737838187

/-! ## A049576.P9458428095073890881

`A040098(lt[1, A107717(3*n)])`
-/

namespace A049576.P9458428095073890881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107717 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049576.P9458428095073890881

/-! ## A049576.P14520601494184561363

`A040098(lt[17, A083768(3*(n+1))])`
-/

namespace A049576.P14520601494184561363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083768 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049576.P14520601494184561363

/-! ## A049576.P3609595495277565545

`record[A040098(n+1)%A157400(3*n+5)]`
-/

namespace A049576.P3609595495277565545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040098 (n + 1)) (A157400 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049576.P3609595495277565545

/-!
# A049577: Primes p such that x^45 = 2 has a solution mod p.

The programs for A049577, there is no canonical definition to state claims against.
-/

/-! ## A049577.P406251899351160386

`∩[A040159(n+1), A049596(n+1)]`
-/

namespace A049577.P406251899351160386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049577.P406251899351160386

/-! ## A049577.P2413384044069803878

`∩[A049547(n+1), A049596(n+1)]`
-/

namespace A049577.P2413384044069803878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049577.P2413384044069803878

/-! ## A049577.P17789404296027962079

`p?[comp[A059637(n+1)]]`
-/

namespace A049577.P17789404296027962079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059637 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049577.P17789404296027962079

/-! ## A049577.P3635530723227275140

`record[A049547(n+1)%A092180(3*n+4)]`
-/

namespace A049577.P3635530723227275140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049547 (n + 1)) (A092180 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049577.P3635530723227275140

/-! ## A049577.P6750289724822883706

`record[A049547(n+1)/A304382(A195644(n+1))]`
-/

namespace A049577.P6750289724822883706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049547 (n + 1) : ℚ) / (A304382 (A195644 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049577.P6750289724822883706

/-!
# A049578: Primes p such that x^46 = 2 has a solution mod p.

The programs for A049578, there is no canonical definition to state claims against.
-/

/-! ## A049578.P9198852863296319058

`∩[A038873(n+1), A049555(n+1)]`
-/

namespace A049578.P9198852863296319058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P9198852863296319058

/-! ## A049578.P11261891423692733696

`∩[A049555(n+1), A055673(n+1)]`
-/

namespace A049578.P11261891423692733696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P11261891423692733696

/-! ## A049578.P7256073583053207394

`∩[A049555(n+1), A057126(n+1)]`
-/

namespace A049578.P7256073583053207394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P7256073583053207394

/-! ## A049578.P18202988350800360691

`∩[A049555(n+1), A227144(n+1)]`
-/

namespace A049578.P18202988350800360691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P18202988350800360691

/-! ## A049578.P10434839681779714084

`∩[A035251(n+1), A049555(n+1)]`
-/

namespace A049578.P10434839681779714084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P10434839681779714084

/-! ## A049578.P5461194749029704262

`∩[A049555(n+1), A385723(n+1)]`
-/

namespace A049578.P5461194749029704262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P5461194749029704262

/-! ## A049578.P14648493654557350055

`∩[A047526(n+1), A049555(n+1)]`
-/

namespace A049578.P14648493654557350055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P14648493654557350055

/-! ## A049578.P7584473880193786865

`∩[A047527(n+1), A049555(n+1)]`
-/

namespace A049578.P7584473880193786865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P7584473880193786865

/-! ## A049578.P14103755943495489845

`∩[A047541(n+1), A049555(n+1)]`
-/

namespace A049578.P14103755943495489845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P14103755943495489845

/-! ## A049578.P6426207809076977906

`∩[A047554(n+1), A049555(n+1)]`
-/

namespace A049578.P6426207809076977906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P6426207809076977906

/-! ## A049578.P4727844615782410451

`∩[A047476(n+1)-1, A049555(n+1)]`
-/

namespace A049578.P4727844615782410451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P4727844615782410451

/-! ## A049578.P9009605147002317292

`∩[A047454(n+1)-2, A049555(n+1)]`
-/

namespace A049578.P9009605147002317292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P9009605147002317292

/-! ## A049578.P11660738442706346619

`∩[A049555(n+1), A066507(n+1)]`
-/

namespace A049578.P11660738442706346619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P11660738442706346619

/-! ## A049578.P4792425460015381798

`∩[A047512(n+1), A049555(n+1)]`
-/

namespace A049578.P4792425460015381798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P4792425460015381798

/-! ## A049578.P223903175566004018

`∩[A047542(n+1), A049555(n+1)]`
-/

namespace A049578.P223903175566004018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P223903175566004018

/-! ## A049578.P13060519408161588842

`∩[A047555(n+1), A049555(n+1)]`
-/

namespace A049578.P13060519408161588842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P13060519408161588842

/-! ## A049578.P10492734261578836086

`∩[A047419(n+1)-2, A049555(n+1)]`
-/

namespace A049578.P10492734261578836086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P10492734261578836086

/-! ## A049578.P4251723604585088574

`∩[A047453(n+1)-2, A049555(n+1)]`
-/

namespace A049578.P4251723604585088574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P4251723604585088574

/-! ## A049578.P13621296830972465968

`∩[A049555(n+1), A260399(n+1)]`
-/

namespace A049578.P13621296830972465968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P13621296830972465968

/-! ## A049578.P13542015277506341564

`∩[A047513(n+1), A049555(n+1)]`
-/

namespace A049578.P13542015277506341564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049578.P13542015277506341564

/-!
# A049579: Numbers k such that prime(k)+2 divides (prime(k)-1)!.

The programs for A049579, the canonical program `A049579.P9136295119594597063` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049579 has offset 1).

The definition of A049579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049579.P16174189482166334146

`A336410(n+1)+3`
-/

namespace A049579.P16174189482166334146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336410 (n + 1) + 3

end

end A049579.P16174189482166334146

namespace A049579

/-- `A336410(n+1)+3` -/
def P16174189482166334146.Spec : Prop :=
  ∀ n, P16174189482166334146.a n = A049579 (n + 1)

end A049579

/-! ## A049579.P9136295119594597063

`lt[2, A001223(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049579

/-- `lt[2, A001223(n+1)]+1` -/
def P9136295119594597063.Spec : Prop :=
  ∀ n, (P9136295119594597063.a n : ℤ) = A049579 (n + 1)

theorem P9136295119594597063.correct : P9136295119594597063.Spec := by
  intro n
  simp only [A049579, Nat.add_sub_cancel]

end A049579

/-! ## A049579.P17221291091275886463

`lt[1, A176246(n+1)]+2`
-/

namespace A049579.P17221291091275886463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A049579.P17221291091275886463

namespace A049579

/-- `lt[1, A176246(n+1)]+2` -/
def P17221291091275886463.Spec : Prop :=
  ∀ n, (P17221291091275886463.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P17848946942275998020

`lt[2, A052180(n+2)]+2`
-/

namespace A049579.P17848946942275998020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A049579.P17848946942275998020

namespace A049579

/-- `lt[2, A052180(n+2)]+2` -/
def P17848946942275998020.Spec : Prop :=
  ∀ n, (P17848946942275998020.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P7063655981510308543

`filter[n+1, A106002(#)]`
-/

namespace A049579.P7063655981510308543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106002 (f1 j) = 1) n)

end

end A049579.P7063655981510308543

namespace A049579

/-- `filter[n+1, A106002(#)]` -/
def P7063655981510308543.Spec : Prop :=
  ∀ n, (P7063655981510308543.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P5150247918182637871

`eq[1, A049563(n+1)]+1`
-/

namespace A049579.P5150247918182637871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049579.P5150247918182637871

namespace A049579

/-- `eq[1, A049563(n+1)]+1` -/
def P5150247918182637871.Spec : Prop :=
  ∀ n, (P5150247918182637871.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P13989381917385639354

`eq[1, A106002(n+1)]+1`
-/

namespace A049579.P13989381917385639354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049579.P13989381917385639354

namespace A049579

/-- `eq[1, A106002(n+1)]+1` -/
def P13989381917385639354.Spec : Prop :=
  ∀ n, (P13989381917385639354.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P10269358702000349180

`eq[1, A237196(n+1)]+1`
-/

namespace A049579.P10269358702000349180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049579.P10269358702000349180

namespace A049579

/-- `eq[1, A237196(n+1)]+1` -/
def P10269358702000349180.Spec : Prop :=
  ∀ n, (P10269358702000349180.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P2750998297875410127

`eq[1, A379377(n+1)]+1`
-/

namespace A049579.P2750998297875410127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049579.P2750998297875410127

namespace A049579

/-- `eq[1, A379377(n+1)]+1` -/
def P2750998297875410127.Spec : Prop :=
  ∀ n, (P2750998297875410127.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P3373710884780072494

`lt[1, A046933(n+1)]+1`
-/

namespace A049579.P3373710884780072494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P3373710884780072494

namespace A049579

/-- `lt[1, A046933(n+1)]+1` -/
def P3373710884780072494.Spec : Prop :=
  ∀ n, (P3373710884780072494.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P6098726314929568821

`lt[1, A100380(n+1)]+1`
-/

namespace A049579.P6098726314929568821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P6098726314929568821

namespace A049579

/-- `lt[1, A100380(n+1)]+1` -/
def P6098726314929568821.Spec : Prop :=
  ∀ n, (P6098726314929568821.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P7348420191629532663

`lt[1, A339270(n+1)]+1`
-/

namespace A049579.P7348420191629532663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P7348420191629532663

namespace A049579

/-- `lt[1, A339270(n+1)]+1` -/
def P7348420191629532663.Spec : Prop :=
  ∀ n, (P7348420191629532663.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P13162568480683896890

`lt[2, A175193(n+1)]+1`
-/

namespace A049579.P13162568480683896890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P13162568480683896890

namespace A049579

/-- `lt[2, A175193(n+1)]+1` -/
def P13162568480683896890.Spec : Prop :=
  ∀ n, (P13162568480683896890.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P16036142829462883999

`eq[1, A208936(n+2)]+2`
-/

namespace A049579.P16036142829462883999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049579.P16036142829462883999

namespace A049579

/-- `eq[1, A208936(n+2)]+2` -/
def P16036142829462883999.Spec : Prop :=
  ∀ n, (P16036142829462883999.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P7806050638327290506

`eq[1, A362296(n+2)]+2`
-/

namespace A049579.P7806050638327290506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A049579.P7806050638327290506

namespace A049579

/-- `eq[1, A362296(n+2)]+2` -/
def P7806050638327290506.Spec : Prop :=
  ∀ n, (P7806050638327290506.a n : ℤ) = A049579 (n + 1)

end A049579

/-! ## A049579.P15161412733070159417

`lt[1, A074927(n+2)]+2`
-/

namespace A049579.P15161412733070159417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A049579.P15161412733070159417

namespace A049579

/-- `lt[1, A074927(n+2)]+2` -/
def P15161412733070159417.Spec : Prop :=
  ∀ n, (P15161412733070159417.a n : ℤ) = A049579 (n + 1)

end A049579

/-!
# A049581: Table T(n,k) = |n-k| read by antidiagonals (n >= 0, k >= 0).

The programs for A049581, the canonical program `A049581.P658114607470364396` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049581 has offset 0).

The definition of A049581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049581.P3501267917919991518

`abs(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A049581.P3501267917919991518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)|

end

end A049581.P3501267917919991518

namespace A049581

/-- `abs(∑[2*n]%comp[∑[n]]-n)` -/
def P3501267917919991518.Spec : Prop :=
  ∀ n, P3501267917919991518.a n = A049581 n

end A049581

/-! ## A049581.P11036183883585995935

`abs(2*n+1-∑[char[∑[n]]]²)`
-/

namespace A049581.P11036183883585995935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)|

end

end A049581.P11036183883585995935

namespace A049581

/-- `abs(2*n+1-∑[char[∑[n]]]²)` -/
def P11036183883585995935.Spec : Prop :=
  ∀ n, P11036183883585995935.a n = A049581 n

end A049581

/-! ## A049581.P11328546078118421077

`log2(A116588(n))`
-/

namespace A049581.P11328546078118421077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A116588 n : ℝ)

end

end A049581.P11328546078118421077

namespace A049581

/-- `log2(A116588(n))` -/
def P11328546078118421077.Spec : Prop :=
  ∀ n, P11328546078118421077.a n = (A049581 n : ℝ)

end A049581

/-! ## A049581.P10448747350077982873

`A143182(n)-1`
-/

namespace A049581.P10448747350077982873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n - 1

end

end A049581.P10448747350077982873

namespace A049581

/-- `A143182(n)-1` -/
def P10448747350077982873.Spec : Prop :=
  ∀ n, P10448747350077982873.a n = A049581 n

end A049581

/-! ## A049581.P1302722158408057684

`val(A115216(n), 2)`
-/

namespace A049581.P1302722158408057684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115216 n).toNat 2

end

end A049581.P1302722158408057684

namespace A049581

/-- `val(A115216(n), 2)` -/
def P1302722158408057684.Spec : Prop :=
  ∀ n, (P1302722158408057684.a n : ℤ) = A049581 n

end A049581

/-! ## A049581.P10250382913129518058

`1-A203994(n+1)`
-/

namespace A049581.P10250382913129518058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A203994 (n + 1)

end

end A049581.P10250382913129518058

namespace A049581

/-- `1-A203994(n+1)` -/
def P10250382913129518058.Spec : Prop :=
  ∀ n, P10250382913129518058.a n = A049581 n

end A049581

/-! ## A049581.P10895835682436698544

`A140106(2*A143182(n))`
-/

namespace A049581.P10895835682436698544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A143182 n).toNat

end

end A049581.P10895835682436698544

namespace A049581

/-- `A140106(2*A143182(n))` -/
def P10895835682436698544.Spec : Prop :=
  ∀ n, P10895835682436698544.a n = A049581 n

end A049581

/-! ## A049581.P5750473982056926671

`A003984(n)-A004197(n)`
-/

namespace A049581.P5750473982056926671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n - A004197 n

end

end A049581.P5750473982056926671

namespace A049581

/-- `A003984(n)-A004197(n)` -/
def P5750473982056926671.Spec : Prop :=
  ∀ n, P5750473982056926671.a n = A049581 n

end A049581

/-! ## A049581.P658114607470364396

`lcm(A020985(n), A114327(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049581

/-- `lcm(A020985(n), A114327(n))` -/
def P658114607470364396.Spec : Prop :=
  ∀ n, (P658114607470364396.a n : ℤ) = A049581 n

theorem P658114607470364396.correct : P658114607470364396.Spec := by
  intro n
  simp only [A049581]

end A049581

/-! ## A049581.P8335298677564328184

`∑{d}[A114327(n), A000010(#)]`
-/

namespace A049581.P8335298677564328184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A049581.P8335298677564328184

namespace A049581

/-- `∑{d}[A114327(n), A000010(#)]` -/
def P8335298677564328184.Spec : Prop :=
  ∀ n, P8335298677564328184.a n = A049581 n

end A049581

/-! ## A049581.P12115006608751466842

`A101776(n)-A194959(n+1)`
-/

namespace A049581.P12115006608751466842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A194959 (n + 1)

end

end A049581.P12115006608751466842

namespace A049581

/-- `A101776(n)-A194959(n+1)` -/
def P12115006608751466842.Spec : Prop :=
  ∀ n, P12115006608751466842.a n = A049581 n

end A049581

/-! ## A049581.P7555471473916623261

`A220073(n+1)-A101688(n)`
-/

namespace A049581.P7555471473916623261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) - A101688 n

end

end A049581.P7555471473916623261

namespace A049581

/-- `A220073(n+1)-A101688(n)` -/
def P7555471473916623261.Spec : Prop :=
  ∀ n, P7555471473916623261.a n = A049581 n

end A049581

/-! ## A049581.P6630021762762688015

`A204008(n+1)-A131507(n)`
-/

namespace A049581.P6630021762762688015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (n + 1) - A131507 n

end

end A049581.P6630021762762688015

namespace A049581

/-- `A204008(n+1)-A131507(n)` -/
def P6630021762762688015.Spec : Prop :=
  ∀ n, P6630021762762688015.a n = A049581 n

end A049581

/-! ## A049581.P10069647862653526614

`A131507(n)-A204012(n+1)`
-/

namespace A049581.P10069647862653526614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A204012 (n + 1)

end

end A049581.P10069647862653526614

namespace A049581

/-- `A131507(n)-A204012(n+1)` -/
def P10069647862653526614.Spec : Prop :=
  ∀ n, P10069647862653526614.a n = A049581 n

end A049581

/-! ## A049581.P1152170724374000996

`2*A003984(n)-A003056(n)`
-/

namespace A049581.P1152170724374000996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003984 n - A003056 n

end

end A049581.P1152170724374000996

namespace A049581

/-- `2*A003984(n)-A003056(n)` -/
def P1152170724374000996.Spec : Prop :=
  ∀ n, P1152170724374000996.a n = A049581 n

end A049581

/-! ## A049581.P15580663756326518317

`A003056(n)-2*A004197(n)`
-/

namespace A049581.P15580663756326518317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - 2 * A004197 n

end

end A049581.P15580663756326518317

namespace A049581

/-- `A003056(n)-2*A004197(n)` -/
def P15580663756326518317.Spec : Prop :=
  ∀ n, P15580663756326518317.a n = A049581 n

end A049581

/-! ## A049581.P16015804976959189615

`A141387(n)%A051125(n+1)`
-/

namespace A049581.P16015804976959189615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141387 n) (A051125 (n + 1))

end

end A049581.P16015804976959189615

namespace A049581

/-- `A141387(n)%A051125(n+1)` -/
def P16015804976959189615.Spec : Prop :=
  ∀ n, P16015804976959189615.a n = A049581 n

end A049581

/-! ## A049581.P7090785623791645190

`∑{d}[n-A061579(n), A000010(#)]`
-/

namespace A049581.P7090785623791645190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A049581.P7090785623791645190

namespace A049581

/-- `∑{d}[n-A061579(n), A000010(#)]` -/
def P7090785623791645190.Spec : Prop :=
  ∀ n, P7090785623791645190.a n = A049581 n

end A049581

/-! ## A049581.P16245865163878995349

`A003984(n)+1-A003983(n+1)`
-/

namespace A049581.P16245865163878995349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (1 - A003983 (n + 1))

end

end A049581.P16245865163878995349

namespace A049581

/-- `A003984(n)+1-A003983(n+1)` -/
def P16245865163878995349.Spec : Prop :=
  ∀ n, P16245865163878995349.a n = A049581 n

end A049581

/-! ## A049581.P1993624161107268123

`A051125(n+1)-A003983(n+1)`
-/

namespace A049581.P1993624161107268123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) - A003983 (n + 1)

end

end A049581.P1993624161107268123

namespace A049581

/-- `A051125(n+1)-A003983(n+1)` -/
def P1993624161107268123.Spec : Prop :=
  ∀ n, P1993624161107268123.a n = A049581 n

end A049581

/-!
# A049582: Primes p such that x^50 = 2 has a solution mod p.

The programs for A049582, there is no canonical definition to state claims against.
-/

/-! ## A049582.P10989260550389158266

`∩[A038873(n+1), A049557(n+1)]`
-/

namespace A049582.P10989260550389158266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P10989260550389158266

/-! ## A049582.P18182495469187151683

`∩[A049542(n+1), A049557(n+1)]`
-/

namespace A049582.P18182495469187151683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P18182495469187151683

/-! ## A049582.P3609730433115622085

`∩[A049557(n+1), A055673(n+1)]`
-/

namespace A049582.P3609730433115622085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P3609730433115622085

/-! ## A049582.P12006865473453723089

`∩[A049557(n+1), A057126(n+1)]`
-/

namespace A049582.P12006865473453723089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P12006865473453723089

/-! ## A049582.P10031557919733227513

`∩[A049557(n+1), A227144(n+1)]`
-/

namespace A049582.P10031557919733227513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P10031557919733227513

/-! ## A049582.P5400731260110171535

`∩[A035251(n+1), A049557(n+1)]`
-/

namespace A049582.P5400731260110171535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P5400731260110171535

/-! ## A049582.P1350486059000641921

`∩[A049557(n+1), A385723(n+1)]`
-/

namespace A049582.P1350486059000641921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P1350486059000641921

/-! ## A049582.P16397188572214525389

`∩[A047526(n+1), A049557(n+1)]`
-/

namespace A049582.P16397188572214525389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P16397188572214525389

/-! ## A049582.P13591429813505368828

`∩[A047527(n+1), A049557(n+1)]`
-/

namespace A049582.P13591429813505368828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P13591429813505368828

/-! ## A049582.P14728082702090563055

`∩[A047541(n+1), A049557(n+1)]`
-/

namespace A049582.P14728082702090563055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P14728082702090563055

/-! ## A049582.P3426822366206846535

`∩[A047554(n+1), A049557(n+1)]`
-/

namespace A049582.P3426822366206846535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P3426822366206846535

/-! ## A049582.P15702049936132153628

`∩[A047476(n+1)-1, A049557(n+1)]`
-/

namespace A049582.P15702049936132153628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P15702049936132153628

/-! ## A049582.P1661717807222305550

`∩[A047454(n+1)-2, A049557(n+1)]`
-/

namespace A049582.P1661717807222305550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P1661717807222305550

/-! ## A049582.P3294272589231278299

`∩[A049557(n+1), A066507(n+1)]`
-/

namespace A049582.P3294272589231278299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P3294272589231278299

/-! ## A049582.P15899629723908265203

`∩[A047512(n+1), A049557(n+1)]`
-/

namespace A049582.P15899629723908265203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P15899629723908265203

/-! ## A049582.P14290854576002020154

`∩[A047542(n+1), A049557(n+1)]`
-/

namespace A049582.P14290854576002020154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P14290854576002020154

/-! ## A049582.P646696467448857590

`∩[A047555(n+1), A049557(n+1)]`
-/

namespace A049582.P646696467448857590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P646696467448857590

/-! ## A049582.P3939611946959283489

`∩[A047419(n+1)-2, A049557(n+1)]`
-/

namespace A049582.P3939611946959283489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P3939611946959283489

/-! ## A049582.P8093609795262710888

`∩[A047453(n+1)-2, A049557(n+1)]`
-/

namespace A049582.P8093609795262710888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P8093609795262710888

/-! ## A049582.P6316399770724221416

`∩[A049557(n+1), A260399(n+1)]`
-/

namespace A049582.P6316399770724221416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049582.P6316399770724221416

/-!
# A049583: Primes p such that x^51 = 2 has a solution mod p.

The programs for A049583, there is no canonical definition to state claims against.
-/

/-! ## A049583.P2712789644793188310

`∩[A040028(n+1), A049549(n+1)]`
-/

namespace A049583.P2712789644793188310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049583.P2712789644793188310

/-! ## A049583.P2935807252448431277

`∩[A049549(n+1), A057760(n+1)]`
-/

namespace A049583.P2935807252448431277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049583.P2935807252448431277

/-! ## A049583.P17768043163621137061

`p?[comp[A059640(n+1)]]`
-/

namespace A049583.P17768043163621137061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059640 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A049583.P17768043163621137061

/-! ## A049583.P11345157032971000125

`∩[A049549(n+1), A259732(n+1)]`
-/

namespace A049583.P11345157032971000125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049583.P11345157032971000125

/-!
# A049584: Primes p such that x^52 = 2 has a solution mod p.

The programs for A049584, there is no canonical definition to state claims against.
-/

/-! ## A049584.P8283140059444581848

`∩[A040098(n+1), A049558(n+1)]`
-/

namespace A049584.P8283140059444581848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049584.P8283140059444581848

/-! ## A049584.P16679049468661455231

`∩[A040098(n+1), A049545(n+1)]`
-/

namespace A049584.P16679049468661455231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049584.P16679049468661455231

/-! ## A049584.P6371069431255161870

`p?[A138363(A142770(n+1))+A040098(n+1)]`
-/

namespace A049584.P6371069431255161870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138363 (A142770 (n + 1)).toNat + A040098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049584.P6371069431255161870

/-!
# A049585: Primes p such that x^53 = 2 has a solution mod p.

The programs for A049585, the canonical program `A049585.P15303328923356932988` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049585 has offset 1).

The definition of A049585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049585.P15420019316251441450

`eq[A014963(A342726(3*(n+1))), A284289(n)]`
-/

namespace A049585.P15420019316251441450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A342726 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P15420019316251441450

namespace A049585

/-- `eq[A014963(A342726(3*(n+1))), A284289(n)]` -/
def P15420019316251441450.Spec : Prop :=
  ∀ n, (P15420019316251441450.a n : ℤ) = A049585 (n + 1)

end A049585

/-! ## A049585.P15303328923356932988

`eq[A003415(A097605(2*n+5)), A003415(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A049585

/-- `eq[A003415(A097605(2*n+5)), A003415(n)]` -/
def P15303328923356932988.Spec : Prop :=
  ∀ n, (P15303328923356932988.a n : ℤ) = A049585 (n + 1)

theorem P15303328923356932988.correct : P15303328923356932988.Spec := by
  intro n
  simp only [A049585, Nat.add_sub_cancel]

end A049585

/-! ## A049585.P11151279766321459955

`eq[A003415(n), A144112(A158913(n+4))]`
-/

namespace A049585.P11151279766321459955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A158913 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P11151279766321459955

namespace A049585

/-- `eq[A003415(n), A144112(A158913(n+4))]` -/
def P11151279766321459955.Spec : Prop :=
  ∀ n, (P11151279766321459955.a n : ℤ) = A049585 (n + 1)

end A049585

/-! ## A049585.P12831692079849680811

`A000040(∑[A249351(n+4)!])`
-/

namespace A049585.P12831692079849680811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A249351 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049585.P12831692079849680811

namespace A049585

/-- `A000040(∑[A249351(n+4)!])` -/
def P12831692079849680811.Spec : Prop :=
  ∀ n, P12831692079849680811.a n = A049585 (n + 1)

end A049585

/-! ## A049585.P12825970661029823370

`record[A051698(A110654(n+3)-A332433(n))]`
-/

namespace A049585.P12825970661029823370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A110654 (n + 3) - A332433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049585.P12825970661029823370

namespace A049585

/-- `record[A051698(A110654(n+3)-A332433(n))]` -/
def P12825970661029823370.Spec : Prop :=
  ∀ n, P12825970661029823370.a n = A049585 (n + 1)

end A049585

/-! ## A049585.P17599419296048384706

`record[A051698(n-A309163(2*n+5))]`
-/

namespace A049585.P17599419296048384706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((n : ℤ) - A309163 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049585.P17599419296048384706

namespace A049585

/-- `record[A051698(n-A309163(2*n+5))]` -/
def P17599419296048384706.Spec : Prop :=
  ∀ n, P17599419296048384706.a n = A049585 (n + 1)

end A049585

/-! ## A049585.P5264473006803236627

`eq[A003415(n), A267922(A106856(n+1))]`
-/

namespace A049585.P5264473006803236627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (A106856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P5264473006803236627

namespace A049585

/-- `eq[A003415(n), A267922(A106856(n+1))]` -/
def P5264473006803236627.Spec : Prop :=
  ∀ n, (P5264473006803236627.a n : ℤ) = A049585 (n + 1)

end A049585

/-! ## A049585.P7599000382327361814

`eq[A032741(n), A128604(A214711(n+1))]`
-/

namespace A049585.P7599000382327361814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128604 (A214711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049585.P7599000382327361814

namespace A049585

/-- `eq[A032741(n), A128604(A214711(n+1))]` -/
def P7599000382327361814.Spec : Prop :=
  ∀ n, (P7599000382327361814.a n : ℤ) = A049585 (n + 1)

end A049585

/-! ## A049585.P13886727634452766074

`A319333(A167520(n+1))`
-/

namespace A049585.P13886727634452766074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (A167520 (n + 1)).toNat

end

end A049585.P13886727634452766074

namespace A049585

/-- `A319333(A167520(n+1))` -/
def P13886727634452766074.Spec : Prop :=
  ∀ n, P13886727634452766074.a n = A049585 (n + 1)

end A049585

/-!
# A049586: a(n) is the GCD of the cototients (A051953) of n and n+1.

The programs for A049586, the canonical program `A049586.P5434218238322190531` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049586 has offset 0).

The definition of A049586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049586.P5434218238322190531

`gcd(A051953(n+2), A051953(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049586

/-- `gcd(A051953(n+2), A051953(n+1))` -/
def P5434218238322190531.Spec : Prop :=
  ∀ n, (P5434218238322190531.a n : ℤ) = A049586 n

theorem P5434218238322190531.correct : P5434218238322190531.Spec := by
  intro n
  simp only [A049586]

end A049586

/-! ## A049586.P6232317302193587478

`gcd(n-A109606(n+1), Δ[n+1-A000010(n+1)])`
-/

namespace A049586.P6232317302193587478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A109606 (n + 1)) (f1 (n + 1) - f1 n)

end

end A049586.P6232317302193587478

namespace A049586

/-- `gcd(n-A109606(n+1), Δ[n+1-A000010(n+1)])` -/
def P6232317302193587478.Spec : Prop :=
  ∀ n, (P6232317302193587478.a n : ℤ) = A049586 n

end A049586

/-! ## A049586.P17140044268106883058

`gcd(n+1-A000010(n+1), n+2-A000010(n+2))`
-/

namespace A049586.P17140044268106883058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000010 (n + 1)) ((n + 2 : ℤ) - A000010 (n + 2))

end

end A049586.P17140044268106883058

namespace A049586

/-- `gcd(n+1-A000010(n+1), n+2-A000010(n+2))` -/
def P17140044268106883058.Spec : Prop :=
  ∀ n, (P17140044268106883058.a n : ℤ) = A049586 n

end A049586

/-! ## A049586.P14391112984419600151

`gcd(A016035(n+1)+1, Δ[A016035(n+1)])`
-/

namespace A049586.P14391112984419600151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016035 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A049586.P14391112984419600151

namespace A049586

/-- `gcd(A016035(n+1)+1, Δ[A016035(n+1)])` -/
def P14391112984419600151.Spec : Prop :=
  ∀ n, (P14391112984419600151.a n : ℤ) = A049586 n

end A049586

/-! ## A049586.P5637471714111544883

`gcd(A219428(n+1)+1, Δ[A219428(n+1)])`
-/

namespace A049586.P5637471714111544883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219428 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A049586.P5637471714111544883

namespace A049586

/-- `gcd(A219428(n+1)+1, Δ[A219428(n+1)])` -/
def P5637471714111544883.Spec : Prop :=
  ∀ n, (P5637471714111544883.a n : ℤ) = A049586 n

end A049586

/-! ## A049586.P7979920234234293343

`gcd(n-A109606(n+1), Δ[n-A109606(n+1)])`
-/

namespace A049586.P7979920234234293343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A109606 (n + 1)) (f1 (n + 1) - f1 n)

end

end A049586.P7979920234234293343

namespace A049586

/-- `gcd(n-A109606(n+1), Δ[n-A109606(n+1)])` -/
def P7979920234234293343.Spec : Prop :=
  ∀ n, (P7979920234234293343.a n : ℤ) = A049586 n

end A049586

/-! ## A049586.P7638059825598308715

`gcd(2-A039649(n+1)+n, Δ[2-A039649(n+1)+n])`
-/

namespace A049586.P7638059825598308715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039649 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A039649 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A049586.P7638059825598308715

namespace A049586

/-- `gcd(2-A039649(n+1)+n, Δ[2-A039649(n+1)+n])` -/
def P7638059825598308715.Spec : Prop :=
  ∀ n, (P7638059825598308715.a n : ℤ) = A049586 n

end A049586

/-!
# A049587: Primes p such that x^55 = 2 has a solution mod p.

The programs for A049587, there is no canonical definition to state claims against.
-/

/-! ## A049587.P14673854601672714965

`∩[A040159(n+1), A049543(n+1)]`
-/

namespace A049587.P14673854601672714965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049587.P14673854601672714965

/-! ## A049587.P15395167765560977597

`p?[gcd(55, n)+n]%A008574(A271255(n))`
-/

namespace A049587.P15395167765560977597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 55 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A008574 (A271255 n).toNat)

end

end A049587.P15395167765560977597

/-! ## A049587.P2033882148433344663

`p?[A002260(A253145(A236207(n+1)))]`
-/

namespace A049587.P2033882148433344663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A253145 (A236207 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049587.P2033882148433344663

/-! ## A049587.P7140253521293365726

`A074828(p?[gcd(55, n)+n]²)`
-/

namespace A049587.P7140253521293365726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 55 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A049587.P7140253521293365726

/-! ## A049587.P11935396467434037406

`∩[A049543(n+1), A344543(n+1)]`
-/

namespace A049587.P11935396467434037406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049587.P11935396467434037406

/-!
# A049588: Primes p such that x^56 = 2 has a solution mod p.

The programs for A049588, there is no canonical definition to state claims against.
-/

/-! ## A049588.P11079521311331675232

`∩[A042966(n+1), A045315(n+1)]`
-/

namespace A049588.P11079521311331675232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049588.P11079521311331675232

/-! ## A049588.P18049987014627826853

`∩[A045315(n+1), A049546(n+1)]`
-/

namespace A049588.P18049987014627826853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049588.P18049987014627826853

/-! ## A049588.P15165622381248803289

`∩[A045315(n+1), A049560(n+1)]`
-/

namespace A049588.P15165622381248803289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049588.P15165622381248803289

/-!
# A049589: Primes p such that x^57 = 2 has a solution mod p.

The programs for A049589, there is no canonical definition to state claims against.
-/

/-! ## A049589.P10304867366537783150

`∩[A040028(n+1), A049551(n+1)]`
-/

namespace A049589.P10304867366537783150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049589.P10304867366537783150

/-! ## A049589.P303433735925964876

`∩[A049551(n+1), A057760(n+1)]`
-/

namespace A049589.P303433735925964876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049589.P303433735925964876

/-! ## A049589.P1055071867601715566

`p?[A259732(A321993(n+1))]`
-/

namespace A049589.P1055071867601715566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (A321993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049589.P1055071867601715566

/-! ## A049589.P3578948299778920316

`∩[A049551(n+1), A259732(n+1)]`
-/

namespace A049589.P3578948299778920316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049589.P3578948299778920316

/-!
# A049590: Primes p such that x^58 = 2 has a solution mod p.

The programs for A049590, there is no canonical definition to state claims against.
-/

/-! ## A049590.P11931468262246587546

`∩[A038873(n+1), A049561(n+1)]`
-/

namespace A049590.P11931468262246587546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P11931468262246587546

/-! ## A049590.P9058988611390902

`∩[A049561(n+1), A055673(n+1)]`
-/

namespace A049590.P9058988611390902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P9058988611390902

/-! ## A049590.P7776568854709044432

`∩[A049561(n+1), A057126(n+1)]`
-/

namespace A049590.P7776568854709044432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P7776568854709044432

/-! ## A049590.P11855078898056321145

`∩[A049561(n+1), A227144(n+1)]`
-/

namespace A049590.P11855078898056321145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P11855078898056321145

/-! ## A049590.P7439119357384753591

`∩[A035251(n+1), A049561(n+1)]`
-/

namespace A049590.P7439119357384753591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P7439119357384753591

/-! ## A049590.P6779895842602228657

`∩[A049561(n+1), A385723(n+1)]`
-/

namespace A049590.P6779895842602228657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P6779895842602228657

/-! ## A049590.P16677174879851963952

`∩[A047526(n+1), A049561(n+1)]`
-/

namespace A049590.P16677174879851963952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P16677174879851963952

/-! ## A049590.P9280505480091698055

`∩[A047527(n+1), A049561(n+1)]`
-/

namespace A049590.P9280505480091698055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P9280505480091698055

/-! ## A049590.P18309536740176761671

`∩[A047541(n+1), A049561(n+1)]`
-/

namespace A049590.P18309536740176761671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P18309536740176761671

/-! ## A049590.P13454379772540738980

`∩[A047554(n+1), A049561(n+1)]`
-/

namespace A049590.P13454379772540738980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P13454379772540738980

/-! ## A049590.P9777599421980032753

`∩[A047476(n+1)-1, A049561(n+1)]`
-/

namespace A049590.P9777599421980032753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P9777599421980032753

/-! ## A049590.P11459702267916805161

`∩[A047454(n+1)-2, A049561(n+1)]`
-/

namespace A049590.P11459702267916805161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P11459702267916805161

/-! ## A049590.P251470576115079981

`∩[A049561(n+1), A066507(n+1)]`
-/

namespace A049590.P251470576115079981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P251470576115079981

/-! ## A049590.P5021735390741248042

`∩[A047512(n+1), A049561(n+1)]`
-/

namespace A049590.P5021735390741248042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P5021735390741248042

/-! ## A049590.P7881177805445985564

`∩[A047542(n+1), A049561(n+1)]`
-/

namespace A049590.P7881177805445985564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P7881177805445985564

/-! ## A049590.P5405714877594088452

`∩[A047555(n+1), A049561(n+1)]`
-/

namespace A049590.P5405714877594088452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P5405714877594088452

/-! ## A049590.P725735933188973562

`∩[A047419(n+1)-2, A049561(n+1)]`
-/

namespace A049590.P725735933188973562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P725735933188973562

/-! ## A049590.P14930453037567606837

`∩[A047453(n+1)-2, A049561(n+1)]`
-/

namespace A049590.P14930453037567606837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P14930453037567606837

/-! ## A049590.P10072948283897784878

`∩[A049561(n+1), A260399(n+1)]`
-/

namespace A049590.P10072948283897784878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P10072948283897784878

/-! ## A049590.P13533074171870004721

`∩[A047513(n+1), A049561(n+1)]`
-/

namespace A049590.P13533074171870004721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049590.P13533074171870004721

/-!
# A049591: Odd primes p such that p+2 is composite.

The programs for A049591, the canonical program `A049591.P2776477659953961474` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049591 has offset 1).

The definition of A049591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049591.P2340486740800508797

`A136798(n+1)-1`
-/

namespace A049591.P2340486740800508797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1) - 1

end

end A049591.P2340486740800508797

namespace A049591

/-- `A136798(n+1)-1` -/
def P2340486740800508797.Spec : Prop :=
  ∀ n, P2340486740800508797.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P7861751929103494435

`A107987(n+1)-2`
-/

namespace A049591.P7861751929103494435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1) - 2

end

end A049591.P7861751929103494435

namespace A049591

/-- `A107987(n+1)-2` -/
def P7861751929103494435.Spec : Prop :=
  ∀ n, P7861751929103494435.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P4309634219605799090

`A297925(n+1)-5`
-/

namespace A049591.P4309634219605799090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297925 (n + 1) - 5

end

end A049591.P4309634219605799090

namespace A049591

/-- `A297925(n+1)-5` -/
def P4309634219605799090.Spec : Prop :=
  ∀ n, P4309634219605799090.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P10818846288580734970

`A297150(n+1)/5`
-/

namespace A049591.P10818846288580734970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297150 (n + 1) : ℚ) / 5

end

end A049591.P10818846288580734970

namespace A049591

/-- `A297150(n+1)/5` -/
def P10818846288580734970.Spec : Prop :=
  ∀ n, P10818846288580734970.a n = (A049591 (n + 1) : ℚ)

end A049591

/-! ## A049591.P18324142361522174714

`2*A104280(n+1)-1`
-/

namespace A049591.P18324142361522174714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104280 (n + 1) - 1

end

end A049591.P18324142361522174714

namespace A049591

/-- `2*A104280(n+1)-1` -/
def P18324142361522174714.Spec : Prop :=
  ∀ n, P18324142361522174714.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P11045249647027941615

`A136799(n+1)-A136800(n+1)`
-/

namespace A049591.P11045249647027941615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) - A136800 (n + 1)

end

end A049591.P11045249647027941615

namespace A049591

/-- `A136799(n+1)-A136800(n+1)` -/
def P11045249647027941615.Spec : Prop :=
  ∀ n, P11045249647027941615.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P12184341083616166509

`A067774(n+2)`
-/

namespace A049591.P12184341083616166509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 2)

end

end A049591.P12184341083616166509

namespace A049591

/-- `A067774(n+2)` -/
def P12184341083616166509.Spec : Prop :=
  ∀ n, P12184341083616166509.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P5907193736495125254

`A141515(n+2)+1`
-/

namespace A049591.P5907193736495125254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 2) + 1

end

end A049591.P5907193736495125254

namespace A049591

/-- `A141515(n+2)+1` -/
def P5907193736495125254.Spec : Prop :=
  ∀ n, P5907193736495125254.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P8125547390925080486

`A107986(n+2)-2`
-/

namespace A049591.P8125547390925080486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 2) - 2

end

end A049591.P8125547390925080486

namespace A049591

/-- `A107986(n+2)-2` -/
def P8125547390925080486.Spec : Prop :=
  ∀ n, P8125547390925080486.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P14706069413990441143

`or(1, A167706(n+3))`
-/

namespace A049591.P14706069413990441143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A167706 (n + 3))

end

end A049591.P14706069413990441143

namespace A049591

/-- `or(1, A167706(n+3))` -/
def P14706069413990441143.Spec : Prop :=
  ∀ n, P14706069413990441143.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P2776477659953961474

`A065091(lt[2, A001223(n+1)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049591

/-- `A065091(lt[2, A001223(n+1)])` -/
def P2776477659953961474.Spec : Prop :=
  ∀ n, P2776477659953961474.a n = A049591 (n + 1)

theorem P2776477659953961474.correct : P2776477659953961474.Spec := by
  intro n
  simp only [A049591, Nat.add_sub_cancel]

end A049591

/-! ## A049591.P17678071486907464538

`A000040(A049579(n+1))`
-/

namespace A049591.P17678071486907464538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049579 (n + 1)).toNat

end

end A049591.P17678071486907464538

namespace A049591

/-- `A000040(A049579(n+1))` -/
def P17678071486907464538.Spec : Prop :=
  ∀ n, P17678071486907464538.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P4702606355815160593

`p?[A000265(p?[n-A005171(n+1)])]`
-/

namespace A049591.P4702606355815160593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049591.P4702606355815160593

namespace A049591

/-- `p?[A000265(p?[n-A005171(n+1)])]` -/
def P4702606355815160593.Spec : Prop :=
  ∀ n, P4702606355815160593.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P16040464287392602877

`record[A133387(n+2)]`
-/

namespace A049591.P16040464287392602877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049591.P16040464287392602877

namespace A049591

/-- `record[A133387(n+2)]` -/
def P16040464287392602877.Spec : Prop :=
  ∀ n, P16040464287392602877.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P8494977474437191339

`2*A174047(2*(n+1))-1`
-/

namespace A049591.P8494977474437191339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174047 (2 * (n + 1)) - 1

end

end A049591.P8494977474437191339

namespace A049591

/-- `2*A174047(2*(n+1))-1` -/
def P8494977474437191339.Spec : Prop :=
  ∀ n, P8494977474437191339.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P9918241480285964924

`A100317(2*(n+2))-1`
-/

namespace A049591.P9918241480285964924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (2 * (n + 2)) - 1

end

end A049591.P9918241480285964924

namespace A049591

/-- `A100317(2*(n+2))-1` -/
def P9918241480285964924.Spec : Prop :=
  ∀ n, P9918241480285964924.a n = A049591 (n + 1)

end A049591

/-! ## A049591.P538257510439134179

`record[p?[A171435(A171435(n+1))-2]]`
-/

namespace A049591.P538257510439134179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A171435 (n + 1)).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049591.P538257510439134179

namespace A049591

/-- `record[p?[A171435(A171435(n+1))-2]]` -/
def P538257510439134179.Spec : Prop :=
  ∀ n, P538257510439134179.a n = A049591 (n + 1)

end A049591

/-!
# A049592: Primes p such that x^60 = 2 has a solution mod p.

The programs for A049592, there is no canonical definition to state claims against.
-/

/-! ## A049592.P10148891967130678147

`∩[A040028(n+1), A049552(n+1)]`
-/

namespace A049592.P10148891967130678147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P10148891967130678147

/-! ## A049592.P12607765553060407141

`∩[A040098(n+1), A049547(n+1)]`
-/

namespace A049592.P12607765553060407141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P12607765553060407141

/-! ## A049592.P13544630443270131377

`∩[A040098(n+1), A049562(n+1)]`
-/

namespace A049592.P13544630443270131377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P13544630443270131377

/-! ## A049592.P10219358306310083471

`∩[A040159(n+1), A049544(n+1)]`
-/

namespace A049592.P10219358306310083471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P10219358306310083471

/-! ## A049592.P115875894770090693

`∩[A040992(n+1), A049552(n+1)]`
-/

namespace A049592.P115875894770090693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P115875894770090693

/-! ## A049592.P2097255995035744484

`∩[A049542(n+1), A049544(n+1)]`
-/

namespace A049592.P2097255995035744484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P2097255995035744484

/-! ## A049592.P5418845614947209440

`∩[A049544(n+1), A049547(n+1)]`
-/

namespace A049592.P5418845614947209440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P5418845614947209440

/-! ## A049592.P7558583926733017585

`∩[A049544(n+1), A049552(n+1)]`
-/

namespace A049592.P7558583926733017585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P7558583926733017585

/-! ## A049592.P15247849310970788888

`∩[A049547(n+1), A049552(n+1)]`
-/

namespace A049592.P15247849310970788888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P15247849310970788888

/-! ## A049592.P6238910176207696966

`∩[A049544(n+1), A049562(n+1)]`
-/

namespace A049592.P6238910176207696966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P6238910176207696966

/-! ## A049592.P3606271107220532519

`∩[A049552(n+1), A049562(n+1)]`
-/

namespace A049592.P3606271107220532519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P3606271107220532519

/-! ## A049592.P8953246090797903069

`∩[A049552(n+1), A057760(n+1)]`
-/

namespace A049592.P8953246090797903069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049592.P8953246090797903069

/-!
# A049593: Primes p for which residue of ((p-1)! + 1) modulo (p + 16) equals 1.

The programs for A049593, the canonical program `A049593.P11643952065115088752` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049593 has offset 1).

The definition of A049593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049593.P11643952065115088752

`p?[A071904(n+1)-(4%(n+1))²]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049593

/-- `p?[A071904(n+1)-(4%(n+1))²]` -/
def P11643952065115088752.Spec : Prop :=
  ∀ n, P11643952065115088752.a n = A049593 (n + 1)

theorem P11643952065115088752.correct : P11643952065115088752.Spec := by
  intro n
  simp only [A049593, Nat.add_sub_cancel]

end A049593

/-! ## A049593.P2170378669152787396

`p?[A005408(A241572(n+2))]`
-/

namespace A049593.P2170378669152787396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A241572 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P2170378669152787396

namespace A049593

/-- `p?[A005408(A241572(n+2))]` -/
def P2170378669152787396.Spec : Prop :=
  ∀ n, P2170378669152787396.a n = A049593 (n + 1)

end A049593

/-! ## A049593.P15472941557194488780

`p?[A002808(n+16)-16]`
-/

namespace A049593.P15472941557194488780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 16) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P15472941557194488780

namespace A049593

/-- `p?[A002808(n+16)-16]` -/
def P15472941557194488780.Spec : Prop :=
  ∀ n, P15472941557194488780.a n = A049593 (n + 1)

end A049593

/-! ## A049593.P8258611214753976824

`p?[A018252(n+16)-16]`
-/

namespace A049593.P8258611214753976824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 16) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P8258611214753976824

namespace A049593

/-- `p?[A018252(n+16)-16]` -/
def P8258611214753976824.Spec : Prop :=
  ∀ n, P8258611214753976824.a n = A049593 (n + 1)

end A049593

/-! ## A049593.P4451889128811205485

`p?[A325037(n+5)-16]`
-/

namespace A049593.P4451889128811205485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 5) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P4451889128811205485

namespace A049593

/-- `p?[A325037(n+5)-16]` -/
def P4451889128811205485.Spec : Prop :=
  ∀ n, P4451889128811205485.a n = A049593 (n + 1)

end A049593

/-! ## A049593.P7391037239935816022

`p?[A072668(n+15)-15]`
-/

namespace A049593.P7391037239935816022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 15) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049593.P7391037239935816022

namespace A049593

/-- `p?[A072668(n+15)-15]` -/
def P7391037239935816022.Spec : Prop :=
  ∀ n, P7391037239935816022.a n = A049593 (n + 1)

end A049593

/-!
# A049594: Primes p such that x^62 = 2 has a solution mod p.

The programs for A049594, there is no canonical definition to state claims against.
-/

/-! ## A049594.P1225386211571996522

`∩[A038873(n+1), A216883(n+1)]`
-/

namespace A049594.P1225386211571996522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P1225386211571996522

/-! ## A049594.P18304749720329777025

`∩[A055673(n+1), A216883(n+1)]`
-/

namespace A049594.P18304749720329777025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P18304749720329777025

/-! ## A049594.P5314625468311773571

`∩[A057126(n+1), A216883(n+1)]`
-/

namespace A049594.P5314625468311773571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P5314625468311773571

/-! ## A049594.P10719354554652214852

`∩[A216883(n+1), A227144(n+1)]`
-/

namespace A049594.P10719354554652214852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P10719354554652214852

/-! ## A049594.P2947622550375728080

`∩[A035251(n+1), A216883(n+1)]`
-/

namespace A049594.P2947622550375728080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P2947622550375728080

/-! ## A049594.P11697841526682795429

`∩[A216883(n+1), A385723(n+1)]`
-/

namespace A049594.P11697841526682795429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P11697841526682795429

/-! ## A049594.P13620068158563470535

`∩[A047526(n+1), A216883(n+1)]`
-/

namespace A049594.P13620068158563470535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P13620068158563470535

/-! ## A049594.P10734260383910869418

`∩[A047527(n+1), A216883(n+1)]`
-/

namespace A049594.P10734260383910869418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P10734260383910869418

/-! ## A049594.P2920877765044969840

`∩[A047541(n+1), A216883(n+1)]`
-/

namespace A049594.P2920877765044969840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P2920877765044969840

/-! ## A049594.P15930596281189909103

`∩[A047554(n+1), A216883(n+1)]`
-/

namespace A049594.P15930596281189909103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P15930596281189909103

/-! ## A049594.P14642083424239954542

`∩[A066507(n+1), A216883(n+1)]`
-/

namespace A049594.P14642083424239954542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P14642083424239954542

/-! ## A049594.P14230794145702225439

`∩[A047512(n+1), A216883(n+1)]`
-/

namespace A049594.P14230794145702225439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P14230794145702225439

/-! ## A049594.P3482002064073242184

`∩[A047542(n+1), A216883(n+1)]`
-/

namespace A049594.P3482002064073242184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P3482002064073242184

/-! ## A049594.P1563204824697785352

`∩[A047555(n+1), A216883(n+1)]`
-/

namespace A049594.P1563204824697785352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P1563204824697785352

/-! ## A049594.P4643999151512674200

`∩[A216883(n+1), A260399(n+1)]`
-/

namespace A049594.P4643999151512674200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P4643999151512674200

/-! ## A049594.P13381605388699939606

`∩[A047513(n+1), A216883(n+1)]`
-/

namespace A049594.P13381605388699939606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P13381605388699939606

/-! ## A049594.P18135468173705019294

`∩[A047420(n+1)-2, A216883(n+1)]`
-/

namespace A049594.P18135468173705019294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049594.P18135468173705019294

/-! ## A049594.P6785306113962942141

`p?[A109451(A216883(n+2))]`
-/

namespace A049594.P6785306113962942141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (A216883 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049594.P6785306113962942141

/-! ## A049594.P17522856237838064665

`filter[A216883(n+1), A260397(#)]`
-/

namespace A049594.P17522856237838064665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A049594.P17522856237838064665

/-!
# A049595: Primes p such that x^63 = 2 has a solution mod p.

The programs for A049595, there is no canonical definition to state claims against.
-/

/-! ## A049595.P1745143252960161187

`∩[A042966(n+1), A049596(n+1)]`
-/

namespace A049595.P1745143252960161187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049595.P1745143252960161187

/-! ## A049595.P5890776973336215634

`∩[A049553(n+1), A049596(n+1)]`
-/

namespace A049595.P5890776973336215634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049595.P5890776973336215634

/-! ## A049595.P16007863869729695374

`∩[A049553(n+1), A154755(n+1)]`
-/

namespace A049595.P16007863869729695374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049595.P16007863869729695374

/-! ## A049595.P4534686371457416686

`A049553(A187829(n+1))`
-/

namespace A049595.P4534686371457416686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (A187829 (n + 1)).toNat

end

end A049595.P4534686371457416686

/-!
# A049596: Primes p such that x^9 = 2 has a solution mod p.

The programs for A049596, there is no canonical definition to state claims against.
-/

/-! ## A049596.P5608873757745477271

`A040028(A160544(n+1)%A167520(2*(n+1)))`
-/

namespace A049596.P5608873757745477271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (Int.tmod (A160544 (n + 1)) (A167520 (2 * (n + 1)))).toNat

end

end A049596.P5608873757745477271

/-! ## A049596.P1925684586810395701

`A040028(A160544(n+1)%A141214(n))`
-/

namespace A049596.P1925684586810395701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (Int.tmod (A160544 (n + 1)) (A141214 n)).toNat

end

end A049596.P1925684586810395701

/-! ## A049596.P6461847244217063140

`p?[A259732(A167520(n+1))]`
-/

namespace A049596.P6461847244217063140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (A167520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049596.P6461847244217063140

/-! ## A049596.P10051411385947222147

`p?[Δ[A242474(n+1)]*A040028(n+1)]`
-/

namespace A049596.P10051411385947222147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A040028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049596.P10051411385947222147

/-!
# A049597: Triangular array T(n,k) in which k-th column gives coefficients of sum of Gaussian polynomials [k,m] for m=0..k.

The programs for A049597, there is no canonical definition to state claims against.
-/

/-! ## A049597.P2714374474311723621

`A325458(comp[∑[n]])`
-/

namespace A049597.P2714374474311723621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A049597.P2714374474311723621

/-! ## A049597.P15368435684402751108

`A259481(2*(C(comp[∑[n]]-n, 2)-n)+n-1)`
-/

namespace A049597.P15368435684402751108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + ((n : ℤ) - 1)).toNat

end

end A049597.P15368435684402751108

/-! ## A049597.P548307487740616812

`A259481(A099375(n)+n)`
-/

namespace A049597.P548307487740616812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A099375 n + (n : ℤ)).toNat

end

end A049597.P548307487740616812

/-! ## A049597.P2591611156735329015

`A259481(n+1+2*A025581(n))`
-/

namespace A049597.P2591611156735329015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 ((n + 1 : ℤ) + 2 * A025581 n).toNat

end

end A049597.P2591611156735329015

/-! ## A049597.P4720154499580891133

`A259481(A007401(A038722(n+1)))`
-/

namespace A049597.P4720154499580891133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A049597.P4720154499580891133

/-! ## A049597.P6176149415486783974

`A259481(A061579(A014132(n+1)))`
-/

namespace A049597.P6176149415486783974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A061579 (A014132 (n + 1)).toNat).toNat

end

end A049597.P6176149415486783974

/-! ## A049597.P11390426854976572783

`A259481(A038722(n+1)+A003056(n))`
-/

namespace A049597.P11390426854976572783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A038722 (n + 1) + A003056 n).toNat

end

end A049597.P11390426854976572783

/-! ## A049597.P1927247527349270951

`A259481(A061579(n)+A002024(n+1))`
-/

namespace A049597.P1927247527349270951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A061579 n + A002024 (n + 1)).toNat

end

end A049597.P1927247527349270951

/-! ## A049597.P2422245285015190592

`A259481(A114327(n)+A007401(n+1))`
-/

namespace A049597.P2422245285015190592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A114327 n + A007401 (n + 1)).toNat

end

end A049597.P2422245285015190592

/-! ## A049597.P9402048679882874606

`A259481(n+1+A025581(n)+A025581(n))`
-/

namespace A049597.P9402048679882874606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 ((n + 1 : ℤ) + (A025581 n + A025581 n)).toNat

end

end A049597.P9402048679882874606

/-! ## A049597.P12797718124571762997

`A259481(A002024(n+1)+A038722(n+1)-1)`
-/

namespace A049597.P12797718124571762997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A002024 (n + 1) + (A038722 (n + 1) - 1)).toNat

end

end A049597.P12797718124571762997

/-! ## A049597.P14000271754821735439

`A259481(A127739(n+1)+A032741(A130321(n)))`
-/

namespace A049597.P14000271754821735439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (A127739 (n + 1) + A032741 (A130321 n).toNat).toNat

end

end A049597.P14000271754821735439

/-!
# A049598: 12 times triangular numbers.

The programs for A049598, the canonical program `A049598.P15670095646145140517` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049598 has offset 0).

The definition of A049598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049598.P15670095646145140517

`6*n*(n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049598

/-- `6*n*(n+1)` -/
def P15670095646145140517.Spec : Prop :=
  ∀ n, (P15670095646145140517.a n : ℤ) = A049598 n

theorem P15670095646145140517.correct : P15670095646145140517.Spec := by
  intro n
  simp only [A049598]

end A049598

/-! ## A049598.P478772167903024321

`A003154(n+1)-1`
-/

namespace A049598.P478772167903024321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - 1

end

end A049598.P478772167903024321

namespace A049598

/-- `A003154(n+1)-1` -/
def P478772167903024321.Spec : Prop :=
  ∀ n, P478772167903024321.a n = A049598 n

end A049598

/-! ## A049598.P14173627565282422241

`lcm(2, Δ[n^3])-2`
-/

namespace A049598.P14173627565282422241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 2

end

end A049598.P14173627565282422241

namespace A049598

/-- `lcm(2, Δ[n^3])-2` -/
def P14173627565282422241.Spec : Prop :=
  ∀ n, P14173627565282422241.a n = A049598 n

end A049598

/-! ## A049598.P4313123036335218085

`ogf(12x/(1-3x+3x^2-x^3))`
-/

namespace A049598.P4313123036335218085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -3, 3, -1] n

end

end A049598.P4313123036335218085

namespace A049598

/-- `ogf(12x/(1-3x+3x^2-x^3))` -/
def P4313123036335218085.Spec : Prop :=
  ∀ n, P4313123036335218085.a n = A049598 n

end A049598

/-! ## A049598.P13708332992530938658

`floor(∑[a(n-1)+12])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A049598.P13708332992530938658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049598.P13708332992530938658

namespace A049598

/-- `floor(∑[a(n-1)+12])` -/
def P13708332992530938658.Spec : Prop :=
  ∀ n, (P13708332992530938658.a n : ℤ) = A049598 n

end A049598

/-! ## A049598.P16690852063467876776

`xor(2, Δ[2*n*n²])`
-/

namespace A049598.P16690852063467876776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A049598.P16690852063467876776

namespace A049598

/-- `xor(2, Δ[2*n*n²])` -/
def P16690852063467876776.Spec : Prop :=
  ∀ n, P16690852063467876776.a n = A049598 n

end A049598

/-!
# A049599: Number of (1+e)-divisors of n: if n = Product p(i)^r(i), d = Product p(i)^s(i) and s(i) = 0 or s(i) divides r(i), then d is a (1+e)-divisor of n.

The programs for A049599, the canonical program `A049599.P10458558030046678201` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049599 has offset 1).

The definition of A049599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049599.P15645294029938159968

`∏{e}[n+1, A334954(#)]`
-/

namespace A049599.P15645294029938159968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A334954 (Nat.factorization (f1 n) p)

end

end A049599.P15645294029938159968

namespace A049599

/-- `∏{e}[n+1, A334954(#)]` -/
def P15645294029938159968.Spec : Prop :=
  ∀ n, P15645294029938159968.a n = A049599 (n + 1)

end A049599

/-! ## A049599.P5887184512856793338

`∏{e}[n+1, A000005(#)+1]`
-/

namespace A049599.P5887184512856793338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000005 (Nat.factorization (f1 n) p) + 1)

end

end A049599.P5887184512856793338

namespace A049599

/-- `∏{e}[n+1, A000005(#)+1]` -/
def P5887184512856793338.Spec : Prop :=
  ∀ n, P5887184512856793338.a n = A049599 (n + 1)

end A049599

/-! ## A049599.P2543857600034007492

`∏{e}[n+1, A325560(#)+1]`
-/

namespace A049599.P2543857600034007492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A325560 (Nat.factorization (f1 n) p) + 1)

end

end A049599.P2543857600034007492

namespace A049599

/-- `∏{e}[n+1, A325560(#)+1]` -/
def P2543857600034007492.Spec : Prop :=
  ∀ n, P2543857600034007492.a n = A049599 (n + 1)

end A049599

/-! ## A049599.P10458558030046678201

`∏{e}[n+1, A032741(#)+2]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A049599

/-- `∏{e}[n+1, A032741(#)+2]` -/
def P10458558030046678201.Spec : Prop :=
  ∀ n, P10458558030046678201.a n = A049599 (n + 1)

theorem P10458558030046678201.correct : P10458558030046678201.Spec := by
  intro n
  simp only [A049599, Nat.add_sub_cancel]

end A049599

/-! ## A049599.P5524573230135969682

`∏{e}[n+1, A077168(A000005(#))]`
-/

namespace A049599.P5524573230135969682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A077168 (A000005 (Nat.factorization (f1 n) p)).toNat

end

end A049599.P5524573230135969682

namespace A049599

/-- `∏{e}[n+1, A077168(A000005(#))]` -/
def P5524573230135969682.Spec : Prop :=
  ∀ n, P5524573230135969682.a n = A049599 (n + 1)

end A049599

/-! ## A049599.P8466270251237266241

`∏{e}[(n+1)², A001222(A000326(#))+1]`
-/

namespace A049599.P8466270251237266241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 (A000326 (Nat.factorization (f1 n) p)).toNat + 1)

end

end A049599.P8466270251237266241

namespace A049599

/-- `∏{e}[(n+1)², A001222(A000326(#))+1]` -/
def P8466270251237266241.Spec : Prop :=
  ∀ n, P8466270251237266241.a n = A049599 (n + 1)

end A049599

