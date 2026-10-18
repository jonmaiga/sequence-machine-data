import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023

/-!
# A305602: G.f. A(x) satisfies: A(x) = 1 + x*[d/dx 1/(1 - x*A(x)^2)].

The programs for A305602, there is no canonical definition to state claims against.
-/

/-! ## A305602.P4125196853112689071

`A228246((n+2)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A305602.P4125196853112689071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A228246 ((n + 2 : ℤ) * a (n - 1)).toNat

end

end A305602.P4125196853112689071

/-!
# A305603: G.f. A(x) satisfies: A(x) = 1 + x*[d/dx 1/(1 - x*A(x)^3)].

The programs for A305603, there is no canonical definition to state claims against.
-/

/-! ## A305603.P843183287887753849

`A311154(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A305603.P843183287887753849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A311154 ((n : ℤ) * a (n - 1)).toNat

end

end A305603.P843183287887753849

/-!
# A305604: G.f. A(x) satisfies: A(x) = 1 + x*[d/dx 1/(1 - x*A(x)^4)].

The programs for A305604, there is no canonical definition to state claims against.
-/

/-! ## A305604.P7244791591007247658

`n*A314160(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A305604.P7244791591007247658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A314160 (a (n - 1)).toNat

end

end A305604.P7244791591007247658

/-!
# A305608: Expansion of 1/2 * (((1 + 4*x)/(1 - 4*x))^(1/4) - 1).

The programs for A305608, the canonical program `A305608.P13060865660320932087` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305608 has offset 0).

The definition of A305608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305608.P13060865660320932087

`floor(A303537(n)/2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A305608

/-- `floor(A303537(n)/2)` -/
def P13060865660320932087.Spec : Prop :=
  ∀ n, P13060865660320932087.a n = A305608 n

theorem P13060865660320932087.correct : P13060865660320932087.Spec := by
  intro n
  simp only [A305608]

end A305608

/-! ## A305608.P4258950974765378430

`n/A004277(n)*A303537(n)`
-/

namespace A305608.P4258950974765378430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A303537 n : ℚ)

end

end A305608.P4258950974765378430

namespace A305608

/-- `n/A004277(n)*A303537(n)` -/
def P4258950974765378430.Spec : Prop :=
  ∀ n, P4258950974765378430.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P10428897886104577252

`(A103517(n)-A005408(n))*A303537(n)/2`
-/

namespace A305608.P10428897886104577252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n - A005408 n : ℚ) * ((A303537 n : ℚ) / 2)

end

end A305608.P10428897886104577252

namespace A305608

/-- `(A103517(n)-A005408(n))*A303537(n)/2` -/
def P10428897886104577252.Spec : Prop :=
  ∀ n, P10428897886104577252.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P6795626710630069072

`A303537(n)/2*val(A002110(A000720(n+1)), 2)`
-/

namespace A305608.P6795626710630069072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303537 n : ℚ) / 2 * (SequenceMachineLib.valuation (A002110 (A000720 (n + 1)).toNat).toNat 2 : ℚ)

end

end A305608.P6795626710630069072

namespace A305608

/-- `A303537(n)/2*val(A002110(A000720(n+1)), 2)` -/
def P6795626710630069072.Spec : Prop :=
  ∀ n, P6795626710630069072.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P15685622051652328196

`round(A304933(n)/round(acot(n)+n))`
-/

namespace A305608.P15685622051652328196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304933 n : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ))

end

end A305608.P15685622051652328196

namespace A305608

/-- `round(A304933(n)/round(acot(n)+n))` -/
def P15685622051652328196.Spec : Prop :=
  ∀ n, P15685622051652328196.a n = A305608 n

end A305608

/-! ## A305608.P8170728982568101327

`A304933(n)/A028310(n)`
-/

namespace A305608.P8170728982568101327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 n : ℚ) / (A028310 n : ℚ)

end

end A305608.P8170728982568101327

namespace A305608

/-- `A304933(n)/A028310(n)` -/
def P8170728982568101327.Spec : Prop :=
  ∀ n, P8170728982568101327.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P13884161510336099259

`A304933(n)/A065033(2*n)`
-/

namespace A305608.P13884161510336099259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A305608.P13884161510336099259

namespace A305608

/-- `A304933(n)/A065033(2*n)` -/
def P13884161510336099259.Spec : Prop :=
  ∀ n, P13884161510336099259.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P6767505171235174838

`A304933(n)/gcd(n, A241204(n))`
-/

namespace A305608.P6767505171235174838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 n : ℚ) / (Int.gcd (n : ℤ) (A241204 n) : ℚ)

end

end A305608.P6767505171235174838

namespace A305608

/-- `A304933(n)/gcd(n, A241204(n))` -/
def P6767505171235174838.Spec : Prop :=
  ∀ n, P6767505171235174838.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P2280090579288534066

`A303537(n)%A081654(n)/2`
-/

namespace A305608.P2280090579288534066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A303537 n) (A081654 n) : ℚ) / 2

end

end A305608.P2280090579288534066

namespace A305608

/-- `A303537(n)%A081654(n)/2` -/
def P2280090579288534066.Spec : Prop :=
  ∀ n, P2280090579288534066.a n = (A305608 n : ℚ)

end A305608

/-! ## A305608.P4915642354133148613

`A304933(n)/A007318(A000124(n))`
-/

namespace A305608.P4915642354133148613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A305608.P4915642354133148613

namespace A305608

/-- `A304933(n)/A007318(A000124(n))` -/
def P4915642354133148613.Spec : Prop :=
  ∀ n, P4915642354133148613.a n = (A305608 n : ℚ)

end A305608

/-!
# A305609: Expansion of 1/2 * (((1 + 8*x)/(1 - 8*x))^(1/8) - 1).

The programs for A305609, the canonical program `A305609.P7902511574484490471` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305609 has offset 0).

The definition of A305609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305609.P7902511574484490471

`floor(A303538(n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A305609

/-- `floor(A303538(n)/2)` -/
def P7902511574484490471.Spec : Prop :=
  ∀ n, P7902511574484490471.a n = A305609 n

theorem P7902511574484490471.correct : P7902511574484490471.Spec := by
  intro n
  simp only [A305609]

end A305609

/-! ## A305609.P17228300582419109126

`(A303538(n)-A000007(n))/2`
-/

namespace A305609.P17228300582419109126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303538 n - A000007 n : ℚ) / 2

end

end A305609.P17228300582419109126

namespace A305609

/-- `(A303538(n)-A000007(n))/2` -/
def P17228300582419109126.Spec : Prop :=
  ∀ n, P17228300582419109126.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P13610669673554847794

`n/A004277(n)*A303538(n)`
-/

namespace A305609.P13610669673554847794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A303538 n : ℚ)

end

end A305609.P13610669673554847794

namespace A305609

/-- `n/A004277(n)*A303538(n)` -/
def P13610669673554847794.Spec : Prop :=
  ∀ n, P13610669673554847794.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P13607651059478192957

`A303538(n)/A303537(n)*A305608(n)`
-/

namespace A305609.P13607651059478192957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303538 n : ℚ) / (A303537 n : ℚ) * (A305608 n : ℚ)

end

end A305609.P13607651059478192957

namespace A305609

/-- `A303538(n)/A303537(n)*A305608(n)` -/
def P13607651059478192957.Spec : Prop :=
  ∀ n, P13607651059478192957.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P16965094352016265721

`A303538(n)/A305031(n)*A305612(n)`
-/

namespace A305609.P16965094352016265721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303538 n : ℚ) / (A305031 n : ℚ) * (A305612 n : ℚ)

end

end A305609.P16965094352016265721

namespace A305609

/-- `A303538(n)/A305031(n)*A305612(n)` -/
def P16965094352016265721.Spec : Prop :=
  ∀ n, P16965094352016265721.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P14276356370868233058

`A304934(n)/A028310(n)`
-/

namespace A305609.P14276356370868233058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304934 n : ℚ) / (A028310 n : ℚ)

end

end A305609.P14276356370868233058

namespace A305609

/-- `A304934(n)/A028310(n)` -/
def P14276356370868233058.Spec : Prop :=
  ∀ n, P14276356370868233058.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P16076256621995417700

`A304934(n)/A065033(2*n)`
-/

namespace A305609.P16076256621995417700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304934 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A305609.P16076256621995417700

namespace A305609

/-- `A304934(n)/A065033(2*n)` -/
def P16076256621995417700.Spec : Prop :=
  ∀ n, P16076256621995417700.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P5121597419729030347

`A304934(n)/A026233(A008578(n+1))`
-/

namespace A305609.P5121597419729030347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304934 n : ℚ) / (A026233 (A008578 (n + 1)).toNat : ℚ)

end

end A305609.P5121597419729030347

namespace A305609

/-- `A304934(n)/A026233(A008578(n+1))` -/
def P5121597419729030347.Spec : Prop :=
  ∀ n, P5121597419729030347.a n = (A305609 n : ℚ)

end A305609

/-! ## A305609.P368404146385995622

`A304934(n)/(A005843(n)-A065033(A005843(n)))`
-/

namespace A305609.P368404146385995622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304934 n : ℚ) / (A005843 n - A065033 (A005843 n).toNat : ℚ)

end

end A305609.P368404146385995622

namespace A305609

/-- `A304934(n)/(A005843(n)-A065033(A005843(n)))` -/
def P368404146385995622.Spec : Prop :=
  ∀ n, P368404146385995622.a n = (A305609 n : ℚ)

end A305609

/-!
# A305611: Number of distinct positive subset-sums of the multiset of prime factors of n.

The programs for A305611, there is no canonical definition to state claims against.
-/

/-! ## A305611.P17276334838697682402

`A304793(A064988(n+1))`
-/

namespace A305611.P17276334838697682402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A064988 (n + 1)).toNat

end

end A305611.P17276334838697682402

/-! ## A305611.P5548740267775743378

`A299701(A064988(n+1))+A008683(A092216(n+1))`
-/

namespace A305611.P5548740267775743378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A064988 (n + 1)).toNat + A008683 (A092216 (n + 1)).toNat

end

end A305611.P5548740267775743378

/-! ## A305611.P8469955699573812178

`A299701(A064988(n+1))-A257679(A000040(n+1))`
-/

namespace A305611.P8469955699573812178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A064988 (n + 1)).toNat - A257679 (A000040 (n + 1)).toNat

end

end A305611.P8469955699573812178

/-! ## A305611.P13650174056995771937

`A299701(A064988(n+1))-A257679(A000265(n+1))`
-/

namespace A305611.P13650174056995771937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A064988 (n + 1)).toNat - A257679 (A000265 (n + 1)).toNat

end

end A305611.P13650174056995771937

/-! ## A305611.P12157883847413266164

`A299701(A064988(n+1))-A299038(A057467(n+1))`
-/

namespace A305611.P12157883847413266164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A064988 (n + 1)).toNat - A299038 (A057467 (n + 1)).toNat

end

end A305611.P12157883847413266164

/-! ## A305611.P10210438293330601109

`A299701(A064988(n+1))-A190555(A190557(n+1))`
-/

namespace A305611.P10210438293330601109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A064988 (n + 1)).toNat - A190555 (A190557 (n + 1)).toNat

end

end A305611.P10210438293330601109

/-! ## A305611.P15903493683394516453

`A301979(A064988(n+1))+A032741(n+1)`
-/

namespace A305611.P15903493683394516453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A064988 (n + 1)).toNat + A032741 (n + 1)

end

end A305611.P15903493683394516453

/-! ## A305611.P10973682439436210739

`A000005(n+1)+A301979(A064988(n+1))-1`
-/

namespace A305611.P10973682439436210739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A301979 (A064988 (n + 1)).toNat - 1)

end

end A305611.P10973682439436210739

/-! ## A305611.P1961511247724226889

`A301979(A064988(n+1))+A065770(A100577(n+1))`
-/

namespace A305611.P1961511247724226889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A064988 (n + 1)).toNat + A065770 (A100577 (n + 1)).toNat

end

end A305611.P1961511247724226889

/-!
# A305612: Expansion of 1/2 * (((1 + 2*x)/(1 - 2*x))^(3/2) - 1).

The programs for A305612, the canonical program `A305612.P1112257045889294607` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305612 has offset 0).

The definition of A305612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305612.P1112257045889294607

`A152548(n)-A210736(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305612

/-- `A152548(n)-A210736(n)` -/
def P1112257045889294607.Spec : Prop :=
  ∀ n, P1112257045889294607.a n = A305612 n

theorem P1112257045889294607.correct : P1112257045889294607.Spec := by
  intro n
  simp only [A305612]

end A305612

/-! ## A305612.P9160976798432772897

`A001405(n)*A338062(n+1)-A210736(n)`
-/

namespace A305612.P9160976798432772897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A338062 (n + 1) - A210736 n

end

end A305612.P9160976798432772897

namespace A305612

/-- `A001405(n)*A338062(n+1)-A210736(n)` -/
def P9160976798432772897.Spec : Prop :=
  ∀ n, P9160976798432772897.a n = A305612 n

end A305612

/-! ## A305612.P15908259172121864138

`floor(A305031(n)/2)`
-/

namespace A305612.P15908259172121864138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305031 n : ℚ) / 2⌋

end

end A305612.P15908259172121864138

namespace A305612

/-- `floor(A305031(n)/2)` -/
def P15908259172121864138.Spec : Prop :=
  ∀ n, P15908259172121864138.a n = A305612 n

end A305612

/-! ## A305612.P845105144309749241

`(A305031(n)-A000007(n))/2`
-/

namespace A305612.P845105144309749241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305031 n - A000007 n : ℚ) / 2

end

end A305612.P845105144309749241

namespace A305612

/-- `(A305031(n)-A000007(n))/2` -/
def P845105144309749241.Spec : Prop :=
  ∀ n, P845105144309749241.a n = (A305612 n : ℚ)

end A305612

/-! ## A305612.P5187240697010997322

`A057427(n)/2*A305031(n)`
-/

namespace A305612.P5187240697010997322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 2 * (A305031 n : ℚ)

end

end A305612.P5187240697010997322

namespace A305612

/-- `A057427(n)/2*A305031(n)` -/
def P5187240697010997322.Spec : Prop :=
  ∀ n, P5187240697010997322.a n = (A305612 n : ℚ)

end A305612

/-! ## A305612.P17363197931845953083

`n/A004277(n)*A305031(n)`
-/

namespace A305612.P17363197931845953083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A305031 n : ℚ)

end

end A305612.P17363197931845953083

namespace A305612

/-- `n/A004277(n)*A305031(n)` -/
def P17363197931845953083.Spec : Prop :=
  ∀ n, P17363197931845953083.a n = (A305612 n : ℚ)

end A305612

/-! ## A305612.P4454105757695072428

`A099326(n)-A102699(n)`
-/

namespace A305612.P4454105757695072428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A102699 n

end

end A305612.P4454105757695072428

namespace A305612

/-- `A099326(n)-A102699(n)` -/
def P4454105757695072428.Spec : Prop :=
  ∀ n, P4454105757695072428.a n = A305612 n

end A305612

/-! ## A305612.P776325548838210217

`A305031(n)%A241204(n)/2`
-/

namespace A305612.P776325548838210217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A305031 n) (A241204 n) : ℚ) / 2

end

end A305612.P776325548838210217

namespace A305612

/-- `A305031(n)%A241204(n)/2` -/
def P776325548838210217.Spec : Prop :=
  ∀ n, P776325548838210217.a n = (A305612 n : ℚ)

end A305612

/-!
# A305613: Numbers whose multiset of prime factors is not knapsack.

The programs for A305613, there is no canonical definition to state claims against.
-/

/-! ## A305613.P2339641559936558440

`lt[A305611(n+1), A032741(n+1)]+1`
-/

namespace A305613.P2339641559936558440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A305613.P2339641559936558440

/-! ## A305613.P8553589296290756618

`lt[A305611(A028310(n)), A032741(n)]`
-/

namespace A305613.P8553589296290756618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305613.P8553589296290756618

/-! ## A305613.P11107674031355924993

`lt[A301979(A064988(n+1)), 0]+1`
-/

namespace A305613.P11107674031355924993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A064988 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A305613.P11107674031355924993

/-!
# A305614: Expansion of Sum_{p prime} x^p/(1 + x^p).

The programs for A305614, the canonical program `A305614.P5987571174809160959` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305614 has offset 0).

The definition of A305614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305614.P5987571174809160959

`∑{p}[n, 2*(n/#)%2-1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A305614

/-- `∑{p}[n, 2*(n/#)%2-1]` -/
def P5987571174809160959.Spec : Prop :=
  ∀ n, P5987571174809160959.a n = A305614 n

theorem P5987571174809160959.correct : P5987571174809160959.Spec := by
  intro n
  simp only [A305614]

end A305614

/-! ## A305614.P4566982190812269604

`∑{p}[n, 3-2*gcd(2, n/#)]`
-/

namespace A305614.P4566982190812269604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (3 - (2 * Int.gcd 2 (SequenceMachineLib.roundAway ((n : ℚ) / (p : ℚ))) : ℤ))

end

end A305614.P4566982190812269604

namespace A305614

/-- `∑{p}[n, 3-2*gcd(2, n/#)]` -/
def P4566982190812269604.Spec : Prop :=
  ∀ n, P4566982190812269604.a n = A305614 n

end A305614

/-! ## A305614.P16863094754891728556

`∑{p}[n, A008683(gcd(#, A002620(n)))]`
-/

namespace A305614.P16863094754891728556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (Int.gcd (p : ℤ) (A002620 n))

end

end A305614.P16863094754891728556

namespace A305614

/-- `∑{p}[n, A008683(gcd(#, A002620(n)))]` -/
def P16863094754891728556.Spec : Prop :=
  ∀ n, P16863094754891728556.a n = A305614 n

end A305614

/-! ## A305614.P4981415635815722954

`∑{p}[n, A008836(A000032(n)%A000032(#)+1)]`
-/

namespace A305614.P4981415635815722954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008836 (Int.tmod (A000032 n) (A000032 p) + 1).toNat

end

end A305614.P4981415635815722954

namespace A305614

/-- `∑{p}[n, A008836(A000032(n)%A000032(#)+1)]` -/
def P4981415635815722954.Spec : Prop :=
  ∀ n, P4981415635815722954.a n = A305614 n

end A305614

/-! ## A305614.P18280275472575995791

`∑{p}[n, A127252(A003159(n/#+1))]`
-/

namespace A305614.P18280275472575995791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A127252 (A003159 (SequenceMachineLib.roundAway ((n : ℚ) / (p : ℚ) + 1)).toNat).toNat

end

end A305614.P18280275472575995791

namespace A305614

/-- `∑{p}[n, A127252(A003159(n/#+1))]` -/
def P18280275472575995791.Spec : Prop :=
  ∀ n, P18280275472575995791.a n = A305614 n

end A305614

/-!
# A305615: Next term is the largest earlier term that would not create a repetition of an earlier subsequence of length 2, if such a number exists; otherwise it is the smallest nonnegative number not yet in the sequence.

The programs for A305615, the canonical program `A305615.P4289076314322298115` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305615 has offset 0).

The definition of A305615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305615.P4289076314322298115

`A269501(n)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305615

/-- `A269501(n)-1` -/
def P4289076314322298115.Spec : Prop :=
  ∀ n, P4289076314322298115.a n = A305615 n

theorem P4289076314322298115.correct : P4289076314322298115.Spec := by
  intro n
  simp only [A305615]

end A305615

/-! ## A305615.P7253126622950215835

`floor(log2(A078446(n+1)))`
-/

namespace A305615.P7253126622950215835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A078446 (n + 1)).toNat

end

end A305615.P7253126622950215835

namespace A305615

/-- `floor(log2(A078446(n+1)))` -/
def P7253126622950215835.Spec : Prop :=
  ∀ n, (P7253126622950215835.a n : ℤ) = A305615 n

end A305615

/-! ## A305615.P5913984072398946296

`A000523(A078446(n+1))`
-/

namespace A305615.P5913984072398946296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A078446 (n + 1)).toNat

end

end A305615.P5913984072398946296

namespace A305615

/-- `A000523(A078446(n+1))` -/
def P5913984072398946296.Spec : Prop :=
  ∀ n, P5913984072398946296.a n = A305615 n

end A305615

/-! ## A305615.P8846200656994707859

`A226005(A020703(n+1))`
-/

namespace A305615.P8846200656994707859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A020703 (n + 1)).toNat

end

end A305615.P8846200656994707859

namespace A305615

/-- `A226005(A020703(n+1))` -/
def P8846200656994707859.Spec : Prop :=
  ∀ n, P8846200656994707859.a n = A305615 n

end A305615

/-! ## A305615.P13469560834648494049

`A070198(n)%A269501(n)`
-/

namespace A305615.P13469560834648494049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A269501 n)

end

end A305615.P13469560834648494049

namespace A305615

/-- `A070198(n)%A269501(n)` -/
def P13469560834648494049.Spec : Prop :=
  ∀ n, P13469560834648494049.a n = A305615 n

end A305615

/-! ## A305615.P4997550466287362344

`A198277(n)%A269501(n)`
-/

namespace A305615.P4997550466287362344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A269501 n)

end

end A305615.P4997550466287362344

namespace A305615

/-- `A198277(n)%A269501(n)` -/
def P4997550466287362344.Spec : Prop :=
  ∀ n, P4997550466287362344.a n = A305615 n

end A305615

/-! ## A305615.P17518856152104866256

`A200748(n)%A269501(n)`
-/

namespace A305615.P17518856152104866256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A269501 n)

end

end A305615.P17518856152104866256

namespace A305615

/-- `A200748(n)%A269501(n)` -/
def P17518856152104866256.Spec : Prop :=
  ∀ n, P17518856152104866256.a n = A305615 n

end A305615

/-! ## A305615.P8180544265434250069

`A227185(A078446(n+1)-1)`
-/

namespace A305615.P8180544265434250069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A078446 (n + 1) - 1).toNat

end

end A305615.P8180544265434250069

namespace A305615

/-- `A227185(A078446(n+1)-1)` -/
def P8180544265434250069.Spec : Prop :=
  ∀ n, P8180544265434250069.a n = A305615 n

end A305615

/-! ## A305615.P276010915493968341

`A030494(n+1)%A269501(n)`
-/

namespace A305615.P276010915493968341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A269501 n)

end

end A305615.P276010915493968341

namespace A305615

/-- `A030494(n+1)%A269501(n)` -/
def P276010915493968341.Spec : Prop :=
  ∀ n, P276010915493968341.a n = A305615 n

end A305615

/-! ## A305615.P9928479109546920396

`A058197(n+1)%A269501(n)`
-/

namespace A305615.P9928479109546920396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A269501 n)

end

end A305615.P9928479109546920396

namespace A305615

/-- `A058197(n+1)%A269501(n)` -/
def P9928479109546920396.Spec : Prop :=
  ∀ n, P9928479109546920396.a n = A305615 n

end A305615

/-! ## A305615.P2909059616577126158

`A072828(n+1)%A269501(n)`
-/

namespace A305615.P2909059616577126158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A269501 n)

end

end A305615.P2909059616577126158

namespace A305615

/-- `A072828(n+1)%A269501(n)` -/
def P2909059616577126158.Spec : Prop :=
  ∀ n, P2909059616577126158.a n = A305615 n

end A305615

/-! ## A305615.P7239025304554254175

`A079782(n+1)%A269501(n)`
-/

namespace A305615.P7239025304554254175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A269501 n)

end

end A305615.P7239025304554254175

namespace A305615

/-- `A079782(n+1)%A269501(n)` -/
def P7239025304554254175.Spec : Prop :=
  ∀ n, P7239025304554254175.a n = A305615 n

end A305615

/-! ## A305615.P6256537367490648290

`A083685(n+1)%A269501(n)`
-/

namespace A305615.P6256537367490648290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A269501 n)

end

end A305615.P6256537367490648290

namespace A305615

/-- `A083685(n+1)%A269501(n)` -/
def P6256537367490648290.Spec : Prop :=
  ∀ n, P6256537367490648290.a n = A305615 n

end A305615

/-! ## A305615.P7583656517929645491

`A083800(n+1)%A269501(n)`
-/

namespace A305615.P7583656517929645491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A269501 n)

end

end A305615.P7583656517929645491

namespace A305615

/-- `A083800(n+1)%A269501(n)` -/
def P7583656517929645491.Spec : Prop :=
  ∀ n, P7583656517929645491.a n = A305615 n

end A305615

/-! ## A305615.P3060307672030750796

`A121934(n+1)%A269501(n)`
-/

namespace A305615.P3060307672030750796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A269501 n)

end

end A305615.P3060307672030750796

namespace A305615

/-- `A121934(n+1)%A269501(n)` -/
def P3060307672030750796.Spec : Prop :=
  ∀ n, P3060307672030750796.a n = A305615 n

end A305615

/-! ## A305615.P12447133389153856925

`A166931(n+1)%A269501(n)`
-/

namespace A305615.P12447133389153856925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A269501 n)

end

end A305615.P12447133389153856925

namespace A305615

/-- `A166931(n+1)%A269501(n)` -/
def P12447133389153856925.Spec : Prop :=
  ∀ n, P12447133389153856925.a n = A305615 n

end A305615

/-! ## A305615.P16869481200548267623

`A127228(n+4)%A269501(n)`
-/

namespace A305615.P16869481200548267623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A269501 n)

end

end A305615.P16869481200548267623

namespace A305615

/-- `A127228(n+4)%A269501(n)` -/
def P16869481200548267623.Spec : Prop :=
  ∀ n, P16869481200548267623.a n = A305615 n

end A305615

/-! ## A305615.P13554055061820416400

`A127229(n+5)%A269501(n)`
-/

namespace A305615.P13554055061820416400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A269501 n)

end

end A305615.P13554055061820416400

namespace A305615

/-- `A127229(n+5)%A269501(n)` -/
def P13554055061820416400.Spec : Prop :=
  ∀ n, P13554055061820416400.a n = A305615 n

end A305615

/-! ## A305615.P10266896288912922384

`A029837(A078446(n+1)+1)-1`
-/

namespace A305615.P10266896288912922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A078446 (n + 1) + 1).toNat - 1

end

end A305615.P10266896288912922384

namespace A305615

/-- `A029837(A078446(n+1)+1)-1` -/
def P10266896288912922384.Spec : Prop :=
  ∀ n, P10266896288912922384.a n = A305615 n

end A305615

/-! ## A305615.P6714832696838445979

`(A269501(n)+n)%A000027(n+1)`
-/

namespace A305615.P6714832696838445979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269501 n + (n : ℤ)) (A000027 (n + 1))

end

end A305615.P6714832696838445979

namespace A305615

/-- `(A269501(n)+n)%A000027(n+1)` -/
def P6714832696838445979.Spec : Prop :=
  ∀ n, P6714832696838445979.a n = A305615 n

end A305615

/-!
# A305616: Near 2-hyperperfect numbers: numbers k such that sigma(k) - 3*k/2 - 1/2 is a proper divisor of k.

The programs for A305616, there is no canonical definition to state claims against.
-/

/-! ## A305616.P11266122108605235725

`A320634(A110965(n+1))`
-/

namespace A305616.P11266122108605235725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (A110965 (n + 1)).toNat

end

end A305616.P11266122108605235725

/-!
# A305620: Expansion of e.g.f. log(1 + Sum_{k>=1} x^(k^2)/k^2).

The programs for A305620, there is no canonical definition to state claims against.
-/

/-! ## A305620.P5214376166102505495

`A145903(A322673(n+1))*A217260(n+1)`
-/

namespace A305620.P5214376166102505495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145903 (A322673 (n + 1)).toNat * A217260 (n + 1)

end

end A305620.P5214376166102505495

/-!
# A305621: Triangle read by rows: T(n,k) is the number of rows of n colors with exactly k different colors counting chiral pairs as equivalent, i.e., the rows are reversible.

The programs for A305621, there is no canonical definition to state claims against.
-/

/-! ## A305621.P17587435879165521074

`A019538(n+1)-A305622(n+1)`
-/

namespace A305621.P17587435879165521074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (n + 1) - A305622 (n + 1)

end

end A305621.P17587435879165521074

/-! ## A305621.P13195622632756888297

`A131689(∑[A035214(n)])-A305622(n+1)`
-/

namespace A305621.P13195622632756888297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A305622 (n + 1)

end

end A305621.P13195622632756888297

/-! ## A305621.P5125466797089325929

`A090582(A038722(n+1))-A305622(n+1)`
-/

namespace A305621.P5125466797089325929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (A038722 (n + 1)).toNat - A305622 (n + 1)

end

end A305621.P5125466797089325929

/-! ## A305621.P13206792023317022188

`A131689(A014132(n+1))-A305622(n+1)`
-/

namespace A305621.P13206792023317022188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A014132 (n + 1)).toNat - A305622 (n + 1)

end

end A305621.P13206792023317022188

/-! ## A305621.P16587516921229586565

`A002260(n+1)*A028246(n+1)-A305622(n+1)`
-/

namespace A305621.P16587516921229586565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A028246 (n + 1) - A305622 (n + 1)

end

end A305621.P16587516921229586565

/-! ## A305621.P3360163138631194840

`A008277(n+1)*A166350(n+1)-A305622(n+1)`
-/

namespace A305621.P3360163138631194840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A166350 (n + 1) - A305622 (n + 1)

end

end A305621.P3360163138631194840

/-!
# A305622: Triangle read by rows: T(n,k) is the number of chiral pairs of rows of n colors with exactly k different colors.

The programs for A305622, there is no canonical definition to state claims against.
-/

/-! ## A305622.P16030466893283473020

`A019538(n+1)-A305621(n+1)`
-/

namespace A305622.P16030466893283473020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (n + 1) - A305621 (n + 1)

end

end A305622.P16030466893283473020

/-! ## A305622.P237079089172497630

`A131689(∑[A035214(n)])-A305621(n+1)`
-/

namespace A305622.P237079089172497630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A305621 (n + 1)

end

end A305622.P237079089172497630

/-! ## A305622.P15775676682221530439

`A090582(A038722(n+1))-A305621(n+1)`
-/

namespace A305622.P15775676682221530439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (A038722 (n + 1)).toNat - A305621 (n + 1)

end

end A305622.P15775676682221530439

/-! ## A305622.P1524005420692034875

`A131689(A014132(n+1))-A305621(n+1)`
-/

namespace A305622.P1524005420692034875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A014132 (n + 1)).toNat - A305621 (n + 1)

end

end A305622.P1524005420692034875

/-! ## A305622.P15190089496818403431

`abs(A002260(n+1)*A163626(n))-A305621(n+1)`
-/

namespace A305622.P15190089496818403431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A163626 n| - A305621 (n + 1)

end

end A305622.P15190089496818403431

/-! ## A305622.P15948904285673197281

`A002260(n+1)*A028246(n+1)-A305621(n+1)`
-/

namespace A305622.P15948904285673197281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A028246 (n + 1) - A305621 (n + 1)

end

end A305622.P15948904285673197281

/-! ## A305622.P18270458924231803550

`A008277(n+1)*A166350(n+1)-A305621(n+1)`
-/

namespace A305622.P18270458924231803550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A166350 (n + 1) - A305621 (n + 1)

end

end A305622.P18270458924231803550

/-!
# A305623: Number of chiral pairs of rows of n colors with exactly 3 different colors.

The programs for A305623, the canonical program `A305623.P15212273996991512636` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305623 has offset 1).

The definition of A305623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056454, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305623.P15212273996991512636

`A056310(n+1)-A056454(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305623

/-- `A056310(n+1)-A056454(n+1)` -/
def P15212273996991512636.Spec : Prop :=
  ∀ n, P15212273996991512636.a n = A305623 (n + 1)

theorem P15212273996991512636.correct : P15212273996991512636.Spec := by
  intro n
  simp only [A305623, Nat.add_sub_cancel]

end A305623

/-! ## A305623.P14590177880290231986

`A001117(n+1)-A056310(n+1)`
-/

namespace A305623.P14590177880290231986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1) - A056310 (n + 1)

end

end A305623.P14590177880290231986

namespace A305623

/-- `A001117(n+1)-A056310(n+1)` -/
def P14590177880290231986.Spec : Prop :=
  ∀ n, P14590177880290231986.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P10735572801828934259

`(A001117(n+1)-A056454(n+1))/2`
-/

namespace A305623.P10735572801828934259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001117 (n + 1) - A056454 (n + 1) : ℚ) / 2

end

end A305623.P10735572801828934259

namespace A305623

/-- `(A001117(n+1)-A056454(n+1))/2` -/
def P10735572801828934259.Spec : Prop :=
  ∀ n, P10735572801828934259.a n = (A305623 (n + 1) : ℚ)

end A305623

/-! ## A305623.P281934970195523701

`A094033(n+1)-A094033(A008619(n))`
-/

namespace A305623.P281934970195523701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) - A094033 (A008619 n).toNat

end

end A305623.P281934970195523701

namespace A305623

/-- `A094033(n+1)-A094033(A008619(n))` -/
def P281934970195523701.Spec : Prop :=
  ∀ n, P281934970195523701.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P7666761245784872013

`A094033(n+1)-A094033(A065033(n+1))`
-/

namespace A305623.P7666761245784872013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) - A094033 (A065033 (n + 1)).toNat

end

end A305623.P7666761245784872013

namespace A305623

/-- `A094033(n+1)-A094033(A065033(n+1))` -/
def P7666761245784872013.Spec : Prop :=
  ∀ n, P7666761245784872013.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P8900529101084796334

`A094033(n+1)-A094033(A110654(n+1))`
-/

namespace A305623.P8900529101084796334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) - A094033 (A110654 (n + 1)).toNat

end

end A305623.P8900529101084796334

namespace A305623

/-- `A094033(n+1)-A094033(A110654(n+1))` -/
def P8900529101084796334.Spec : Prop :=
  ∀ n, P8900529101084796334.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P6871919147445215653

`A094033(n+1)-A094033(A008621(2*n))`
-/

namespace A305623.P6871919147445215653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 1) - A094033 (A008621 (2 * n)).toNat

end

end A305623.P6871919147445215653

namespace A305623

/-- `A094033(n+1)-A094033(A008621(2*n))` -/
def P6871919147445215653.Spec : Prop :=
  ∀ n, P6871919147445215653.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P12420375892823443547

`A056489(2*n+1)-A056310(n+1)`
-/

namespace A305623.P12420375892823443547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (2 * n + 1) - A056310 (n + 1)

end

end A305623.P12420375892823443547

namespace A305623

/-- `A056489(2*n+1)-A056310(n+1)` -/
def P12420375892823443547.Spec : Prop :=
  ∀ n, P12420375892823443547.a n = A305623 (n + 1)

end A305623

/-! ## A305623.P1595452783466893889

`(A056454(A005408(n))-A056454(n+1))/2`
-/

namespace A305623.P1595452783466893889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (A005408 n).toNat - A056454 (n + 1) : ℚ) / 2

end

end A305623.P1595452783466893889

namespace A305623

/-- `(A056454(A005408(n))-A056454(n+1))/2` -/
def P1595452783466893889.Spec : Prop :=
  ∀ n, P1595452783466893889.a n = (A305623 (n + 1) : ℚ)

end A305623

/-! ## A305623.P3381458772392838964

`A305622(A133263(n)+1)`
-/

namespace A305623.P3381458772392838964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305622 (A133263 n + 1).toNat

end

end A305623.P3381458772392838964

namespace A305623

/-- `A305622(A133263(n)+1)` -/
def P3381458772392838964.Spec : Prop :=
  ∀ n, P3381458772392838964.a n = A305623 (n + 1)

end A305623

/-!
# A305624: Number of chiral pairs of rows of n colors with exactly 4 different colors.

The programs for A305624, the canonical program `A305624.P13235165757477837643` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305624 has offset 1).

The definition of A305624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000919, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305624.P13235165757477837643

`A000919(n+1)-A056311(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305624

/-- `A000919(n+1)-A056311(n+1)` -/
def P13235165757477837643.Spec : Prop :=
  ∀ n, P13235165757477837643.a n = A305624 (n + 1)

theorem P13235165757477837643.correct : P13235165757477837643.Spec := by
  intro n
  simp only [A305624, Nat.add_sub_cancel]

end A305624

/-! ## A305624.P117020930562049718

`A056311(n+1)-A056455(n+1)`
-/

namespace A305624.P117020930562049718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056311 (n + 1) - A056455 (n + 1)

end

end A305624.P117020930562049718

namespace A305624

/-- `A056311(n+1)-A056455(n+1)` -/
def P117020930562049718.Spec : Prop :=
  ∀ n, P117020930562049718.a n = A305624 (n + 1)

end A305624

/-! ## A305624.P11410502027608952934

`(A000919(n+1)-A056455(n+1))/2`
-/

namespace A305624.P11410502027608952934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000919 (n + 1) - A056455 (n + 1) : ℚ) / 2

end

end A305624.P11410502027608952934

namespace A305624

/-- `(A000919(n+1)-A056455(n+1))/2` -/
def P11410502027608952934.Spec : Prop :=
  ∀ n, P11410502027608952934.a n = (A305624 (n + 1) : ℚ)

end A305624

/-! ## A305624.P16171915356818837624

`A056490(2*n+1)-A056311(n+1)`
-/

namespace A305624.P16171915356818837624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (2 * n + 1) - A056311 (n + 1)

end

end A305624.P16171915356818837624

namespace A305624

/-- `A056490(2*n+1)-A056311(n+1)` -/
def P16171915356818837624.Spec : Prop :=
  ∀ n, P16171915356818837624.a n = A305624 (n + 1)

end A305624

/-! ## A305624.P9039294342156345163

`A000919(n+1)-∑{d}[n+1, A056320(#)]`
-/

namespace A305624.P9039294342156345163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056320 d

end

end A305624.P9039294342156345163

namespace A305624

/-- `A000919(n+1)-∑{d}[n+1, A056320(#)]` -/
def P9039294342156345163.Spec : Prop :=
  ∀ n, P9039294342156345163.a n = A305624 (n + 1)

end A305624

/-! ## A305624.P12465472066169265150

`2*(A028244(n+1)-A028244(A008619(n)))`
-/

namespace A305624.P12465472066169265150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028244 (n + 1) - A028244 (A008619 n).toNat)

end

end A305624.P12465472066169265150

namespace A305624

/-- `2*(A028244(n+1)-A028244(A008619(n)))` -/
def P12465472066169265150.Spec : Prop :=
  ∀ n, P12465472066169265150.a n = A305624 (n + 1)

end A305624

/-! ## A305624.P13840493183973310428

`(A000919(n+1)-A000919(A008619(n)))/2`
-/

namespace A305624.P13840493183973310428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000919 (n + 1) - A000919 (A008619 n).toNat : ℚ) / 2

end

end A305624.P13840493183973310428

namespace A305624

/-- `(A000919(n+1)-A000919(A008619(n)))/2` -/
def P13840493183973310428.Spec : Prop :=
  ∀ n, P13840493183973310428.a n = (A305624 (n + 1) : ℚ)

end A305624

/-! ## A305624.P2537714944557941085

`(A000919(n+1)-A000919(A263997(n+1)))/2`
-/

namespace A305624.P2537714944557941085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000919 (n + 1) - A000919 (A263997 (n + 1)).toNat : ℚ) / 2

end

end A305624.P2537714944557941085

namespace A305624

/-- `(A000919(n+1)-A000919(A263997(n+1)))/2` -/
def P2537714944557941085.Spec : Prop :=
  ∀ n, P2537714944557941085.a n = (A305624 (n + 1) : ℚ)

end A305624

/-!
# A305625: Number of chiral pairs of rows of n colors with exactly 5 different colors.

The programs for A305625, there is no canonical definition to state claims against.
-/

/-! ## A305625.P16458562481824105803

`A001118(n+1)-A056312(n+1)`
-/

namespace A305625.P16458562481824105803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001118 (n + 1) - A056312 (n + 1)

end

end A305625.P16458562481824105803

/-! ## A305625.P13159500598070839835

`A056312(n+1)-A056456(n+1)`
-/

namespace A305625.P13159500598070839835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056312 (n + 1) - A056456 (n + 1)

end

end A305625.P13159500598070839835

/-! ## A305625.P2067556202782959815

`(A001118(n+1)-A056456(n+1))/2`
-/

namespace A305625.P2067556202782959815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001118 (n + 1) - A056456 (n + 1) : ℚ) / 2

end

end A305625.P2067556202782959815

/-! ## A305625.P917053032910870605

`A056491(2*n+1)-A056312(n+1)`
-/

namespace A305625.P917053032910870605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (2 * n + 1) - A056312 (n + 1)

end

end A305625.P917053032910870605

/-! ## A305625.P18238403522523823058

`A056312(n+1)-A001118(A008619(n))`
-/

namespace A305625.P18238403522523823058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056312 (n + 1) - A001118 (A008619 n).toNat

end

end A305625.P18238403522523823058

/-! ## A305625.P1392355932964176610

`A305622(A077169(n+1))`
-/

namespace A305625.P1392355932964176610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305622 (A077169 (n + 1)).toNat

end

end A305625.P1392355932964176610

/-!
# A305626: Number of chiral pairs of rows of n colors with exactly 6 different colors.

The programs for A305626, there is no canonical definition to state claims against.
-/

/-! ## A305626.P8158078458905570387

`A000920(n+1)-A056313(n+1)`
-/

namespace A305626.P8158078458905570387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000920 (n + 1) - A056313 (n + 1)

end

end A305626.P8158078458905570387

/-! ## A305626.P1318492117899760151

`A056313(n+1)-A056457(n+1)`
-/

namespace A305626.P1318492117899760151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1) - A056457 (n + 1)

end

end A305626.P1318492117899760151

/-! ## A305626.P8300162287224923883

`(A000920(n+1)-A056457(n+1))/2`
-/

namespace A305626.P8300162287224923883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000920 (n + 1) - A056457 (n + 1) : ℚ) / 2

end

end A305626.P8300162287224923883

/-! ## A305626.P11376939494327256787

`A056492(2*n+1)-A056313(n+1)`
-/

namespace A305626.P11376939494327256787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (2 * n + 1) - A056313 (n + 1)

end

end A305626.P11376939494327256787

/-! ## A305626.P399918174487200583

`A056313(n+1)-A000920(A008619(n))`
-/

namespace A305626.P399918174487200583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1) - A000920 (A008619 n).toNat

end

end A305626.P399918174487200583

/-! ## A305626.P12803896715970817423

`(A000920(n+1)-A000920(A008619(n)))/2`
-/

namespace A305626.P12803896715970817423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000920 (n + 1) - A000920 (A008619 n).toNat : ℚ) / 2

end

end A305626.P12803896715970817423

/-! ## A305626.P7791486397576676345

`A305622(A077169(n)+1+n)`
-/

namespace A305626.P7791486397576676345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305622 (A077169 n + 1 + (n : ℤ)).toNat

end

end A305626.P7791486397576676345

/-!
# A305627: a(n) = (2^n / n!) * (2^1 - 1) * (2^2 - 1) * ... * (2^n - 1).

The programs for A305627, there is no canonical definition to state claims against.
-/

/-! ## A305627.P8276348534338308974

`(2^(n+1)-2)*a(n-1)/n` with `a(0)=1`
-/

namespace A305627.P8276348534338308974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ (n + 1) : ℤ) - 2 : ℚ) * (a (n - 1) / (n : ℚ))

end

end A305627.P8276348534338308974

/-! ## A305627.P9557190534521613032

`(n+1)*A091669(n+1)`
-/

namespace A305627.P9557190534521613032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091669 (n + 1)

end

end A305627.P9557190534521613032

/-! ## A305627.P14625809596673918581

`A095121(n)/n*a(n-1)` with `a(0)=1`
-/

namespace A305627.P14625809596673918581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A095121 n : ℚ) / (n : ℚ) * a (n - 1)

end

end A305627.P14625809596673918581

/-! ## A305627.P13752440353125962861

`(A126646(n)-1)*a(n-1)/n` with `a(0)=1`
-/

namespace A305627.P13752440353125962861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A126646 n - 1 : ℚ) * a (n - 1) / (n : ℚ)

end

end A305627.P13752440353125962861

/-! ## A305627.P14691126418438189995

`(A151821(n+1)-2)/n*a(n-1)` with `a(0)=1`
-/

namespace A305627.P14691126418438189995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A151821 (n + 1) - 2 : ℚ) / (n : ℚ) * a (n - 1)

end

end A305627.P14691126418438189995

/-!
# A305630: Expansion of Product_{r = 1 or not a perfect power} 1/(1 - x^r).

The programs for A305630, there is no canonical definition to state claims against.
-/

/-! ## A305630.P18270860318251082146

`∑[A305631(n)]`
-/

namespace A305630.P18270860318251082146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305630.P18270860318251082146

/-! ## A305630.P1436212715153386883

`A305631(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A305630.P1436212715153386883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305631 (A028310 n).toNat + a (n - 1)

end

end A305630.P1436212715153386883

/-! ## A305630.P16360126914539284846

`A305631(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A305630.P16360126914539284846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305631 n + a (A000027 (n + 1) - 2).toNat

end

end A305630.P16360126914539284846

/-! ## A305630.P4404194277088426529

`a(n-1)+A305631(n)+A000007(n)` with `a(0)=1`
-/

namespace A305630.P4404194277088426529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A305631 n + A000007 n)

end

end A305630.P4404194277088426529

/-! ## A305630.P11537049935922908312

`a(n-1)+A305631(n)/A007318(C(2, 2*n))` with `a(0)=1`
-/

namespace A305630.P11537049935922908312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A305631 n : ℚ) / (A007318 (Nat.choose 2 (2 * n)) : ℚ)

end

end A305630.P11537049935922908312

/-!
# A305631: Expansion of Product_{r not a perfect power} 1/(1 - x^r).

The programs for A305631, there is no canonical definition to state claims against.
-/

/-! ## A305631.P5668181936965271024

`A280127(n)-A178798(A007279(n))`
-/

namespace A305631.P5668181936965271024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280127 n - A178798 (A007279 n).toNat

end

end A305631.P5668181936965271024

/-! ## A305631.P17697747897231246214

`A340998(A318727(n+1))+A280127(n)`
-/

namespace A305631.P17697747897231246214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A318727 (n + 1)).toNat + 140) + A280127 n

end

end A305631.P17697747897231246214

/-! ## A305631.P17102754615849019326

`A048766(A024495(n))+A008651(n)`
-/

namespace A305631.P17102754615849019326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A024495 n).toNat + A008651 n

end

end A305631.P17102754615849019326

/-! ## A305631.P4610284057206249606

`A325488(n)+A048766(A024495(n))`
-/

namespace A305631.P4610284057206249606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325488 n + A048766 (A024495 n).toNat

end

end A305631.P4610284057206249606

/-! ## A305631.P1817314879133511216

`A238394(n)-A033665(A243920(n))`
-/

namespace A305631.P1817314879133511216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n - A033665 (A243920 n).toNat

end

end A305631.P1817314879133511216

/-!
# A305633: Expansion of Sum_{r not a perfect power} x^r/(1 + x^r).

The programs for A305633, there is no canonical definition to state claims against.
-/

/-! ## A305633.P15538788868944077745

`or(A000035(A000073(n)), A305614(n))`
-/

namespace A305633.P15538788868944077745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A000073 n).toNat) (A305614 n)

end

end A305633.P15538788868944077745

/-! ## A305633.P4378989657886847121

`or(A000035(A037957(n)), A305614(n))`
-/

namespace A305633.P4378989657886847121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A037957 n).toNat) (A305614 n)

end

end A305633.P4378989657886847121

/-! ## A305633.P4567141569025192523

`or(A287772(A020695(n)), A305614(n))`
-/

namespace A305633.P4567141569025192523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287772 (A020695 n).toNat) (A305614 n)

end

end A305633.P4567141569025192523

/-! ## A305633.P13590904346295739533

`or(A143535(A226325(n+1)), A305614(n))`
-/

namespace A305633.P13590904346295739533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143535 (A226325 (n + 1)).toNat) (A305614 n)

end

end A305633.P13590904346295739533

/-! ## A305633.P16796231135040242758

`or(A057427(A182107(n+2)), A305614(n))`
-/

namespace A305633.P16796231135040242758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A182107 (n + 2)).toNat) (A305614 n)

end

end A305633.P16796231135040242758

/-!
# A305634: Even numbers that are not perfect powers.

The programs for A305634, the canonical program `A305634.P733097358982910151` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305634 has offset 1).

The definition of A305634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305634.P733097358982910151

`record[A052410(2*(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A305634

/-- `record[A052410(2*(n+1))]` -/
def P733097358982910151.Spec : Prop :=
  ∀ n, P733097358982910151.a n = A305634 (n + 1)

theorem P733097358982910151.correct : P733097358982910151.Spec := by
  intro n
  simp only [A305634, Nat.add_sub_cancel]

end A305634

/-! ## A305634.P16358211792310590530

`A088905(n+2)-1`
-/

namespace A305634.P16358211792310590530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 2) - 1

end

end A305634.P16358211792310590530

namespace A305634

/-- `A088905(n+2)-1` -/
def P16358211792310590530.Spec : Prop :=
  ∀ n, P16358211792310590530.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P3202053915023176142

`eq[n%2, A089723(n+1)]+1`
-/

namespace A305634.P3202053915023176142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305634.P3202053915023176142

namespace A305634

/-- `eq[n%2, A089723(n+1)]+1` -/
def P3202053915023176142.Spec : Prop :=
  ∀ n, (P3202053915023176142.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P14161604879820570776

`record[2*(n+1)/A327502(2*(n+1))]`
-/

namespace A305634.P14161604879820570776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A327502 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P14161604879820570776

namespace A305634

/-- `record[2*(n+1)/A327502(2*(n+1))]` -/
def P14161604879820570776.Spec : Prop :=
  ∀ n, P14161604879820570776.a n = (A305634 (n + 1) : ℚ)

end A305634

/-! ## A305634.P5588545452702352843

`record[2*(n+2)/A175069(2*(n+2))]`
-/

namespace A305634.P5588545452702352843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℚ) / (A175069 (2 * (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P5588545452702352843

namespace A305634

/-- `record[2*(n+2)/A175069(2*(n+2))]` -/
def P5588545452702352843.Spec : Prop :=
  ∀ n, P5588545452702352843.a n = (A305634 (n + 1) : ℚ)

end A305634

/-! ## A305634.P5523371545310418743

`∩[2*n, A007916(n+1)]`
-/

namespace A305634.P5523371545310418743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P5523371545310418743

namespace A305634

/-- `∩[2*n, A007916(n+1)]` -/
def P5523371545310418743.Spec : Prop :=
  ∀ n, (P5523371545310418743.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P8609688763053475649

`∩[2*n, A175082(n+1)]`
-/

namespace A305634.P8609688763053475649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P8609688763053475649

namespace A305634

/-- `∩[2*n, A175082(n+1)]` -/
def P8609688763053475649.Spec : Prop :=
  ∀ n, (P8609688763053475649.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P13249079215608079177

`filter[A007916(n+1), A354034(#)]`
-/

namespace A305634.P13249079215608079177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A305634.P13249079215608079177

namespace A305634

/-- `filter[A007916(n+1), A354034(#)]` -/
def P13249079215608079177.Spec : Prop :=
  ∀ n, P13249079215608079177.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P400460751350423979

`filter[A175082(n+2), A354034(#)]`
-/

namespace A305634.P400460751350423979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A305634.P400460751350423979

namespace A305634

/-- `filter[A175082(n+2), A354034(#)]` -/
def P400460751350423979.Spec : Prop :=
  ∀ n, P400460751350423979.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P15391224976014228371

`∩[A007916(n+1), A004275(n)]`
-/

namespace A305634.P15391224976014228371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P15391224976014228371

namespace A305634

/-- `∩[A007916(n+1), A004275(n)]` -/
def P15391224976014228371.Spec : Prop :=
  ∀ n, (P15391224976014228371.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P14873899525405890045

`∩[A007916(n+1), A004277(n)]`
-/

namespace A305634.P14873899525405890045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P14873899525405890045

namespace A305634

/-- `∩[A007916(n+1), A004277(n)]` -/
def P14873899525405890045.Spec : Prop :=
  ∀ n, (P14873899525405890045.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P17177043012986767053

`∩[A007916(n+1), A005843(n)]`
-/

namespace A305634.P17177043012986767053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P17177043012986767053

namespace A305634

/-- `∩[A007916(n+1), A005843(n)]` -/
def P17177043012986767053.Spec : Prop :=
  ∀ n, (P17177043012986767053.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P1681681002675713077

`∩[A175082(n+1), A005843(n)]`
-/

namespace A305634.P1681681002675713077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P1681681002675713077

namespace A305634

/-- `∩[A175082(n+1), A005843(n)]` -/
def P1681681002675713077.Spec : Prop :=
  ∀ n, (P1681681002675713077.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P16370915426132639800

`∩[A007916(n+1), A157502(n+1)]`
-/

namespace A305634.P16370915426132639800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P16370915426132639800

namespace A305634

/-- `∩[A007916(n+1), A157502(n+1)]` -/
def P16370915426132639800.Spec : Prop :=
  ∀ n, (P16370915426132639800.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P7150891789578988428

`∩[A007916(n+1), A176693(n+1)]`
-/

namespace A305634.P7150891789578988428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305634.P7150891789578988428

namespace A305634

/-- `∩[A007916(n+1), A176693(n+1)]` -/
def P7150891789578988428.Spec : Prop :=
  ∀ n, (P7150891789578988428.a n : ℤ) = A305634 (n + 1)

end A305634

/-! ## A305634.P16233852037417971777

`record[A175781(2*(n+1))]`
-/

namespace A305634.P16233852037417971777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P16233852037417971777

namespace A305634

/-- `record[A175781(2*(n+1))]` -/
def P16233852037417971777.Spec : Prop :=
  ∀ n, P16233852037417971777.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P13523119960108066261

`record[A304491(2*(n+1))]`
-/

namespace A305634.P13523119960108066261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P13523119960108066261

namespace A305634

/-- `record[A304491(2*(n+1))]` -/
def P13523119960108066261.Spec : Prop :=
  ∀ n, P13523119960108066261.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P16172989478018734883

`record[A327501(2*(n+1))]`
-/

namespace A305634.P16172989478018734883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327501 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P16172989478018734883

namespace A305634

/-- `record[A327501(2*(n+1))]` -/
def P16172989478018734883.Spec : Prop :=
  ∀ n, P16172989478018734883.a n = A305634 (n + 1)

end A305634

/-! ## A305634.P7131840693098089879

`record[sqrt(A073843(2*(n+1)))]`
-/

namespace A305634.P7131840693098089879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073843 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305634.P7131840693098089879

namespace A305634

/-- `record[sqrt(A073843(2*(n+1)))]` -/
def P7131840693098089879.Spec : Prop :=
  ∀ n, P7131840693098089879.a n = (A305634 (n + 1) : ℝ)

end A305634

/-!
# A305635: 1 and odd numbers that are not perfect powers.

The programs for A305635, the canonical program `A305635.P18163822070093918249` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305635 has offset 1).

The definition of A305635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305635.P4585620242228565465

`record[A052410(or(1, n))]`
-/

namespace A305635.P4585620242228565465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P4585620242228565465

namespace A305635

/-- `record[A052410(or(1, n))]` -/
def P4585620242228565465.Spec : Prop :=
  ∀ n, P4585620242228565465.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P1711049944951672662

`record[A052410(2*n+1)]`
-/

namespace A305635.P1711049944951672662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P1711049944951672662

namespace A305635

/-- `record[A052410(2*n+1)]` -/
def P1711049944951672662.Spec : Prop :=
  ∀ n, P1711049944951672662.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P7691688332002805513

`∩[2*n+1, A175082(n+1)]`
-/

namespace A305635.P7691688332002805513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305635.P7691688332002805513

namespace A305635

/-- `∩[2*n+1, A175082(n+1)]` -/
def P7691688332002805513.Spec : Prop :=
  ∀ n, (P7691688332002805513.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P18163822070093918249

`filter[A175082(n+1), A379952(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305635

/-- `filter[A175082(n+1), A379952(#)]` -/
def P18163822070093918249.Spec : Prop :=
  ∀ n, P18163822070093918249.a n = A305635 (n + 1)

theorem P18163822070093918249.correct : P18163822070093918249.Spec := by
  intro n
  simp only [A305635, Nat.add_sub_cancel]

end A305635

/-! ## A305635.P14140465172902783880

`∩[A175082(n+1), A004273(n)]`
-/

namespace A305635.P14140465172902783880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305635.P14140465172902783880

namespace A305635

/-- `∩[A175082(n+1), A004273(n)]` -/
def P14140465172902783880.Spec : Prop :=
  ∀ n, (P14140465172902783880.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P11490267087481130715

`∩[A175082(n+1), A060747(n)]`
-/

namespace A305635.P11490267087481130715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305635.P11490267087481130715

namespace A305635

/-- `∩[A175082(n+1), A060747(n)]` -/
def P11490267087481130715.Spec : Prop :=
  ∀ n, (P11490267087481130715.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P9625383658228970450

`record[A175781(or(1, n))]`
-/

namespace A305635.P9625383658228970450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P9625383658228970450

namespace A305635

/-- `record[A175781(or(1, n))]` -/
def P9625383658228970450.Spec : Prop :=
  ∀ n, P9625383658228970450.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P13424781588725360032

`record[A304491(or(1, n))]`
-/

namespace A305635.P13424781588725360032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P13424781588725360032

namespace A305635

/-- `record[A304491(or(1, n))]` -/
def P13424781588725360032.Spec : Prop :=
  ∀ n, P13424781588725360032.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P9676690959795962920

`record[A175781(Δ[n²])]`
-/

namespace A305635.P9676690959795962920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P9676690959795962920

namespace A305635

/-- `record[A175781(Δ[n²])]` -/
def P9676690959795962920.Spec : Prop :=
  ∀ n, P9676690959795962920.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P13902224857113441618

`record[A304491(Δ[n²])]`
-/

namespace A305635.P13902224857113441618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P13902224857113441618

namespace A305635

/-- `record[A304491(Δ[n²])]` -/
def P13902224857113441618.Spec : Prop :=
  ∀ n, P13902224857113441618.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P18274489215505948296

`record[A327501(Δ[n²])]`
-/

namespace A305635.P18274489215505948296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327501 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P18274489215505948296

namespace A305635

/-- `record[A327501(Δ[n²])]` -/
def P18274489215505948296.Spec : Prop :=
  ∀ n, P18274489215505948296.a n = A305635 (n + 1)

end A305635

/-! ## A305635.P9102769361463003678

`eq[n%2, A253641(n)]`
-/

namespace A305635.P9102769361463003678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305635.P9102769361463003678

namespace A305635

/-- `eq[n%2, A253641(n)]` -/
def P9102769361463003678.Spec : Prop :=
  ∀ n, (P9102769361463003678.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P2625842747262026521

`filter[2*n+1, A132350(#)]`
-/

namespace A305635.P2625842747262026521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j) = 1) n)

end

end A305635.P2625842747262026521

namespace A305635

/-- `filter[2*n+1, A132350(#)]` -/
def P2625842747262026521.Spec : Prop :=
  ∀ n, (P2625842747262026521.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P14819682905567047163

`record[sqrt(A073843(2*n+1))]`
-/

namespace A305635.P14819682905567047163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073843 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305635.P14819682905567047163

namespace A305635

/-- `record[sqrt(A073843(2*n+1))]` -/
def P14819682905567047163.Spec : Prop :=
  ∀ n, P14819682905567047163.a n = (A305635 (n + 1) : ℝ)

end A305635

/-! ## A305635.P825958789439490169

`eq[A000035(n), A253641(n)]`
-/

namespace A305635.P825958789439490169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P825958789439490169

namespace A305635

/-- `eq[A000035(n), A253641(n)]` -/
def P825958789439490169.Spec : Prop :=
  ∀ n, (P825958789439490169.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P683117775071765035

`eq[A007877(n), A253641(n)]`
-/

namespace A305635.P683117775071765035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P683117775071765035

namespace A305635

/-- `eq[A007877(n), A253641(n)]` -/
def P683117775071765035.Spec : Prop :=
  ∀ n, (P683117775071765035.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P575649651236045424

`eq[A010146(n), A253641(n)]`
-/

namespace A305635.P575649651236045424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P575649651236045424

namespace A305635

/-- `eq[A010146(n), A253641(n)]` -/
def P575649651236045424.Spec : Prop :=
  ∀ n, (P575649651236045424.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P16559516920953781829

`eq[A010156(n), A253641(n)]`
-/

namespace A305635.P16559516920953781829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P16559516920953781829

namespace A305635

/-- `eq[A010156(n), A253641(n)]` -/
def P16559516920953781829.Spec : Prop :=
  ∀ n, (P16559516920953781829.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P17639149664432628663

`eq[A010157(n), A253641(n)]`
-/

namespace A305635.P17639149664432628663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P17639149664432628663

namespace A305635

/-- `eq[A010157(n), A253641(n)]` -/
def P17639149664432628663.Spec : Prop :=
  ∀ n, (P17639149664432628663.a n : ℤ) = A305635 (n + 1)

end A305635

/-! ## A305635.P3978739516934118036

`eq[A010166(n), A253641(n)]`
-/

namespace A305635.P3978739516934118036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305635.P3978739516934118036

namespace A305635

/-- `eq[A010166(n), A253641(n)]` -/
def P3978739516934118036.Spec : Prop :=
  ∀ n, (P3978739516934118036.a n : ℤ) = A305635 (n + 1)

end A305635

/-!
# A305636: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305636, there is no canonical definition to state claims against.
-/

/-! ## A305636.P5850340036888354572

`A305642(∑[4*n]+1)`
-/

namespace A305636.P5850340036888354572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305636.P5850340036888354572

/-! ## A305636.P15431363529913010056

`record[A305642(Δ[A235355(n)])]`
-/

namespace A305636.P15431363529913010056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305636.P15431363529913010056

/-! ## A305636.P14201498122267846546

`and(-1, A305642(A001844(n)))`
-/

namespace A305636.P14201498122267846546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305642 (A001844 n).toNat)

end

end A305636.P14201498122267846546

/-! ## A305636.P15802783058406133099

`record[A305642(A330613(n+1))]`
-/

namespace A305636.P15802783058406133099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305636.P15802783058406133099

/-! ## A305636.P17453049491112321136

`record[A305642(Δ[A079824(n+1)])]`
-/

namespace A305636.P17453049491112321136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305636.P17453049491112321136

/-!
# A305637: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305637, there is no canonical definition to state claims against.
-/

/-! ## A305637.P9966028379907790272

`A305642(∑[n+2]+4)`
-/

namespace A305637.P9966028379907790272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305637.P9966028379907790272

/-! ## A305637.P10538867233832106033

`A305642(A167614(n+1))+char[28]`
-/

namespace A305637.P10538867233832106033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305637.P10538867233832106033

/-! ## A305637.P6227022654636214728

`A305642(A000217(n+2)+3)+char[19]`
-/

namespace A305637.P6227022654636214728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305637.P6227022654636214728

/-! ## A305637.P5969205602296663517

`record[root(A305642(n+4), A004736(n+1))]`
-/

namespace A305637.P5969205602296663517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305642 (n + 4) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305637.P5969205602296663517

/-! ## A305637.P13448101740708991594

`or(A299905(n), A305642(A167614(n+1)))`
-/

namespace A305637.P13448101740708991594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299905 n) (A305642 (A167614 (n + 1)).toNat)

end

end A305637.P13448101740708991594

/-!
# A305638: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305638, there is no canonical definition to state claims against.
-/

/-! ## A305638.P18361232896656611202

`A305642(∑[n+3]+7)`
-/

namespace A305638.P18361232896656611202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305638.P18361232896656611202

/-! ## A305638.P17649373287968206702

`or(char[5], A305642(A141214(n)+7))`
-/

namespace A305638.P17649373287968206702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305642 (A141214 n + 7).toNat)

end

end A305638.P17649373287968206702

/-! ## A305638.P4288719615121774209

`and(log2(1/2), A305642(A052905(n)+9))`
-/

namespace A305638.P4288719615121774209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A305642 (A052905 n + 9).toNat)

end

end A305638.P4288719615121774209

/-! ## A305638.P6473708334988366441

`A305642(Δ[A006503(n)]+7)+C(n, 64)²`
-/

namespace A305638.P6473708334988366441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (f1 (n + 1) - f1 n + 7).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A305638.P6473708334988366441

/-! ## A305638.P12027515096525933486

`A305642(A374004(n+1))%A250588(n+1)`
-/

namespace A305638.P12027515096525933486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305642 (A374004 (n + 1)).toNat) (A250588 (n + 1))

end

end A305638.P12027515096525933486

/-!
# A305639: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305639, there is no canonical definition to state claims against.
-/

/-! ## A305639.P12807025968609935008

`A305642(∑[n+4]+11)`
-/

namespace A305639.P12807025968609935008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305639.P12807025968609935008

/-!
# A305640: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305640, there is no canonical definition to state claims against.
-/

/-! ## A305640.P444497769845159314

`A305642(∑[n+5]+16)`
-/

namespace A305640.P444497769845159314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A305640.P444497769845159314

/-! ## A305640.P2894134750540390396

`A305642(A374007(n+1))+A025439(n)`
-/

namespace A305640.P2894134750540390396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A374007 (n + 1)).toNat + A025439 n

end

end A305640.P2894134750540390396

/-! ## A305640.P613786613233709496

`A305642(A374007(n+1))+A000007(3*(n+1))`
-/

namespace A305640.P613786613233709496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A374007 (n + 1)).toNat + A000007 (3 * (n + 1))

end

end A305640.P613786613233709496

/-! ## A305640.P9952585603673231625

`A305642(A374007(n+1))+A083928(3*n+4)`
-/

namespace A305640.P9952585603673231625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A374007 (n + 1)).toNat + A083928 (3 * n + 4)

end

end A305640.P9952585603673231625

/-! ## A305640.P12084589420245169685

`A305642(A077169(n+6)+1)/A000034(2*n)`
-/

namespace A305640.P12084589420245169685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305642 (A077169 (n + 6) + 1).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A305640.P12084589420245169685

/-!
# A305641: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305641, there is no canonical definition to state claims against.
-/

/-! ## A305641.P8569663455312831040

`A305642(A374008(n+1))`
-/

namespace A305641.P8569663455312831040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A374008 (n + 1)).toNat

end

end A305641.P8569663455312831040

/-! ## A305641.P15060358073637238018

`A305642(A056119(n)+28)`
-/

namespace A305641.P15060358073637238018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A056119 n + 28).toNat

end

end A305641.P15060358073637238018

/-! ## A305641.P11630166930573687870

`A305642(eq[11, A066657(n)])`
-/

namespace A305641.P11630166930573687870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305641.P11630166930573687870

/-! ## A305641.P3199374056703560777

`A305642(A000217(n+6)+7)`
-/

namespace A305641.P3199374056703560777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A000217 (n + 6) + 7).toNat

end

end A305641.P3199374056703560777

/-! ## A305641.P6920045938885302819

`A305642(A046691(n+4)+11)`
-/

namespace A305641.P6920045938885302819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305642 (A046691 (n + 4) + 11).toNat

end

end A305641.P6920045938885302819

/-!
# A305642: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305642, there is no canonical definition to state claims against.
-/

/-! ## A305642.P16389387429320734989

`A316218(n+1)+A081603(A022167(n))`
-/

namespace A305642.P16389387429320734989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) + A081603 (A022167 n).toNat

end

end A305642.P16389387429320734989

/-! ## A305642.P15805540884269076545

`A316218(n+1)+A054911(A299905(n))`
-/

namespace A305642.P15805540884269076545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) + A054911 (A299905 n).toNat

end

end A305642.P15805540884269076545

/-! ## A305642.P13515452125634994357

`A304347(n+1)+A157685(A260340(n))`
-/

namespace A305642.P13515452125634994357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304347 (n + 1) + A157685 (A260340 n).toNat

end

end A305642.P13515452125634994357

/-! ## A305642.P9457012538169456925

`A316218(n+1)+A184159(A260340(n))`
-/

namespace A305642.P9457012538169456925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316218 (n + 1) + A184159 (A260340 n).toNat

end

end A305642.P9457012538169456925

/-! ## A305642.P9812082546172461792

`A317036(n+1)-A173636(A174545(n))`
-/

namespace A305642.P9812082546172461792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317036 (n + 1) - A173636 (A174545 n).toNat

end

end A305642.P9812082546172461792

/-!
# A305643: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305643, there is no canonical definition to state claims against.
-/

/-! ## A305643.P4048955791773534384

`A305649(∑[4*n]+1)`
-/

namespace A305643.P4048955791773534384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305643.P4048955791773534384

/-! ## A305643.P15538253895346312930

`record[A305649(Δ[A235355(n)])]`
-/

namespace A305643.P15538253895346312930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305643.P15538253895346312930

/-! ## A305643.P1005932166034688329

`record[A305649(A286145(n)+1)]`
-/

namespace A305643.P1005932166034688329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305643.P1005932166034688329

/-! ## A305643.P586547520803008130

`record[A305649(A330613(n+1))]`
-/

namespace A305643.P586547520803008130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305643.P586547520803008130

/-! ## A305643.P2155099432345662906

`A305649(A001844(n))+char[9]`
-/

namespace A305643.P2155099432345662906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305643.P2155099432345662906

/-!
# A305644: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305644, there is no canonical definition to state claims against.
-/

/-! ## A305644.P2464877074201194144

`A305649(∑[n+2]+4)`
-/

namespace A305644.P2464877074201194144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305644.P2464877074201194144

/-! ## A305644.P14505400944007474339

`or(A000007(n), A305649(A167614(n+1)))`
-/

namespace A305644.P14505400944007474339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305649 (A167614 (n + 1)).toNat)

end

end A305644.P14505400944007474339

/-! ## A305644.P10620671010134066449

`or(A185044(n), A305649(A167614(n+1)))`
-/

namespace A305644.P10620671010134066449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185044 n) (A305649 (A167614 (n + 1)).toNat)

end

end A305644.P10620671010134066449

/-! ## A305644.P12080252046775264525

`A305649(A167614(n+1))+A230533(n+1)`
-/

namespace A305644.P12080252046775264525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A167614 (n + 1)).toNat + A230533 (n + 1)

end

end A305644.P12080252046775264525

/-! ## A305644.P7353345886311255638

`A305649(A167614(n+1))%A186123(n+1)`
-/

namespace A305644.P7353345886311255638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305649 (A167614 (n + 1)).toNat) (A186123 (n + 1))

end

end A305644.P7353345886311255638

/-!
# A305645: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305645, there is no canonical definition to state claims against.
-/

/-! ## A305645.P7984213485239558069

`A305649(A374004(n+1))`
-/

namespace A305645.P7984213485239558069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A374004 (n + 1)).toNat

end

end A305645.P7984213485239558069

/-! ## A305645.P14159304599852184854

`A305649(A052905(n)+9)`
-/

namespace A305645.P14159304599852184854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A052905 n + 9).toNat

end

end A305645.P14159304599852184854

/-! ## A305645.P5898881055400808762

`A305649(A055999(n)+10)`
-/

namespace A305645.P5898881055400808762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A055999 n + 10).toNat

end

end A305645.P5898881055400808762

/-! ## A305645.P15561358900232413125

`record[A305649(A008795(n)+4)]`
-/

namespace A305645.P15561358900232413125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A008795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305645.P15561358900232413125

/-! ## A305645.P14073316571401482799

`A305649(A167614(n+2)+1)`
-/

namespace A305645.P14073316571401482799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A167614 (n + 2) + 1).toNat

end

end A305645.P14073316571401482799

/-!
# A305646: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305646, there is no canonical definition to state claims against.
-/

/-! ## A305646.P16017402137796563824

`A305649(C(n+6, 2)-n)`
-/

namespace A305646.P16017402137796563824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (Nat.choose (n + 6) 2 - n)

end

end A305646.P16017402137796563824

/-! ## A305646.P4587927796432968515

`A305649(A374005(n+1))`
-/

namespace A305646.P4587927796432968515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A374005 (n + 1)).toNat

end

end A305646.P4587927796432968515

/-! ## A305646.P5433981006804391431

`A305649(A167499(n+3))`
-/

namespace A305646.P5433981006804391431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A167499 (n + 3)).toNat

end

end A305646.P5433981006804391431

/-! ## A305646.P157602392270066995

`A305649(A056000(n)+15)`
-/

namespace A305646.P157602392270066995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A056000 n + 15).toNat

end

end A305646.P157602392270066995

/-! ## A305646.P6289831722442874379

`A305649(A166136(n+4)-(n+6))`
-/

namespace A305646.P6289831722442874379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A166136 (n + 4) - (n + 6 : ℤ)).toNat

end

end A305646.P6289831722442874379

/-!
# A305647: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305647, there is no canonical definition to state claims against.
-/

/-! ## A305647.P17841662317338651150

`A305649(∑[n+5]+16)`
-/

namespace A305647.P17841662317338651150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A305647.P17841662317338651150

/-!
# A305648: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305648, there is no canonical definition to state claims against.
-/

/-! ## A305648.P2437025867817555894

`A305649(A374008(n+1))`
-/

namespace A305648.P2437025867817555894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A374008 (n + 1)).toNat

end

end A305648.P2437025867817555894

/-! ## A305648.P6718311332338711608

`A305649(A167487(n+5))`
-/

namespace A305648.P6718311332338711608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A167487 (n + 5)).toNat

end

end A305648.P6718311332338711608

/-! ## A305648.P2656147850847552090

`A305649(eq[11, A066657(n)])`
-/

namespace A305648.P2656147850847552090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305648.P2656147850847552090

/-! ## A305648.P18324031739861953500

`A305649(A055999(n+4))`
-/

namespace A305648.P18324031739861953500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (A055999 (n + 4)).toNat

end

end A305648.P18324031739861953500

/-! ## A305648.P7168764241806894853

`A305649(eq[4, A219347(n)])`
-/

namespace A305648.P7168764241806894853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305648.P7168764241806894853

/-!
# A305649: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305649, there is no canonical definition to state claims against.
-/

/-! ## A305649.P7465829555967773131

`A316925(n+1)-A309785(A299321(n+1))`
-/

namespace A305649.P7465829555967773131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A305649.P7465829555967773131

/-! ## A305649.P5349869108784880234

`A316925(n+1)-A004198(A185044(n))`
-/

namespace A305649.P5349869108784880234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (n + 1) - A004198 (A185044 n).toNat

end

end A305649.P5349869108784880234

/-! ## A305649.P15596432267178524695

`A316925(n+1)-A230533(A159623(n))`
-/

namespace A305649.P15596432267178524695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (n + 1) - A230533 (A159623 n).toNat

end

end A305649.P15596432267178524695

/-! ## A305649.P18359910734003441514

`A316925(n+1)-A309785(A331562(n))`
-/

namespace A305649.P18359910734003441514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (n + 1) - A309785 (A331562 n).toNat

end

end A305649.P18359910734003441514

/-! ## A305649.P9133515308786824031

`A316925(n+1)-A073200(A230533(n+1))`
-/

namespace A305649.P9133515308786824031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316925 (n + 1) - A073200 (A230533 (n + 1)).toNat

end

end A305649.P9133515308786824031

/-!
# A305650: a(n) = -1/3 * (u^n-1)*(v^n-1) with u = 1+sqrt(3), v = 1-sqrt(3).

The programs for A305650, the canonical program `A305650.P12219324834420494110` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305650 has offset 1).

The definition of A305650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305650.P12219324834420494110

`a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=13`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A305650

/-- `a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P12219324834420494110.Spec : Prop :=
  ∀ n, P12219324834420494110.a n = A305650 (n + 1)

theorem P12219324834420494110.correct : P12219324834420494110.Spec := by
  intro n
  simp only [A305650, Nat.add_sub_cancel]

end A305650

/-! ## A305650.P614377564519332152

`2*(∑[2*(a(n-1)+a(n-2))]-a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A305650.P614377564519332152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)) - 1

end

end A305650.P614377564519332152

namespace A305650

/-- `2*(∑[2*(a(n-1)+a(n-2))]-a(n-1))-1` -/
def P614377564519332152.Spec : Prop :=
  ∀ n, P614377564519332152.a n = A305650 (n + 1)

end A305650

/-! ## A305650.P14065603408696160200

`∑[2*(A026150(n)-a(n-1))]` with `a(0)=1`
-/

namespace A305650.P14065603408696160200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (A026150 n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305650.P14065603408696160200

namespace A305650

/-- `∑[2*(A026150(n)-a(n-1))]` -/
def P14065603408696160200.Spec : Prop :=
  ∀ n, P14065603408696160200.a n = A305650 (n + 1)

end A305650

/-! ## A305650.P1486403288913377525

`∑[A122803(n)+Δ[A052948(n)]]`
-/

namespace A305650.P1486403288913377525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305650.P1486403288913377525

namespace A305650

/-- `∑[A122803(n)+Δ[A052948(n)]]` -/
def P1486403288913377525.Spec : Prop :=
  ∀ n, P1486403288913377525.a n = A305650 (n + 1)

end A305650

/-! ## A305650.P3499681364220537045

`A077925(n)+∑[A293007(n+1)]`
-/

namespace A305650.P3499681364220537045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305650.P3499681364220537045

namespace A305650

/-- `A077925(n)+∑[A293007(n+1)]` -/
def P3499681364220537045.Spec : Prop :=
  ∀ n, P3499681364220537045.a n = A305650 (n + 1)

end A305650

/-! ## A305650.P15648229401922055236

`A077925(n)+∑[2*A002605(n)]`
-/

namespace A305650.P15648229401922055236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305650.P15648229401922055236

namespace A305650

/-- `A077925(n)+∑[2*A002605(n)]` -/
def P15648229401922055236.Spec : Prop :=
  ∀ n, P15648229401922055236.a n = A305650 (n + 1)

end A305650

/-!
# A305651: Expansion of Product_{k>=1} (1 + x^k)^(q(k)-1), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A305651, there is no canonical definition to state claims against.
-/

/-! ## A305651.P11746725289382553446

`A003002(A188624(n+1))-A340102(n)`
-/

namespace A305651.P11746725289382553446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A188624 (n + 1)).toNat - A340102 n

end

end A305651.P11746725289382553446

/-!
# A305653: Expansion of Product_{k>=1} 1/(1 - x^k)^((k+1)*binomial(k+2,3)/2).

The programs for A305653, there is no canonical definition to state claims against.
-/

/-! ## A305653.P5450837441861988181

`A278214(A149260(n))+A149235(n)`
-/

namespace A305653.P5450837441861988181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278214 (A149260 n).toNat + A149235 n

end

end A305653.P5450837441861988181

/-!
# A305654: a(n) = [x^n] exp(Sum_{k>=1} x^k*(1 + x^k)/(k*(1 - x^k)^n)).

The programs for A305654, there is no canonical definition to state claims against.
-/

/-! ## A305654.P16786261264320630438

`A283550(A149432(n))`
-/

namespace A305654.P16786261264320630438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283550 (A149432 n).toNat

end

end A305654.P16786261264320630438

/-! ## A305654.P6987279861839862865

`A064460(Δ[A104708(n)])+1`
-/

namespace A305654.P6987279861839862865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064460 (f1 (n + 1) - f1 n).toNat + 1

end

end A305654.P6987279861839862865

/-!
# A305655: a(n) = [x^n] exp(Sum_{k>=1} (-1)^(k+1)*x^k*(1 + x^k)/(k*(1 - x^k)^n)).

The programs for A305655, there is no canonical definition to state claims against.
-/

/-! ## A305655.P5765311884813486442

`A126949(A005315(n))-4`
-/

namespace A305655.P5765311884813486442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126949 (A005315 n).toNat - 4

end

end A305655.P5765311884813486442

/-! ## A305655.P2235000883889428699

`A293866(or(2, A293717(n)))`
-/

namespace A305655.P2235000883889428699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293866 (Int.lor 2 (A293717 n)).toNat

end

end A305655.P2235000883889428699

/-!
# A305656: Integers m that satisfy tau(m) + omega(m) = #({phi(x) = m}).

The programs for A305656, there is no canonical definition to state claims against.
-/

/-! ## A305656.P7986485195186675134

`eq[A016026(n+1), A065458(n)]`
-/

namespace A305656.P7986485195186675134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305656.P7986485195186675134

/-! ## A305656.P15056155071166469971

`∑[A001316(A047974(n))]`
-/

namespace A305656.P15056155071166469971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A047974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305656.P15056155071166469971

/-! ## A305656.P9218064458548890709

`∑[A001316(sqrt(A115326(n)))]`
-/

namespace A305656.P9218064458548890709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway (Real.sqrt (A115326 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305656.P9218064458548890709

/-! ## A305656.P9024150762803459475

`∑[A001316(A122832(∑[n]))]`
-/

namespace A305656.P9024150762803459475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A122832 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305656.P9024150762803459475

/-! ## A305656.P6379255069449361086

`A349122(∏[p?[A324030(n)]])`
-/

namespace A305656.P6379255069449361086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305656.P6379255069449361086

/-!
# A305657: Record values of A305566.

The programs for A305657, there is no canonical definition to state claims against.
-/

/-! ## A305657.P8673820459410177541

`record[A305566(n+1)]`
-/

namespace A305657.P8673820459410177541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305657.P8673820459410177541

/-! ## A305657.P14493225137076553647

`A305566(A097212(n+3))`
-/

namespace A305657.P14493225137076553647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (A097212 (n + 3)).toNat

end

end A305657.P14493225137076553647

/-! ## A305657.P4015995492596500689

`record[Δ[A305566(A133265(n))]]`
-/

namespace A305657.P4015995492596500689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (A133265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305657.P4015995492596500689

/-! ## A305657.P13332361813824608940

`record[A305564(n+1)-A069626(n+1)]`
-/

namespace A305657.P13332361813824608940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (n + 1) - A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305657.P13332361813824608940

/-!
# A305658: Powers of 3 in base 3/2.

The programs for A305658, the canonical program `A305658.P5754960706359636572` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305658 has offset 0).

The definition of A305658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305658.P5754960706359636572

`A024629(A000244(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305658

/-- `A024629(A000244(n))` -/
def P5754960706359636572.Spec : Prop :=
  ∀ n, P5754960706359636572.a n = A305658 n

theorem P5754960706359636572.correct : P5754960706359636572.Spec := by
  intro n
  simp only [A305658]

end A305658

/-! ## A305658.P6238634720236872343

`A011557(n)*A305659(n)`
-/

namespace A305658.P6238634720236872343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A305659 n

end

end A305658.P6238634720236872343

namespace A305658

/-- `A011557(n)*A305659(n)` -/
def P6238634720236872343.Spec : Prop :=
  ∀ n, P6238634720236872343.a n = A305658 n

end A305658

/-! ## A305658.P1158098888650674085

`A024629(3^n)`
-/

namespace A305658.P1158098888650674085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (3 ^ n)

end

end A305658.P1158098888650674085

namespace A305658

/-- `A024629(3^n)` -/
def P1158098888650674085.Spec : Prop :=
  ∀ n, P1158098888650674085.a n = A305658 n

end A305658

/-! ## A305658.P4301506652973934003

`record[A024629(A106516(n))]`
-/

namespace A305658.P4301506652973934003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305658.P4301506652973934003

namespace A305658

/-- `record[A024629(A106516(n))]` -/
def P4301506652973934003.Spec : Prop :=
  ∀ n, P4301506652973934003.a n = A305658 n

end A305658

/-! ## A305658.P442895618796755252

`A024629(A034472(n))-1`
-/

namespace A305658.P442895618796755252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A034472 n).toNat - 1

end

end A305658.P442895618796755252

namespace A305658

/-- `A024629(A034472(n))-1` -/
def P442895618796755252.Spec : Prop :=
  ∀ n, P442895618796755252.a n = A305658 n

end A305658

/-!
# A305659: Powers of 2 in base 3/2.

The programs for A305659, the canonical program `A305659.P16175590300142977093` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305659 has offset 0).

The definition of A305659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024629, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305659.P16175590300142977093

`A024629(A000079(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305659

/-- `A024629(A000079(n))` -/
def P16175590300142977093.Spec : Prop :=
  ∀ n, P16175590300142977093.a n = A305659 n

theorem P16175590300142977093.correct : P16175590300142977093.Spec := by
  intro n
  simp only [A305659]

end A305659

/-! ## A305659.P4915251443395504340

`A024629(2^n)`
-/

namespace A305659.P4915251443395504340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (2 ^ n)

end

end A305659.P4915251443395504340

namespace A305659

/-- `A024629(2^n)` -/
def P4915251443395504340.Spec : Prop :=
  ∀ n, P4915251443395504340.a n = A305659 n

end A305659

/-! ## A305659.P10377818746244061042

`record[A024629(A059268(n))]`
-/

namespace A305659.P10377818746244061042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305659.P10377818746244061042

namespace A305659

/-- `record[A024629(A059268(n))]` -/
def P10377818746244061042.Spec : Prop :=
  ∀ n, P10377818746244061042.a n = A305659 n

end A305659

/-! ## A305659.P11319938693185843700

`record[A024629(A130321(n))]`
-/

namespace A305659.P11319938693185843700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305659.P11319938693185843700

namespace A305659

/-- `record[A024629(A130321(n))]` -/
def P11319938693185843700.Spec : Prop :=
  ∀ n, P11319938693185843700.a n = A305659 n

end A305659

/-! ## A305659.P13776256225311447385

`A024629(A000225(n))+1`
-/

namespace A305659.P13776256225311447385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A000225 n).toNat + 1

end

end A305659.P13776256225311447385

namespace A305659

/-- `A024629(A000225(n))+1` -/
def P13776256225311447385.Spec : Prop :=
  ∀ n, P13776256225311447385.a n = A305659 n

end A305659

/-!
# A305669: Take the sum of the digits of a number, put it at the left side and delete the same number of digits at the right side. Repeat the process. Sequence lists numbers that reach themselves after some steps.

The programs for A305669, there is no canonical definition to state claims against.
-/

/-! ## A305669.P12986985060868842232

`lt[A117910(n)-A106494(2*n+1), 1]`
-/

namespace A305669.P12986985060868842232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n - A106494 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305669.P12986985060868842232

/-! ## A305669.P16248518689041275006

`lt[A008459(A036470(n)), A216287(n+1)]`
-/

namespace A305669.P16248518689041275006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 (A036470 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305669.P16248518689041275006

/-! ## A305669.P9064090323814538394

`lt[A304270(2*n+1), A151542(A319567(n))]`
-/

namespace A305669.P9064090323814538394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 (A319567 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305669.P9064090323814538394

/-! ## A305669.P13828534534807066327

`lt[A303362(n+1), A053755(A135539(2*(n+2)))]`
-/

namespace A305669.P13828534534807066327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A135539 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305669.P13828534534807066327

/-! ## A305669.P14256570932930536607

`lt[A227499(n+1), A157853(A122443(3*n+4))]`
-/

namespace A305669.P14256570932930536607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157853 (A122443 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305669.P14256570932930536607

/-!
# A305672: Indices i where a run of nonzero values starts in A305671.

The programs for A305672, there is no canonical definition to state claims against.
-/

/-! ## A305672.P17640477309803199738

`A305673(n+1)-A305675(Δ[n²])`
-/

namespace A305672.P17640477309803199738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305673 (n + 1) - A305675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305672.P17640477309803199738

/-! ## A305672.P385133391946687447

`record[(∑[A305675(n+1)]+1)/A052552(n)]`
-/

namespace A305672.P385133391946687447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / (A052552 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305672.P385133391946687447

/-! ## A305672.P6986552677835075547

`record[(∑[A305675(n+1)]+1)^A062157(n)]`
-/

namespace A305672.P6986552677835075547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305672.P6986552677835075547

/-! ## A305672.P9451457836682679500

`abs(A305675(2*n+1)-A305673(n+1))`
-/

namespace A305672.P9451457836682679500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305675 (2 * n + 1) - A305673 (n + 1)|

end

end A305672.P9451457836682679500

/-! ## A305672.P13362601523001271389

`record[A305674(n+1)/gcd(2, n)]`
-/

namespace A305672.P13362601523001271389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305674 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305672.P13362601523001271389

/-!
# A305673: Indices i where a run of zeros starts in A305671.

The programs for A305673, there is no canonical definition to state claims against.
-/

/-! ## A305673.P5699847842924308455

`A305675(Δ[n²])+A305672(n+1)`
-/

namespace A305673.P5699847842924308455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A305672 (n + 1)

end

end A305673.P5699847842924308455

/-! ## A305673.P2772810739804858805

`record[(∑[A305675(n+1)]+1)*A062157(n+1)]`
-/

namespace A305673.P2772810739804858805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305673.P2772810739804858805

/-! ## A305673.P18324952373544340801

`A305672(n+2)-A305675(2*(n+1))`
-/

namespace A305673.P18324952373544340801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305672 (n + 2) - A305675 (2 * (n + 1))

end

end A305673.P18324952373544340801

/-! ## A305673.P15767631130468022311

`A305674(Δ[n²])`
-/

namespace A305673.P15767631130468022311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305674 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305673.P15767631130468022311

/-! ## A305673.P1943380980075558729

`and(-1, A305674(2*n+1))`
-/

namespace A305673.P1943380980075558729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305674 (2 * n + 1))

end

end A305673.P1943380980075558729

/-!
# A305674: Indices i such that A305671(i) != A305671(i-1).

The programs for A305674, there is no canonical definition to state claims against.
-/

/-! ## A305674.P14120186106913194870

`∑[A305675(n+1)]+1`
-/

namespace A305674.P14120186106913194870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305674.P14120186106913194870

/-! ## A305674.P12675885013412528475

`A305675(Δ[n²]-n)+a(n-1)` with `a(0)=2`
-/

namespace A305674.P12675885013412528475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A305675 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A305674.P12675885013412528475

/-! ## A305674.P14411454376889366431

`∑[A181440(A305675(n+1))]`
-/

namespace A305674.P14411454376889366431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A305675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305674.P14411454376889366431

/-! ## A305674.P9692791785510839364

`∪[A305673(n+1), A305672(n+2)]`
-/

namespace A305674.P9692791785510839364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305672 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305674.P9692791785510839364

/-! ## A305674.P26518293496583170

`A020725(∑[A305675(n+1)])`
-/

namespace A305674.P26518293496583170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305674.P26518293496583170

/-!
# A305675: Run lengths of successive equal terms in A305671.

The programs for A305675, there is no canonical definition to state claims against.
-/

/-! ## A305675.P15640320976166895859

`Δ[∪[A305672(n+1), A305673(n+1)]]`
-/

namespace A305675.P15640320976166895859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305672 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305673 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A305675.P15640320976166895859

/-! ## A305675.P4499141298969606230

`char[55*n]+Δ[A305674(A028310(n))]`
-/

namespace A305675.P4499141298969606230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305674 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A305675.P4499141298969606230

/-! ## A305675.P5300556039843878923

`Δ[∪[A305674(2*n+1), A305672(n+1)]]`
-/

namespace A305675.P5300556039843878923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305674 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305672 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A305675.P5300556039843878923

/-! ## A305675.P13412405677745808812

`Δ[A305674(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A305675.P13412405677745808812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305674 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305675.P13412405677745808812

/-!
# A305676: a(n) = A305671(A305672(n)).

The programs for A305676, there is no canonical definition to state claims against.
-/

/-! ## A305676.P3829964025509953197

`∑{d}[A002808(A305672(n+1)), #]`
-/

namespace A305676.P3829964025509953197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A305672 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A305676.P3829964025509953197

/-! ## A305676.P10736827765682190067

`A000203(A002808(A305672(n+1)))`
-/

namespace A305676.P10736827765682190067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002808 (A305672 (n + 1)).toNat).toNat

end

end A305676.P10736827765682190067

/-! ## A305676.P1831811108356610738

`A000203(A018252(A305672(n+1)+1))`
-/

namespace A305676.P1831811108356610738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (A305672 (n + 1) + 1).toNat).toNat

end

end A305676.P1831811108356610738

/-! ## A305676.P1756100976907659773

`A073255(A305672(n+1))`
-/

namespace A305676.P1756100976907659773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (A305672 (n + 1)).toNat

end

end A305676.P1756100976907659773

/-! ## A305676.P6169428521074377433

`A162194(A305672(n+1)+1)`
-/

namespace A305676.P6169428521074377433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (A305672 (n + 1) + 1).toNat

end

end A305676.P6169428521074377433

/-!
# A305677: Number of subsets of {n+1, n+2, ..., A072905(n)-1} whose product has the same squarefree part as n.

The programs for A305677, there is no canonical definition to state claims against.
-/

/-! ## A305677.P14782897449011637567

`2^A321482(n+1)`
-/

namespace A305677.P14782897449011637567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321482 (n + 1) : ℤ)

end

end A305677.P14782897449011637567

/-! ## A305677.P13152018027778279146

`A000079(A321482(n+1))`
-/

namespace A305677.P13152018027778279146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A321482 (n + 1)).toNat

end

end A305677.P13152018027778279146

/-! ## A305677.P13931127148159523930

`A011782(A321482(n+1)+1)`
-/

namespace A305677.P13931127148159523930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A321482 (n + 1) + 1).toNat

end

end A305677.P13931127148159523930

/-! ## A305677.P15032651203974890537

`A131577(A321482(n+1)+1)`
-/

namespace A305677.P15032651203974890537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A321482 (n + 1) + 1).toNat

end

end A305677.P15032651203974890537

/-! ## A305677.P4077345842684111675

`A016116(2*A321482(n+1))`
-/

namespace A305677.P4077345842684111675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A321482 (n + 1)).toNat

end

end A305677.P4077345842684111675

/-! ## A305677.P11924246421996829223

`A016116(A321482(n+1)+A321482(n+1)+1)`
-/

namespace A305677.P11924246421996829223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A321482 (n + 1) + (A321482 (n + 1) + 1)).toNat

end

end A305677.P11924246421996829223

/-!
# A305679: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305679, there is no canonical definition to state claims against.
-/

/-! ## A305679.P8584900135447953215

`A305685(∑[4*n]+1)`
-/

namespace A305679.P8584900135447953215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305679.P8584900135447953215

/-! ## A305679.P5574812385388430319

`and(log2(1/2), A305685(A001844(n)))`
-/

namespace A305679.P5574812385388430319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A305685 (A001844 n).toNat)

end

end A305679.P5574812385388430319

/-! ## A305679.P12529056270713487860

`record[A003982(n)*A305685(n+1)]`
-/

namespace A305679.P12529056270713487860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305679.P12529056270713487860

/-! ## A305679.P15505496872722170431

`record[gcd(A305685(n+1), A308179(n))]`
-/

namespace A305679.P15505496872722170431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305685 (n + 1)) (A308179 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305679.P15505496872722170431

/-! ## A305679.P11304702142769497805

`record[A305685(n+1)/A205545(n+1)]`
-/

namespace A305679.P11304702142769497805
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305685 (n + 1) : ℚ) / (A205545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305679.P11304702142769497805

/-!
# A305680: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305680, there is no canonical definition to state claims against.
-/

/-! ## A305680.P10900658415000998000

`A305685(∑[n+2]+4)`
-/

namespace A305680.P10900658415000998000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305680.P10900658415000998000

/-! ## A305680.P14687310912687229399

`A317065(∑[n+2]+4)`
-/

namespace A305680.P14687310912687229399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305680.P14687310912687229399

/-! ## A305680.P1084286370655112527

`lcm((-1)^n, A305685(A167614(n+1)))`
-/

namespace A305680.P1084286370655112527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A305685 (A167614 (n + 1)).toNat)

end

end A305680.P1084286370655112527

/-! ## A305680.P77257809699061676

`A317065(A167614(n+1))+A277165(n)`
-/

namespace A305680.P77257809699061676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A167614 (n + 1)).toNat + A277165 n

end

end A305680.P77257809699061676

/-! ## A305680.P16161395255711305922

`A317065(A167614(n+1))%A016963(n)`
-/

namespace A305680.P16161395255711305922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317065 (A167614 (n + 1)).toNat) (A016963 n)

end

end A305680.P16161395255711305922

/-!
# A305681: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305681, there is no canonical definition to state claims against.
-/

/-! ## A305681.P9618350279459915778

`A305685(∑[n+3]+7)`
-/

namespace A305681.P9618350279459915778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305681.P9618350279459915778

/-! ## A305681.P11057320427977024115

`A317065(A141214(n)+7)`
-/

namespace A305681.P11057320427977024115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A141214 n + 7).toNat

end

end A305681.P11057320427977024115

/-! ## A305681.P18198557823676806725

`A317065(A055999(n)+10)`
-/

namespace A305681.P18198557823676806725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A055999 n + 10).toNat

end

end A305681.P18198557823676806725

/-! ## A305681.P16022648445805711088

`A317065(A167614(n+2)+1)`
-/

namespace A305681.P16022648445805711088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (A167614 (n + 2) + 1).toNat

end

end A305681.P16022648445805711088

/-! ## A305681.P14845380119317557726

`A317065(Δ[A264443(n)-n²])`
-/

namespace A305681.P14845380119317557726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (f1 (n + 1) - f1 n).toNat

end

end A305681.P14845380119317557726

/-!
# A305682: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305682, there is no canonical definition to state claims against.
-/

/-! ## A305682.P1802751567450376751

`A305685(A374005(n+1))`
-/

namespace A305682.P1802751567450376751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A374005 (n + 1)).toNat

end

end A305682.P1802751567450376751

/-! ## A305682.P14439152301651080007

`A305685(A167499(n+3))`
-/

namespace A305682.P14439152301651080007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A167499 (n + 3)).toNat

end

end A305682.P14439152301651080007

/-! ## A305682.P6756232816552306130

`A305685(Δ[A264443(n)])`
-/

namespace A305682.P6756232816552306130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (f1 (n + 1) - f1 n).toNat

end

end A305682.P6756232816552306130

/-! ## A305682.P15872152265076769232

`A305685(A056115(n)+11)`
-/

namespace A305682.P15872152265076769232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A056115 n + 11).toNat

end

end A305682.P15872152265076769232

/-! ## A305682.P16030931619171651679

`A305685(eq[4, A193592(n)])`
-/

namespace A305682.P16030931619171651679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305682.P16030931619171651679

/-!
# A305683: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305683, there is no canonical definition to state claims against.
-/

/-! ## A305683.P5780640387048382234

`A305685(A374007(n+1))`
-/

namespace A305683.P5780640387048382234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A374007 (n + 1)).toNat

end

end A305683.P5780640387048382234

/-! ## A305683.P17984110322310927519

`A305685(A056115(n)+21)`
-/

namespace A305683.P17984110322310927519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A056115 n + 21).toNat

end

end A305683.P17984110322310927519

/-! ## A305683.P11722494592893873298

`A305685(eq[7, A131818(n+1)])`
-/

namespace A305683.P11722494592893873298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305683.P11722494592893873298

/-! ## A305683.P14241890843634981074

`A305685(eq[5, A152157(n)])`
-/

namespace A305683.P14241890843634981074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305683.P14241890843634981074

/-! ## A305683.P11972631771019963052

`A305685(eq[5, A193592(n)])`
-/

namespace A305683.P11972631771019963052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305683.P11972631771019963052

/-!
# A305684: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305684, there is no canonical definition to state claims against.
-/

/-! ## A305684.P8369368930041477110

`A305685(A374008(n+1))`
-/

namespace A305684.P8369368930041477110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A374008 (n + 1)).toNat

end

end A305684.P8369368930041477110

/-! ## A305684.P12634932505066341184

`A305685(eq[11, A066657(n)])`
-/

namespace A305684.P12634932505066341184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305684.P12634932505066341184

/-! ## A305684.P1451771654265819604

`A305685(A046691(n+4)+11)`
-/

namespace A305684.P1451771654265819604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (A046691 (n + 4) + 11).toNat

end

end A305684.P1451771654265819604

/-! ## A305684.P11311928208517699207

`A305685(eq[8, A131818(n+1)])`
-/

namespace A305684.P11311928208517699207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305684.P11311928208517699207

/-! ## A305684.P13251815769589867115

`A305685(eq[6, A193592(n)])`
-/

namespace A305684.P13251815769589867115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305684.P13251815769589867115

/-!
# A305685: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305685, there is no canonical definition to state claims against.
-/

/-! ## A305685.P14091070429031188817

`A317065(∑[A010894(n)!])`
-/

namespace A305685.P14091070429031188817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305685.P14091070429031188817

/-! ## A305685.P5606723904485202702

`A317065(A010894(n)!+n)`
-/

namespace A305685.P5606723904485202702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A305685.P5606723904485202702

/-! ## A305685.P663126870434158372

`A317065(n+1)^A062513(n+2)`
-/

namespace A305685.P663126870434158372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317065 (n + 1) : ℚ) ^ (A062513 (n + 2) : ℤ)

end

end A305685.P663126870434158372

/-! ## A305685.P5792379381799453672

`A317065(A104160(n+1)%2+n)`
-/

namespace A305685.P5792379381799453672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317065 (Int.tmod (A104160 (n + 1)) 2 + (n : ℤ)).toNat

end

end A305685.P5792379381799453672

/-! ## A305685.P11872228380446308766

`A317065(n+1)/A349509(A130321(3*n+1))`
-/

namespace A305685.P11872228380446308766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317065 (n + 1) : ℚ) / (A349509 (A130321 (3 * n + 1)).toNat : ℚ)

end

end A305685.P11872228380446308766

/-!
# A305686: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305686, there is no canonical definition to state claims against.
-/

/-! ## A305686.P1669271152077182022

`A305692(∑[4*n]+1)`
-/

namespace A305686.P1669271152077182022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305686.P1669271152077182022

/-! ## A305686.P14865462791512489300

`record[A003982(n)*A305692(n+1)]`
-/

namespace A305686.P14865462791512489300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305686.P14865462791512489300

/-! ## A305686.P3468290802208867647

`record[A203994(n+1)*A305692(n+1)]`
-/

namespace A305686.P3468290802208867647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A305692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305686.P3468290802208867647

/-! ## A305686.P628292332915783467

`A305692(A001844(n))+A184955(n)`
-/

namespace A305686.P628292332915783467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A001844 n).toNat + A184955 n

end

end A305686.P628292332915783467

/-! ## A305686.P11931784925402773498

`A014698(n)*A305692(A001844(n))`
-/

namespace A305686.P11931784925402773498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014698 n * A305692 (A001844 n).toNat

end

end A305686.P11931784925402773498

/-!
# A305687: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305687, there is no canonical definition to state claims against.
-/

/-! ## A305687.P8389731001173200804

`A305692(∑[n+2]+4)`
-/

namespace A305687.P8389731001173200804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305687.P8389731001173200804

/-! ## A305687.P16697117310512141088

`or(char[n²], A305692(A167614(n+1)))`
-/

namespace A305687.P16697117310512141088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305692 (A167614 (n + 1)).toNat)

end

end A305687.P16697117310512141088

/-! ## A305687.P5442478109243652244

`A305692(A167614(n+1))^A178334(n)`
-/

namespace A305687.P5442478109243652244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305692 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A305687.P5442478109243652244

/-! ## A305687.P18286232870060436530

`gcd(A000038(n), A305692(A167614(n+1)))`
-/

namespace A305687.P18286232870060436530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305692 (A167614 (n + 1)).toNat)

end

end A305687.P18286232870060436530

/-! ## A305687.P10764923575009811233

`lcm(A033999(n), A305692(A167614(n+1)))`
-/

namespace A305687.P10764923575009811233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305692 (A167614 (n + 1)).toNat)

end

end A305687.P10764923575009811233

/-!
# A305688: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305688, there is no canonical definition to state claims against.
-/

/-! ## A305688.P1102334099300683715

`A305692(A141214(n)+7)`
-/

namespace A305688.P1102334099300683715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A141214 n + 7).toNat

end

end A305688.P1102334099300683715

/-! ## A305688.P15845239878746314149

`A305692(A052905(n)+9)`
-/

namespace A305688.P15845239878746314149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A052905 n + 9).toNat

end

end A305688.P15845239878746314149

/-! ## A305688.P14806078934353330491

`A305692(A167614(n+2)+1)`
-/

namespace A305688.P14806078934353330491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A167614 (n + 2) + 1).toNat

end

end A305688.P14806078934353330491

/-! ## A305688.P16661370082579134529

`A305692(eq[5, A131818(n+1)])`
-/

namespace A305688.P16661370082579134529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305688.P16661370082579134529

/-! ## A305688.P3612534852154831935

`A305692(Δ[A264443(n)-n²])`
-/

namespace A305688.P3612534852154831935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (f1 (n + 1) - f1 n).toNat

end

end A305688.P3612534852154831935

/-!
# A305689: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305689, there is no canonical definition to state claims against.
-/

/-! ## A305689.P6700123686749599231

`A305692(A167499(n+3))`
-/

namespace A305689.P6700123686749599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A167499 (n + 3)).toNat

end

end A305689.P6700123686749599231

/-! ## A305689.P14492622192796620295

`A305692(A056000(n)+15)`
-/

namespace A305689.P14492622192796620295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A056000 n + 15).toNat

end

end A305689.P14492622192796620295

/-! ## A305689.P1683627864996680542

`A305692(eq[6, A131818(n+1)])`
-/

namespace A305689.P1683627864996680542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305689.P1683627864996680542

/-! ## A305689.P16266810184464899830

`A305692(Δ[A264443(n)])`
-/

namespace A305689.P16266810184464899830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (f1 (n + 1) - f1 n).toNat

end

end A305689.P16266810184464899830

/-! ## A305689.P409888834879288494

`A305692(A374005(n+1))`
-/

namespace A305689.P409888834879288494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A374005 (n + 1)).toNat

end

end A305689.P409888834879288494

/-!
# A305690: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305690, there is no canonical definition to state claims against.
-/

/-! ## A305690.P6106836540416663678

`A305692(A056115(n)+21)`
-/

namespace A305690.P6106836540416663678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A056115 n + 21).toNat

end

end A305690.P6106836540416663678

/-! ## A305690.P8940087139341121977

`A305692(eq[7, A131818(n+1)])`
-/

namespace A305690.P8940087139341121977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305690.P8940087139341121977

/-! ## A305690.P10381861088817384642

`A305692(A374007(n+1))`
-/

namespace A305690.P10381861088817384642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A374007 (n + 1)).toNat

end

end A305690.P10381861088817384642

/-! ## A305690.P11985821140089811701

`A305692(A052905(n+3))`
-/

namespace A305690.P11985821140089811701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A052905 (n + 3)).toNat

end

end A305690.P11985821140089811701

/-! ## A305690.P13596789332875362603

`A305692(eq[3, A219347(n)])`
-/

namespace A305690.P13596789332875362603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305690.P13596789332875362603

/-!
# A305691: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305691, there is no canonical definition to state claims against.
-/

/-! ## A305691.P11117777187273986926

`A305692(A056119(n)+28)`
-/

namespace A305691.P11117777187273986926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A056119 n + 28).toNat

end

end A305691.P11117777187273986926

/-! ## A305691.P16548936007171295542

`A305692(eq[11, A066657(n)])`
-/

namespace A305691.P16548936007171295542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305691.P16548936007171295542

/-! ## A305691.P9075829140523244716

`A305692(eq[8, A131818(n+1)])`
-/

namespace A305691.P9075829140523244716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305691.P9075829140523244716

/-! ## A305691.P5190563961020625718

`A305692(A374008(n+1))`
-/

namespace A305691.P5190563961020625718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (A374008 (n + 1)).toNat

end

end A305691.P5190563961020625718

/-! ## A305691.P814671003944981228

`A305692(eq[4, A219347(n)])`
-/

namespace A305691.P814671003944981228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305691.P814671003944981228

/-!
# A305692: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305692, there is no canonical definition to state claims against.
-/

/-! ## A305692.P10620589697427619566

`A317072(n+1)-A351357(A001263(n+1))`
-/

namespace A305692.P10620589697427619566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (n + 1) - A351357 (A001263 (n + 1)).toNat

end

end A305692.P10620589697427619566

/-! ## A305692.P5916863778011905167

`A317072(n+1)-A010894(A003401(n+1))`
-/

namespace A305692.P5916863778011905167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A305692.P5916863778011905167

/-! ## A305692.P14374076018636294904

`A317072(n+1)+A016389(A022166(n))`
-/

namespace A305692.P14374076018636294904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (n + 1) + A016389 (A022166 n).toNat

end

end A305692.P14374076018636294904

/-! ## A305692.P5294567783441724567

`A317072(n+1)+A016389(A027336(n))`
-/

namespace A305692.P5294567783441724567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (n + 1) + A016389 (A027336 n).toNat

end

end A305692.P5294567783441724567

/-! ## A305692.P13227373982746111870

`A317072(n+1)+A016389(A176561(n))`
-/

namespace A305692.P13227373982746111870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317072 (n + 1) + A016389 (A176561 n).toNat

end

end A305692.P13227373982746111870

/-!
# A305693: a(n) = binomial(4*n, 2*n) - 4*n*binomial(2*n-2, n-1).

The programs for A305693, there is no canonical definition to state claims against.
-/

/-! ## A305693.P6613630640428668320

`A108558(∑[4*n])`
-/

namespace A305693.P6613630640428668320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305693.P6613630640428668320

/-! ## A305693.P6558933821494682273

`record[A108558(A265225(n))]`
-/

namespace A305693.P6558933821494682273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305693.P6558933821494682273

/-! ## A305693.P1677134779704346315

`record[A108558(A226725(n+1))]`
-/

namespace A305693.P1677134779704346315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305693.P1677134779704346315

/-! ## A305693.P14629484276658000951

`record[A108558(n*A003982(n))]`
-/

namespace A305693.P14629484276658000951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305693.P14629484276658000951

/-! ## A305693.P10540646225868021827

`record[gcd(A108558(n), A112467(n))]`
-/

namespace A305693.P10540646225868021827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108558 n) (A112467 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305693.P10540646225868021827

/-! ## A305693.P14294980338616778362

`record[A108558(gcd(n, A114327(n)))]`
-/

namespace A305693.P14294980338616778362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108558 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305693.P14294980338616778362

/-!
# A305694: Number of length-n binary words containing no instance of the pattern x y y x^R where x and y are nonempty.

The programs for A305694, there is no canonical definition to state claims against.
-/

/-! ## A305694.P3432488022133929802

`∑[A330241(∏[n/a(n-1)+1]-1)]` with `a(0)=2, a(1)=1`
-/

namespace A305694.P3432488022133929802
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (n : ℚ) / f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305694.P3432488022133929802

/-! ## A305694.P13923627401070400778

`A085501(∑[(n+2)*2^n]-1)-floor(n/2)`
-/

namespace A305694.P13923627401070400778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - ⌊(n : ℚ) / 2⌋

end

end A305694.P13923627401070400778

/-! ## A305694.P10732160653880867679

`∑[A046823(A088218(n))]`
-/

namespace A305694.P10732160653880867679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046823 (A088218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305694.P10732160653880867679

/-! ## A305694.P11492012457235204662

`A352745(A082379(n+1))`
-/

namespace A305694.P11492012457235204662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A082379 (n + 1)).toNat

end

end A305694.P11492012457235204662

/-! ## A305694.P12407838955053357942

`∑[A005811(∑[A208983(n)])]`
-/

namespace A305694.P12407838955053357942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305694.P12407838955053357942

