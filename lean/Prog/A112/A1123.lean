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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112300: Expansion of x * (1 - x)^2 * (1 - x^2) / (1 - x^6) in powers of x.

The programs for A112300, the canonical program `A112300.P5336532514073545578` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112300 has offset 1).

The definition of A112300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^3-x^4)/(1-x^6))` (program `A112300.P5336532514073545578`, by `A112300.P5336532514073545578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112300.P13443443935583636553

`ogf((1-2x+x^2)/(1+x^2+x^4))`
-/

namespace A112300.P13443443935583636553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, 0, 1, 0, 1] n

end

end A112300.P13443443935583636553

namespace A112300

/-- `ogf((1-2x+x^2)/(1+x^2+x^4))` -/
def P13443443935583636553.Spec : Prop :=
  ∀ n, P13443443935583636553.a n = A112300 (n + 1)

end A112300

/-! ## A112300.P5336532514073545578

`ogf((1-2x+2x^3-x^4)/(1-x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112300

/-- `ogf((1-2x+2x^3-x^4)/(1-x^6))` -/
def P5336532514073545578.Spec : Prop :=
  ∀ n, P5336532514073545578.a n = A112300 (n + 1)

theorem P5336532514073545578.correct : P5336532514073545578.Spec := by
  intro n
  simp only [A112300, Nat.add_sub_cancel]

end A112300

/-!
# A112301: Expansion of (eta(q) * eta(q^16))^2 / (eta(q^2) * eta(q^8)) in powers of q.

The programs for A112301, the canonical program `A112301.P15026904141317085207` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112301 has offset 1).

The definition of A112301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112301.P11219338222224064169

`(-1)^n*A134013(n+1)`
-/

namespace A112301.P11219338222224064169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134013 (n + 1)

end

end A112301.P11219338222224064169

namespace A112301

/-- `(-1)^n*A134013(n+1)` -/
def P11219338222224064169.Spec : Prop :=
  ∀ n, P11219338222224064169.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P15026904141317085207

`A113652(n+1)*A130731(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112301

/-- `A113652(n+1)*A130731(n)` -/
def P15026904141317085207.Spec : Prop :=
  ∀ n, P15026904141317085207.a n = A112301 (n + 1)

theorem P15026904141317085207.correct : P15026904141317085207.Spec := by
  intro n
  simp only [A112301, Nat.add_sub_cancel]

end A112301

/-! ## A112301.P4894283789358182720

`A035184(n+1)*A219977(n)`
-/

namespace A112301.P4894283789358182720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A219977 n

end

end A112301.P4894283789358182720

namespace A112301

/-- `A035184(n+1)*A219977(n)` -/
def P4894283789358182720.Spec : Prop :=
  ∀ n, P4894283789358182720.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P7405436700656339895

`A134013(n+1)*A219977(n)`
-/

namespace A112301.P7405436700656339895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (n + 1) * A219977 n

end

end A112301.P7405436700656339895

namespace A112301

/-- `A134013(n+1)*A219977(n)` -/
def P7405436700656339895.Spec : Prop :=
  ∀ n, P7405436700656339895.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P15683585402081299946

`A035184(n+1)*A112299(n+1)`
-/

namespace A112301.P15683585402081299946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A112299 (n + 1)

end

end A112301.P15683585402081299946

namespace A112301

/-- `A035184(n+1)*A112299(n+1)` -/
def P15683585402081299946.Spec : Prop :=
  ∀ n, P15683585402081299946.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P6580606321483161152

`A002654(n+1)*A230074(n+1)`
-/

namespace A112301.P6580606321483161152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A230074 (n + 1)

end

end A112301.P6580606321483161152

namespace A112301

/-- `A002654(n+1)*A230074(n+1)` -/
def P6580606321483161152.Spec : Prop :=
  ∀ n, P6580606321483161152.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P13740435654821421557

`A134013(n+1)*A209615(n+1)`
-/

namespace A112301.P13740435654821421557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (n + 1) * A209615 (n + 1)

end

end A112301.P13740435654821421557

namespace A112301

/-- `A134013(n+1)*A209615(n+1)` -/
def P13740435654821421557.Spec : Prop :=
  ∀ n, P13740435654821421557.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P3249966307118606352

`A134013(n+1)*A309873(n+1)`
-/

namespace A112301.P3249966307118606352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (n + 1) * A309873 (n + 1)

end

end A112301.P3249966307118606352

namespace A112301

/-- `A134013(n+1)*A309873(n+1)` -/
def P3249966307118606352.Spec : Prop :=
  ∀ n, P3249966307118606352.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P16893913534476068934

`(A010873(n+3)-2)*A002654(n+1)`
-/

namespace A112301.P16893913534476068934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010873 (n + 3) - 2) * A002654 (n + 1)

end

end A112301.P16893913534476068934

namespace A112301

/-- `(A010873(n+3)-2)*A002654(n+1)` -/
def P16893913534476068934.Spec : Prop :=
  ∀ n, P16893913534476068934.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P7043327701291318479

`∑{d}[n+1, A033999(#-1)*A112299((n+1)/#)]`
-/

namespace A112301.P7043327701291318479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A112299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112301.P7043327701291318479

namespace A112301

/-- `∑{d}[n+1, A033999(#-1)*A112299((n+1)/#)]` -/
def P7043327701291318479.Spec : Prop :=
  ∀ n, P7043327701291318479.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P5594449154071818379

`∑{d}[n+1, A056594(#-1)*A230074((n+1)/#)]`
-/

namespace A112301.P5594449154071818379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112301.P5594449154071818379

namespace A112301

/-- `∑{d}[n+1, A056594(#-1)*A230074((n+1)/#)]` -/
def P5594449154071818379.Spec : Prop :=
  ∀ n, P5594449154071818379.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P4451383681322627047

`A008442(n+1)-(A290081(n+1)+A290081(n+1))`
-/

namespace A112301.P4451383681322627047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (n + 1) - (A290081 (n + 1) + A290081 (n + 1))

end

end A112301.P4451383681322627047

namespace A112301

/-- `A008442(n+1)-(A290081(n+1)+A290081(n+1))` -/
def P4451383681322627047.Spec : Prop :=
  ∀ n, P4451383681322627047.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P3627636741716575289

`A134015(n+1)+abs(A134015(n+1))-A134013(n+1)`
-/

namespace A112301.P3627636741716575289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134015 (n + 1) + (|A134015 (n + 1)| - A134013 (n + 1))

end

end A112301.P3627636741716575289

namespace A112301

/-- `A134015(n+1)+abs(A134015(n+1))-A134013(n+1)` -/
def P3627636741716575289.Spec : Prop :=
  ∀ n, P3627636741716575289.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P11788531740545962237

`A134013(n+1)/(A000035(n+1)-A000035(n))`
-/

namespace A112301.P11788531740545962237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134013 (n + 1) : ℚ) / (A000035 (n + 1) - A000035 n : ℚ)

end

end A112301.P11788531740545962237

namespace A112301

/-- `A134013(n+1)/(A000035(n+1)-A000035(n))` -/
def P11788531740545962237.Spec : Prop :=
  ∀ n, P11788531740545962237.a n = (A112301 (n + 1) : ℚ)

end A112301

/-! ## A112301.P10221494267792215559

`A134013(2*(n+1))-A134013(n+1)`
-/

namespace A112301.P10221494267792215559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (2 * (n + 1)) - A134013 (n + 1)

end

end A112301.P10221494267792215559

namespace A112301

/-- `A134013(2*(n+1))-A134013(n+1)` -/
def P10221494267792215559.Spec : Prop :=
  ∀ n, P10221494267792215559.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P5823786279956117625

`xor(A134015(2*(n+1)), A134015(n+1))`
-/

namespace A112301.P5823786279956117625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134015 (2 * (n + 1))) (A134015 (n + 1))

end

end A112301.P5823786279956117625

namespace A112301

/-- `xor(A134015(2*(n+1)), A134015(n+1))` -/
def P5823786279956117625.Spec : Prop :=
  ∀ n, P5823786279956117625.a n = A112301 (n + 1)

end A112301

/-! ## A112301.P17129561386071719426

`A113406(n+1)-A113406(2*(n+1))`
-/

namespace A112301.P17129561386071719426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113406 (n + 1) - A113406 (2 * (n + 1))

end

end A112301.P17129561386071719426

namespace A112301

/-- `A113406(n+1)-A113406(2*(n+1))` -/
def P17129561386071719426.Spec : Prop :=
  ∀ n, P17129561386071719426.a n = A112301 (n + 1)

end A112301

/-!
# A112303: Permutation of primes generated by 3-rowed array shown below.

The programs for A112303, there is no canonical definition to state claims against.
-/

/-! ## A112303.P12049953034229184778

`A000040(A115302(n+1)%A080313(n))`
-/

namespace A112303.P12049953034229184778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A115302 (n + 1)) (A080313 n)).toNat

end

end A112303.P12049953034229184778

/-! ## A112303.P64071949398266929

`A000040(A116551(n+1)+1)%A014224(n+5)`
-/

namespace A112303.P64071949398266929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A116551 (n + 1) + 1).toNat) (A014224 (n + 5))

end

end A112303.P64071949398266929

/-! ## A112303.P4492066280347979847

`A000040(A115302(n+1))%A340582(A007318(n))`
-/

namespace A112303.P4492066280347979847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A115302 (n + 1)).toNat) (A340582 (A007318 n).toNat)

end

end A112303.P4492066280347979847

/-! ## A112303.P4615254984353160900

`A000040(A115302(n+1))%A115302(2*(n+2))²`
-/

namespace A112303.P4615254984353160900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A115302 (n + 1)).toNat) (A115302 (2 * (n + 2)) ^ 2)

end

end A112303.P4615254984353160900

/-! ## A112303.P12529595467364155279

`A000040((A116551(n+1)+1)%A374698(2*(n+2)))`
-/

namespace A112303.P12529595467364155279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A116551 (n + 1) + 1) (A374698 (2 * (n + 2)))).toNat

end

end A112303.P12529595467364155279

/-!
# A112304: Least number whose least prime quadratic nonresidue is prime(n).

The programs for A112304, there is no canonical definition to state claims against.
-/

/-! ## A112304.P13528826792459860611

`A181498(A107679(n+1))`
-/

namespace A112304.P13528826792459860611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181498 (A107679 (n + 1)).toNat

end

end A112304.P13528826792459860611

/-!
# A112306: a(n) = number of terms in s(n), where s(n) is defined in A096055.

The programs for A112306, there is no canonical definition to state claims against.
-/

/-! ## A112306.P10674975941601670807

`a(n-1)*2+A096055(n)` with `a(0)=1`
-/

namespace A112306.P10674975941601670807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * 2 + A096055 n

end

end A112306.P10674975941601670807

/-! ## A112306.P4179811454576118191

`A291753(n+1)-A044941(A020707(n))`
-/

namespace A112306.P4179811454576118191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291753 (n + 1) - A044941 (A020707 n).toNat

end

end A112306.P4179811454576118191

/-! ## A112306.P12207828555797243819

`A291753(n+1)-A044941(A146541(n))`
-/

namespace A112306.P12207828555797243819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291753 (n + 1) - A044941 (A146541 n).toNat

end

end A112306.P12207828555797243819

/-! ## A112306.P10770353243242538389

`A291753(n+1)-A178798(A052330(n))`
-/

namespace A112306.P10770353243242538389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291753 (n + 1) - A178798 (A052330 n).toNat

end

end A112306.P10770353243242538389

/-! ## A112306.P14094427694409375357

`A291753(n+1)+A010815(A030633(n+1))`
-/

namespace A112306.P14094427694409375357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291753 (n + 1) + A010815 (A030633 (n + 1)).toNat

end

end A112306.P14094427694409375357

/-!
# A112307: Triangle read by rows: T(n,k) is number of Dyck paths of semilength n with height of second peak equal to k (n>=1; 0<=k<=n-1).

The programs for A112307, there is no canonical definition to state claims against.
-/

/-! ## A112307.P13100655872073559173

`A091491(n)*A144328(n+1)`
-/

namespace A112307.P13100655872073559173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 n * A144328 (n + 1)

end

end A112307.P13100655872073559173

/-! ## A112307.P6172479489234346551

`A028310(A002262(n))*A091491(n)`
-/

namespace A112307.P6172479489234346551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat * A091491 n

end

end A112307.P6172479489234346551

/-! ## A112307.P6481735031738830733

`A005361(A059268(n))*A091491(n)`
-/

namespace A112307.P6481735031738830733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A059268 n).toNat * A091491 n

end

end A112307.P6481735031738830733

/-! ## A112307.P2095562364879797132

`A046641(A140207(n))*A091491(n)`
-/

namespace A112307.P2095562364879797132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A140207 n).toNat * A091491 n

end

end A112307.P2095562364879797132

/-! ## A112307.P8267446786042059003

`A096465(A061579(n))*A144328(n+1)`
-/

namespace A112307.P8267446786042059003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A061579 n).toNat * A144328 (n + 1)

end

end A112307.P8267446786042059003

/-! ## A112307.P11806215775476913387

`A010054(n)+A002262(n)*A091491(n)`
-/

namespace A112307.P11806215775476913387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A002262 n * A091491 n

end

end A112307.P11806215775476913387

/-! ## A112307.P1404985032460750801

`∏{d}[A002262(n), A014963(#)]*A091491(n)`
-/

namespace A112307.P1404985032460750801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d) * A091491 n

end

end A112307.P1404985032460750801

/-! ## A112307.P14409589791467746535

`A061775(Δ[A048645(n+1)])*A091491(n)`
-/

namespace A112307.P14409589791467746535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (f1 (n + 1) - f1 n).toNat * A091491 n

end

end A112307.P14409589791467746535

/-! ## A112307.P2161130624342441891

`A028310(A002262(n))*A096465(A061579(n))`
-/

namespace A112307.P2161130624342441891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat * A096465 (A061579 n).toNat

end

end A112307.P2161130624342441891

/-!
# A112308: Sum of the heights of the second peaks in all Dyck paths of semilength n+2.

The programs for A112308, the canonical program `A112308.P12064346406734073467` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112308 has offset 0).

The definition of A112308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112308.P12064346406734073467

`∑[A070857(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112308

/-- `∑[A070857(n)]` -/
def P12064346406734073467.Spec : Prop :=
  ∀ n, P12064346406734073467.a n = A112308 n

theorem P12064346406734073467.correct : P12064346406734073467.Spec := by
  intro n
  simp only [A112308]

end A112308

/-! ## A112308.P2671102629600167290

`∑[∑[A071737(n)]]`
-/

namespace A112308.P2671102629600167290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071737 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P2671102629600167290

namespace A112308

/-- `∑[∑[A071737(n)]]` -/
def P2671102629600167290.Spec : Prop :=
  ∀ n, P2671102629600167290.a n = A112308 n

end A112308

/-! ## A112308.P7699530437416825157

`∑[A099376(n)+A071723(n)]`
-/

namespace A112308.P7699530437416825157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P7699530437416825157

namespace A112308

/-- `∑[A099376(n)+A071723(n)]` -/
def P7699530437416825157.Spec : Prop :=
  ∀ n, P7699530437416825157.a n = A112308 n

end A112308

/-! ## A112308.P511536361020115581

`∑[A390965(n)+A070031(n)]`
-/

namespace A112308.P511536361020115581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A070031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P511536361020115581

namespace A112308

/-- `∑[A390965(n)+A070031(n)]` -/
def P511536361020115581.Spec : Prop :=
  ∀ n, P511536361020115581.a n = A112308 n

end A112308

/-! ## A112308.P3362076674604495774

`A143955(n+2)+A114277(n)`
-/

namespace A112308.P3362076674604495774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 2) + A114277 n

end

end A112308.P3362076674604495774

namespace A112308

/-- `A143955(n+2)+A114277(n)` -/
def P3362076674604495774.Spec : Prop :=
  ∀ n, P3362076674604495774.a n = A112308 n

end A112308

/-! ## A112308.P14156009123890566815

`∑[∑[A002057(n)+A000588(n)]]`
-/

namespace A112308.P14156009123890566815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P14156009123890566815

namespace A112308

/-- `∑[∑[A002057(n)+A000588(n)]]` -/
def P14156009123890566815.Spec : Prop :=
  ∀ n, P14156009123890566815.a n = A112308 n

end A112308

/-! ## A112308.P15858038968573759086

`A143955(n+2)+∑[A099376(n+1)]`
-/

namespace A112308.P15858038968573759086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P15858038968573759086

namespace A112308

/-- `A143955(n+2)+∑[A099376(n+1)]` -/
def P15858038968573759086.Spec : Prop :=
  ∀ n, P15858038968573759086.a n = A112308 n

end A112308

/-! ## A112308.P4519001130916012342

`∑[2*A002057(n)-A000245(n+1)]`
-/

namespace A112308.P4519001130916012342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A000245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P4519001130916012342

namespace A112308

/-- `∑[2*A002057(n)-A000245(n+1)]` -/
def P4519001130916012342.Spec : Prop :=
  ∀ n, P4519001130916012342.a n = A112308 n

end A112308

/-! ## A112308.P14315750812617690016

`A002057(n)+A114277(n)-A014138(n+1)`
-/

namespace A112308.P14315750812617690016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A114277 n - A014138 (n + 1))

end

end A112308.P14315750812617690016

namespace A112308

/-- `A002057(n)+A114277(n)-A014138(n+1)` -/
def P14315750812617690016.Spec : Prop :=
  ∀ n, P14315750812617690016.a n = A112308 n

end A112308

/-! ## A112308.P3350913769705189508

`A114277(n)+A114277(n)-A001453(n+2)`
-/

namespace A112308.P3350913769705189508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n + (A114277 n - A001453 (n + 2))

end

end A112308.P3350913769705189508

namespace A112308

/-- `A114277(n)+A114277(n)-A001453(n+2)` -/
def P3350913769705189508.Spec : Prop :=
  ∀ n, P3350913769705189508.a n = A112308 n

end A112308

/-! ## A112308.P10870579401851045915

`2*A114277(n)-A001453(n+2)`
-/

namespace A112308.P10870579401851045915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114277 n - A001453 (n + 2)

end

end A112308.P10870579401851045915

namespace A112308

/-- `2*A114277(n)-A001453(n+2)` -/
def P10870579401851045915.Spec : Prop :=
  ∀ n, P10870579401851045915.a n = A112308 n

end A112308

/-! ## A112308.P2388668487217332255

`∑[A000344(n+2)-A000588(n+1)]`
-/

namespace A112308.P2388668487217332255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - A000588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P2388668487217332255

namespace A112308

/-- `∑[A000344(n+2)-A000588(n+1)]` -/
def P2388668487217332255.Spec : Prop :=
  ∀ n, P2388668487217332255.a n = A112308 n

end A112308

/-! ## A112308.P13855244585075953579

`∑[A002057(n)+A000344(n+2)]-A000344(n+2)`
-/

namespace A112308.P13855244585075953579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000344 (n + 2)

end

end A112308.P13855244585075953579

namespace A112308

/-- `∑[A002057(n)+A000344(n+2)]-A000344(n+2)` -/
def P13855244585075953579.Spec : Prop :=
  ∀ n, P13855244585075953579.a n = A112308 n

end A112308

/-! ## A112308.P12387014019407024915

`∑[A220101(n+2)-A265613(n)]`
-/

namespace A112308.P12387014019407024915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220101 (n + 2) - A265613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P12387014019407024915

namespace A112308

/-- `∑[A220101(n+2)-A265613(n)]` -/
def P12387014019407024915.Spec : Prop :=
  ∀ n, P12387014019407024915.a n = A112308 n

end A112308

/-!
# A112309: Triangle read by rows: row n gives terms in lazy Fibonacci representation of n.

The programs for A112309, there is no canonical definition to state claims against.
-/

/-! ## A112309.P7583904008749246983

`∑{e}[A110029(A064428(n)+1)+3, #]`
-/

namespace A112309.P7583904008749246983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A064428 n + 1).toNat + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112309.P7583904008749246983

/-! ## A112309.P5141968438268922889

`A001222(A054531(2*(n+1))+A046089(2*(n+1)))`
-/

namespace A112309.P5141968438268922889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054531 (2 * (n + 1)) + A046089 (2 * (n + 1))).toNat

end

end A112309.P5141968438268922889

/-! ## A112309.P16462391152396872411

`A205510(A106823(n)+A000129(n))`
-/

namespace A112309.P16462391152396872411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (A106823 n + A000129 n).toNat

end

end A112309.P16462391152396872411

/-! ## A112309.P5720373646498155291

`A001222(A333224(n)+A093794(n+1))`
-/

namespace A112309.P5720373646498155291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333224 n + A093794 (n + 1)).toNat

end

end A112309.P5720373646498155291

/-! ## A112309.P3819409463397363875

`A342083(A333658(n+4)+A000081(n))`
-/

namespace A112309.P3819409463397363875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342083 (A333658 (n + 4) + A000081 n).toNat

end

end A112309.P3819409463397363875

/-!
# A112310: Number of terms in lazy Fibonacci representation of n.

The programs for A112310, the canonical program `A112310.P5733942079183269524` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112310 has offset 0).

The definition of A112310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112310.P16907041762121510442

`∑{digits}[A104326(n), #]`
-/

namespace A112310.P16907041762121510442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A112310.P16907041762121510442

namespace A112310

/-- `∑{digits}[A104326(n), #]` -/
def P16907041762121510442.Spec : Prop :=
  ∀ n, (P16907041762121510442.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P6034107953873414278

`floor(log2(A232559(n+1)))`
-/

namespace A112310.P6034107953873414278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A232559 (n + 1)).toNat

end

end A112310.P6034107953873414278

namespace A112310

/-- `floor(log2(A232559(n+1)))` -/
def P6034107953873414278.Spec : Prop :=
  ∀ n, (P6034107953873414278.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P10032219609070084508

`floor(log2(A358654(n+1)))`
-/

namespace A112310.P10032219609070084508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A358654 (n + 1)).toNat

end

end A112310.P10032219609070084508

namespace A112310

/-- `floor(log2(A358654(n+1)))` -/
def P10032219609070084508.Spec : Prop :=
  ∀ n, (P10032219609070084508.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P5733942079183269524

`A200648(n+2)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112310

/-- `A200648(n+2)-1` -/
def P5733942079183269524.Spec : Prop :=
  ∀ n, P5733942079183269524.a n = A112310 n

theorem P5733942079183269524.correct : P5733942079183269524.Spec := by
  intro n
  simp only [A112310]

end A112310

/-! ## A112310.P8585445744517946698

`floor(log2(A200714(n+2)))`
-/

namespace A112310.P8585445744517946698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A200714 (n + 2)).toNat

end

end A112310.P8585445744517946698

namespace A112310

/-- `floor(log2(A200714(n+2)))` -/
def P8585445744517946698.Spec : Prop :=
  ∀ n, (P8585445744517946698.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P16334369511609896745

`floor(log2(A385818(n+1)))`
-/

namespace A112310.P16334369511609896745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A385818 (n + 1)).toNat

end

end A112310.P16334369511609896745

namespace A112310

/-- `floor(log2(A385818(n+1)))` -/
def P16334369511609896745.Spec : Prop :=
  ∀ n, (P16334369511609896745.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P5630047811160351664

`A131343(A195121(n+1))-1`
-/

namespace A112310.P5630047811160351664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131343 (A195121 (n + 1)).toNat - 1

end

end A112310.P5630047811160351664

namespace A112310

/-- `A131343(A195121(n+1))-1` -/
def P5630047811160351664.Spec : Prop :=
  ∀ n, P5630047811160351664.a n = A112310 n

end A112310

/-! ## A112310.P9236083382009391773

`A131343(A305847(n+2))-1`
-/

namespace A112310.P9236083382009391773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131343 (A305847 (n + 2)).toNat - 1

end

end A112310.P9236083382009391773

namespace A112310

/-- `A131343(A305847(n+2))-1` -/
def P9236083382009391773.Spec : Prop :=
  ∀ n, P9236083382009391773.a n = A112310 n

end A112310

/-! ## A112310.P8613636584432958352

`A033265(A052499(n))`
-/

namespace A112310.P8613636584432958352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A052499 n).toNat

end

end A112310.P8613636584432958352

namespace A112310

/-- `A033265(A052499(n))` -/
def P8613636584432958352.Spec : Prop :=
  ∀ n, P8613636584432958352.a n = A112310 n

end A112310

/-! ## A112310.P12090795772804114995

`A033265(A003754(n+1)+1)`
-/

namespace A112310.P12090795772804114995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A003754 (n + 1) + 1).toNat

end

end A112310.P12090795772804114995

namespace A112310

/-- `A033265(A003754(n+1)+1)` -/
def P12090795772804114995.Spec : Prop :=
  ∀ n, P12090795772804114995.a n = A112310 n

end A112310

/-! ## A112310.P7240601145854969196

`A033265((A247648(n+1)+1)/2)`
-/

namespace A112310.P7240601145854969196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (SequenceMachineLib.roundAway ((A247648 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A112310.P7240601145854969196

namespace A112310

/-- `A033265((A247648(n+1)+1)/2)` -/
def P7240601145854969196.Spec : Prop :=
  ∀ n, P7240601145854969196.a n = A112310 n

end A112310

/-! ## A112310.P17558672563603596614

`A033265(A247648(n+1))`
-/

namespace A112310.P17558672563603596614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A247648 (n + 1)).toNat

end

end A112310.P17558672563603596614

namespace A112310

/-- `A033265(A247648(n+1))` -/
def P17558672563603596614.Spec : Prop :=
  ∀ n, P17558672563603596614.a n = A112310 n

end A112310

/-! ## A112310.P10681281404536296072

`A331362(A003754(n+1))`
-/

namespace A112310.P10681281404536296072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A003754 (n + 1)).toNat

end

end A112310.P10681281404536296072

namespace A112310

/-- `A331362(A003754(n+1))` -/
def P10681281404536296072.Spec : Prop :=
  ∀ n, P10681281404536296072.a n = A112310 n

end A112310

/-! ## A112310.P12754371731199288638

`A331362(A052499(n)-1)`
-/

namespace A112310.P12754371731199288638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A052499 n - 1).toNat

end

end A112310.P12754371731199288638

namespace A112310

/-- `A331362(A052499(n)-1)` -/
def P12754371731199288638.Spec : Prop :=
  ∀ n, P12754371731199288638.a n = A112310 n

end A112310

/-! ## A112310.P6990005533796236128

`A000523(A385818(n+1))`
-/

namespace A112310.P6990005533796236128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A385818 (n + 1)).toNat

end

end A112310.P6990005533796236128

namespace A112310

/-- `A000523(A385818(n+1))` -/
def P6990005533796236128.Spec : Prop :=
  ∀ n, P6990005533796236128.a n = A112310 n

end A112310

/-! ## A112310.P7902446612491209362

`A000523(A232559(n+1))`
-/

namespace A112310.P7902446612491209362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A232559 (n + 1)).toNat

end

end A112310.P7902446612491209362

namespace A112310

/-- `A000523(A232559(n+1))` -/
def P7902446612491209362.Spec : Prop :=
  ∀ n, P7902446612491209362.a n = A112310 n

end A112310

/-! ## A112310.P6100456970804225250

`floor(log2(A232638(n+2)-1))`
-/

namespace A112310.P6100456970804225250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A232638 (n + 2) - 1).toNat

end

end A112310.P6100456970804225250

namespace A112310

/-- `floor(log2(A232638(n+2)-1))` -/
def P6100456970804225250.Spec : Prop :=
  ∀ n, (P6100456970804225250.a n : ℤ) = A112310 n

end A112310

/-! ## A112310.P8132336579317634523

`A000120(A003754(n+1))`
-/

namespace A112310.P8132336579317634523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003754 (n + 1)).toNat

end

end A112310.P8132336579317634523

namespace A112310

/-- `A000120(A003754(n+1))` -/
def P8132336579317634523.Spec : Prop :=
  ∀ n, P8132336579317634523.a n = A112310 n

end A112310

/-! ## A112310.P8620124947093833947

`A000120(A052499(n)-1)`
-/

namespace A112310.P8620124947093833947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A052499 n - 1).toNat

end

end A112310.P8620124947093833947

namespace A112310

/-- `A000120(A052499(n)-1)` -/
def P8620124947093833947.Spec : Prop :=
  ∀ n, P8620124947093833947.a n = A112310 n

end A112310

/-! ## A112310.P9211495483138165133

`A331470(A052499(n)-1)`
-/

namespace A112310.P9211495483138165133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331470 (A052499 n - 1).toNat

end

end A112310.P9211495483138165133

namespace A112310

/-- `A331470(A052499(n)-1)` -/
def P9211495483138165133.Spec : Prop :=
  ∀ n, P9211495483138165133.a n = A112310 n

end A112310

/-!
# A112311: a(1)=1, a(2)=2, a(3)=9; a(n) = n*(n - 2)*a(n - 1)^2/(n - 1).

The programs for A112311, the canonical program `A112311.P7934757686559353521` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112311 has offset 1).

The definition of A112311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112311.P7934757686559353521

`(n+1)*(n-1)*a(n-1)²/n` with `a(0)=1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112311

/-- `(n+1)*(n-1)*a(n-1)²/n` -/
def P7934757686559353521.Spec : Prop :=
  ∀ n, P7934757686559353521.a n = (A112311 (n + 1) : ℚ)

end A112311

/-!
# A112312: Least index k>1 such that the n-th prime divides the k-th tribonacci number.

The programs for A112312, there is no canonical definition to state claims against.
-/

/-! ## A112312.P17380468157253974840

`A112618(1+n)+1`
-/

namespace A112312.P17380468157253974840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112618 (1 + n) + 1

end

end A112312.P17380468157253974840

/-! ## A112312.P687753052705541470

`A020725(A112618(n+1))`
-/

namespace A112312.P687753052705541470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A112618 (n + 1)).toNat

end

end A112312.P687753052705541470

/-! ## A112312.P11921521097737233463

`A112305(p?[xor(1, n)+1])+1`
-/

namespace A112312.P11921521097737233463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A112312.P11921521097737233463

/-! ## A112312.P8133576052963485206

`A112305(Δ[A007504(n)])+1`
-/

namespace A112312.P8133576052963485206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (n + 1) - f1 n).toNat + 1

end

end A112312.P8133576052963485206

/-! ## A112312.P11989709106185503511

`A112305(record[A051698(n)])+1`
-/

namespace A112312.P11989709106185503511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A112312.P11989709106185503511

/-! ## A112312.P10991863855919796613

`A112305(p?[A001057(n)])+1`
-/

namespace A112312.P10991863855919796613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A112312.P10991863855919796613

/-! ## A112312.P14356937492507281454

`∑{d}[Δ[A007504(n)], A112305(#)]`
-/

namespace A112312.P14356937492507281454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112305 d

end

end A112312.P14356937492507281454

/-! ## A112312.P6386896051167178862

`∑{d}[p?[A001057(n)], A112305(#)]`
-/

namespace A112312.P6386896051167178862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A112305 d

end

end A112312.P6386896051167178862

/-! ## A112312.P3941399151671167672

`A112305(A000040(n+1))+1`
-/

namespace A112312.P3941399151671167672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (A000040 (n + 1)).toNat + 1

end

end A112312.P3941399151671167672

/-!
# A112313: Number of partitions of n into products of 3 primes.

The programs for A112313, there is no canonical definition to state claims against.
-/

/-! ## A112313.P16080422548742011994

`A112315(4*n)%A294226(n)`
-/

namespace A112313.P16080422548742011994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112315 (4 * n)) (A294226 n)

end

end A112313.P16080422548742011994

/-! ## A112313.P14803505996630411051

`A112314(2*n)%A171467(n+1)`
-/

namespace A112313.P14803505996630411051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112314 (2 * n)) (A171467 (n + 1))

end

end A112313.P14803505996630411051

/-! ## A112313.P18073370471650647018

`A112316(A123175(n))+A112314(2*n)`
-/

namespace A112313.P18073370471650647018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A123175 n).toNat + A112314 (2 * n)

end

end A112313.P18073370471650647018

/-! ## A112313.P2307037056207935604

`A112316(8*n)%A017137(A212101(n))`
-/

namespace A112313.P2307037056207935604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (8 * n)) (A017137 (A212101 n).toNat)

end

end A112313.P2307037056207935604

/-! ## A112313.P11263663351543301990

`A112314(2*n)+A112314(A194436(n+1))`
-/

namespace A112313.P11263663351543301990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112314 (2 * n) + A112314 (A194436 (n + 1)).toNat

end

end A112313.P11263663351543301990

/-! ## A112313.P718729679548639362

`A014963(A265556(n+1))*A112314(2*n)`
-/

namespace A112313.P718729679548639362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A265556 (n + 1)).toNat * A112314 (2 * n)

end

end A112313.P718729679548639362

/-! ## A112313.P8027027619509467860

`A318608(A096173(3*n+1))+A112315(4*n)`
-/

namespace A112313.P8027027619509467860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (A096173 (3 * n + 1)).toNat + A112315 (4 * n)

end

end A112313.P8027027619509467860

/-! ## A112313.P9157136198102556693

`A112314(2*n)+A112314(A215405(n+2))`
-/

namespace A112313.P9157136198102556693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112314 (2 * n) + A112314 (A215405 (n + 2)).toNat

end

end A112313.P9157136198102556693

/-! ## A112313.P7571166453347446376

`A112314(2*n)%A126727(n+1)`
-/

namespace A112313.P7571166453347446376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112314 (2 * n)) (A126727 (n + 1))

end

end A112313.P7571166453347446376

/-! ## A112313.P7543859357385565191

`A112316(A022144(n))+A039970(A009953(n))`
-/

namespace A112313.P7543859357385565191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A022144 n).toNat + A039970 (A009953 n).toNat

end

end A112313.P7543859357385565191

/-!
# A112314: Number of partitions of n into products of 4 primes.

The programs for A112314, there is no canonical definition to state claims against.
-/

/-! ## A112314.P15747065412602553813

`A112316(4*n)%p?[A000124(n+5)]`
-/

namespace A112314.P15747065412602553813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (4 * n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A112314.P15747065412602553813

/-! ## A112314.P17172207444192317941

`A112316(4*n)+A000007(A029087(n))`
-/

namespace A112314.P17172207444192317941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (4 * n) + A000007 (A029087 n).toNat

end

end A112314.P17172207444192317941

/-! ## A112314.P3825168235479813200

`A112315(2*n)%A090292(A236343(n))`
-/

namespace A112314.P3825168235479813200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112315 (2 * n)) (A090292 (A236343 n).toNat)

end

end A112314.P3825168235479813200

/-! ## A112314.P6567177694818494952

`A112315(2*n)+A000038(A008747(n+1))`
-/

namespace A112314.P6567177694818494952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (2 * n) + A000038 (A008747 (n + 1)).toNat

end

end A112314.P6567177694818494952

/-! ## A112314.P6610570725344000130

`A112315(2*(n+1)-2)+A000007(A008747(n+1))`
-/

namespace A112314.P6610570725344000130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (2 * (n + 1) - 2) + A000007 (A008747 (n + 1)).toNat

end

end A112314.P6610570725344000130

/-! ## A112314.P4816305285415955125

`A112316(4*n)+A088917(∑[2*n+1])`
-/

namespace A112314.P4816305285415955125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (4 * n) + A088917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112314.P4816305285415955125

/-! ## A112314.P7912224759256777927

`A056926(A112315(2*n)²)`
-/

namespace A112314.P7912224759256777927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A112315 (2 * n) ^ 2).toNat

end

end A112314.P7912224759256777927

/-! ## A112314.P17768717609731394216

`A001511(A209898(n+1))*A112316(4*n)`
-/

namespace A112314.P17768717609731394216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A209898 (n + 1)).toNat * A112316 (4 * n)

end

end A112314.P17768717609731394216

/-! ## A112314.P10969972271668370577

`A112316(lcm(A008574(n), A136602(n+1)))`
-/

namespace A112314.P10969972271668370577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (Int.lcm (A008574 n) (A136602 (n + 1)))

end

end A112314.P10969972271668370577

/-! ## A112314.P7428388719816508631

`A000194(A112316(4*n)^2)`
-/

namespace A112314.P7428388719816508631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A112316 (4 * n) ^ 2).toNat

end

end A112314.P7428388719816508631

/-! ## A112314.P16001910757182052089

`A112316(4*n^A112316(n)!)`
-/

namespace A112314.P16001910757182052089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (4 * n ^ Nat.factorial (A112316 n).toNat)

end

end A112314.P16001910757182052089

/-! ## A112314.P15013935145986688747

`A112316(4*A099026(∑[n]))`
-/

namespace A112314.P15013935145986688747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (4 * A099026 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A112314.P15013935145986688747

/-!
# A112315: Number of partitions of n into products of 5 primes.

The programs for A112315, there is no canonical definition to state claims against.
-/

/-! ## A112315.P3262501665720014109

`A112316(2*n)+A023533(A064555(n+1))*A025468(n)`
-/

namespace A112315.P3262501665720014109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (2 * n) + A023533 (A064555 (n + 1)).toNat * A025468 n

end

end A112315.P3262501665720014109

/-! ## A112315.P6471968862170268244

`A118759(A112316(n+n))`
-/

namespace A112315.P6471968862170268244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A112316 (n + n)).toNat

end

end A112315.P6471968862170268244

/-! ## A112315.P1544922708536675403

`A112316(2*n)^A019433(n)`
-/

namespace A112315.P1544922708536675403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112316 (2 * n) : ℚ) ^ (A019433 n : ℤ)

end

end A112315.P1544922708536675403

/-! ## A112315.P6029114913845932326

`A112316(A004277(n))^A019431(n)`
-/

namespace A112315.P6029114913845932326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112316 (A004277 n).toNat : ℚ) ^ (A019431 n : ℤ)

end

end A112315.P6029114913845932326

/-! ## A112315.P12456592411438873642

`A112316(2*n)%A200737(A029087(n))`
-/

namespace A112315.P12456592411438873642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (2 * n)) (A200737 (A029087 n).toNat)

end

end A112315.P12456592411438873642

/-! ## A112315.P11240180840494289456

`gcd(A000122(A208156(n+5)), A112316(n+n))`
-/

namespace A112315.P11240180840494289456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A208156 (n + 5)).toNat) (A112316 (n + n))

end

end A112315.P11240180840494289456

/-! ## A112315.P4432409255256806404

`A112316(A042948(n))%A000118(A028387(n))`
-/

namespace A112315.P4432409255256806404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (A042948 n).toNat) (A000118 (A028387 n).toNat)

end

end A112315.P4432409255256806404

/-! ## A112315.P16147816994296574609

`A112316(A014601(n))/A042974(A027379(n+2))`
-/

namespace A112315.P16147816994296574609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112316 (A014601 n).toNat : ℚ) / (A042974 (A027379 (n + 2)).toNat : ℚ)

end

end A112315.P16147816994296574609

/-! ## A112315.P9845627935937879704

`A209862(A112316(log2(A000079(n)²)))`
-/

namespace A112315.P9845627935937879704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (A112316 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n ^ 2 : ℝ))).toNat).toNat

end

end A112315.P9845627935937879704

/-! ## A112315.P9360467362916935942

`A112316(A014601(n))/A318454(A157947(n+1))`
-/

namespace A112315.P9360467362916935942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112316 (A014601 n).toNat : ℚ) / (A318454 (A157947 (n + 1)).toNat : ℚ)

end

end A112315.P9360467362916935942

/-! ## A112315.P3347685242468350248

`A112316(2*n)*A132460(n²)`
-/

namespace A112315.P3347685242468350248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (2 * n) * A132460 (n ^ 2)

end

end A112315.P3347685242468350248

/-!
# A112316: Number of partitions of n into products of 6 primes.

The programs for A112316, there is no canonical definition to state claims against.
-/

/-! ## A112316.P12871982374506791698

`A112315(A026741(n))+A000007(A008747(n+1))`
-/

namespace A112316.P12871982374506791698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (A026741 n).toNat + A000007 (A008747 (n + 1)).toNat

end

end A112316.P12871982374506791698

/-! ## A112316.P8408981074963621801

`A112315(A026741(n))*A334187(A019427(n))`
-/

namespace A112316.P8408981074963621801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (A026741 n).toNat * A334187 (A019427 n).toNat

end

end A112316.P8408981074963621801

/-! ## A112316.P17826317196751680310

`A112315(A026741(n))^A295290(n)²`
-/

namespace A112316.P17826317196751680310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A295290 n ^ 2 : ℤ)

end

end A112316.P17826317196751680310

/-! ## A112316.P11714438962272887411

`A112315(A026741(n))*A309873(A005940(n+1))`
-/

namespace A112316.P11714438962272887411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (A026741 n).toNat * A309873 (A005940 (n + 1)).toNat

end

end A112316.P11714438962272887411

/-! ## A112316.P14156217730509896671

`A112315(A026741(n))^A026009(A253236(n+1))`
-/

namespace A112316.P14156217730509896671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A026009 (A253236 (n + 1)).toNat : ℤ)

end

end A112316.P14156217730509896671

/-! ## A112316.P10481749261526355069

`A112315(A026741(n))^A057521(n+1)`
-/

namespace A112316.P10481749261526355069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A057521 (n + 1) : ℤ)

end

end A112316.P10481749261526355069

/-! ## A112316.P5147473972703549311

`A112315(A026741(n))^A014963(n+15)`
-/

namespace A112316.P5147473972703549311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A014963 (n + 15) : ℤ)

end

end A112316.P5147473972703549311

/-! ## A112316.P5553548943297921148

`A112315(A026741(n))^A019427(A185969(n+1))`
-/

namespace A112316.P5553548943297921148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A019427 (A185969 (n + 1)).toNat : ℤ)

end

end A112316.P5553548943297921148

/-! ## A112316.P15089278159771088046

`A112315(A026741(n))^A026009(A006530(n+2))`
-/

namespace A112316.P15089278159771088046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A026009 (A006530 (n + 2)).toNat : ℤ)

end

end A112316.P15089278159771088046

/-! ## A112316.P8822046258616439876

`A112315(A026741(n))^A019427(A045750(n)-n)`
-/

namespace A112316.P8822046258616439876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A019427 (A045750 n - (n : ℤ)).toNat : ℤ)

end

end A112316.P8822046258616439876

/-! ## A112316.P2857537613443642502

`A112315(A026741(n))^A019427(∑[n])`
-/

namespace A112316.P2857537613443642502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A019427 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A112316.P2857537613443642502

/-! ## A112316.P7091255643102936429

`A112315(A026741(n))/A019427(∑[n+1]+1)`
-/

namespace A112316.P7091255643102936429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) / (A019427 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A112316.P7091255643102936429

/-! ## A112316.P9696554603844785900

`A112315(A026741(n))^A026009(3*n+1)`
-/

namespace A112316.P9696554603844785900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A026741 n).toNat : ℚ) ^ (A026009 (3 * n + 1) : ℤ)

end

end A112316.P9696554603844785900

/-! ## A112316.P11573430709138247394

`A112315(A078898(n))^A119656(A314041(n))`
-/

namespace A112316.P11573430709138247394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A078898 n).toNat : ℚ) ^ (A119656 (A314041 n).toNat : ℤ)

end

end A112316.P11573430709138247394

/-! ## A112316.P9204567476232378722

`A112315(A078898(n))^A119656(A314045(n))`
-/

namespace A112316.P9204567476232378722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A078898 n).toNat : ℚ) ^ (A119656 (A314045 n).toNat : ℤ)

end

end A112316.P9204567476232378722

/-! ## A112316.P10559456367946842957

`A112315(A078898(n))^A119656(A314018(n))`
-/

namespace A112316.P10559456367946842957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112315 (A078898 n).toNat : ℚ) ^ (A119656 (A314018 n).toNat : ℤ)

end

end A112316.P10559456367946842957

/-!
# A112317: Coefficients of x^n in the n-th iteration of (x + x^2) for n>=1.

The programs for A112317, there is no canonical definition to state claims against.
-/

/-! ## A112317.P14925836990225606960

`A122888(∑[2^n]+n)`
-/

namespace A112317.P14925836990225606960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A112317.P14925836990225606960

/-! ## A112317.P3802366277183622418

`A122888(A083706(n))*A206245(n)`
-/

namespace A112317.P3802366277183622418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A083706 n).toNat * A206245 n

end

end A112317.P3802366277183622418

/-! ## A112317.P1385679615241873035

`A122888(A083706(n))*A341847(n)`
-/

namespace A112317.P1385679615241873035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A083706 n).toNat * A341847 n

end

end A112317.P1385679615241873035

/-! ## A112317.P13272689820317613240

`lcm(A122888(A083706(n)), A122888(n))`
-/

namespace A112317.P13272689820317613240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122888 (A083706 n).toNat) (A122888 n)

end

end A112317.P13272689820317613240

/-! ## A112317.P4031708939222488885

`A122888(A083706(n))%A002110(n+1)`
-/

namespace A112317.P4031708939222488885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122888 (A083706 n).toNat) (A002110 (n + 1))

end

end A112317.P4031708939222488885

/-!
# A112318: a(n) = greatest integer p such that n^p + (n+1)^p + (n+2)^p > (n+3)^p.

The programs for A112318, there is no canonical definition to state claims against.
-/

/-! ## A112318.P13971005594748041543

`ceil(log(A097596(n+2)))`
-/

namespace A112318.P13971005594748041543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A097596 (n + 2) : ℝ)⌉

end

end A112318.P13971005594748041543

/-! ## A112318.P13730955424216118556

`ceil(log(sqrt(A320286(2*n))))`
-/

namespace A112318.P13730955424216118556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A320286 (2 * n) : ℝ))⌉

end

end A112318.P13730955424216118556

/-! ## A112318.P12556762291698074587

`floor(log(∑[2*A214727(n)]))`
-/

namespace A112318.P12556762291698074587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A112318.P12556762291698074587

/-! ## A112318.P2158820365612612768

`floor(log(record[A001644(n)-1]))`
-/

namespace A112318.P2158820365612612768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A112318.P2158820365612612768

/-! ## A112318.P3275584552404006935

`A227568(∑[n+1]-A008825(n))`
-/

namespace A112318.P3275584552404006935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008825 n).toNat

end

end A112318.P3275584552404006935

/-! ## A112318.P12182311321924501798

`floor(log(A027053(n+2)+A000073(n)))`
-/

namespace A112318.P12182311321924501798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A027053 (n + 2) + A000073 n : ℝ)⌋

end

end A112318.P12182311321924501798

/-! ## A112318.P5654624832531546226

`floor(log(A027053(n+2)+A001590(n)))`
-/

namespace A112318.P5654624832531546226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A027053 (n + 2) + A001590 n : ℝ)⌋

end

end A112318.P5654624832531546226

/-! ## A112318.P6470805463559553890

`A259361(∑[A128282(A029597(n+1))])`
-/

namespace A112318.P6470805463559553890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (A029597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112318.P6470805463559553890

/-!
# A112319: Coefficients of x^n in the (n-1)-th iteration of (x + x^2) for n>=1.

The programs for A112319, there is no canonical definition to state claims against.
-/

/-! ## A112319.P902738880155744939

`A166900(∑[n])`
-/

namespace A112319.P902738880155744939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112319.P902738880155744939

/-! ## A112319.P16574048498855987430

`A166900(A000217(n))+char[35]`
-/

namespace A112319.P16574048498855987430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A112319.P16574048498855987430

/-! ## A112319.P1975170639559769422

`gcd(A000038(n), A166900(A000217(n)))`
-/

namespace A112319.P1975170639559769422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A166900 (A000217 n).toNat)

end

end A112319.P1975170639559769422

/-! ## A112319.P7131113520374887097

`or(A000007(n), A166900(A000217(n)))`
-/

namespace A112319.P7131113520374887097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A166900 (A000217 n).toNat)

end

end A112319.P7131113520374887097

/-! ## A112319.P16196596410380367690

`A166900(A000217(n))%A091346(n+4)`
-/

namespace A112319.P16196596410380367690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166900 (A000217 n).toNat) (A091346 (n + 4))

end

end A112319.P16196596410380367690

/-!
# A112320: Coefficient of x^n in the (n+1)-th iteration of (x + x^2) for n>=1.

The programs for A112320, there is no canonical definition to state claims against.
-/

/-! ## A112320.P7556321557482616354

`A122888(∑[∑[2^n]+2])`
-/

namespace A112320.P7556321557482616354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112320.P7556321557482616354

/-!
# A112325: Number of even semiprimes <= semiprime(n).

The programs for A112325, the canonical program `A112325.P16100179258016750283` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112325 has offset 1).

The definition of A112325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112325.P10789437835696151853

`∑[1-A106138(n+1)]`
-/

namespace A112325.P10789437835696151853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P10789437835696151853

namespace A112325

/-- `∑[1-A106138(n+1)]` -/
def P10789437835696151853.Spec : Prop :=
  ∀ n, P10789437835696151853.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P11102144834633381899

`∑[A088707(n+1)%2]`
-/

namespace A112325.P11102144834633381899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088707 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P11102144834633381899

namespace A112325

/-- `∑[A088707(n+1)%2]` -/
def P11102144834633381899.Spec : Prop :=
  ∀ n, P11102144834633381899.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P10787289268600521354

`∑[A121884(n+1)%2]`
-/

namespace A112325.P10787289268600521354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121884 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P10787289268600521354

namespace A112325

/-- `∑[A121884(n+1)%2]` -/
def P10787289268600521354.Spec : Prop :=
  ∀ n, P10787289268600521354.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P16723684909613862562

`∑[A176004(n+1)%2]`
-/

namespace A112325.P16723684909613862562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176004 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P16723684909613862562

namespace A112325

/-- `∑[A176004(n+1)%2]` -/
def P16723684909613862562.Spec : Prop :=
  ∀ n, P16723684909613862562.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P5081022845827222697

`∑[A186621(n+1)%2]`
-/

namespace A112325.P5081022845827222697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186621 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P5081022845827222697

namespace A112325

/-- `∑[A186621(n+1)%2]` -/
def P5081022845827222697.Spec : Prop :=
  ∀ n, P5081022845827222697.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P5985029180183115705

`∑[val(A084126(n+1), 2)]`
-/

namespace A112325.P5985029180183115705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A084126 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P5985029180183115705

namespace A112325

/-- `∑[val(A084126(n+1), 2)]` -/
def P5985029180183115705.Spec : Prop :=
  ∀ n, (P5985029180183115705.a n : ℤ) = A112325 (n + 1)

end A112325

/-! ## A112325.P10454928116534587247

`∑[val(A075818(n+1), 4)]`
-/

namespace A112325.P10454928116534587247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075818 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P10454928116534587247

namespace A112325

/-- `∑[val(A075818(n+1), 4)]` -/
def P10454928116534587247.Spec : Prop :=
  ∀ n, (P10454928116534587247.a n : ℤ) = A112325 (n + 1)

end A112325

/-! ## A112325.P13954701977307954421

`∑[round(acot(A338912(n+1)))]`
-/

namespace A112325.P13954701977307954421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A338912 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P13954701977307954421

namespace A112325

/-- `∑[round(acot(A338912(n+1)))]` -/
def P13954701977307954421.Spec : Prop :=
  ∀ n, P13954701977307954421.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P12951111793405979852

`∑[log2(gcd(2, A001358(n+1)))]`
-/

namespace A112325.P12951111793405979852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A001358 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P12951111793405979852

namespace A112325

/-- `∑[log2(gcd(2, A001358(n+1)))]` -/
def P12951111793405979852.Spec : Prop :=
  ∀ n, P12951111793405979852.a n = (A112325 (n + 1) : ℝ)

end A112325

/-! ## A112325.P18316723462158003402

`∑[char[A115392(n+1)-1]]`
-/

namespace A112325.P18316723462158003402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112325.P18316723462158003402

namespace A112325

/-- `∑[char[A115392(n+1)-1]]` -/
def P18316723462158003402.Spec : Prop :=
  ∀ n, (P18316723462158003402.a n : ℤ) = A112325 (n + 1)

end A112325

/-! ## A112325.P2540180793379729758

`A055679(A001358(n+1))`
-/

namespace A112325.P2540180793379729758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A001358 (n + 1)).toNat

end

end A112325.P2540180793379729758

namespace A112325

/-- `A055679(A001358(n+1))` -/
def P2540180793379729758.Spec : Prop :=
  ∀ n, P2540180793379729758.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P11005362737911739197

`A055679(A176540(n+2))`
-/

namespace A112325.P11005362737911739197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A176540 (n + 2)).toNat

end

end A112325.P11005362737911739197

namespace A112325

/-- `A055679(A176540(n+2))` -/
def P11005362737911739197.Spec : Prop :=
  ∀ n, P11005362737911739197.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P7603115828703822891

`A055679(A186621(n+2))`
-/

namespace A112325.P7603115828703822891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A186621 (n + 2)).toNat

end

end A112325.P7603115828703822891

namespace A112325

/-- `A055679(A186621(n+2))` -/
def P7603115828703822891.Spec : Prop :=
  ∀ n, P7603115828703822891.a n = A112325 (n + 1)

end A112325

/-! ## A112325.P16100179258016750283

`A055679(eq[2, A105700(n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112325

/-- `A055679(eq[2, A105700(n)])` -/
def P16100179258016750283.Spec : Prop :=
  ∀ n, P16100179258016750283.a n = A112325 (n + 1)

theorem P16100179258016750283.correct : P16100179258016750283.Spec := by
  intro n
  simp only [A112325, Nat.add_sub_cancel]

end A112325

/-! ## A112325.P7834084070618101237

`A055679(A075818(n+1)/2)`
-/

namespace A112325.P7834084070618101237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A112325.P7834084070618101237

namespace A112325

/-- `A055679(A075818(n+1)/2)` -/
def P7834084070618101237.Spec : Prop :=
  ∀ n, P7834084070618101237.a n = A112325 (n + 1)

end A112325

/-!
# A112326: Triangle read by rows: T(n,k)=2^k*binomial(2n-k,n-k), 1<=k<=n.

The programs for A112326, the canonical program `A112326.P6658289389382608012` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112326 has offset 1).

The definition of A112326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(col(n)+1)*C(2*(row(n)+1)-(col(n)+1), row(n)+1)` (program `A112326.P6658289389382608012`, by `A112326.P6658289389382608012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112326.P6658289389382608012

`2^(col(n)+1)*C(2*(row(n)+1)-(col(n)+1), row(n)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112326

/-- `2^(col(n)+1)*C(2*(row(n)+1)-(col(n)+1), row(n)+1)` -/
def P6658289389382608012.Spec : Prop :=
  ∀ n, (P6658289389382608012.a n : ℤ) = A112326 (n + 1)

theorem P6658289389382608012.correct : P6658289389382608012.Spec := by
  intro n
  simp only [A112326, Nat.add_sub_cancel]

end A112326

/-! ## A112326.P15854497463245640505

`2^(col(n)+1)*C(2*(row(n)+1)-(col(n)+1), row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112326.P15854497463245640505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.triCol n + 1) * Nat.choose ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)).toNat ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)).toNat

end

end A112326.P15854497463245640505

namespace A112326

/-- `2^(col(n)+1)*C(2*(row(n)+1)-(col(n)+1), row(n)+1-(col(n)+1))` -/
def P15854497463245640505.Spec : Prop :=
  ∀ n, (P15854497463245640505.a n : ℤ) = A112326 (n + 1)

end A112326

/-! ## A112326.P9339283350384589188

`A276418(comp[∑[n]])`
-/

namespace A112326.P9339283350384589188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112326.P9339283350384589188

namespace A112326

/-- `A276418(comp[∑[n]])` -/
def P9339283350384589188.Spec : Prop :=
  ∀ n, P9339283350384589188.a n = A112326 (n + 1)

end A112326

/-! ## A112326.P4900289630207433612

`lcm(2, A276418(comp[C(n, 2)]))`
-/

namespace A112326.P4900289630207433612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A276418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A112326.P4900289630207433612

namespace A112326

/-- `lcm(2, A276418(comp[C(n, 2)]))` -/
def P4900289630207433612.Spec : Prop :=
  ∀ n, (P4900289630207433612.a n : ℤ) = A112326 (n + 1)

end A112326

/-! ## A112326.P6303417769538589138

`A172068(A063657(n+1))`
-/

namespace A112326.P6303417769538589138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (A063657 (n + 1)).toNat

end

end A112326.P6303417769538589138

namespace A112326

/-- `A172068(A063657(n+1))` -/
def P6303417769538589138.Spec : Prop :=
  ∀ n, P6303417769538589138.a n = A112326 (n + 1)

end A112326

/-!
# A112327: Triangle read by rows: T(n,k)=k^3*2^k*binomial(2n-k,n-k)/(2n-k) (1<=k<=n).

The programs for A112327, there is no canonical definition to state claims against.
-/

/-! ## A112327.P16448449395877200019

`A108747(n+1)*A133819(n+1)`
-/

namespace A112327.P16448449395877200019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108747 (n + 1) * A133819 (n + 1)

end

end A112327.P16448449395877200019

/-! ## A112327.P12062381037926071448

`A002260(n+1)²*A108747(n+1)`
-/

namespace A112327.P12062381037926071448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A108747 (n + 1)

end

end A112327.P12062381037926071448

/-! ## A112327.P16495740773325605669

`(A002262(n)+1)²*A108747(n+1)`
-/

namespace A112327.P16495740773325605669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A108747 (n + 1)

end

end A112327.P16495740773325605669

/-! ## A112327.P17920033563880517666

`A004736(A038722(n+1))²*A108747(n+1)`
-/

namespace A112327.P17920033563880517666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat ^ 2 * A108747 (n + 1)

end

end A112327.P17920033563880517666

/-!
# A112328: a(n) = (n+1)*binomial(2n+2,n+1)-3*4^n+binomial(2n,n).

The programs for A112328, the canonical program `A112328.P16034078511440307581` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112328 has offset 1).

The definition of A112328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*C(2*(n+1)+2, n+2)-3*4^(n+1)+C(2*(n+1), n+1)` (program `A112328.P16034078511440307581`, by `A112328.P16034078511440307581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112328.P16034078511440307581

`(n+2)*C(2*(n+1)+2, n+2)-3*4^(n+1)+C(2*(n+1), n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112328

/-- `(n+2)*C(2*(n+1)+2, n+2)-3*4^(n+1)+C(2*(n+1), n+1)` -/
def P16034078511440307581.Spec : Prop :=
  ∀ n, P16034078511440307581.a n = A112328 (n + 1)

theorem P16034078511440307581.correct : P16034078511440307581.Spec := by
  intro n
  simp only [A112328, Nat.add_sub_cancel]

end A112328

/-! ## A112328.P1110118305546845689

`4*a(n-1)+(8*n+2)*A120588(n+1)` with `a(0)=2`
-/

namespace A112328.P1110118305546845689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (8 * n + 2 : ℤ) * A120588 (n + 1)

end

end A112328.P1110118305546845689

namespace A112328

/-- `4*a(n-1)+(8*n+2)*A120588(n+1)` -/
def P1110118305546845689.Spec : Prop :=
  ∀ n, P1110118305546845689.a n = A112328 (n + 1)

end A112328

/-! ## A112328.P4382396064446285846

`A340568(2*n+3)+A029760(n)`
-/

namespace A112328.P4382396064446285846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n + 3) + A029760 n

end

end A112328.P4382396064446285846

namespace A112328

/-- `A340568(2*n+3)+A029760(n)` -/
def P4382396064446285846.Spec : Prop :=
  ∀ n, P4382396064446285846.a n = A112328 (n + 1)

end A112328

/-! ## A112328.P15750628365003057408

`6*A000531(n+1)-A002011(n)`
-/

namespace A112328.P15750628365003057408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000531 (n + 1) - A002011 n

end

end A112328.P15750628365003057408

namespace A112328

/-- `6*A000531(n+1)-A002011(n)` -/
def P15750628365003057408.Spec : Prop :=
  ∀ n, P15750628365003057408.a n = A112328 (n + 1)

end A112328

/-! ## A112328.P12448435366987784928

`2*A054336(A133263(2*(n+1)))`
-/

namespace A112328.P12448435366987784928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054336 (A133263 (2 * (n + 1))).toNat

end

end A112328.P12448435366987784928

namespace A112328

/-- `2*A054336(A133263(2*(n+1)))` -/
def P12448435366987784928.Spec : Prop :=
  ∀ n, P12448435366987784928.a n = A112328 (n + 1)

end A112328

/-!
# A112329: Number of divisors of n if n odd, number of divisors of n/4 if n divisible by 4, otherwise 0.

The programs for A112329, the canonical program `A112329.P3260148740044455417` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112329 has offset 1).

The definition of A112329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112329.P9266863657397997386

`A094572(n+1)/2`
-/

namespace A112329.P9266863657397997386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094572 (n + 1) : ℚ) / 2

end

end A112329.P9266863657397997386

namespace A112329

/-- `A094572(n+1)/2` -/
def P9266863657397997386.Spec : Prop :=
  ∀ n, P9266863657397997386.a n = (A112329 (n + 1) : ℚ)

theorem P9266863657397997386.correct : P9266863657397997386.Spec := by
  intro n
  simp only [A112329, Nat.add_sub_cancel, A112329.P9266863657397997386.a, A112329.P3260148740044455417.f1, A112329.P3260148740044455417.a, A094572, A094572.P824634437400607663.a, A140670, A140670.P15032429316490350293.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112329

/-! ## A112329.P15614577780870331374

`A143520(n+1)/(n+1)`
-/

namespace A112329.P15614577780870331374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143520 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112329.P15614577780870331374

namespace A112329

/-- `A143520(n+1)/(n+1)` -/
def P15614577780870331374.Spec : Prop :=
  ∀ n, P15614577780870331374.a n = (A112329 (n + 1) : ℚ)

end A112329

/-! ## A112329.P3260148740044455417

`∑{d}[n+1, (-1)^(#+1)*A140670((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112329

/-- `∑{d}[n+1, (-1)^(#+1)*A140670((n+1)/#)]` -/
def P3260148740044455417.Spec : Prop :=
  ∀ n, P3260148740044455417.a n = A112329 (n + 1)

theorem P3260148740044455417.correct : P3260148740044455417.Spec := by
  intro n
  simp only [A112329, Nat.add_sub_cancel]

end A112329

/-! ## A112329.P15742526298933724425

`A145390(n+1)-A183063(n+1)`
-/

namespace A112329.P15742526298933724425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (n + 1) - A183063 (n + 1)

end

end A112329.P15742526298933724425

namespace A112329

/-- `A145390(n+1)-A183063(n+1)` -/
def P15742526298933724425.Spec : Prop :=
  ∀ n, P15742526298933724425.a n = A112329 (n + 1)

theorem P15742526298933724425.correct : P15742526298933724425.Spec := by
  intro n
  simp only [A112329, Nat.add_sub_cancel, A112329.P15742526298933724425.a, A112329.P3260148740044455417.f1, A112329.P3260148740044455417.a, A140670, A140670.P15032429316490350293.a, A145390, A145390.P15585800402733348238.a, A183063, A183063.P14549643650991336837.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A171977, A171977.P14092944863121073856.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112329

/-! ## A112329.P2445430649248361382

`(A228441(n+1)+A000005(n+1))/2`
-/

namespace A112329.P2445430649248361382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228441 (n + 1) + A000005 (n + 1) : ℚ) / 2

end

end A112329.P2445430649248361382

namespace A112329

/-- `(A228441(n+1)+A000005(n+1))/2` -/
def P2445430649248361382.Spec : Prop :=
  ∀ n, P2445430649248361382.a n = (A112329 (n + 1) : ℚ)

end A112329

/-! ## A112329.P4269379854240605937

`2*A320111(n+1)-A000005(n+1)`
-/

namespace A112329.P4269379854240605937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320111 (n + 1) - A000005 (n + 1)

end

end A112329.P4269379854240605937

namespace A112329

/-- `2*A320111(n+1)-A000005(n+1)` -/
def P4269379854240605937.Spec : Prop :=
  ∀ n, P4269379854240605937.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P12431391095247368678

`abs(∑{d}[n+1, (-1)^#])`
-/

namespace A112329.P12431391095247368678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d|

end

end A112329.P12431391095247368678

namespace A112329

/-- `abs(∑{d}[n+1, (-1)^#])` -/
def P12431391095247368678.Spec : Prop :=
  ∀ n, P12431391095247368678.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P3869304800802069520

`∑{d}[n+1, (-1)^(n*#)]`
-/

namespace A112329.P3869304800802069520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ (n * d)

end

end A112329.P3869304800802069520

namespace A112329

/-- `∑{d}[n+1, (-1)^(n*#)]` -/
def P3869304800802069520.Spec : Prop :=
  ∀ n, P3869304800802069520.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P982698440179230774

`∑{d}[n+1, 2-and(4, #²)]/2`
-/

namespace A112329.P982698440179230774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.land 4 (d ^ 2) : ℤ)) : ℤ) : ℚ) / 2

end

end A112329.P982698440179230774

namespace A112329

/-- `∑{d}[n+1, 2-and(4, #²)]/2` -/
def P982698440179230774.Spec : Prop :=
  ∀ n, P982698440179230774.a n = (A112329 (n + 1) : ℚ)

end A112329

/-! ## A112329.P16615982399585367365

`abs(Δ[A059851(n)])`
-/

namespace A112329.P16615982399585367365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112329.P16615982399585367365

namespace A112329

/-- `abs(Δ[A059851(n)])` -/
def P16615982399585367365.Spec : Prop :=
  ∀ n, P16615982399585367365.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P11931386990397448531

`abs(A048272(n+1))`
-/

namespace A112329.P11931386990397448531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048272 (n + 1)|

end

end A112329.P11931386990397448531

namespace A112329

/-- `abs(A048272(n+1))` -/
def P11931386990397448531.Spec : Prop :=
  ∀ n, P11931386990397448531.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P14176563151999515339

`abs(1-A325939(n+1))`
-/

namespace A112329.P14176563151999515339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A325939 (n + 1)|

end

end A112329.P14176563151999515339

namespace A112329

/-- `abs(1-A325939(n+1))` -/
def P14176563151999515339.Spec : Prop :=
  ∀ n, P14176563151999515339.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P17279915900788756166

`abs(A325937(n+1)-(n-xor(1, n)))`
-/

namespace A112329.P17279915900788756166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325937 (n + 1) - ((n : ℤ) - (Nat.xor 1 n : ℤ))|

end

end A112329.P17279915900788756166

namespace A112329

/-- `abs(A325937(n+1)-(n-xor(1, n)))` -/
def P17279915900788756166.Spec : Prop :=
  ∀ n, P17279915900788756166.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P13098645040164479590

`A001281(A094572(n+1))`
-/

namespace A112329.P13098645040164479590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A094572 (n + 1)).toNat

end

end A112329.P13098645040164479590

namespace A112329

/-- `A001281(A094572(n+1))` -/
def P13098645040164479590.Spec : Prop :=
  ∀ n, P13098645040164479590.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P9934430244112480045

`A000196(A048272(n+1)²)`
-/

namespace A112329.P9934430244112480045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A048272 (n + 1) ^ 2).toNat

end

end A112329.P9934430244112480045

namespace A112329

/-- `A000196(A048272(n+1)²)` -/
def P9934430244112480045.Spec : Prop :=
  ∀ n, P9934430244112480045.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P9297864370889062628

`A037213(A048272(n+1)²)`
-/

namespace A112329.P9297864370889062628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A048272 (n + 1) ^ 2).toNat

end

end A112329.P9297864370889062628

namespace A112329

/-- `A037213(A048272(n+1)²)` -/
def P9297864370889062628.Spec : Prop :=
  ∀ n, P9297864370889062628.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P9806347324504283440

`A002265(2*A094572(n+1))`
-/

namespace A112329.P9806347324504283440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A094572 (n + 1)).toNat

end

end A112329.P9806347324504283440

namespace A112329

/-- `A002265(2*A094572(n+1))` -/
def P9806347324504283440.Spec : Prop :=
  ∀ n, P9806347324504283440.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P11270276067055717957

`A110655(2*A094572(n+1))`
-/

namespace A112329.P11270276067055717957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A094572 (n + 1)).toNat

end

end A112329.P11270276067055717957

namespace A112329

/-- `A110655(2*A094572(n+1))` -/
def P11270276067055717957.Spec : Prop :=
  ∀ n, P11270276067055717957.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P9596196598046030331

`A131728(2*A094572(n+1))`
-/

namespace A112329.P9596196598046030331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (2 * A094572 (n + 1)).toNat

end

end A112329.P9596196598046030331

namespace A112329

/-- `A131728(2*A094572(n+1))` -/
def P9596196598046030331.Spec : Prop :=
  ∀ n, P9596196598046030331.a n = A112329 (n + 1)

end A112329

/-! ## A112329.P3588880764684003894

`A033999(n)*A048272(n+1)`
-/

namespace A112329.P3588880764684003894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048272 (n + 1)

end

end A112329.P3588880764684003894

namespace A112329

/-- `A033999(n)*A048272(n+1)` -/
def P3588880764684003894.Spec : Prop :=
  ∀ n, P3588880764684003894.a n = A112329 (n + 1)

end A112329

/-!
# A112332: a(n) = Product_{k=0..n-1} k!*binomial(2k,k).

The programs for A112332, there is no canonical definition to state claims against.
-/

/-! ## A112332.P15879370486905757852

`∏[∏[a(n-1)+4]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A112332.P15879370486905757852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112332.P15879370486905757852

/-! ## A112332.P14705866917011947463

`∏[lcm(∏[3-2*n]/3, ceil(2^(n-1)))]`
-/

namespace A112332.P14705866917011947463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112332.P14705866917011947463

/-! ## A112332.P15079539384384002803

`∏[(2*n-3)*4*a(n-1)/2]` with `a(0)=1, a(1)=1`
-/

namespace A112332.P15079539384384002803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((2 * n : ℤ) - 3 : ℚ) * (4 * f1 (n - 1)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112332.P15079539384384002803

/-! ## A112332.P17000481628268214353

`∏[n!*C(2*n, n)/floor(abs(4*n-ϕ))]`
-/

namespace A112332.P17000481628268214353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℚ) / (⌊|(4 * n : ℝ) - Real.goldenRatio|⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112332.P17000481628268214353

/-! ## A112332.P2651973431079634394

`∏[n!*A120588(n)]`
-/

namespace A112332.P2651973431079634394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112332.P2651973431079634394

/-!
# A112333: An invertible triangle of ratios of triple factorials.

The programs for A112333, the canonical program `A112333.P5423707576873904550` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112333 has offset 0).

The definition of A112333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112333.P5423707576873904550

`A290596(n)/A007318(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112333

/-- `A290596(n)/A007318(n)` -/
def P5423707576873904550.Spec : Prop :=
  ∀ n, P5423707576873904550.a n = (A112333 n : ℚ)

end A112333

/-! ## A112333.P13592568191659748085

`abs(A290596(n)/A108086(n))`
-/

namespace A112333.P13592568191659748085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A290596 n : ℚ) / (A108086 n : ℚ)|

end

end A112333.P13592568191659748085

namespace A112333

/-- `abs(A290596(n)/A108086(n))` -/
def P13592568191659748085.Spec : Prop :=
  ∀ n, P13592568191659748085.a n = (A112333 n : ℚ)

end A112333

/-! ## A112333.P12075680370556290330

`abs(A290596(n)/A130595(n))`
-/

namespace A112333.P12075680370556290330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A290596 n : ℚ) / (A130595 n : ℚ)|

end

end A112333.P12075680370556290330

namespace A112333

/-- `abs(A290596(n)/A130595(n))` -/
def P12075680370556290330.Spec : Prop :=
  ∀ n, P12075680370556290330.a n = (A112333 n : ℚ)

end A112333

/-! ## A112333.P8877435040098940687

`A290596(n)/sqrt(A008459(n))`
-/

namespace A112333.P8877435040098940687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A290596 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A112333.P8877435040098940687

namespace A112333

/-- `A290596(n)/sqrt(A008459(n))` -/
def P8877435040098940687.Spec : Prop :=
  ∀ n, P8877435040098940687.a n = (A112333 n : ℝ)

end A112333

/-! ## A112333.P5112743690701214488

`A290596(n)/Δ[A102363(n)]`
-/

namespace A112333.P5112743690701214488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290596 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112333.P5112743690701214488

namespace A112333

/-- `A290596(n)/Δ[A102363(n)]` -/
def P5112743690701214488.Spec : Prop :=
  ∀ n, P5112743690701214488.a n = (A112333 n : ℚ)

end A112333

/-!
# A112334: Inverse of number triangle A112333.

The programs for A112334, the canonical program `A112334.P13246007352797609240` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112334 has offset 0).

The definition of A112334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112334.P2111239983695490810

`T(n-1,k-1)+(T(n-2,k-1)+2)*(T(n-1,k+1)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A112334.P2111239983695490810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + 2) * (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triUp a n

end

end A112334.P2111239983695490810

namespace A112334

/-- `T(n-1,k-1)+(T(n-2,k-1)+2)*(T(n-1,k+1)-1)*T(n-1,k)` -/
def P2111239983695490810.Spec : Prop :=
  ∀ n, P2111239983695490810.a n = A112334 n

end A112334

/-! ## A112334.P5769834887562718524

`T(n-1,k-1)+(T(n-2,k-1)+2)*(T(n-2,k)-1)*T(n-1,k)` with `a(0)=1`
-/

namespace A112334.P5769834887562718524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + 2) * (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triUp a n

end

end A112334.P5769834887562718524

namespace A112334

/-- `T(n-1,k-1)+(T(n-2,k-1)+2)*(T(n-2,k)-1)*T(n-1,k)` -/
def P5769834887562718524.Spec : Prop :=
  ∀ n, P5769834887562718524.a n = A112334 n

end A112334

/-! ## A112334.P1955049561172946428

`T(n-1,k-1)-(T(T(n-1,k+1), T(T(n-1,k-1), T(n-1,k+1)))+2)*T(n-1,k)` with `a(0)=1`
-/

namespace A112334.P1955049561172946428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triAt a (SequenceMachineLib.triUpRight a n) (SequenceMachineLib.triAt a (SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUpRight a n)) + 2) * SequenceMachineLib.triUp a n

end

end A112334.P1955049561172946428

namespace A112334

/-- `T(n-1,k-1)-(T(T(n-1,k+1), T(T(n-1,k-1), T(n-1,k+1)))+2)*T(n-1,k)` -/
def P1955049561172946428.Spec : Prop :=
  ∀ n, P1955049561172946428.a n = A112334 n

end A112334

/-! ## A112334.P16072510407202416982

`A097806(n)*A123876(n)`
-/

namespace A112334.P16072510407202416982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A123876 n

end

end A112334.P16072510407202416982

namespace A112334

/-- `A097806(n)*A123876(n)` -/
def P16072510407202416982.Spec : Prop :=
  ∀ n, P16072510407202416982.a n = A112334 n

end A112334

/-! ## A112334.P140738257629546160

`A097806(n)*A159971(n)`
-/

namespace A112334.P140738257629546160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A159971 n

end

end A112334.P140738257629546160

namespace A112334

/-- `A097806(n)*A159971(n)` -/
def P140738257629546160.Spec : Prop :=
  ∀ n, P140738257629546160.a n = A112334 n

end A112334

/-! ## A112334.P14773092621521749316

`A107842(n)*A167374(n)`
-/

namespace A112334.P14773092621521749316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107842 n * A167374 n

end

end A112334.P14773092621521749316

namespace A112334

/-- `A107842(n)*A167374(n)` -/
def P14773092621521749316.Spec : Prop :=
  ∀ n, P14773092621521749316.a n = A112334 n

end A112334

/-! ## A112334.P16849342208550107728

`A114164(n)*A167374(n)`
-/

namespace A112334.P16849342208550107728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114164 n * A167374 n

end

end A112334.P16849342208550107728

namespace A112334

/-- `A114164(n)*A167374(n)` -/
def P16849342208550107728.Spec : Prop :=
  ∀ n, P16849342208550107728.a n = A112334 n

end A112334

/-! ## A112334.P5788497069209147494

`A116395(n)*A167374(n)`
-/

namespace A112334.P5788497069209147494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116395 n * A167374 n

end

end A112334.P5788497069209147494

namespace A112334

/-- `A116395(n)*A167374(n)` -/
def P5788497069209147494.Spec : Prop :=
  ∀ n, P5788497069209147494.a n = A112334 n

end A112334

/-! ## A112334.P4036601519607036729

`A121574(n)*A167374(n)`
-/

namespace A112334.P4036601519607036729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121574 n * A167374 n

end

end A112334.P4036601519607036729

namespace A112334

/-- `A121574(n)*A167374(n)` -/
def P4036601519607036729.Spec : Prop :=
  ∀ n, P4036601519607036729.a n = A112334 n

end A112334

/-! ## A112334.P7538269589224700570

`A124237(n)*A167374(n)`
-/

namespace A112334.P7538269589224700570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124237 n * A167374 n

end

end A112334.P7538269589224700570

namespace A112334

/-- `A124237(n)*A167374(n)` -/
def P7538269589224700570.Spec : Prop :=
  ∀ n, P7538269589224700570.a n = A112334 n

end A112334

/-! ## A112334.P13246007352797609240

`A124819(n)*A167374(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112334

/-- `A124819(n)*A167374(n)` -/
def P13246007352797609240.Spec : Prop :=
  ∀ n, P13246007352797609240.a n = A112334 n

theorem P13246007352797609240.correct : P13246007352797609240.Spec := by
  intro n
  simp only [A112334]

end A112334

/-! ## A112334.P11670485536254025274

`A132309(n)*A167374(n)`
-/

namespace A112334.P11670485536254025274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132309 n * A167374 n

end

end A112334.P11670485536254025274

namespace A112334

/-- `A132309(n)*A167374(n)` -/
def P11670485536254025274.Spec : Prop :=
  ∀ n, P11670485536254025274.a n = A112334 n

end A112334

/-! ## A112334.P14454397761423542211

`A134081(n)*A167374(n)`
-/

namespace A112334.P14454397761423542211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134081 n * A167374 n

end

end A112334.P14454397761423542211

namespace A112334

/-- `A134081(n)*A167374(n)` -/
def P14454397761423542211.Spec : Prop :=
  ∀ n, P14454397761423542211.a n = A112334 n

end A112334

/-! ## A112334.P24524754076803131

`A159965(n)*A167374(n)`
-/

namespace A112334.P24524754076803131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 n * A167374 n

end

end A112334.P24524754076803131

namespace A112334

/-- `A159965(n)*A167374(n)` -/
def P24524754076803131.Spec : Prop :=
  ∀ n, P24524754076803131.a n = A112334 n

end A112334

/-! ## A112334.P12602932351522466585

`A097806(n)*A248811(n)`
-/

namespace A112334.P12602932351522466585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A248811 n

end

end A112334.P12602932351522466585

namespace A112334

/-- `A097806(n)*A248811(n)` -/
def P12602932351522466585.Spec : Prop :=
  ∀ n, P12602932351522466585.a n = A112334 n

end A112334

/-! ## A112334.P13363489928433124908

`A167374(n)*A193723(n)`
-/

namespace A112334.P13363489928433124908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A193723 n

end

end A112334.P13363489928433124908

namespace A112334

/-- `A167374(n)*A193723(n)` -/
def P13363489928433124908.Spec : Prop :=
  ∀ n, P13363489928433124908.a n = A112334 n

end A112334

/-! ## A112334.P7589607267961741937

`A167374(n)*A236311(n)`
-/

namespace A112334.P7589607267961741937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A236311 n

end

end A112334.P7589607267961741937

namespace A112334

/-- `A167374(n)*A236311(n)` -/
def P7589607267961741937.Spec : Prop :=
  ∀ n, P7589607267961741937.a n = A112334 n

end A112334

/-! ## A112334.P16814814072519398692

`A119830(n)%A288870(n)`
-/

namespace A112334.P16814814072519398692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119830 n) (A288870 n)

end

end A112334.P16814814072519398692

namespace A112334

/-- `A119830(n)%A288870(n)` -/
def P16814814072519398692.Spec : Prop :=
  ∀ n, P16814814072519398692.a n = A112334 n

end A112334

/-! ## A112334.P17673518470580049256

`and(A123876(n), A167374(n))`
-/

namespace A112334.P17673518470580049256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123876 n) (A167374 n)

end

end A112334.P17673518470580049256

namespace A112334

/-- `and(A123876(n), A167374(n))` -/
def P17673518470580049256.Spec : Prop :=
  ∀ n, P17673518470580049256.a n = A112334 n

end A112334

/-! ## A112334.P3403421555225265955

`and(A159971(n), A167374(n))`
-/

namespace A112334.P3403421555225265955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159971 n) (A167374 n)

end

end A112334.P3403421555225265955

namespace A112334

/-- `and(A159971(n), A167374(n))` -/
def P3403421555225265955.Spec : Prop :=
  ∀ n, P3403421555225265955.a n = A112334 n

end A112334

/-!
# A112335: Row sums of number triangle A112334.

The programs for A112335, the canonical program `A112335.P9683824110939555654` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112335 has offset 0).

The definition of A112335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112335.P9683824110939555654

`ogf((1-3x-x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112335

/-- `ogf((1-3x-x^2)/(1-2x+x^2))` -/
def P9683824110939555654.Spec : Prop :=
  ∀ n, P9683824110939555654.a n = A112335 n

theorem P9683824110939555654.correct : P9683824110939555654.Spec := by
  intro n
  simp only [A112335]

end A112335

/-!
# A112336: A number triangle related to the central binomial coefficients.

The programs for A112336, the canonical program `A112336.P6417449808574845672` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112336 has offset 0).

The definition of A112336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112336.P6417449808574845672

`2^col(n)*C(2*(row(n)-col(n)), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112336

/-- `2^col(n)*C(2*(row(n)-col(n)), row(n)-col(n))` -/
def P6417449808574845672.Spec : Prop :=
  ∀ n, (P6417449808574845672.a n : ℤ) = A112336 n

theorem P6417449808574845672.correct : P6417449808574845672.Spec := by
  intro n
  simp only [A112336]

end A112336

/-! ## A112336.P9404145159167574310

`2^col(n)*A000984(row(n)-col(n))`
-/

namespace A112336.P9404145159167574310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A000984 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A112336.P9404145159167574310

namespace A112336

/-- `2^col(n)*A000984(row(n)-col(n))` -/
def P9404145159167574310.Spec : Prop :=
  ∀ n, P9404145159167574310.a n = A112336 n

end A112336

/-! ## A112336.P9987035070839061651

`2^(n-C(∑[char[∑[n]]], 2))*A000984(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A112336.P9987035070839061651
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A000984 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A112336.P9987035070839061651

namespace A112336

/-- `2^(n-C(∑[char[∑[n]]], 2))*A000984(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9987035070839061651.Spec : Prop :=
  ∀ n, P9987035070839061651.a n = (A112336 n : ℚ)

end A112336

/-! ## A112336.P1719593752004419738

`(C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))*A000108(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A112336.P1719593752004419738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ) * (A000108 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A112336.P1719593752004419738

namespace A112336

/-- `(C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))*A000108(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1719593752004419738.Spec : Prop :=
  ∀ n, P1719593752004419738.a n = (A112336 n : ℚ)

end A112336

/-! ## A112336.P5143182100270563539

`A059268(n)*A106187(n)`
-/

namespace A112336.P5143182100270563539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A106187 n

end

end A112336.P5143182100270563539

namespace A112336

/-- `A059268(n)*A106187(n)` -/
def P5143182100270563539.Spec : Prop :=
  ∀ n, P5143182100270563539.a n = A112336 n

end A112336

/-! ## A112336.P12390453877001001251

`A106268(n)*A130453(n+1)`
-/

namespace A112336.P12390453877001001251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106268 n * A130453 (n + 1)

end

end A112336.P12390453877001001251

namespace A112336

/-- `A106268(n)*A130453(n+1)` -/
def P12390453877001001251.Spec : Prop :=
  ∀ n, P12390453877001001251.a n = A112336 n

end A112336

/-! ## A112336.P15401212847954812808

`2^A002262(n)*A106187(n)`
-/

namespace A112336.P15401212847954812808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A106187 n : ℚ)

end

end A112336.P15401212847954812808

namespace A112336

/-- `2^A002262(n)*A106187(n)` -/
def P15401212847954812808.Spec : Prop :=
  ∀ n, P15401212847954812808.a n = (A112336 n : ℚ)

end A112336

/-! ## A112336.P4677300555378409233

`(C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))*A000108(A025581(n))`
-/

namespace A112336.P4677300555378409233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ) * (A000108 (A025581 n).toNat : ℚ)

end

end A112336.P4677300555378409233

namespace A112336

/-- `(C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))*A000108(A025581(n))` -/
def P4677300555378409233.Spec : Prop :=
  ∀ n, P4677300555378409233.a n = (A112336 n : ℚ)

end A112336

/-! ## A112336.P9019287614416553092

`A000108(A025581(n))*A130128(n+1)`
-/

namespace A112336.P9019287614416553092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n).toNat * A130128 (n + 1)

end

end A112336.P9019287614416553092

namespace A112336

/-- `A000108(A025581(n))*A130128(n+1)` -/
def P9019287614416553092.Spec : Prop :=
  ∀ n, P9019287614416553092.a n = A112336 n

end A112336

/-! ## A112336.P17444573879870299328

`A109767(n)/A155856(n)`
-/

namespace A112336.P17444573879870299328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A155856 n : ℚ)

end

end A112336.P17444573879870299328

namespace A112336

/-- `A109767(n)/A155856(n)` -/
def P17444573879870299328.Spec : Prop :=
  ∀ n, P17444573879870299328.a n = (A112336 n : ℚ)

end A112336

/-!
# A112337: a(1)=1, a(2) = 2. a(n) = a(n-2) + (largest prime dividing a(n-1)).

The programs for A112337, there is no canonical definition to state claims against.
-/

/-! ## A112337.P3628524606915674106

`A006530(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112337.P3628524606915674106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (a (n - 1)).toNat + a (n - 2)

end

end A112337.P3628524606915674106

/-! ## A112337.P12983352115059164098

`A111089(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112337.P12983352115059164098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A111089 (a (n - 1)).toNat + a (n - 2)

end

end A112337.P12983352115059164098

/-! ## A112337.P10903008237119976558

`A006530(16*a(n-1))-round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A112337.P10903008237119976558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (16 * a (n - 1)).toNat - (-a (n - 2))

end

end A112337.P10903008237119976558

/-! ## A112337.P1268478095798679345

`A085392(2*a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112337.P1268478095798679345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A085392 (2 * a (n - 1)).toNat + a (n - 2)

end

end A112337.P1268478095798679345

/-! ## A112337.P180602618865576534

`A102095(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112337.P180602618865576534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102095 (a (n - 1)).toNat + a (n - 2)

end

end A112337.P180602618865576534

/-!
# A112338: Triangle read by rows, generated from A001263.

The programs for A112338, there is no canonical definition to state claims against.
-/

/-! ## A112338.P6443341807496185452

`A105556(A061579(n)%A105543(n))`
-/

namespace A112338.P6443341807496185452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (Int.tmod (A061579 n) (A105543 n)).toNat

end

end A112338.P6443341807496185452

/-! ## A112338.P436508800283823634

`A105556(A061579(n))%p?[A276082(n)]`
-/

namespace A112338.P436508800283823634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105556 (A061579 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A112338.P436508800283823634

/-! ## A112338.P10210307168957684443

`A105556((A038722(n+1)-1)%A105543(n))`
-/

namespace A112338.P10210307168957684443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (Int.tmod (A038722 (n + 1) - 1) (A105543 n)).toNat

end

end A112338.P10210307168957684443

/-! ## A112338.P11390699308237532170

`A001511(A142668(n+1))*A105556(A061579(n))`
-/

namespace A112338.P11390699308237532170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A142668 (n + 1)).toNat * A105556 (A061579 n).toNat

end

end A112338.P11390699308237532170

/-! ## A112338.P5097083341895878535

`A001511(A142679(n+1))*A105556(A061579(n))`
-/

namespace A112338.P5097083341895878535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A142679 (n + 1)).toNat * A105556 (A061579 n).toNat

end

end A112338.P5097083341895878535

/-!
# A112339: Triangle read by rows of numbers b_{n,k}, n >= 2, 1 <= k < n such that (1/(1-q*t))*Product_{n,k} 1/(1 - q^n*t^k)^b_{n,k} = Sum_{i,j>=1} S_{i,j} q^i*t^j where S_{i,j} are entries in the table A008277 (the inverse Euler transformation of the table of Stirling numbers of the second kind).

The programs for A112339, there is no canonical definition to state claims against.
-/

/-! ## A112339.P9999033239294457413

`A112340(comp[∑[n]])`
-/

namespace A112339.P9999033239294457413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112340 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112339.P9999033239294457413

/-! ## A112339.P5954290302152551556

`or(char[1], A112340(A014132(n+1)))`
-/

namespace A112339.P5954290302152551556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A112340 (A014132 (n + 1)).toNat)

end

end A112339.P5954290302152551556

/-! ## A112339.P7593885043935548743

`A112340(A014132(n+1))^A178334(n)`
-/

namespace A112339.P7593885043935548743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112340 (A014132 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A112339.P7593885043935548743

/-! ## A112339.P9192503944053487663

`A112340(A014132(n+1))%A016948(n)`
-/

namespace A112339.P9192503944053487663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112340 (A014132 (n + 1)).toNat) (A016948 n)

end

end A112339.P9192503944053487663

/-! ## A112339.P9231714022837855695

`gcd(A025466(n), A112340(A014132(n+1)))`
-/

namespace A112339.P9231714022837855695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025466 n) (A112340 (A014132 (n + 1)).toNat)

end

end A112339.P9231714022837855695

/-! ## A112339.P15736873620862385662

`A112340(A014132(n+1))+A004198(∑[n])`
-/

namespace A112339.P15736873620862385662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112340 (A014132 (n + 1)).toNat + A004198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112339.P15736873620862385662

/-! ## A112339.P2389190205422019697

`A007318(∑[n])*A112340(A014132(n+1))`
-/

namespace A112339.P2389190205422019697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A112340 (A014132 (n + 1)).toNat

end

end A112339.P2389190205422019697

/-! ## A112339.P12102081700187473446

`A000034(2*n)*A112340(∑[A035214(n)])`
-/

namespace A112339.P12102081700187473446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A112340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112339.P12102081700187473446

/-! ## A112339.P13746386149236232322

`A112340(∑[A035214(n)])%A000032(n+2)`
-/

namespace A112339.P13746386149236232322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 (n + 2))

end

end A112339.P13746386149236232322

/-! ## A112339.P8052927097445202543

`A112340(A014132(n+1))+A000045(n)%-1`
-/

namespace A112339.P8052927097445202543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112340 (A014132 (n + 1)).toNat + Int.tmod (A000045 n) (-1)

end

end A112339.P8052927097445202543

/-!
# A112340: Triangle read by rows of numbers b_{n,k}, n>=1, 1<=k<=n such that Product_{n,k} 1/(1-q^n t^k)^{b_{n,k}} = 1 + Sum_{i,j>=1} S_{i,j} q^i t^j where S_{i,j} are entries in the table A008277 (the inverse Euler transformation of the table of Stirling numbers of the second kind).

The programs for A112340, there is no canonical definition to state claims against.
-/

/-! ## A112340.P11668334363073480790

`A046029(A163940(n)+1)`
-/

namespace A112340.P11668334363073480790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046029 (A163940 n + 1).toNat

end

end A112340.P11668334363073480790

/-! ## A112340.P11413552634640643707

`A067734(3^A342133(n))`
-/

namespace A112340.P11413552634640643707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A342133 n : ℤ))).toNat

end

end A112340.P11413552634640643707

/-! ## A112340.P2314813532254968763

`A318473(3^A342133(n))`
-/

namespace A112340.P2314813532254968763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A342133 n : ℤ))).toNat

end

end A112340.P2314813532254968763

/-! ## A112340.P8693367748842106522

`A163940(n)+A025682(A157221(n))`
-/

namespace A112340.P8693367748842106522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 n + A025682 (A157221 n).toNat

end

end A112340.P8693367748842106522

/-! ## A112340.P11928224972520690464

`A184955(A352328(n))+A163940(n)`
-/

namespace A112340.P11928224972520690464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A352328 n).toNat + A163940 n

end

end A112340.P11928224972520690464

/-!
# A112341: Number of primes between (prime(n)-1)^2 and prime(n)^2.

The programs for A112341, the canonical program `A112341.P2762142604411872116` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112341 has offset 1).

The definition of A112341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112341.P2762142604411872116

`A000720(A000040(n+1)²)-A000720((A000040(n+1)-1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112341

/-- `A000720(A000040(n+1)²)-A000720((A000040(n+1)-1)²)` -/
def P2762142604411872116.Spec : Prop :=
  ∀ n, P2762142604411872116.a n = A112341 (n + 1)

theorem P2762142604411872116.correct : P2762142604411872116.Spec := by
  intro n
  simp only [A112341, Nat.add_sub_cancel]

end A112341

/-! ## A112341.P16878920998223364970

`A014085(p?[xor(1, n)]-1)`
-/

namespace A112341.P16878920998223364970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A112341.P16878920998223364970

namespace A112341

/-- `A014085(p?[xor(1, n)]-1)` -/
def P16878920998223364970.Spec : Prop :=
  ∀ n, P16878920998223364970.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P13442801288730076904

`A014085(xor(1, p?[xor(1, n)+1]))`
-/

namespace A112341.P13442801288730076904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A112341.P13442801288730076904

namespace A112341

/-- `A014085(xor(1, p?[xor(1, n)+1]))` -/
def P13442801288730076904.Spec : Prop :=
  ∀ n, P13442801288730076904.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P5860830374144540174

`A014085(p?[round(sqrt(n)+n)]-1)`
-/

namespace A112341.P5860830374144540174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A112341.P5860830374144540174

namespace A112341

/-- `A014085(p?[round(sqrt(n)+n)]-1)` -/
def P5860830374144540174.Spec : Prop :=
  ∀ n, P5860830374144540174.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P16972200310479550994

`A014085(∑[A075526(n)])`
-/

namespace A112341.P16972200310479550994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112341.P16972200310479550994

namespace A112341

/-- `A014085(∑[A075526(n)])` -/
def P16972200310479550994.Spec : Prop :=
  ∀ n, P16972200310479550994.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P9421135179454464685

`A014085(record[A033883(n)])`
-/

namespace A112341.P9421135179454464685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112341.P9421135179454464685

namespace A112341

/-- `A014085(record[A033883(n)])` -/
def P9421135179454464685.Spec : Prop :=
  ∀ n, P9421135179454464685.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P11702735448698430984

`A014085(A006093(n+1))`
-/

namespace A112341.P11702735448698430984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A006093 (n + 1)).toNat

end

end A112341.P11702735448698430984

namespace A112341

/-- `A014085(A006093(n+1))` -/
def P11702735448698430984.Spec : Prop :=
  ∀ n, P11702735448698430984.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P793384621728030689

`A014085(A039915(n+1))`
-/

namespace A112341.P793384621728030689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A039915 (n + 1)).toNat

end

end A112341.P793384621728030689

namespace A112341

/-- `A014085(A039915(n+1))` -/
def P793384621728030689.Spec : Prop :=
  ∀ n, P793384621728030689.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P4474914276424933642

`A014085(A156037(n+1))`
-/

namespace A112341.P4474914276424933642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A156037 (n + 1)).toNat

end

end A112341.P4474914276424933642

namespace A112341

/-- `A014085(A156037(n+1))` -/
def P4474914276424933642.Spec : Prop :=
  ∀ n, P4474914276424933642.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P4632045786575551702

`A014085(A068499(n+2))`
-/

namespace A112341.P4632045786575551702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A068499 (n + 2)).toNat

end

end A112341.P4632045786575551702

namespace A112341

/-- `A014085(A068499(n+2))` -/
def P4632045786575551702.Spec : Prop :=
  ∀ n, P4632045786575551702.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P13333431033553690811

`A014085(Δ[A007504(n)]-1)`
-/

namespace A112341.P13333431033553690811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (f1 (n + 1) - f1 n - 1).toNat

end

end A112341.P13333431033553690811

namespace A112341

/-- `A014085(Δ[A007504(n)]-1)` -/
def P13333431033553690811.Spec : Prop :=
  ∀ n, P13333431033553690811.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P11470303468175789438

`A014085(A000040(n+1)-1)`
-/

namespace A112341.P11470303468175789438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A000040 (n + 1) - 1).toNat

end

end A112341.P11470303468175789438

namespace A112341

/-- `A014085(A000040(n+1)-1)` -/
def P11470303468175789438.Spec : Prop :=
  ∀ n, P11470303468175789438.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P9762158433820000031

`A014085(A008578(n+2)-1)`
-/

namespace A112341.P9762158433820000031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A008578 (n + 2) - 1).toNat

end

end A112341.P9762158433820000031

namespace A112341

/-- `A014085(A008578(n+2)-1)` -/
def P9762158433820000031.Spec : Prop :=
  ∀ n, P9762158433820000031.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P5997822696779468610

`A014085(A014689(n+1)+n)`
-/

namespace A112341.P5997822696779468610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A112341.P5997822696779468610

namespace A112341

/-- `A014085(A014689(n+1)+n)` -/
def P5997822696779468610.Spec : Prop :=
  ∀ n, P5997822696779468610.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P5836472583617855414

`A014085(lt[A056171(2*(n+1)), A056171(2*n+1)])`
-/

namespace A112341.P5836472583617855414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112341.P5836472583617855414

namespace A112341

/-- `A014085(lt[A056171(2*(n+1)), A056171(2*n+1)])` -/
def P5836472583617855414.Spec : Prop :=
  ∀ n, P5836472583617855414.a n = A112341 (n + 1)

end A112341

/-! ## A112341.P2723424017618488404

`runs[A108221(n+1)]`
-/

namespace A112341.P2723424017618488404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A112341.P2723424017618488404

namespace A112341

/-- `runs[A108221(n+1)]` -/
def P2723424017618488404.Spec : Prop :=
  ∀ n, (P2723424017618488404.a n : ℤ) = A112341 (n + 1)

end A112341

/-!
# A112342: Number of primes between (n-th composite - 1)^2 and (n-th composite)^2.

The programs for A112342, the canonical program `A112342.P7013210857343809106` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112342 has offset 1).

The definition of A112342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112342.P7013210857343809106

`A000720(A002808(n+1)²)-A000720((A002808(n+1)-1)²)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112342

/-- `A000720(A002808(n+1)²)-A000720((A002808(n+1)-1)²)` -/
def P7013210857343809106.Spec : Prop :=
  ∀ n, P7013210857343809106.a n = A112342 (n + 1)

theorem P7013210857343809106.correct : P7013210857343809106.Spec := by
  intro n
  simp only [A112342, Nat.add_sub_cancel]

end A112342

/-! ## A112342.P1500617765600087467

`A014085(A072668(n+1))`
-/

namespace A112342.P1500617765600087467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A072668 (n + 1)).toNat

end

end A112342.P1500617765600087467

namespace A112342

/-- `A014085(A072668(n+1))` -/
def P1500617765600087467.Spec : Prop :=
  ∀ n, P1500617765600087467.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P104808463150240291

`A014085(A060462(2+n))`
-/

namespace A112342.P104808463150240291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A060462 (2 + n)).toNat

end

end A112342.P104808463150240291

namespace A112342

/-- `A014085(A060462(2+n))` -/
def P104808463150240291.Spec : Prop :=
  ∀ n, P104808463150240291.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P14125231192799254456

`A014085(A166460(n+2))`
-/

namespace A112342.P14125231192799254456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A166460 (n + 2)).toNat

end

end A112342.P14125231192799254456

namespace A112342

/-- `A014085(A166460(n+2))` -/
def P14125231192799254456.Spec : Prop :=
  ∀ n, P14125231192799254456.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P9027961925425808532

`A014085(A002808(n+1)-1)`
-/

namespace A112342.P9027961925425808532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A002808 (n + 1) - 1).toNat

end

end A112342.P9027961925425808532

namespace A112342

/-- `A014085(A002808(n+1)-1)` -/
def P9027961925425808532.Spec : Prop :=
  ∀ n, P9027961925425808532.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P1763708210903167433

`A014085(A018252(n+2)-1)`
-/

namespace A112342.P1763708210903167433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A018252 (n + 2) - 1).toNat

end

end A112342.P1763708210903167433

namespace A112342

/-- `A014085(A018252(n+2)-1)` -/
def P1763708210903167433.Spec : Prop :=
  ∀ n, P1763708210903167433.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P5194313917937980248

`A014085(lt[1, A001222(n+1)])`
-/

namespace A112342.P5194313917937980248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112342.P5194313917937980248

namespace A112342

/-- `A014085(lt[1, A001222(n+1)])` -/
def P5194313917937980248.Spec : Prop :=
  ∀ n, P5194313917937980248.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P9614822910535951720

`A014085(lt[2, A000005(n+1)])`
-/

namespace A112342.P9614822910535951720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112342.P9614822910535951720

namespace A112342

/-- `A014085(lt[2, A000005(n+1)])` -/
def P9614822910535951720.Spec : Prop :=
  ∀ n, P9614822910535951720.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P3226068170427608072

`A014085(lt[A000010(n+1), n])`
-/

namespace A112342.P3226068170427608072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A112342.P3226068170427608072

namespace A112342

/-- `A014085(lt[A000010(n+1), n])` -/
def P3226068170427608072.Spec : Prop :=
  ∀ n, P3226068170427608072.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P17019531096301489936

`A014085(eq[A056171(2*n+1), A056171(2*(n+1))])`
-/

namespace A112342.P17019531096301489936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112342.P17019531096301489936

namespace A112342

/-- `A014085(eq[A056171(2*n+1), A056171(2*(n+1))])` -/
def P17019531096301489936.Spec : Prop :=
  ∀ n, P17019531096301489936.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P17059799157003731711

`A014085(lt[2, ∏{e}[n+1, #+1]])`
-/

namespace A112342.P17059799157003731711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112342.P17059799157003731711

namespace A112342

/-- `A014085(lt[2, ∏{e}[n+1, #+1]])` -/
def P17059799157003731711.Spec : Prop :=
  ∀ n, P17059799157003731711.a n = A112342 (n + 1)

end A112342

/-! ## A112342.P15438766504152217459

`A014085(lt[1, A002033(n)])`
-/

namespace A112342.P15438766504152217459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112342.P15438766504152217459

namespace A112342

/-- `A014085(lt[1, A002033(n)])` -/
def P15438766504152217459.Spec : Prop :=
  ∀ n, P15438766504152217459.a n = A112342 (n + 1)

end A112342

/-!
# A112343: Positive integers m such that the largest prime-power divisor of m equals the sum of the other maximal prime-power divisors (> 1) of m.

The programs for A112343, there is no canonical definition to state claims against.
-/

/-! ## A112343.P7651151223155419797

`A392780(n+1)%A034312(n)`
-/

namespace A112343.P7651151223155419797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392780 (n + 1)) (A034312 n)

end

end A112343.P7651151223155419797

/-! ## A112343.P7727598332422474936

`A392780(n+1)+A000007(A384498(n+1))`
-/

namespace A112343.P7727598332422474936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1) + A000007 (A384498 (n + 1)).toNat

end

end A112343.P7727598332422474936

/-! ## A112343.P3342032835040294931

`A392780(n+1)+A000007(A392780(3*n+1))`
-/

namespace A112343.P3342032835040294931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1) + A000007 (A392780 (3 * n + 1)).toNat

end

end A112343.P3342032835040294931

/-! ## A112343.P7204995911698546247

`A392780(n+1)+A000007(A323860(n+1))`
-/

namespace A112343.P7204995911698546247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1) + A000007 (A323860 (n + 1)).toNat

end

end A112343.P7204995911698546247

/-! ## A112343.P18230163228096589578

`A057427(A323860(n+4))*A392780(n+1)`
-/

namespace A112343.P18230163228096589578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A323860 (n + 4)).toNat * A392780 (n + 1)

end

end A112343.P18230163228096589578

/-!
# A112344: Number of partitions of n into perfect powers with each part > 1.

The programs for A112344, there is no canonical definition to state claims against.
-/

/-! ## A112344.P2261297726969185050

`Δ[A078635(n)]`
-/

namespace A112344.P2261297726969185050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112344.P2261297726969185050

/-! ## A112344.P5762007798352559560

`A078635(n+1)-A078635(n)`
-/

namespace A112344.P5762007798352559560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078635 (n + 1) - A078635 n

end

end A112344.P5762007798352559560

/-! ## A112344.P5735603922307338410

`A078635(n+1)+A078635(n)*A328310(A033216(n+1))`
-/

namespace A112344.P5735603922307338410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078635 (n + 1) + A078635 n * A328310 (A033216 (n + 1)).toNat

end

end A112344.P5735603922307338410

/-! ## A112344.P5616257279164145827

`Δ[A286305(n)]%A110882(n)`
-/

namespace A112344.P5616257279164145827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A110882 n)

end

end A112344.P5616257279164145827

/-! ## A112344.P9433699417487193933

`Δ[A286305(A122282(A122282(n)))]`
-/

namespace A112344.P9433699417487193933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 (A122282 (A122282 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112344.P9433699417487193933

/-! ## A112344.P14866644675548409709

`Δ[A286305(n)]*A001511(A001844(n))`
-/

namespace A112344.P14866644675548409709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001511 (A001844 n).toNat

end

end A112344.P14866644675548409709

/-!
# A112345: Number of partitions of n into distinct perfect powers.

The programs for A112345, there is no canonical definition to state claims against.
-/

/-! ## A112345.P15133370219800093406

`A284171(n)-a(n-1)` with `a(0)=1`
-/

namespace A112345.P15133370219800093406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284171 n - a (n - 1)

end

end A112345.P15133370219800093406

/-! ## A112345.P15452993810525474044

`abs(∑[A033999(n)*A284171(n)])`
-/

namespace A112345.P15452993810525474044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A112345.P15452993810525474044

/-! ## A112345.P8456942186285473387

`∑[A033999(n)*A284171(n)]*A009001(2*n)`
-/

namespace A112345.P8456942186285473387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A112345.P8456942186285473387

/-! ## A112345.P7329171604777569224

`(A004442(n)-n)*∑[A033999(n)*A284171(n)]`
-/

namespace A112345.P7329171604777569224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112345.P7329171604777569224

/-! ## A112345.P7504562640479974814

`A000194(∑[A033999(n)*A284171(n)]²)`
-/

namespace A112345.P7504562640479974814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A112345.P7504562640479974814

/-! ## A112345.P13935466232610483811

`A000196(∑[A033999(n)*A284171(n)]²)`
-/

namespace A112345.P13935466232610483811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A112345.P13935466232610483811

/-! ## A112345.P15268216625404962972

`A178786(∑[A033999(n)*A284171(n)]²)`
-/

namespace A112345.P15268216625404962972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A112345.P15268216625404962972

/-! ## A112345.P17537581054157742762

`A000194(∑[A284171(n)/A033999(n)]²)`
-/

namespace A112345.P17537581054157742762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284171 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A112345.P17537581054157742762

/-! ## A112345.P7967507111373862511

`A000196(∑[A284171(n)/A033999(n)]²)`
-/

namespace A112345.P7967507111373862511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284171 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A112345.P7967507111373862511

/-! ## A112345.P934614515304524167

`A178786(∑[A284171(n)/A033999(n)]²)`
-/

namespace A112345.P934614515304524167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284171 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A112345.P934614515304524167

/-! ## A112345.P5351415360843317453

`A002262(2*∑[A033999(n)*A284171(n)]²)`
-/

namespace A112345.P5351415360843317453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A284171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A112345.P5351415360843317453

/-!
# A112347: Kronecker symbol (-1, n) except a(0) = 0.

The programs for A112347, the canonical program `A112347.P13846808065894593792` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112347 has offset 0).

The definition of A112347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112347.P4034978711872858086

`or(-char[comp[and(n, n-1)+n]], ceil(sin(n)²))`
-/

namespace A112347.P4034978711872858086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A112347.P4034978711872858086

namespace A112347

/-- `or(-char[comp[and(n, n-1)+n]], ceil(sin(n)²))` -/
def P4034978711872858086.Spec : Prop :=
  ∀ n, P4034978711872858086.a n = A112347 n

end A112347

/-! ## A112347.P4517503068709531727

`(Δ[xor(n, 2*n-1)]%2)^a(n-1)` with `a(0)=0`
-/

namespace A112347.P4517503068709531727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (Int.tmod (f1 (n + 1) - f1 n) 2 : ℝ) ^ (a (n - 1))

end

end A112347.P4517503068709531727

namespace A112347

/-- `(Δ[xor(n, 2*n-1)]%2)^a(n-1)` -/
def P4517503068709531727.Spec : Prop :=
  ∀ n, P4517503068709531727.a n = (A112347 n : ℝ)

end A112347

/-! ## A112347.P6922699756913003240

`(C(2, n²)-1)^(char[comp[and(n, n-1)+n]]+2)`
-/

namespace A112347.P6922699756913003240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n ^ 2) : ℤ) - 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A112347.P6922699756913003240

namespace A112347

/-- `(C(2, n²)-1)^(char[comp[and(n, n-1)+n]]+2)` -/
def P6922699756913003240.Spec : Prop :=
  ∀ n, P6922699756913003240.a n = A112347 n

end A112347

/-! ## A112347.P4785514603031601751

`1-2*char[or(n, n+1)+2+n]-floor(acot(n))`
-/

namespace A112347.P4785514603031601751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A112347.P4785514603031601751

namespace A112347

/-- `1-2*char[or(n, n+1)+2+n]-floor(acot(n))` -/
def P4785514603031601751.Spec : Prop :=
  ∀ n, P4785514603031601751.a n = A112347 n

end A112347

/-! ## A112347.P10198571714808743981

`(C(2, n+2)-1)^(4-char[comp[and(n, n-1)+n]])`
-/

namespace A112347.P10198571714808743981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - 1 : ℚ) ^ (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A112347.P10198571714808743981

namespace A112347

/-- `(C(2, n+2)-1)^(4-char[comp[and(n, n-1)+n]])` -/
def P10198571714808743981.Spec : Prop :=
  ∀ n, P10198571714808743981.a n = (A112347 n : ℚ)

end A112347

/-! ## A112347.P6582032887729929064

`(C(2, n+2)-1)^(char[or(n, n+1)+2+n]+2)`
-/

namespace A112347.P6582032887729929064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A112347.P6582032887729929064

namespace A112347

/-- `(C(2, n+2)-1)^(char[or(n, n+1)+2+n]+2)` -/
def P6582032887729929064.Spec : Prop :=
  ∀ n, P6582032887729929064.a n = A112347 n

end A112347

/-! ## A112347.P2220034550123966126

`char[and(n, n+1)+1+n]-char[3*(n+1)-and(n, n+1)]`
-/

namespace A112347.P2220034550123966126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A112347.P2220034550123966126

namespace A112347

/-- `char[and(n, n+1)+1+n]-char[3*(n+1)-and(n, n+1)]` -/
def P2220034550123966126.Spec : Prop :=
  ∀ n, P2220034550123966126.a n = A112347 n

end A112347

/-! ## A112347.P8004510748540451241

`A379015(n)%2`
-/

namespace A112347.P8004510748540451241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379015 n) 2

end

end A112347.P8004510748540451241

namespace A112347

/-- `A379015(n)%2` -/
def P8004510748540451241.Spec : Prop :=
  ∀ n, P8004510748540451241.a n = A112347 n

end A112347

/-! ## A112347.P5684488439489641527

`(A204372(n)+1)%2`
-/

namespace A112347.P5684488439489641527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204372 n + 1) 2

end

end A112347.P5684488439489641527

namespace A112347

/-- `(A204372(n)+1)%2` -/
def P5684488439489641527.Spec : Prop :=
  ∀ n, P5684488439489641527.a n = A112347 n

end A112347

/-! ## A112347.P6641014272327429200

`(1-A120030(n))%2`
-/

namespace A112347.P6641014272327429200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A120030 n) 2

end

end A112347.P6641014272327429200

namespace A112347

/-- `(1-A120030(n))%2` -/
def P6641014272327429200.Spec : Prop :=
  ∀ n, P6641014272327429200.a n = A112347 n

end A112347

/-! ## A112347.P3356082936027263177

`floor(acot(1-A089309(n)))`
-/

namespace A112347.P3356082936027263177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - A089309 n : ℝ)⌋

end

end A112347.P3356082936027263177

namespace A112347

/-- `floor(acot(1-A089309(n)))` -/
def P3356082936027263177.Spec : Prop :=
  ∀ n, P3356082936027263177.a n = A112347 n

end A112347

/-! ## A112347.P15499594087584552444

`Δ[A088748(floor(n²*acot(n)))]`
-/

namespace A112347.P15499594087584552444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112347.P15499594087584552444

namespace A112347

/-- `Δ[A088748(floor(n²*acot(n)))]` -/
def P15499594087584552444.Spec : Prop :=
  ∀ n, P15499594087584552444.a n = A112347 n

end A112347

/-! ## A112347.P13846808065894593792

`Δ[A005811(floor(n²/(n+1)))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112347

/-- `Δ[A005811(floor(n²/(n+1)))]` -/
def P13846808065894593792.Spec : Prop :=
  ∀ n, P13846808065894593792.a n = A112347 n

theorem P13846808065894593792.correct : P13846808065894593792.Spec := by
  intro n
  simp only [A112347]

end A112347

/-! ## A112347.P2909901020230287835

`or(a(n-2)², A034947(n))` with `a(0)=0, a(1)=1`
-/

namespace A112347.P2909901020230287835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a (n - 2) ^ 2) (A034947 n)

end

end A112347.P2909901020230287835

namespace A112347

/-- `or(a(n-2)², A034947(n))` -/
def P2909901020230287835.Spec : Prop :=
  ∀ n, P2909901020230287835.a n = A112347 n

end A112347

/-! ## A112347.P9306666512353423473

`floor(atan(n+1)-2*A038189(n))`
-/

namespace A112347.P9306666512353423473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ) - (2 * A038189 n : ℝ)⌋

end

end A112347.P9306666512353423473

namespace A112347

/-- `floor(atan(n+1)-2*A038189(n))` -/
def P9306666512353423473.Spec : Prop :=
  ∀ n, P9306666512353423473.a n = A112347 n

end A112347

/-! ## A112347.P15568789854702053668

`A134824(A089309(n))`
-/

namespace A112347.P15568789854702053668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A089309 n).toNat

end

end A112347.P15568789854702053668

namespace A112347

/-- `A134824(A089309(n))` -/
def P15568789854702053668.Spec : Prop :=
  ∀ n, P15568789854702053668.a n = A112347 n

end A112347

/-! ## A112347.P9652185946364944500

`A163805(A064917(n+2))`
-/

namespace A112347.P9652185946364944500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A064917 (n + 2)).toNat

end

end A112347.P9652185946364944500

namespace A112347

/-- `A163805(A064917(n+2))` -/
def P9652185946364944500.Spec : Prop :=
  ∀ n, P9652185946364944500.a n = A112347 n

end A112347

/-! ## A112347.P12406277460015924537

`A121238(n)-A000007(n)`
-/

namespace A112347.P12406277460015924537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n - A000007 n

end

end A112347.P12406277460015924537

namespace A112347

/-- `A121238(n)-A000007(n)` -/
def P12406277460015924537.Spec : Prop :=
  ∀ n, P12406277460015924537.a n = A112347 n

end A112347

/-! ## A112347.P12528834587282162545

`A057427(n)*A121238(n)`
-/

namespace A112347.P12528834587282162545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A121238 n

end

end A112347.P12528834587282162545

namespace A112347

/-- `A057427(n)*A121238(n)` -/
def P12528834587282162545.Spec : Prop :=
  ∀ n, P12528834587282162545.a n = A112347 n

end A112347

/-! ## A112347.P7694917029743707601

`A121238(n)%A000689(n)`
-/

namespace A112347.P7694917029743707601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121238 n) (A000689 n)

end

end A112347.P7694917029743707601

namespace A112347

/-- `A121238(n)%A000689(n)` -/
def P7694917029743707601.Spec : Prop :=
  ∀ n, P7694917029743707601.a n = A112347 n

end A112347

/-!
# A112348: Number of characters in the Chinese word for n.

The programs for A112348, the canonical program `A112348.P6990717947250460897` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112348 has offset 0).

The definition of A112348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112348.P6990717947250460897

`A055642((2*round(sqrt(n+1)))^A055640(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112348

/-- `A055642((2*round(sqrt(n+1)))^A055640(n))` -/
def P6990717947250460897.Spec : Prop :=
  ∀ n, P6990717947250460897.a n = A112348 n

theorem P6990717947250460897.correct : P6990717947250460897.Spec := by
  intro n
  simp only [A112348]

end A112348

/-!
# A112351: Triangle read by rows, generated from (..., 5, 3, 1).

The programs for A112351, the canonical program `A112351.P8907820495246054061` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112351 has offset 0).

The definition of A112351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112351.P8907820495246054061

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k-1)-T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112351

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k-1)-T(row(n)-2, col(n)-2)` -/
def P8907820495246054061.Spec : Prop :=
  ∀ n, P8907820495246054061.a n = A112351 n

theorem P8907820495246054061.correct : P8907820495246054061.Spec := by
  intro n
  simp only [A112351]

end A112351

/-! ## A112351.P1091360848086057743

`A208904(A038722(n+1))`
-/

namespace A112351.P1091360848086057743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A038722 (n + 1)).toNat

end

end A112351.P1091360848086057743

namespace A112351

/-- `A208904(A038722(n+1))` -/
def P1091360848086057743.Spec : Prop :=
  ∀ n, P1091360848086057743.a n = A112351 n

end A112351

/-! ## A112351.P2063632790027100377

`A208904(A061579(n)+1)`
-/

namespace A112351.P2063632790027100377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A061579 n + 1).toNat

end

end A112351.P2063632790027100377

namespace A112351

/-- `A208904(A061579(n)+1)` -/
def P2063632790027100377.Spec : Prop :=
  ∀ n, P2063632790027100377.a n = A112351 n

end A112351

/-! ## A112351.P6767265746972361529

`A208904(A114327(n)+1+n)`
-/

namespace A112351.P6767265746972361529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A114327 n + 1 + (n : ℤ)).toNat

end

end A112351.P6767265746972361529

namespace A112351

/-- `A208904(A114327(n)+1+n)` -/
def P6767265746972361529.Spec : Prop :=
  ∀ n, P6767265746972361529.a n = A112351 n

end A112351

/-! ## A112351.P14266718531489851682

`A208904(A093995(n+1)-n)`
-/

namespace A112351.P14266718531489851682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A112351.P14266718531489851682

namespace A112351

/-- `A208904(A093995(n+1)-n)` -/
def P14266718531489851682.Spec : Prop :=
  ∀ n, P14266718531489851682.a n = A112351 n

end A112351

/-! ## A112351.P17365464086544638499

`A208904(A185869(n+1)-A016777(n))`
-/

namespace A112351.P17365464086544638499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208904 (A185869 (n + 1) - A016777 n).toNat

end

end A112351.P17365464086544638499

namespace A112351

/-- `A208904(A185869(n+1)-A016777(n))` -/
def P17365464086544638499.Spec : Prop :=
  ∀ n, P17365464086544638499.a n = A112351 n

end A112351

/-!
# A112352: Triangular numbers that are the sum of two distinct positive triangular numbers.

The programs for A112352, the canonical program `A112352.P14257770990694265222` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112352 has offset 1).

The definition of A112352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112352.P14257770990694265222

`A000217(lt[3, A160651(n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A112352

/-- `A000217(lt[3, A160651(n)])` -/
def P14257770990694265222.Spec : Prop :=
  ∀ n, P14257770990694265222.a n = A112352 (n + 1)

theorem P14257770990694265222.correct : P14257770990694265222.Spec := by
  intro n
  simp only [A112352, Nat.add_sub_cancel]

end A112352

/-! ## A112352.P9392193336484414311

`A000217(lt[4, A278244(n)])`
-/

namespace A112352.P9392193336484414311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P9392193336484414311

namespace A112352

/-- `A000217(lt[4, A278244(n)])` -/
def P9392193336484414311.Spec : Prop :=
  ∀ n, P9392193336484414311.a n = A112352 (n + 1)

end A112352

/-! ## A112352.P10782541208615897610

`A161680(lt[3, A160651(n)]+1)`
-/

namespace A112352.P10782541208615897610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A112352.P10782541208615897610

namespace A112352

/-- `A161680(lt[3, A160651(n)]+1)` -/
def P10782541208615897610.Spec : Prop :=
  ∀ n, P10782541208615897610.a n = A112352 (n + 1)

end A112352

/-! ## A112352.P2535846030292600751

`A133263(lt[3, A160651(n)])-2`
-/

namespace A112352.P2535846030292600751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A112352.P2535846030292600751

namespace A112352

/-- `A133263(lt[3, A160651(n)])-2` -/
def P2535846030292600751.Spec : Prop :=
  ∀ n, P2535846030292600751.a n = A112352 (n + 1)

end A112352

/-! ## A112352.P825913071537783742

`A000217(lt[7, A193432(2*n+1)])`
-/

namespace A112352.P825913071537783742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P825913071537783742

namespace A112352

/-- `A000217(lt[7, A193432(2*n+1)])` -/
def P825913071537783742.Spec : Prop :=
  ∀ n, P825913071537783742.a n = A112352 (n + 1)

end A112352

/-! ## A112352.P438071673322019809

`A168330(4*n+2)+A133263(lt[3, A160651(n)])`
-/

namespace A112352.P438071673322019809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (4 * n + 2) + A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P438071673322019809

namespace A112352

/-- `A168330(4*n+2)+A133263(lt[3, A160651(n)])` -/
def P438071673322019809.Spec : Prop :=
  ∀ n, P438071673322019809.a n = A112352 (n + 1)

end A112352

/-! ## A112352.P6974171422431223051

`∩[A089982(n+1), A193166(n+1)]`
-/

namespace A112352.P6974171422431223051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112352.P6974171422431223051

namespace A112352

/-- `∩[A089982(n+1), A193166(n+1)]` -/
def P6974171422431223051.Spec : Prop :=
  ∀ n, (P6974171422431223051.a n : ℤ) = A112352 (n + 1)

end A112352

/-! ## A112352.P10117939544850938700

`lt[6, A000005(A198954(n)²+1)]`
-/

namespace A112352.P10117939544850938700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A198954 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112352.P10117939544850938700

namespace A112352

/-- `lt[6, A000005(A198954(n)²+1)]` -/
def P10117939544850938700.Spec : Prop :=
  ∀ n, (P10117939544850938700.a n : ℤ) = A112352 (n + 1)

end A112352

/-! ## A112352.P8207133369620269270

`lt[A226314(n+1)²², A053603(n)]`
-/

namespace A112352.P8207133369620269270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226314 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112352.P8207133369620269270

namespace A112352

/-- `lt[A226314(n+1)²², A053603(n)]` -/
def P8207133369620269270.Spec : Prop :=
  ∀ n, (P8207133369620269270.a n : ℤ) = A112352 (n + 1)

end A112352

/-!
# A112353: Triangular numbers that are the sum of three distinct positive triangular numbers.

The programs for A112353, there is no canonical definition to state claims against.
-/

/-! ## A112353.P11720833606609062914

`record[A127739(lcm(8, n+1)-n+1)]`
-/

namespace A112353.P11720833606609062914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 ((Nat.lcm 8 (n + 1) : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112353.P11720833606609062914

/-! ## A112353.P5419081456881045447

`record[A057944(A004455(3*n))]`
-/

namespace A112353.P5419081456881045447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A004455 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112353.P5419081456881045447

/-! ## A112353.P6139099322095970012

`record[A057944(A016813(xor(3, n)))]`
-/

namespace A112353.P6139099322095970012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A016813 (Nat.xor 3 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112353.P6139099322095970012

/-! ## A112353.P6919041422740288178

`record[A057944(xor(12, A311295(n)))]`
-/

namespace A112353.P6919041422740288178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (Int.xor 12 (A311295 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112353.P6919041422740288178

/-! ## A112353.P13737242684930663633

`record[A127739(A026741(7*n+9))]`
-/

namespace A112353.P13737242684930663633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A026741 (7 * n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112353.P13737242684930663633

/-!
# A112354: Inverse Euler transform of n!. Also the number of sequences of permutations with no global descents which are Lyndon (smallest in lexicographic order of all cyclic shifts of the sequences) where the size of the sequence = sum of sizes of the permutations.

The programs for A112354, there is no canonical definition to state claims against.
-/

/-! ## A112354.P18278950187328640651

`∑{d}[n+1, A154955(#)*A168246((n+1)/#)]`
-/

namespace A112354.P18278950187328640651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A168246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112354.P18278950187328640651

/-! ## A112354.P7043419305782263492

`∑{d}[n+1, A168246(#)*A240354((n+1)/#-1)]`
-/

namespace A112354.P7043419305782263492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168246 d * A240354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A112354.P7043419305782263492

/-! ## A112354.P13208654573816342636

`∑{d}[n+1, A168246(#)*A240356((n+1)/#-1)]`
-/

namespace A112354.P13208654573816342636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168246 d * A240356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A112354.P13208654573816342636

/-!
# A112355: Triangular numbers that are the sum of three positive triangular numbers.

The programs for A112355, there is no canonical definition to state claims against.
-/

/-! ## A112355.P9223588129497254598

`C(comp[51^n]+3, 2)`
-/

namespace A112355.P9223588129497254598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3) 2

end

end A112355.P9223588129497254598

/-! ## A112355.P9626224728547906879

`∑[3*(char[1]+1)+n]`
-/

namespace A112355.P9626224728547906879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((if ∃ j, f2 j = n then 1 else 0) + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112355.P9626224728547906879

/-! ## A112355.P1777372225324476833

`C(n+4, 2)/ceil(acot(n))`
-/

namespace A112355.P1777372225324476833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A112355.P1777372225324476833

/-! ## A112355.P6137537977643090740

`3+a(n-1)+n` with `a(0)=3, a(1)=10`
-/

namespace A112355.P6137537977643090740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  3 + a (n - 1) + n

end

end A112355.P6137537977643090740

/-!
# A112356: Following triangle is based on Pascal's triangle. The r-th term of the n-th row is product of C(n,r) successive integers such that the product of all the terms of the row is (2^n)!. Sequence contains the triangle read by rows.

The programs for A112356, there is no canonical definition to state claims against.
-/

/-! ## A112356.P3406882282740897109

`A028310(A046854(n)*A112360(n))`
-/

namespace A112356.P3406882282740897109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046854 n * A112360 n).toNat

end

end A112356.P3406882282740897109

/-! ## A112356.P15247276439418121778

`A028310(A054868(n)*A112360(n))`
-/

namespace A112356.P15247276439418121778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054868 n * A112360 n).toNat

end

end A112356.P15247276439418121778

/-! ## A112356.P10064726063149850294

`A249815(A046854(n)*A112360(n))`
-/

namespace A112356.P10064726063149850294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249815 (A046854 n * A112360 n).toNat

end

end A112356.P10064726063149850294

/-! ## A112356.P1136519723278687369

`A112360(n)*A112360(A316622(n))`
-/

namespace A112356.P1136519723278687369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112360 n * A112360 (A316622 n).toNat

end

end A112356.P1136519723278687369

/-! ## A112356.P283475350615443285

`A054868(A112360(n)+2)*A112360(n)`
-/

namespace A112356.P283475350615443285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A112360 n + 2).toNat * A112360 n

end

end A112356.P283475350615443285

/-!
# A112358: The following triangle is based on Pascal's triangle. The r-th term of the n-th row is sum of C(n,r) successive integers so that the sum of all the terms of the row is (2^n)*(2^n+1)/2, the 2^n -th triangular number. Sequence contains the triangle read by rows.

The programs for A112358, the canonical program `A112358.P6178152432630509317` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112358 has offset 0).

The definition of A112358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112358.P6178152432630509317

`C(row(n), col(n))*(A008949(C(row(n)+2, 2)+col(n))+1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112358

/-- `C(row(n), col(n))*(A008949(C(row(n)+2, 2)+col(n))+1)/2` -/
def P6178152432630509317.Spec : Prop :=
  ∀ n, P6178152432630509317.a n = (A112358 n : ℚ)

end A112358

/-! ## A112358.P17007057316416296955

`A167024(n)-C(A007318(n), 2)`
-/

namespace A112358.P17007057316416296955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167024 n - (Nat.choose (A007318 n).toNat 2 : ℤ)

end

end A112358.P17007057316416296955

namespace A112358

/-- `A167024(n)-C(A007318(n), 2)` -/
def P17007057316416296955.Spec : Prop :=
  ∀ n, P17007057316416296955.a n = A112358 n

end A112358

/-! ## A112358.P2691354242325726334

`(A054143(n)+1)/2*A007318(n)`
-/

namespace A112358.P2691354242325726334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054143 n + 1 : ℚ) / 2 * (A007318 n : ℚ)

end

end A112358.P2691354242325726334

namespace A112358

/-- `(A054143(n)+1)/2*A007318(n)` -/
def P2691354242325726334.Spec : Prop :=
  ∀ n, P2691354242325726334.a n = (A112358 n : ℚ)

end A112358

/-! ## A112358.P14422548135100769757

`A167024(n)-C(A014473(n)+1, 2)`
-/

namespace A112358.P14422548135100769757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167024 n - (Nat.choose (A014473 n + 1).toNat 2 : ℤ)

end

end A112358.P14422548135100769757

namespace A112358

/-- `A167024(n)-C(A014473(n)+1, 2)` -/
def P14422548135100769757.Spec : Prop :=
  ∀ n, P14422548135100769757.a n = A112358 n

end A112358

/-! ## A112358.P3798796505461756742

`A167024(n)-A000217(A014473(n))`
-/

namespace A112358.P3798796505461756742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167024 n - A000217 (A014473 n).toNat

end

end A112358.P3798796505461756742

namespace A112358

/-- `A167024(n)-A000217(A014473(n))` -/
def P3798796505461756742.Spec : Prop :=
  ∀ n, P3798796505461756742.a n = A112358 n

end A112358

/-! ## A112358.P2175114948555532770

`Δ[A000217(A102363(n))]-A038208(n)`
-/

namespace A112358.P2175114948555532770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038208 n

end

end A112358.P2175114948555532770

namespace A112358

/-- `Δ[A000217(A102363(n))]-A038208(n)` -/
def P2175114948555532770.Spec : Prop :=
  ∀ n, P2175114948555532770.a n = A112358 n

end A112358

/-! ## A112358.P3936886698871694806

`A007318(n)/2*A020725(A054143(n))`
-/

namespace A112358.P3936886698871694806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / 2 * (A020725 (A054143 n).toNat : ℚ)

end

end A112358.P3936886698871694806

namespace A112358

/-- `A007318(n)/2*A020725(A054143(n))` -/
def P3936886698871694806.Spec : Prop :=
  ∀ n, P3936886698871694806.a n = (A112358 n : ℚ)

end A112358

/-!
# A112360: Triangle read by rows: T(n,k) is the LCM of all C(n,k) integers from 1 + C(n,0) + C(n,1) + ... + C(n,k-1) to C(n,0) + C(n,1) + ... + C(n,k) (0 <= k <= n).

The programs for A112360, there is no canonical definition to state claims against.
-/

/-! ## A112360.P1601258244628313200

`A116417(A319511(n))`
-/

namespace A112360.P1601258244628313200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A319511 n).toNat

end

end A112360.P1601258244628313200

/-! ## A112360.P4452754211246308051

`A271410(or(1, A319511(n)))`
-/

namespace A112360.P4452754211246308051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (Int.lor 1 (A319511 n)).toNat

end

end A112360.P4452754211246308051

/-! ## A112360.P7532904090562778629

`A271410(xor(1, A319511(n)))`
-/

namespace A112360.P7532904090562778629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (Int.xor 1 (A319511 n)).toNat

end

end A112360.P7532904090562778629

/-! ## A112360.P8014044757040999895

`A271410(A319511(n)+A178798(n))`
-/

namespace A112360.P8014044757040999895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A319511 n + A178798 n).toNat

end

end A112360.P8014044757040999895

/-! ## A112360.P17722150241708159979

`A271410(A319511(n)+A291556(n))`
-/

namespace A112360.P17722150241708159979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A319511 n + A291556 n).toNat

end

end A112360.P17722150241708159979

/-!
# A112361: Number of terms in s(n), where s(n) is defined in A114483.

The programs for A112361, there is no canonical definition to state claims against.
-/

/-! ## A112361.P2365800051719540998

`A268444(A320429(n+1))-1`
-/

namespace A112361.P2365800051719540998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A320429 (n + 1)).toNat - 1

end

end A112361.P2365800051719540998

/-! ## A112361.P8612673052861900254

`∑[∏[A307193(A006882(n))]]`
-/

namespace A112361.P8612673052861900254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (A006882 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112361.P8612673052861900254

/-! ## A112361.P18437029177038925378

`∑[∏[A260449(A318395(n))]]`
-/

namespace A112361.P18437029177038925378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A318395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112361.P18437029177038925378

/-! ## A112361.P17923603352018281874

`record[A145366(n+1)-ceil(sin(n)²)]`
-/

namespace A112361.P17923603352018281874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145366 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112361.P17923603352018281874

/-! ## A112361.P5403229655834835018

`∑[∏[A277446(A036565(n))]]`
-/

namespace A112361.P5403229655834835018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277446 (A036565 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112361.P5403229655834835018

/-!
# A112362: a(n) = A006967(n)/2.

The programs for A112362, there is no canonical definition to state claims against.
-/

/-! ## A112362.P6841056672164558217

`A006967(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112362.P6841056672164558217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006967 (n + 2) : ℚ) / 2

end

end A112362.P6841056672164558217

/-! ## A112362.P1299416473537227935

`a(n-1)*ratio[A006967(n+1)]` with `a(0)=1`
-/

namespace A112362.P1299416473537227935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006967 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A112362.P1299416473537227935

/-! ## A112362.P13241708499006695994

`∑[A273943(Δ[A006967(n+1)])]`
-/

namespace A112362.P13241708499006695994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112362.P13241708499006695994

/-! ## A112362.P18419624984753915827

`A014682(A006967(n+2))`
-/

namespace A112362.P18419624984753915827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006967 (n + 2)).toNat

end

end A112362.P18419624984753915827

/-! ## A112362.P17516264672199074897

`A318518(A006967(n+2))+A185245(n)`
-/

namespace A112362.P17516264672199074897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A006967 (n + 2)).toNat + A185245 n

end

end A112362.P17516264672199074897

/-!
# A112365: Least multiple of n such that every partial sum is a Fibonacci number.

The programs for A112365, there is no canonical definition to state claims against.
-/

/-! ## A112365.P1089280302638404495

`(n+1)*A112366(n+1)`
-/

namespace A112365.P1089280302638404495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112366 (n + 1)

end

end A112365.P1089280302638404495

/-!
# A112366: Sum_{k=1..n} k*a(k) is a Fibonacci number. a(n) = A112365(n)/n.

The programs for A112366, there is no canonical definition to state claims against.
-/

/-! ## A112366.P10524252325930987256

`A112365(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112366.P10524252325930987256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112365 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112366.P10524252325930987256

/-!
# A112367: a(n) = A000217(n-k), where k is the largest triangular number less than n.

The programs for A112367, the canonical program `A112367.P5378126856570841990` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112367 has offset 0).

The definition of A112367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112367.P5378126856570841990

`A000217(n-A057944(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112367

/-- `A000217(n-A057944(n))` -/
def P5378126856570841990.Spec : Prop :=
  ∀ n, P5378126856570841990.a n = A112367 n

theorem P5378126856570841990.correct : P5378126856570841990.Spec := by
  intro n
  simp only [A112367]

end A112367

/-! ## A112367.P4940717123329649035

`∑{#}[col(n), #]`
-/

namespace A112367.P4940717123329649035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k

end

end A112367.P4940717123329649035

namespace A112367

/-- `∑{#}[col(n), #]` -/
def P4940717123329649035.Spec : Prop :=
  ∀ n, (P4940717123329649035.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P6968031964350340138

`col(n)+T(n-1,k-1)` with `a(0)=0`
-/

namespace A112367.P6968031964350340138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triUpLeft a n

end

end A112367.P6968031964350340138

namespace A112367

/-- `col(n)+T(n-1,k-1)` -/
def P6968031964350340138.Spec : Prop :=
  ∀ n, (P6968031964350340138.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P1721021853886218743

`T(n,k-1)+col(n)` with `a(0)=0`
-/

namespace A112367.P1721021853886218743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triLeft a n + SequenceMachineLib.triCol n

end

end A112367.P1721021853886218743

namespace A112367

/-- `T(n,k-1)+col(n)` -/
def P1721021853886218743.Spec : Prop :=
  ∀ n, (P1721021853886218743.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P5933912639262888676

`C(1+col(n), 2)`
-/

namespace A112367.P5933912639262888676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + SequenceMachineLib.triCol n) 2

end

end A112367.P5933912639262888676

namespace A112367

/-- `C(1+col(n), 2)` -/
def P5933912639262888676.Spec : Prop :=
  ∀ n, (P5933912639262888676.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P13915523255338441741

`(col(n)+col(n)²)/2`
-/

namespace A112367.P13915523255338441741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + SequenceMachineLib.triCol n ^ 2 : ℚ) / 2

end

end A112367.P13915523255338441741

namespace A112367

/-- `(col(n)+col(n)²)/2` -/
def P13915523255338441741.Spec : Prop :=
  ∀ n, P13915523255338441741.a n = (A112367 n : ℚ)

end A112367

/-! ## A112367.P17030353697578277749

`col(n)²-C(col(n), 2)`
-/

namespace A112367.P17030353697578277749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) 2 : ℤ)

end

end A112367.P17030353697578277749

namespace A112367

/-- `col(n)²-C(col(n), 2)` -/
def P17030353697578277749.Spec : Prop :=
  ∀ n, P17030353697578277749.a n = A112367 n

end A112367

/-! ## A112367.P5958728226984674135

`(col(n)+1)/2*col(n)`
-/

namespace A112367.P5958728226984674135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) / 2 * (SequenceMachineLib.triCol n : ℚ)

end

end A112367.P5958728226984674135

namespace A112367

/-- `(col(n)+1)/2*col(n)` -/
def P5958728226984674135.Spec : Prop :=
  ∀ n, P5958728226984674135.a n = (A112367 n : ℚ)

end A112367

/-! ## A112367.P4897179490650275076

`lcm(col(n)+1, col(n))/2`
-/

namespace A112367.P4897179490650275076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (SequenceMachineLib.triCol n + 1) (SequenceMachineLib.triCol n) : ℚ) / 2

end

end A112367.P4897179490650275076

namespace A112367

/-- `lcm(col(n)+1, col(n))/2` -/
def P4897179490650275076.Spec : Prop :=
  ∀ n, P4897179490650275076.a n = (A112367 n : ℚ)

end A112367

/-! ## A112367.P6958709105972553209

`col(n)^2-C(col(n), 2)`
-/

namespace A112367.P6958709105972553209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) 2 : ℤ)

end

end A112367.P6958709105972553209

namespace A112367

/-- `col(n)^2-C(col(n), 2)` -/
def P6958709105972553209.Spec : Prop :=
  ∀ n, P6958709105972553209.a n = A112367 n

end A112367

/-! ## A112367.P9170650019744744110

`col(n)-(col(n)-col(n)²)/2`
-/

namespace A112367.P9170650019744744110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ) : ℚ) / 2

end

end A112367.P9170650019744744110

namespace A112367

/-- `col(n)-(col(n)-col(n)²)/2` -/
def P9170650019744744110.Spec : Prop :=
  ∀ n, P9170650019744744110.a n = (A112367 n : ℚ)

end A112367

/-! ## A112367.P8225902364590056266

`C(1-C(∑[char[∑[n]]], 2)+n, 2)`
-/

namespace A112367.P8225902364590056266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2

end

end A112367.P8225902364590056266

namespace A112367

/-- `C(1-C(∑[char[∑[n]]], 2)+n, 2)` -/
def P8225902364590056266.Spec : Prop :=
  ∀ n, (P8225902364590056266.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P12960811224903189175

`C(1-(C(∑[char[∑[n]]], 2)-n), 2)`
-/

namespace A112367.P12960811224903189175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))).toNat 2

end

end A112367.P12960811224903189175

namespace A112367

/-- `C(1-(C(∑[char[∑[n]]], 2)-n), 2)` -/
def P12960811224903189175.Spec : Prop :=
  ∀ n, (P12960811224903189175.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P540038602636188512

`C(n+1-C(round(sqrt(2*(n+1))), 2), 2)`
-/

namespace A112367.P540038602636188512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)).toNat 2

end

end A112367.P540038602636188512

namespace A112367

/-- `C(n+1-C(round(sqrt(2*(n+1))), 2), 2)` -/
def P540038602636188512.Spec : Prop :=
  ∀ n, (P540038602636188512.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P14245575576310851492

`A000217(col(n))`
-/

namespace A112367.P14245575576310851492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n)

end

end A112367.P14245575576310851492

namespace A112367

/-- `A000217(col(n))` -/
def P14245575576310851492.Spec : Prop :=
  ∀ n, P14245575576310851492.a n = A112367 n

end A112367

/-! ## A112367.P7091346620758190287

`C(A002260(n+1), 2)`
-/

namespace A112367.P7091346620758190287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat 2

end

end A112367.P7091346620758190287

namespace A112367

/-- `C(A002260(n+1), 2)` -/
def P7091346620758190287.Spec : Prop :=
  ∀ n, (P7091346620758190287.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P5772824336819490199

`C(A002262(n)+1, 2)`
-/

namespace A112367.P5772824336819490199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n + 1).toNat 2

end

end A112367.P5772824336819490199

namespace A112367

/-- `C(A002262(n)+1, 2)` -/
def P5772824336819490199.Spec : Prop :=
  ∀ n, (P5772824336819490199.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P3862703971088903111

`C(abs(A140756(n+1)), 2)`
-/

namespace A112367.P3862703971088903111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A140756 (n + 1)|.toNat 2

end

end A112367.P3862703971088903111

namespace A112367

/-- `C(abs(A140756(n+1)), 2)` -/
def P3862703971088903111.Spec : Prop :=
  ∀ n, (P3862703971088903111.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P5154706500273822135

`C(sqrt(A133819(n+1)), 2)`
-/

namespace A112367.P5154706500273822135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat 2

end

end A112367.P5154706500273822135

namespace A112367

/-- `C(sqrt(A133819(n+1)), 2)` -/
def P5154706500273822135.Spec : Prop :=
  ∀ n, (P5154706500273822135.a n : ℤ) = A112367 n

end A112367

/-! ## A112367.P15162283048284952874

`C(A132118(n+1)-n, 2)`
-/

namespace A112367.P15162283048284952874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A132118 (n + 1) - (n : ℤ)).toNat 2

end

end A112367.P15162283048284952874

namespace A112367

/-- `C(A132118(n+1)-n, 2)` -/
def P15162283048284952874.Spec : Prop :=
  ∀ n, (P15162283048284952874.a n : ℤ) = A112367 n

end A112367

/-!
# A112368: a(n) = Sum_{i=0..n} 2^i*i!.

The programs for A112368, there is no canonical definition to state claims against.
-/

/-! ## A112368.P11324121130062191959

`∑[∏[runs[round(sqrt(n))]]]`
-/

namespace A112368.P11324121130062191959
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P11324121130062191959

/-! ## A112368.P15902947091862007147

`∑[2^n*n!]`
-/

namespace A112368.P15902947091862007147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P15902947091862007147

/-! ## A112368.P8502074948553276597

`∑[∏[floor(2/acot(n))]]`
-/

namespace A112368.P8502074948553276597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P8502074948553276597

/-! ## A112368.P1373585649131100891

`∑[∏[log2(lcm(2, 4^n))]]`
-/

namespace A112368.P1373585649131100891
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P1373585649131100891

/-! ## A112368.P17961288007150997796

`∑[n!/2^-n]`
-/

namespace A112368.P17961288007150997796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P17961288007150997796

/-! ## A112368.P4249552878156489304

`∑[2^(log2(n!)+n)]`
-/

namespace A112368.P4249552878156489304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P4249552878156489304

/-! ## A112368.P14681419283236378755

`∑[∏[a(n-1)+2]]` with `a(0)=1, a(1)=2`
-/

namespace A112368.P14681419283236378755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P14681419283236378755

/-! ## A112368.P10818693193680602679

`∑[2*n*a(n-1)]` with `a(0)=1`
-/

namespace A112368.P10818693193680602679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P10818693193680602679

/-! ## A112368.P4135298302044076629

`∑[∏[comp[2*(n+1)]+1]]`
-/

namespace A112368.P4135298302044076629
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P4135298302044076629

/-! ## A112368.P1940900720235522006

`∏[2*n+1-2*n/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A112368.P1940900720235522006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (2 * n + 1 : ℚ) - (2 * n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112368.P1940900720235522006

/-!
# A112369: a(n) = -1 + Sum_{i=0..n} 2^i*i!.

The programs for A112369, there is no canonical definition to state claims against.
-/

/-! ## A112369.P16082636301116430524

`∑[2^n*n!]-1`
-/

namespace A112369.P16082636301116430524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A112369.P16082636301116430524

/-! ## A112369.P13551603361239528415

`xor(1, ∑[2^n*n!])`
-/

namespace A112369.P13551603361239528415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112369.P13551603361239528415

/-! ## A112369.P5364961934688486823

`∑[∏[floor(2/acot(n))]]-1`
-/

namespace A112369.P5364961934688486823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A112369.P5364961934688486823

/-! ## A112369.P6928763501394219197

`∑[lcm(n, 2^n*n!)]`
-/

namespace A112369.P6928763501394219197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 ^ n * Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112369.P6928763501394219197

/-! ## A112369.P2044112927510676717

`∑[∏[log2(lcm(2, 4^n))]]-1`
-/

namespace A112369.P2044112927510676717
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A112369.P2044112927510676717

/-! ## A112369.P15496576012836849376

`∑[2*n*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A112369.P15496576012836849376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112369.P15496576012836849376

/-! ## A112369.P13887560060836078999

`a(n-1)+2*n*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A112369.P13887560060836078999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + 2 * ((n : ℤ) * (a (n - 1) - a (n - 2)))

end

end A112369.P13887560060836078999

/-! ## A112369.P6280426979046412046

`a(n-1)-(a(n-2)-a(n-1))*2*n` with `a(0)=0, a(1)=2`
-/

namespace A112369.P6280426979046412046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) * (2 * n : ℤ)

end

end A112369.P6280426979046412046

/-! ## A112369.P6696477880930040081

`A112368(n)-1`
-/

namespace A112369.P6696477880930040081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112368 n - 1

end

end A112369.P6696477880930040081

/-!
# A112370: a(n) = Sum_{i=0..n} 3^i*i!.

The programs for A112370, there is no canonical definition to state claims against.
-/

/-! ## A112370.P11425926813999794072

`∑[3^n*n!]`
-/

namespace A112370.P11425926813999794072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P11425926813999794072

/-! ## A112370.P16507040686273431997

`∑[∏[floor(3/acot(n))]]`
-/

namespace A112370.P16507040686273431997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P16507040686273431997

/-! ## A112370.P9822141394201195299

`∑[n!/3^-n]`
-/

namespace A112370.P9822141394201195299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P9822141394201195299

/-! ## A112370.P15190906107252208326

`∑[∏[floor(acot(n))+3*n]]`
-/

namespace A112370.P15190906107252208326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (3 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P15190906107252208326

/-! ## A112370.P17108351585935558836

`∑[∏[a(n-1)+3]]` with `a(0)=1, a(1)=3`
-/

namespace A112370.P17108351585935558836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P17108351585935558836

/-! ## A112370.P5965187590171807928

`∑[3*n*a(n-1)]` with `a(0)=1`
-/

namespace A112370.P5965187590171807928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (n * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P5965187590171807928

/-! ## A112370.P1222256822831225238

`∑[∏[round(sqrt((3*n)²+2))]]`
-/

namespace A112370.P1222256822831225238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((3 * n) ^ 2 + 2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112370.P1222256822831225238

/-! ## A112370.P2055842580672123615

`a(n-1)+3^n*n!` with `a(0)=1`
-/

namespace A112370.P2055842580672123615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 ^ n * Nat.factorial n

end

end A112370.P2055842580672123615

/-! ## A112370.P15259697619424376998

`a(n-1)+3*n*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A112370.P15259697619424376998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 3 * ((n : ℤ) * (a (n - 1) - a (n - 2)))

end

end A112370.P15259697619424376998

/-! ## A112370.P16796688037533640230

`a(n-1)-(a(n-2)-a(n-1))*3*n` with `a(0)=1, a(1)=4`
-/

namespace A112370.P16796688037533640230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) * (3 * n : ℤ)

end

end A112370.P16796688037533640230

/-!
# A112372: Odd legs of primitive Pythagorean triangles which are exclusively the short one.

The programs for A112372, there is no canonical definition to state claims against.
-/

/-! ## A112372.P12523537904004323482

`∩[2*n+1, A137407(n+2)]`
-/

namespace A112372.P12523537904004323482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112372.P12523537904004323482

/-! ## A112372.P18437464478334816635

`∩[A137407(n+1), A144396(n+1)]`
-/

namespace A112372.P18437464478334816635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112372.P18437464478334816635

/-! ## A112372.P11340506749277184039

`∩[A137407(n+1), A256455(n+1)]`
-/

namespace A112372.P11340506749277184039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112372.P11340506749277184039

/-! ## A112372.P15975169548646145641

`filter[A137407(n+1), A266070(#)]`
-/

namespace A112372.P15975169548646145641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A112372.P15975169548646145641

/-! ## A112372.P9059444893934790546

`filter[A137407(n+2), A000035(#)]`
-/

namespace A112372.P9059444893934790546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A112372.P9059444893934790546

/-! ## A112372.P12920389409737326404

`filter[A137407(n+3), A266719(#)]`
-/

namespace A112372.P12920389409737326404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A112372.P12920389409737326404

/-! ## A112372.P18384905309929579663

`filter[A137407(n+3), A296066(#)]`
-/

namespace A112372.P18384905309929579663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137407 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A112372.P18384905309929579663

/-! ## A112372.P12019635561342270682

`eq[A024360(A109613(n)), A096269(n+1)]`
-/

namespace A112372.P12019635561342270682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A109613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112372.P12019635561342270682

/-! ## A112372.P13716786985362838962

`eq[A024360(A096269(n+1)+n), A096269(n+1)]`
-/

namespace A112372.P13716786985362838962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A096269 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112372.P13716786985362838962

/-! ## A112372.P14974683867589474689

`record[(2*n+3)%A088557(n+1)]`
-/

namespace A112372.P14974683867589474689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) (A088557 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112372.P14974683867589474689

/-! ## A112372.P9543127560331997303

`eq[A024360(A233583(n+1)), A096269(n+1)]`
-/

namespace A112372.P9543127560331997303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112372.P9543127560331997303

/-!
# A112373: a(n+2) = (a(n+1)^3 + a(n+1)^2)/a(n) with a(0)=1, a(1)=1.

The programs for A112373, the canonical program `A112373.P10340626799376810044` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112373 has offset 0).

The definition of A112373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112373.P10340626799376810044

`a(n-1)²*(1+a(n-1))/a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112373

/-- `a(n-1)²*(1+a(n-1))/a(n-2)` -/
def P10340626799376810044.Spec : Prop :=
  ∀ n, P10340626799376810044.a n = (A112373 n : ℚ)

end A112373

/-! ## A112373.P3702361118681641108

`(a(n-1)+1)*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112373.P3702361118681641108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 1) * a (n - 1) ^ 2 / a (n - 2)

end

end A112373.P3702361118681641108

namespace A112373

/-- `(a(n-1)+1)*a(n-1)²/a(n-2)` -/
def P3702361118681641108.Spec : Prop :=
  ∀ n, P3702361118681641108.a n = (A112373 n : ℚ)

end A112373

/-! ## A112373.P10997068804138794305

`(a(n-1)^3+a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112373.P10997068804138794305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 3 + a (n - 1) ^ 2) / a (n - 2)

end

end A112373.P10997068804138794305

namespace A112373

/-- `(a(n-1)^3+a(n-1)²)/a(n-2)` -/
def P10997068804138794305.Spec : Prop :=
  ∀ n, P10997068804138794305.a n = (A112373 n : ℚ)

end A112373

/-! ## A112373.P15656540415547960985

`(a(n-1)+1)*a(n-1)*a(n-1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112373.P15656540415547960985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + 1) * (a (n - 1) * a (n - 1) / a (n - 2))

end

end A112373.P15656540415547960985

namespace A112373

/-- `(a(n-1)+1)*a(n-1)*a(n-1)/a(n-2)` -/
def P15656540415547960985.Spec : Prop :=
  ∀ n, P15656540415547960985.a n = (A112373 n : ℚ)

end A112373

/-!
# A112375: Concatenation of base and exponent of prime powers.

The programs for A112375, there is no canonical definition to state claims against.
-/

/-! ## A112375.P8441468338207831735

`A067599(A000961(n+2))-A242096(A014486(n))`
-/

namespace A112375.P8441468338207831735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat - A242096 (A014486 n).toNat

end

end A112375.P8441468338207831735

/-! ## A112375.P8818320396044062972

`A067599(A000961(n+2))%A005111(A052905(n))`
-/

namespace A112375.P8818320396044062972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067599 (A000961 (n + 2)).toNat) (A005111 (A052905 n).toNat)

end

end A112375.P8818320396044062972

/-! ## A112375.P10549830789074997952

`A067599(A000961(n+2))*A264391(A000124(n+5)-5)`
-/

namespace A112375.P10549830789074997952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat * A264391 (A000124 (n + 5) - 5).toNat

end

end A112375.P10549830789074997952

/-! ## A112375.P3198463718303387859

`A067599(A000961(n+2))+A000038(A002620(n+6))`
-/

namespace A112375.P3198463718303387859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A000038 (A002620 (n + 6)).toNat

end

end A112375.P3198463718303387859

/-! ## A112375.P613715755709159340

`A114592(A033217(n+1))²*A067599(A000961(n+2))`
-/

namespace A112375.P613715755709159340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A033217 (n + 1)).toNat ^ 2 * A067599 (A000961 (n + 2)).toNat

end

end A112375.P613715755709159340

/-! ## A112375.P18094873414178714482

`A067599(A000961(n+2))+A000007(A005384(n+1))`
-/

namespace A112375.P18094873414178714482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A000007 (A005384 (n + 1)).toNat

end

end A112375.P18094873414178714482

/-! ## A112375.P10074768085273156568

`A067599(A000961(n+2))+A000007(A227532(n+1))`
-/

namespace A112375.P10074768085273156568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A000007 (A227532 (n + 1)).toNat

end

end A112375.P10074768085273156568

/-! ## A112375.P12889721591429323236

`A275387(A014963(55*n+7))+A067599(A000961(n+2))`
-/

namespace A112375.P12889721591429323236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275387 (A014963 (55 * n + 7)).toNat + A067599 (A000961 (n + 2)).toNat

end

end A112375.P12889721591429323236

/-! ## A112375.P12731875076292070358

`A033630(A042951(n))*A067599(A000961(n+2))`
-/

namespace A112375.P12731875076292070358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A042951 n).toNat * A067599 (A000961 (n + 2)).toNat

end

end A112375.P12731875076292070358

/-! ## A112375.P10355988380655514016

`A067599(A000961(n+2))+A003982(A154576(n+1))`
-/

namespace A112375.P10355988380655514016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A003982 (A154576 (n + 1)).toNat

end

end A112375.P10355988380655514016

/-! ## A112375.P17694932776184837965

`A067599(A000961(n+2))+A003982(A154600(n+1))`
-/

namespace A112375.P17694932776184837965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A003982 (A154600 (n + 1)).toNat

end

end A112375.P17694932776184837965

/-! ## A112375.P8935422921331836682

`A000035(A289873(n+2))*A067599(A000961(n+2))`
-/

namespace A112375.P8935422921331836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A289873 (n + 2)).toNat * A067599 (A000961 (n + 2)).toNat

end

end A112375.P8935422921331836682

/-! ## A112375.P14292719940075358649

`A206825(A005385(n+1))+A067599(A000961(n+2))`
-/

namespace A112375.P14292719940075358649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206825 (A005385 (n + 1)).toNat + A067599 (A000961 (n + 2)).toNat

end

end A112375.P14292719940075358649

/-! ## A112375.P6252398063018826022

`A067599(A000961(n+2))+A000007(A221028(n+1))`
-/

namespace A112375.P6252398063018826022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat + A000007 (A221028 (n + 1)).toNat

end

end A112375.P6252398063018826022

/-! ## A112375.P2148141624939699862

`A067599(A000961(n+2))*A096462(A096478(n+1))`
-/

namespace A112375.P2148141624939699862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (A000961 (n + 2)).toNat * A096462 (A096478 (n + 1)).toNat

end

end A112375.P2148141624939699862

/-! ## A112375.P16605297647600357888

`A000265(A130321(n))*A067599(A000961(n+2))`
-/

namespace A112375.P16605297647600357888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130321 n).toNat * A067599 (A000961 (n + 2)).toNat

end

end A112375.P16605297647600357888

/-! ## A112375.P8011440512667770845

`A002260(A000124(n))*A067599(A000961(n+2))`
-/

namespace A112375.P8011440512667770845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 n).toNat * A067599 (A000961 (n + 2)).toNat

end

end A112375.P8011440512667770845

/-!
# A112376: Sum of base and exponent of prime powers.

The programs for A112376, the canonical program `A112376.P15862557377952171335` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112376 has offset 1).

The definition of A112376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112376.P15862557377952171335

`A025474(n+2)+A025473(n+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A112376

/-- `A025474(n+2)+A025473(n+2)` -/
def P15862557377952171335.Spec : Prop :=
  ∀ n, P15862557377952171335.a n = A112376 (n + 1)

theorem P15862557377952171335.correct : P15862557377952171335.Spec := by
  intro n
  simp only [A112376, Nat.add_sub_cancel]

end A112376

/-! ## A112376.P8208104559941085403

`A025474(n+2)+A192133(n+2)+A025474(n+2)`
-/

namespace A112376.P8208104559941085403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 2) + (A192133 (n + 2) + A025474 (n + 2))

end

end A112376.P8208104559941085403

namespace A112376

/-- `A025474(n+2)+A192133(n+2)+A025474(n+2)` -/
def P8208104559941085403.Spec : Prop :=
  ∀ n, P8208104559941085403.a n = A112376 (n + 1)

theorem P8208104559941085403.correct : P8208104559941085403.Spec := by
  intro n
  simp only [A112376, Nat.add_sub_cancel, A112376.P8208104559941085403.a, A112376.P15862557377952171335.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A192133, A192133.P10741399618334184473.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112376

/-! ## A112376.P1404930927473395716

`A025473(n+2)+A025473(n+2)-A192133(n+2)`
-/

namespace A112376.P1404930927473395716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2) + (A025473 (n + 2) - A192133 (n + 2))

end

end A112376.P1404930927473395716

namespace A112376

/-- `A025473(n+2)+A025473(n+2)-A192133(n+2)` -/
def P1404930927473395716.Spec : Prop :=
  ∀ n, P1404930927473395716.a n = A112376 (n + 1)

theorem P1404930927473395716.correct : P1404930927473395716.Spec := by
  intro n
  simp only [A112376, Nat.add_sub_cancel, A112376.P1404930927473395716.a, A112376.P15862557377952171335.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A192133, A192133.P10741399618334184473.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006530, A006530.P13372528560459906635.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112376

/-! ## A112376.P799392181262300429

`A025473(n+2)+A085729(n+2)/A025473(n+2)`
-/

namespace A112376.P799392181262300429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 2) : ℚ) + (A085729 (n + 2) : ℚ) / (A025473 (n + 2) : ℚ)

end

end A112376.P799392181262300429

namespace A112376

/-- `A025473(n+2)+A085729(n+2)/A025473(n+2)` -/
def P799392181262300429.Spec : Prop :=
  ∀ n, P799392181262300429.a n = (A112376 (n + 1) : ℚ)

end A112376

/-! ## A112376.P13979278062417352321

`A025474(n+2)+A085729(n+2)/A025474(n+2)`
-/

namespace A112376.P13979278062417352321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 2) : ℚ) + (A085729 (n + 2) : ℚ) / (A025474 (n + 2) : ℚ)

end

end A112376.P13979278062417352321

namespace A112376

/-- `A025474(n+2)+A085729(n+2)/A025474(n+2)` -/
def P13979278062417352321.Spec : Prop :=
  ∀ n, P13979278062417352321.a n = (A112376 (n + 1) : ℚ)

end A112376

/-! ## A112376.P10277304368948063813

`A025473(n+2)+A001222(A000961(n+2))`
-/

namespace A112376.P10277304368948063813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2) + A001222 (A000961 (n + 2)).toNat

end

end A112376.P10277304368948063813

namespace A112376

/-- `A025473(n+2)+A001222(A000961(n+2))` -/
def P10277304368948063813.Spec : Prop :=
  ∀ n, P10277304368948063813.a n = A112376 (n + 1)

theorem P10277304368948063813.correct : P10277304368948063813.Spec := by
  intro n
  simp only [A112376, Nat.add_sub_cancel, A112376.P10277304368948063813.a, A112376.P15862557377952171335.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A025473, A025473.P8571811305423406731.a, A025474, A025474.P5402530802230343307.a, A000079, A000079.P10855139691139572931.a, A006530, A006530.P13372528560459906635.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A070229, A070229.P5792893597916963980.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112376

/-! ## A112376.P4365039754355183511

`A025474(n+2)+A006530(A000961(n+2))`
-/

namespace A112376.P4365039754355183511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 2) + A006530 (A000961 (n + 2)).toNat

end

end A112376.P4365039754355183511

namespace A112376

/-- `A025474(n+2)+A006530(A000961(n+2))` -/
def P4365039754355183511.Spec : Prop :=
  ∀ n, P4365039754355183511.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P13162454512756272267

`A349215(record[A008475(n+2)])`
-/

namespace A112376.P13162454512756272267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112376.P13162454512756272267

namespace A112376

/-- `A349215(record[A008475(n+2)])` -/
def P13162454512756272267.Spec : Prop :=
  ∀ n, P13162454512756272267.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P4068232815206895690

`∑{d}[A000961(n+2), A323071(#)]`
-/

namespace A112376.P4068232815206895690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323071 d

end

end A112376.P4068232815206895690

namespace A112376

/-- `∑{d}[A000961(n+2), A323071(#)]` -/
def P4068232815206895690.Spec : Prop :=
  ∀ n, P4068232815206895690.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P15062590899423860995

`A008473(A246655(n+1))`
-/

namespace A112376.P15062590899423860995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (A246655 (n + 1)).toNat

end

end A112376.P15062590899423860995

namespace A112376

/-- `A008473(A246655(n+1))` -/
def P15062590899423860995.Spec : Prop :=
  ∀ n, P15062590899423860995.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P6508053658079529410

`A008473(A000961(n+2))`
-/

namespace A112376.P6508053658079529410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (A000961 (n + 2)).toNat

end

end A112376.P6508053658079529410

namespace A112376

/-- `A008473(A000961(n+2))` -/
def P6508053658079529410.Spec : Prop :=
  ∀ n, P6508053658079529410.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P2409551474175884973

`A008474(∑[A275120(n+1)])`
-/

namespace A112376.P2409551474175884973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112376.P2409551474175884973

namespace A112376

/-- `A008474(∑[A275120(n+1)])` -/
def P2409551474175884973.Spec : Prop :=
  ∀ n, P2409551474175884973.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P17831039258626324514

`A008474(record[A008475(n+2)])`
-/

namespace A112376.P17831039258626324514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112376.P17831039258626324514

namespace A112376

/-- `A008474(record[A008475(n+2)])` -/
def P17831039258626324514.Spec : Prop :=
  ∀ n, P17831039258626324514.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P1654968391321332302

`A008473(eq[1, A001221(n+1)]+1)`
-/

namespace A112376.P1654968391321332302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112376.P1654968391321332302

namespace A112376

/-- `A008473(eq[1, A001221(n+1)]+1)` -/
def P1654968391321332302.Spec : Prop :=
  ∀ n, P1654968391321332302.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P17549466812994653059

`A008474(eq[1, A001221(n+1)]+1)`
-/

namespace A112376.P17549466812994653059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112376.P17549466812994653059

namespace A112376

/-- `A008474(eq[1, A001221(n+1)]+1)` -/
def P17549466812994653059.Spec : Prop :=
  ∀ n, P17549466812994653059.a n = A112376 (n + 1)

end A112376

/-! ## A112376.P14589482084285742518

`A076314(A112375(n+1))`
-/

namespace A112376.P14589482084285742518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A112375 (n + 1)).toNat

end

end A112376.P14589482084285742518

namespace A112376

/-- `A076314(A112375(n+1))` -/
def P14589482084285742518.Spec : Prop :=
  ∀ n, P14589482084285742518.a n = A112376 (n + 1)

end A112376

/-!
# A112377: A self-descriptive fractal sequence: if 1 is subtracted from every term and any zero terms are omitted, the original sequence is recovered (this process may be called "lower trimming").

The programs for A112377, there is no canonical definition to state claims against.
-/

/-! ## A112377.P1622685412039493409

`A112378(n)+1`
-/

namespace A112377.P1622685412039493409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 n + 1

end

end A112377.P1622685412039493409

/-! ## A112377.P3549317882897014623

`A087157(A280513(1+n))`
-/

namespace A112377.P3549317882897014623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087157 (A280513 (1 + n)).toNat

end

end A112377.P3549317882897014623

/-! ## A112377.P2728237805028770086

`n-A023443(n-A112378(n))`
-/

namespace A112377.P2728237805028770086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A112378 n).toNat

end

end A112377.P2728237805028770086

/-! ## A112377.P11737995261818557418

`1-(A000035(2*n)-A112378(n))`
-/

namespace A112377.P11737995261818557418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A112378 n)

end

end A112377.P11737995261818557418

/-! ## A112377.P12971993438393992259

`A000005(A020483(n)^A112378(n))`
-/

namespace A112377.P12971993438393992259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A112378 n : ℤ))).toNat

end

end A112377.P12971993438393992259

/-! ## A112377.P4457338372002495901

`A000005(A060395(n)^A112378(n))`
-/

namespace A112377.P4457338372002495901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A060395 n : ℚ) ^ (A112378 n : ℤ))).toNat

end

end A112377.P4457338372002495901

/-!
# A112378: Adding 1 to every term produces the same sequence as omitting the 0's.

The programs for A112378, there is no canonical definition to state claims against.
-/

/-! ## A112378.P18064832842775800260

`A087157(A280513(1+n))-1`
-/

namespace A112378.P18064832842775800260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087157 (A280513 (1 + n)).toNat - 1

end

end A112378.P18064832842775800260

/-! ## A112378.P6213497337577358540

`A001538(n)%A087157(A280513(n+1))`
-/

namespace A112378.P6213497337577358540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A087157 (A280513 (n + 1)).toNat)

end

end A112378.P6213497337577358540

/-! ## A112378.P2706345239448662480

`A002148(n)%A087157(A280513(n+1))`
-/

namespace A112378.P2706345239448662480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A087157 (A280513 (n + 1)).toNat)

end

end A112378.P2706345239448662480

/-! ## A112378.P8865391619093240940

`A200748(n)%A087157(A280513(n+1))`
-/

namespace A112378.P8865391619093240940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A087157 (A280513 (n + 1)).toNat)

end

end A112378.P8865391619093240940

/-! ## A112378.P16918333338077796370

`A000353(n+1)%A087157(A280513(n+1))`
-/

namespace A112378.P16918333338077796370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000353 (n + 1)) (A087157 (A280513 (n + 1)).toNat)

end

end A112378.P16918333338077796370

/-! ## A112378.P15272072840867063646

`A058197(n+1)%A087157(A280513(n+1))`
-/

namespace A112378.P15272072840867063646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A087157 (A280513 (n + 1)).toNat)

end

end A112378.P15272072840867063646

/-! ## A112378.P11816500036246862063

`A112176(ceil(1/(n+1)))+A087157(A280513(n+1))`
-/

namespace A112378.P11816500036246862063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 ⌈1 / (n + 1 : ℚ)⌉.toNat + A087157 (A280513 (n + 1)).toNat

end

end A112378.P11816500036246862063

/-! ## A112378.P18045007663060295529

`(A087157(A280513(n+1))+or(-2, A000040(n+1)))%(n+1)`
-/

namespace A112378.P18045007663060295529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087157 (A280513 (n + 1)).toNat + Int.lor (-2) (A000040 (n + 1))) (n + 1 : ℤ)

end

end A112378.P18045007663060295529

/-! ## A112378.P9031296257995592711

`A112377(n)-1`
-/

namespace A112378.P9031296257995592711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 n - 1

end

end A112378.P9031296257995592711

/-! ## A112378.P12251964752886562399

`A001538(n)%A112377(n)`
-/

namespace A112378.P12251964752886562399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A112377 n)

end

end A112378.P12251964752886562399

/-!
# A112379: A self-descriptive fractal sequence: if 1 is subtracted from every term and any zero terms are omitted, the original sequence is recovered (this process may be called "lower trimming").

The programs for A112379, there is no canonical definition to state claims against.
-/

/-! ## A112379.P5051130253162001050

`A342507(∩[A214577(n+1), A331682(n+1)])`
-/

namespace A112379.P5051130253162001050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331682 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A112379.P5051130253162001050

/-! ## A112379.P1804880918861030247

`A195164(A194030(A044917(n+1)))`
-/

namespace A112379.P1804880918861030247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195164 (A194030 (A044917 (n + 1)).toNat).toNat

end

end A112379.P1804880918861030247

/-! ## A112379.P13491736910692787940

`A001511(lt[A152828(2*(n+1)), A357621(3*n)])`
-/

namespace A112379.P13491736910692787940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112379.P13491736910692787940

/-! ## A112379.P7988366748415626904

`A211984(∑[A190899(∏{p}[n+1, #])])`
-/

namespace A112379.P7988366748415626904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112379.P7988366748415626904

/-! ## A112379.P15070461654065458207

`A262891(A167561(n+2))`
-/

namespace A112379.P15070461654065458207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262891 (A167561 (n + 2)).toNat

end

end A112379.P15070461654065458207

/-!
# A112380: A self-descriptive fractal sequence: if 1 is subtracted from every term and any zero terms are omitted, the original sequence is recovered (this process may be called "lower trimming").

The programs for A112380, there is no canonical definition to state claims against.
-/

/-! ## A112380.P10024125603895557183

`A051903(A357861(n+3))%A112905(n+1)`
-/

namespace A112380.P10024125603895557183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A357861 (n + 3)).toNat) (A112905 (n + 1))

end

end A112380.P10024125603895557183

/-! ## A112380.P11063004880153610304

`A051903(A133813(n+3)%A057461(3*n+5))`
-/

namespace A112380.P11063004880153610304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A133813 (n + 3)) (A057461 (3 * n + 5))).toNat

end

end A112380.P11063004880153610304

/-! ## A112380.P16705123984016241621

`A374998(A373955(n+2))`
-/

namespace A112380.P16705123984016241621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (A373955 (n + 2)).toNat

end

end A112380.P16705123984016241621

/-! ## A112380.P6420404824288798577

`A324924(A140488(n+1)+comp[∑[n-1]])`
-/

namespace A112380.P6420404824288798577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (A140488 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A112380.P6420404824288798577

/-! ## A112380.P11170128834756236221

`A051903(A133813(n+3)%A130474(3*n+2))`
-/

namespace A112380.P11170128834756236221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A133813 (n + 3)) (A130474 (3 * n + 2))).toNat

end

end A112380.P11170128834756236221

/-!
# A112381: Zero-free semiprimes.

The programs for A112381, the canonical program `A112381.P16506309095590625013` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112381 has offset 1).

The definition of A112381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112381.P7114035605316850910

`filter[A259315(n+1), A064911(#)]`
-/

namespace A112381.P7114035605316850910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112381.P7114035605316850910

namespace A112381

/-- `filter[A259315(n+1), A064911(#)]` -/
def P7114035605316850910.Spec : Prop :=
  ∀ n, P7114035605316850910.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P8657788343121386732

`filter[A259315(n+1), A101040(#)]`
-/

namespace A112381.P8657788343121386732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A112381.P8657788343121386732

namespace A112381

/-- `filter[A259315(n+1), A101040(#)]` -/
def P8657788343121386732.Spec : Prop :=
  ∀ n, P8657788343121386732.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P6825189219906769690

`∩[A001358(n+1), A259315(n+1)]`
-/

namespace A112381.P6825189219906769690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112381.P6825189219906769690

namespace A112381

/-- `∩[A001358(n+1), A259315(n+1)]` -/
def P6825189219906769690.Spec : Prop :=
  ∀ n, (P6825189219906769690.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P113817297849926868

`filter[A052382(n+1), A064911(#)]`
-/

namespace A112381.P113817297849926868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112381.P113817297849926868

namespace A112381

/-- `filter[A052382(n+1), A064911(#)]` -/
def P113817297849926868.Spec : Prop :=
  ∀ n, P113817297849926868.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P11641303198720972745

`∩[A001358(n+1), A052382(n+1)]`
-/

namespace A112381.P11641303198720972745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112381.P11641303198720972745

namespace A112381

/-- `∩[A001358(n+1), A052382(n+1)]` -/
def P11641303198720972745.Spec : Prop :=
  ∀ n, (P11641303198720972745.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P7927590015473852

`record[A004719(A001358(1+n))]`
-/

namespace A112381.P7927590015473852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A001358 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112381.P7927590015473852

namespace A112381

/-- `record[A004719(A001358(1+n))]` -/
def P7927590015473852.Spec : Prop :=
  ∀ n, P7927590015473852.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P15050276396123430737

`record[A004719(eq[2, A105700(n)])]`
-/

namespace A112381.P15050276396123430737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112381.P15050276396123430737

namespace A112381

/-- `record[A004719(eq[2, A105700(n)])]` -/
def P15050276396123430737.Spec : Prop :=
  ∀ n, P15050276396123430737.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P7709957261650260847

`filter[A001358(n+1), A168046(#)]`
-/

namespace A112381.P7709957261650260847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A112381.P7709957261650260847

namespace A112381

/-- `filter[A001358(n+1), A168046(#)]` -/
def P7709957261650260847.Spec : Prop :=
  ∀ n, P7709957261650260847.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P15514426143924356807

`filter[A176540(n+2), A168046(#)]`
-/

namespace A112381.P15514426143924356807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A112381.P15514426143924356807

namespace A112381

/-- `filter[A176540(n+2), A168046(#)]` -/
def P15514426143924356807.Spec : Prop :=
  ∀ n, P15514426143924356807.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P7751667468226041293

`eq[A055641(n)+2, A284289(n)]`
-/

namespace A112381.P7751667468226041293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112381.P7751667468226041293

namespace A112381

/-- `eq[A055641(n)+2, A284289(n)]` -/
def P7751667468226041293.Spec : Prop :=
  ∀ n, (P7751667468226041293.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P6218910925189202956

`eq[2, A226378(n*A168046(n))]`
-/

namespace A112381.P6218910925189202956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 ((n : ℤ) * A168046 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112381.P6218910925189202956

namespace A112381

/-- `eq[2, A226378(n*A168046(n))]` -/
def P6218910925189202956.Spec : Prop :=
  ∀ n, (P6218910925189202956.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P16328812664054525048

`eq[2, A168046(n)*A284289(n)]`
-/

namespace A112381.P16328812664054525048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n * A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112381.P16328812664054525048

namespace A112381

/-- `eq[2, A168046(n)*A284289(n)]` -/
def P16328812664054525048.Spec : Prop :=
  ∀ n, (P16328812664054525048.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P14908307493160749826

`eq[2/A226378(n), A168046(n)]`
-/

namespace A112381.P14908307493160749826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A226378 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A112381.P14908307493160749826

namespace A112381

/-- `eq[2/A226378(n), A168046(n)]` -/
def P14908307493160749826.Spec : Prop :=
  ∀ n, (P14908307493160749826.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P14424056649528681142

`filter[A129767(2*(n+1)), A168046(#)]`
-/

namespace A112381.P14424056649528681142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A112381.P14424056649528681142

namespace A112381

/-- `filter[A129767(2*(n+1)), A168046(#)]` -/
def P14424056649528681142.Spec : Prop :=
  ∀ n, P14424056649528681142.a n = A112381 (n + 1)

end A112381

/-! ## A112381.P5235275466577639315

`eq[A020639(A086066(n)), A105700(n)]`
-/

namespace A112381.P5235275466577639315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112381.P5235275466577639315

namespace A112381

/-- `eq[A020639(A086066(n)), A105700(n)]` -/
def P5235275466577639315.Spec : Prop :=
  ∀ n, (P5235275466577639315.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P16825502555951768799

`eq[A168046(n), A328790(A226378(n))]`
-/

namespace A112381.P16825502555951768799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328790 (A226378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112381.P16825502555951768799

namespace A112381

/-- `eq[A168046(n), A328790(A226378(n))]` -/
def P16825502555951768799.Spec : Prop :=
  ∀ n, (P16825502555951768799.a n : ℤ) = A112381 (n + 1)

end A112381

/-! ## A112381.P16506309095590625013

`lt[A007954(n), A007954(n)*A105700(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112381

/-- `lt[A007954(n), A007954(n)*A105700(n)]` -/
def P16506309095590625013.Spec : Prop :=
  ∀ n, (P16506309095590625013.a n : ℤ) = A112381 (n + 1)

theorem P16506309095590625013.correct : P16506309095590625013.Spec := by
  intro n
  simp only [A112381, Nat.add_sub_cancel]

end A112381

/-! ## A112381.P12738191355183011169

`record[A210615(A052382(n+4))]`
-/

namespace A112381.P12738191355183011169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A052382 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112381.P12738191355183011169

namespace A112381

/-- `record[A210615(A052382(n+4))]` -/
def P12738191355183011169.Spec : Prop :=
  ∀ n, P12738191355183011169.a n = A112381 (n + 1)

end A112381

/-!
# A112382: A self-descriptive fractal sequence: the sequence contains every positive integer. If the first occurrence of each integer is deleted from the sequence, the resulting sequence is the same is the original (this process may be called "upper trimming").

The programs for A112382, there is no canonical definition to state claims against.
-/

/-! ## A112382.P13151858898934998599

`A358103(n+1-A059841(2^n))`
-/

namespace A112382.P13151858898934998599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358103 ((n + 1 : ℤ) - A059841 (2 ^ n)).toNat

end

end A112382.P13151858898934998599

/-! ## A112382.P3716238910568996410

`A358103(C(A000700(2*n), n)+n)`
-/

namespace A112382.P3716238910568996410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358103 (Nat.choose (A000700 (2 * n)).toNat n + n)

end

end A112382.P3716238910568996410

/-! ## A112382.P5623947109896813321

`A358103(C(A278581(n+1), A336353(n+1))+n)`
-/

namespace A112382.P5623947109896813321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358103 (Nat.choose (A278581 (n + 1)).toNat (A336353 (n + 1)).toNat + n)

end

end A112382.P5623947109896813321

/-! ## A112382.P2037885152514917898

`dr(A358103(C(n, A342956(n+1))))`
-/

namespace A112382.P2037885152514917898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A358103 (Nat.choose n (A342956 (n + 1)).toNat))

end

end A112382.P2037885152514917898

/-!
# A112383: A self-descriptive fractal sequence: the sequence contains every positive integer. If the first occurrence of each integer is deleted from the sequence, the resulting sequence is the same as the original (this process may be called "upper trimming").

The programs for A112383, there is no canonical definition to state claims against.
-/

/-! ## A112383.P9556299373479778408

`A306248(A000005(A272464(n+1)!))`
-/

namespace A112383.P9556299373479778408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306248 (A000005 (Nat.factorial (A272464 (n + 1)).toNat)).toNat

end

end A112383.P9556299373479778408

/-! ## A112383.P5876899575841867490

`A272464(n+1)-A107846(A022358(n))`
-/

namespace A112383.P5876899575841867490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (n + 1) - A107846 (A022358 n).toNat

end

end A112383.P5876899575841867490

/-! ## A112383.P5705142002745421748

`A272464(n+1)-A308064(A036256(n))`
-/

namespace A112383.P5705142002745421748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (n + 1) - A308064 (A036256 n).toNat

end

end A112383.P5705142002745421748

/-! ## A112383.P13721639198172290963

`A272464(n+1)-A287372(A113389(n))`
-/

namespace A112383.P13721639198172290963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (n + 1) - A287372 (A113389 n).toNat

end

end A112383.P13721639198172290963

/-! ## A112383.P12286800961377350245

`A378758(A272464(n+1)%A378763(n+3))`
-/

namespace A112383.P12286800961377350245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378758 (Int.tmod (A272464 (n + 1)) (A378763 (n + 3))).toNat

end

end A112383.P12286800961377350245

/-!
# A112384: A self-descriptive fractal sequence: the sequence contains every positive integer. If the first occurrence of each integer is deleted from the sequence, the resulting sequence is the same is the original (this process may be called "upper trimming").

The programs for A112384, there is no canonical definition to state claims against.
-/

/-! ## A112384.P8512199034462194005

`A125158(lt[A219765(n), A125156(3*(n+1))])`
-/

namespace A112384.P8512199034462194005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125156 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125158 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112384.P8512199034462194005

/-! ## A112384.P4518734330658865073

`gcd(A046699(n+1), A350848(A300383(2*n+5)))`
-/

namespace A112384.P4518734330658865073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046699 (n + 1)) (A350848 (A300383 (2 * n + 5)).toNat)

end

end A112384.P4518734330658865073

/-! ## A112384.P9018758328986929279

`A273823(A225640(∑[n]))`
-/

namespace A112384.P9018758328986929279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273823 (A225640 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A112384.P9018758328986929279

/-! ## A112384.P11953897603041009843

`A365386(A122289(∑[n+2]+3)+1)`
-/

namespace A112384.P11953897603041009843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365386 (A122289 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1).toNat

end

end A112384.P11953897603041009843

/-! ## A112384.P3176754207059645729

`gcd(A000720(A061383(n+2)), A361592(3*n))`
-/

namespace A112384.P3176754207059645729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (A061383 (n + 2)).toNat) (A361592 (3 * n))

end

end A112384.P3176754207059645729

/-!
# A112385: a(n) = 6*binomial(4*n-1,n-1)/(4*n-1).

The programs for A112385, the canonical program `A112385.P11025466224261666892` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112385 has offset 1).

The definition of A112385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112385.P11025466224261666892

`6*C(4*(n+1)-1, n)/(4*(n+1)-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A112385

/-- `6*C(4*(n+1)-1, n)/(4*(n+1)-1)` -/
def P11025466224261666892.Spec : Prop :=
  ∀ n, P11025466224261666892.a n = (A112385 (n + 1) : ℚ)

end A112385

/-! ## A112385.P6408590589331289057

`2*A006632(1+n)`
-/

namespace A112385.P6408590589331289057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006632 (1 + n)

end

end A112385.P6408590589331289057

namespace A112385

/-- `2*A006632(1+n)` -/
def P6408590589331289057.Spec : Prop :=
  ∀ n, P6408590589331289057.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P14392137179495456517

`2*A369082(Δ[n²])`
-/

namespace A112385.P14392137179495456517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A369082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112385.P14392137179495456517

namespace A112385

/-- `2*A369082(Δ[n²])` -/
def P14392137179495456517.Spec : Prop :=
  ∀ n, P14392137179495456517.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P10896725697262693693

`abs(2*A171790(n+1))`
-/

namespace A112385.P10896725697262693693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A171790 (n + 1)|

end

end A112385.P10896725697262693693

namespace A112385

/-- `abs(2*A171790(n+1))` -/
def P10896725697262693693.Spec : Prop :=
  ∀ n, P10896725697262693693.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P8067245115451383449

`2*A069270(∑[n+3])`
-/

namespace A112385.P8067245115451383449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112385.P8067245115451383449

namespace A112385

/-- `2*A069270(∑[n+3])` -/
def P8067245115451383449.Spec : Prop :=
  ∀ n, P8067245115451383449.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P15573680933946775956

`(4*n+2)*A000260(n)`
-/

namespace A112385.P15573680933946775956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) * A000260 n

end

end A112385.P15573680933946775956

namespace A112385

/-- `(4*n+2)*A000260(n)` -/
def P15573680933946775956.Spec : Prop :=
  ∀ n, P15573680933946775956.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P172439846066331766

`2*(2*n+1)*A146305(∑[n])`
-/

namespace A112385.P172439846066331766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112385.P172439846066331766

namespace A112385

/-- `2*(2*n+1)*A146305(∑[n])` -/
def P172439846066331766.Spec : Prop :=
  ∀ n, P172439846066331766.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P13860744787721923679

`A000260(n)*A016825(n)`
-/

namespace A112385.P13860744787721923679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A016825 n

end

end A112385.P13860744787721923679

namespace A112385

/-- `A000260(n)*A016825(n)` -/
def P13860744787721923679.Spec : Prop :=
  ∀ n, P13860744787721923679.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P4960964036909823762

`A024496(n+1)-A000260(n)`
-/

namespace A112385.P4960964036909823762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024496 (n + 1) - A000260 n

end

end A112385.P4960964036909823762

namespace A112385

/-- `A024496(n+1)-A000260(n)` -/
def P4960964036909823762.Spec : Prop :=
  ∀ n, P4960964036909823762.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P856151411026101024

`2*A000260(n)*A005408(n)`
-/

namespace A112385.P856151411026101024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000260 n * A005408 n)

end

end A112385.P856151411026101024

namespace A112385

/-- `2*A000260(n)*A005408(n)` -/
def P856151411026101024.Spec : Prop :=
  ∀ n, P856151411026101024.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P5789166437131923647

`2*A124753(A007494(2*n+1))`
-/

namespace A112385.P5789166437131923647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124753 (A007494 (2 * n + 1)).toNat

end

end A112385.P5789166437131923647

namespace A112385

/-- `2*A124753(A007494(2*n+1))` -/
def P5789166437131923647.Spec : Prop :=
  ∀ n, P5789166437131923647.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P17874080107452925640

`2*A124753(A294732(2*n+3))`
-/

namespace A112385.P17874080107452925640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124753 (A294732 (2 * n + 3)).toNat

end

end A112385.P17874080107452925640

namespace A112385

/-- `2*A124753(A294732(2*n+3))` -/
def P17874080107452925640.Spec : Prop :=
  ∀ n, P17874080107452925640.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P10512500065646623200

`A369082(2*n+1)+A369082(2*n+1)`
-/

namespace A112385.P10512500065646623200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (2 * n + 1) + A369082 (2 * n + 1)

end

end A112385.P10512500065646623200

namespace A112385

/-- `A369082(2*n+1)+A369082(2*n+1)` -/
def P10512500065646623200.Spec : Prop :=
  ∀ n, P10512500065646623200.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P5477138886302748062

`A006632(n+1)+A006632(A069271(n)/A000260(n))`
-/

namespace A112385.P5477138886302748062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + A006632 (SequenceMachineLib.roundAway ((A069271 n : ℚ) / (A000260 n : ℚ))).toNat

end

end A112385.P5477138886302748062

namespace A112385

/-- `A006632(n+1)+A006632(A069271(n)/A000260(n))` -/
def P5477138886302748062.Spec : Prop :=
  ∀ n, P5477138886302748062.a n = A112385 (n + 1)

end A112385

/-! ## A112385.P1094890272352095602

`A337291(n+1)/2`
-/

namespace A112385.P1094890272352095602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337291 (n + 1) : ℚ) / 2

end

end A112385.P1094890272352095602

namespace A112385

/-- `A337291(n+1)/2` -/
def P1094890272352095602.Spec : Prop :=
  ∀ n, P1094890272352095602.a n = (A112385 (n + 1) : ℚ)

end A112385

/-! ## A112385.P6105446496895555505

`A283799(Δ[n²])/(n+1)`
-/

namespace A112385.P6105446496895555505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283799 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A112385.P6105446496895555505

namespace A112385

/-- `A283799(Δ[n²])/(n+1)` -/
def P6105446496895555505.Spec : Prop :=
  ∀ n, P6105446496895555505.a n = (A112385 (n + 1) : ℚ)

end A112385

/-!
# A112387: a(n) = 2^(n/2) if n is even and a(n-1) - a(n-2) if n is odd, a(1) = 1.

The programs for A112387, the canonical program `A112387.P10587408961557432993` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112387 has offset 0).

The definition of A112387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112387.P4625646597400498297

`ogf((1+x+x^2)/(1-x^2-2x^4))`
-/

namespace A112387.P4625646597400498297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 0, -1, 0, -2] n

end

end A112387.P4625646597400498297

namespace A112387

/-- `ogf((1+x+x^2)/(1-x^2-2x^4))` -/
def P4625646597400498297.Spec : Prop :=
  ∀ n, P4625646597400498297.a n = A112387 n

end A112387

/-! ## A112387.P10587408961557432993

`A135318(n+(-1)^n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112387

/-- `A135318(n+(-1)^n)` -/
def P10587408961557432993.Spec : Prop :=
  ∀ n, P10587408961557432993.a n = A112387 n

theorem P10587408961557432993.correct : P10587408961557432993.Spec := by
  intro n
  simp only [A112387]

end A112387

/-! ## A112387.P11329124357566740648

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A112387.P11329124357566740648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 2) + 2 * a (n - 4)

end

end A112387.P11329124357566740648

namespace A112387

/-- `a(n-2)+2*a(n-4)` -/
def P11329124357566740648.Spec : Prop :=
  ∀ n, (P11329124357566740648.a n : ℤ) = A112387 n

end A112387

/-! ## A112387.P8515676931828704392

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A112387.P8515676931828704392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A112387.P8515676931828704392

namespace A112387

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P8515676931828704392.Spec : Prop :=
  ∀ n, (P8515676931828704392.a n : ℤ) = A112387 n

end A112387

/-! ## A112387.P4143901027148024581

`A135318(xor(1, n))`
-/

namespace A112387.P4143901027148024581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (Nat.xor 1 n)

end

end A112387.P4143901027148024581

namespace A112387

/-- `A135318(xor(1, n))` -/
def P4143901027148024581.Spec : Prop :=
  ∀ n, P4143901027148024581.a n = A112387 n

end A112387

/-! ## A112387.P13593186315311372677

`A135318(n+1)/A077953(n+1)*A077980(n)`
-/

namespace A112387.P13593186315311372677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135318 (n + 1) : ℚ) / (A077953 (n + 1) : ℚ) * (A077980 n : ℚ)

end

end A112387.P13593186315311372677

namespace A112387

/-- `A135318(n+1)/A077953(n+1)*A077980(n)` -/
def P13593186315311372677.Spec : Prop :=
  ∀ n, P13593186315311372677.a n = (A112387 n : ℚ)

end A112387

/-! ## A112387.P6480503253813083953

`A016116(n+2)-A135318(n+1)`
-/

namespace A112387.P6480503253813083953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 2) - A135318 (n + 1)

end

end A112387.P6480503253813083953

namespace A112387

/-- `A016116(n+2)-A135318(n+1)` -/
def P6480503253813083953.Spec : Prop :=
  ∀ n, P6480503253813083953.a n = A112387 n

end A112387

/-! ## A112387.P16363019967500440078

`Δ[A169969(n+2)/2]`
-/

namespace A112387.P16363019967500440078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169969 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112387.P16363019967500440078

namespace A112387

/-- `Δ[A169969(n+2)/2]` -/
def P16363019967500440078.Spec : Prop :=
  ∀ n, P16363019967500440078.a n = (A112387 n : ℚ)

end A112387

/-! ## A112387.P4638238872636488797

`A114438(n+2)+A114438(n+2)-A306888(n+2)`
-/

namespace A112387.P4638238872636488797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114438 (n + 2) + (A114438 (n + 2) - A306888 (n + 2))

end

end A112387.P4638238872636488797

namespace A112387

/-- `A114438(n+2)+A114438(n+2)-A306888(n+2)` -/
def P4638238872636488797.Spec : Prop :=
  ∀ n, P4638238872636488797.a n = A112387 n

end A112387

/-! ## A112387.P9257757763283522000

`and(A112447(n), A285828(n))`
-/

namespace A112387.P9257757763283522000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285828 n)

end

end A112387.P9257757763283522000

namespace A112387

/-- `and(A112447(n), A285828(n))` -/
def P9257757763283522000.Spec : Prop :=
  ∀ n, P9257757763283522000.a n = A112387 n

end A112387

/-! ## A112387.P14353393780342726599

`sqrt(A374098(n))`
-/

namespace A112387.P14353393780342726599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374098 n : ℝ)

end

end A112387.P14353393780342726599

namespace A112387

/-- `sqrt(A374098(n))` -/
def P14353393780342726599.Spec : Prop :=
  ∀ n, P14353393780342726599.a n = (A112387 n : ℝ)

end A112387

/-! ## A112387.P15434911162638265925

`and(A112447(n), A285559(n))`
-/

namespace A112387.P15434911162638265925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285559 n)

end

end A112387.P15434911162638265925

namespace A112387

/-- `and(A112447(n), A285559(n))` -/
def P15434911162638265925.Spec : Prop :=
  ∀ n, P15434911162638265925.a n = A112387 n

end A112387

/-! ## A112387.P6153451354711605005

`and(A112447(n), A285835(n))`
-/

namespace A112387.P6153451354711605005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285835 n)

end

end A112387.P6153451354711605005

namespace A112387

/-- `and(A112447(n), A285835(n))` -/
def P6153451354711605005.Spec : Prop :=
  ∀ n, P6153451354711605005.a n = A112387 n

end A112387

/-! ## A112387.P16497114202681702077

`and(A112447(n), A285840(n))`
-/

namespace A112387.P16497114202681702077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285840 n)

end

end A112387.P16497114202681702077

namespace A112387

/-- `and(A112447(n), A285840(n))` -/
def P16497114202681702077.Spec : Prop :=
  ∀ n, P16497114202681702077.a n = A112387 n

end A112387

/-! ## A112387.P3468038689826569910

`and(A112447(n), A285844(n))`
-/

namespace A112387.P3468038689826569910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285844 n)

end

end A112387.P3468038689826569910

namespace A112387

/-- `and(A112447(n), A285844(n))` -/
def P3468038689826569910.Spec : Prop :=
  ∀ n, P3468038689826569910.a n = A112387 n

end A112387

/-! ## A112387.P11644256450814437143

`A329908(n+2)-A001045(n+1)`
-/

namespace A112387.P11644256450814437143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (n + 2) - A001045 (n + 1)

end

end A112387.P11644256450814437143

namespace A112387

/-- `A329908(n+2)-A001045(n+1)` -/
def P11644256450814437143.Spec : Prop :=
  ∀ n, P11644256450814437143.a n = A112387 n

end A112387

/-! ## A112387.P8584668245208647238

`and(A112447(n), A279180(n))`
-/

namespace A112387.P8584668245208647238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A279180 n)

end

end A112387.P8584668245208647238

namespace A112387

/-- `and(A112447(n), A279180(n))` -/
def P8584668245208647238.Spec : Prop :=
  ∀ n, P8584668245208647238.a n = A112387 n

end A112387

/-! ## A112387.P8947889108814066079

`and(A112447(n), A279471(n))`
-/

namespace A112387.P8947889108814066079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A279471 n)

end

end A112387.P8947889108814066079

namespace A112387

/-- `and(A112447(n), A279471(n))` -/
def P8947889108814066079.Spec : Prop :=
  ∀ n, P8947889108814066079.a n = A112387 n

end A112387

/-! ## A112387.P8482696672077150265

`and(A112447(n), A279672(n))`
-/

namespace A112387.P8482696672077150265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A279672 n)

end

end A112387.P8482696672077150265

namespace A112387

/-- `and(A112447(n), A279672(n))` -/
def P8482696672077150265.Spec : Prop :=
  ∀ n, P8482696672077150265.a n = A112387 n

end A112387

/-! ## A112387.P2245330893269019040

`and(A112447(n), A279719(n))`
-/

namespace A112387.P2245330893269019040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A279719 n)

end

end A112387.P2245330893269019040

namespace A112387

/-- `and(A112447(n), A279719(n))` -/
def P2245330893269019040.Spec : Prop :=
  ∀ n, P2245330893269019040.a n = A112387 n

end A112387

/-!
# A112391: Primes p such that 23*p + 2 is also prime.

The programs for A112391, there is no canonical definition to state claims against.
-/

/-! ## A112391.P9217965334739754044

`p?[A111294(n+1)]`
-/

namespace A112391.P9217965334739754044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112391.P9217965334739754044

/-! ## A112391.P5390097070762673195

`p?[floor(A141908(n+1)/23)]`
-/

namespace A112391.P5390097070762673195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141908 (n + 1) : ℚ) / 23⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112391.P5390097070762673195

/-! ## A112391.P633730206755052541

`∩[A007645(n+1), A111294(n+1)]`
-/

namespace A112391.P633730206755052541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P633730206755052541

/-! ## A112391.P11183851460636945370

`∩[A040116(n+1), A111294(n+1)]`
-/

namespace A112391.P11183851460636945370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P11183851460636945370

/-! ## A112391.P2372604528648826237

`∩[A040159(n+1), A111294(n+1)]`
-/

namespace A112391.P2372604528648826237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P2372604528648826237

/-! ## A112391.P12664996677181538807

`∩[A040161(n+1), A111294(n+1)]`
-/

namespace A112391.P12664996677181538807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P12664996677181538807

/-! ## A112391.P9389944983133473900

`∩[A040165(n+1), A111294(n+1)]`
-/

namespace A112391.P9389944983133473900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P9389944983133473900

/-! ## A112391.P8137305576637653700

`∩[A040169(n+1), A111294(n+1)]`
-/

namespace A112391.P8137305576637653700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P8137305576637653700

/-! ## A112391.P3321845226270930418

`∩[A040171(n+1), A111294(n+1)]`
-/

namespace A112391.P3321845226270930418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P3321845226270930418

/-! ## A112391.P2270217437815994719

`∩[A040177(n+1), A111294(n+1)]`
-/

namespace A112391.P2270217437815994719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P2270217437815994719

/-! ## A112391.P8328259411717653239

`∩[A040179(n+1), A111294(n+1)]`
-/

namespace A112391.P8328259411717653239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P8328259411717653239

/-! ## A112391.P489941444962373197

`∩[A040184(n+1), A111294(n+1)]`
-/

namespace A112391.P489941444962373197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P489941444962373197

/-! ## A112391.P2796203187062160536

`∩[A040970(n+1), A111294(n+1)]`
-/

namespace A112391.P2796203187062160536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P2796203187062160536

/-! ## A112391.P1142435677176243509

`∩[A040972(n+1), A111294(n+1)]`
-/

namespace A112391.P1142435677176243509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P1142435677176243509

/-! ## A112391.P10962300834290885448

`∩[A040974(n+1), A111294(n+1)]`
-/

namespace A112391.P10962300834290885448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P10962300834290885448

/-! ## A112391.P3302760149111998021

`∩[A040978(n+1), A111294(n+1)]`
-/

namespace A112391.P3302760149111998021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P3302760149111998021

/-! ## A112391.P7240926863113922691

`∩[A040980(n+1), A111294(n+1)]`
-/

namespace A112391.P7240926863113922691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P7240926863113922691

/-! ## A112391.P5770893236339509917

`∩[A040982(n+1), A111294(n+1)]`
-/

namespace A112391.P5770893236339509917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P5770893236339509917

/-! ## A112391.P1614877404685177427

`∩[A040986(n+1), A111294(n+1)]`
-/

namespace A112391.P1614877404685177427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P1614877404685177427

/-! ## A112391.P14945079342955612049

`∩[A040990(n+1), A111294(n+1)]`
-/

namespace A112391.P14945079342955612049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112391.P14945079342955612049

/-!
# A112392: Squares of the form 3*k - 2 where k is a semiprime.

The programs for A112392, there is no canonical definition to state claims against.
-/

/-! ## A112392.P9429085018899593355

`3*A112393(n+1)-2`
-/

namespace A112392.P9429085018899593355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A112393 (n + 1) - 2

end

end A112392.P9429085018899593355

/-! ## A112392.P580391149171087420

`xor(3*A112393(n+1), A000005(A023203(n+1)))`
-/

namespace A112392.P580391149171087420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A000005 (A023203 (n + 1)).toNat)

end

end A112392.P580391149171087420

/-! ## A112392.P7883962659759996291

`xor(3*A112393(n+1), A000005(A126095(n+1)))`
-/

namespace A112392.P7883962659759996291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A000005 (A126095 (n + 1)).toNat)

end

end A112392.P7883962659759996291

/-! ## A112392.P2145606497777210066

`xor(3*A112393(n+1), A020639(A270296(n+1)))`
-/

namespace A112392.P2145606497777210066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A020639 (A270296 (n + 1)).toNat)

end

end A112392.P2145606497777210066

/-! ## A112392.P16524959771484228478

`xor(3*A112393(n+1), A000005(A126096(n+1)))`
-/

namespace A112392.P16524959771484228478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A000005 (A126096 (n + 1)).toNat)

end

end A112392.P16524959771484228478

/-! ## A112392.P11377164150266406526

`xor(3*A112393(n+1), A000005(A126107(n+1)))`
-/

namespace A112392.P11377164150266406526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A000005 (A126107 (n + 1)).toNat)

end

end A112392.P11377164150266406526

/-! ## A112392.P15929247614437054107

`xor(3*A112393(n+1), A126103(A020639(n+2)))`
-/

namespace A112392.P15929247614437054107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A126103 (A020639 (n + 2)).toNat)

end

end A112392.P15929247614437054107

/-! ## A112392.P372468091852848593

`xor(2, 3*A112393(A002024(∑[n+1])))`
-/

namespace A112392.P372468091852848593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (3 * A112393 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A112392.P372468091852848593

/-! ## A112392.P3289074300960031189

`xor(3*A112393(n+1), A000005(A126117(n+1)))`
-/

namespace A112392.P3289074300960031189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A112393 (n + 1)) (A000005 (A126117 (n + 1)).toNat)

end

end A112392.P3289074300960031189

/-! ## A112392.P10850722449521777088

`A112652(A112393(n+1))`
-/

namespace A112392.P10850722449521777088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A112393 (n + 1)).toNat

end

end A112392.P10850722449521777088

/-!
# A112393: Semiprimes n such that 3*n - 2 is a square.

The programs for A112393, there is no canonical definition to state claims against.
-/

/-! ## A112393.P11345842221537842644

`ceil(A112392(n+1)/3)`
-/

namespace A112393.P11345842221537842644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112392 (n + 1) : ℚ) / 3⌉

end

end A112393.P11345842221537842644

/-! ## A112393.P9459268178711174555

`A008810(sqrt(A112392(n+1)))`
-/

namespace A112393.P9459268178711174555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (SequenceMachineLib.roundAway (Real.sqrt (A112392 (n + 1) : ℝ))).toNat

end

end A112393.P9459268178711174555

/-! ## A112393.P2716482855412619641

`A008810(root(A112392(n+1), 2))`
-/

namespace A112393.P2716482855412619641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (SequenceMachineLib.roundAway ((A112392 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A112393.P2716482855412619641

/-! ## A112393.P5901129722931223189

`A000212(sqrt(A112392(n+1)))+1`
-/

namespace A112393.P5901129722931223189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (SequenceMachineLib.roundAway (Real.sqrt (A112392 (n + 1) : ℝ))).toNat + 1

end

end A112393.P5901129722931223189

/-! ## A112393.P8043378347791608421

`∪[A113519(n+1), A113528(n+1)]`
-/

namespace A112393.P8043378347791608421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112393.P8043378347791608421

/-! ## A112393.P3113785958971350080

`ceil((eq[2, A001222(ceil((n+1)²/3))]+1)²/3)`
-/

namespace A112393.P3113785958971350080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈((n + 1) ^ 2 : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2 : ℚ) / 3⌉

end

end A112393.P3113785958971350080

/-! ## A112393.P8855342715474224236

`A257083(eq[2, A001222(A257083(n))])`
-/

namespace A112393.P8855342715474224236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112393.P8855342715474224236

/-! ## A112393.P10879725686605895331

`∩[A001358(n+1), A008810(n)]`
-/

namespace A112393.P10879725686605895331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112393.P10879725686605895331

/-! ## A112393.P8222079570812972833

`∩[A001358(n+1), A257083(n)]`
-/

namespace A112393.P8222079570812972833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112393.P8222079570812972833

/-! ## A112393.P16750957764415836945

`∩[A241013(n+1), A008810(n)]`
-/

namespace A112393.P16750957764415836945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112393.P16750957764415836945

/-! ## A112393.P5048418685179180220

`∩[A241013(n+1), A257083(n)]`
-/

namespace A112393.P5048418685179180220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112393.P5048418685179180220

/-! ## A112393.P5611984483684309061

`filter[A257083(n), A064911(#)]`
-/

namespace A112393.P5611984483684309061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112393.P5611984483684309061

/-! ## A112393.P16281714985691552448

`filter[A008810(n+1), A064911(#)]`
-/

namespace A112393.P16281714985691552448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112393.P16281714985691552448

/-! ## A112393.P2256513898741741942

`filter[A008806(2*n), A064911(#)]`
-/

namespace A112393.P2256513898741741942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112393.P2256513898741741942

/-! ## A112393.P16589407548206542499

`filter[A036410(2*n+1), A064911(#)]`
-/

namespace A112393.P16589407548206542499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112393.P16589407548206542499

/-! ## A112393.P14296261923706831165

`A257083(eq[1, A064911(A257083(n))])`
-/

namespace A112393.P14296261923706831165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A257083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112393.P14296261923706831165

/-!
# A112394: Smallest prime obtained by appending 3's to k, where k runs through the numbers not divisible by 3, or -1 if no such prime exists.

The programs for A112394, there is no canonical definition to state claims against.
-/

/-! ## A112394.P11004444975036944314

`A372056(∑[gcd(2, ∏{p}[n, #])])`
-/

namespace A112394.P11004444975036944314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372056 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112394.P11004444975036944314

/-! ## A112394.P4773831988296137945

`A372056(A001651(n+1))`
-/

namespace A112394.P4773831988296137945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372056 (A001651 (n + 1)).toNat

end

end A112394.P4773831988296137945

/-! ## A112394.P5760525624136181542

`A372056(A329925(n+1))`
-/

namespace A112394.P5760525624136181542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372056 (A329925 (n + 1)).toNat

end

end A112394.P5760525624136181542

/-! ## A112394.P13806048442973132829

`A372056(A004526(3*n+2))`
-/

namespace A112394.P13806048442973132829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372056 (A004526 (3 * n + 2)).toNat

end

end A112394.P13806048442973132829

/-! ## A112394.P10378068245553777513

`A372056(A004526(n)+1+n)`
-/

namespace A112394.P10378068245553777513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372056 (A004526 n + 1 + (n : ℤ)).toNat

end

end A112394.P10378068245553777513

/-!
# A112397: Primes of the form semiprime(n) + Fibonacci(n).

The programs for A112397, there is no canonical definition to state claims against.
-/

/-! ## A112397.P11507104869099005690

`p?[eq[2, ∑{e}[n, #]]+A000045(n+1)]`
-/

namespace A112397.P11507104869099005690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) + A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112397.P11507104869099005690

/-! ## A112397.P9969879728201117833

`p?[A176540(n+1)+A000045(n)]`
-/

namespace A112397.P9969879728201117833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112397.P9969879728201117833

/-! ## A112397.P8631786535684611395

`p?[record[A210615(n+1)]+A000045(n)]`
-/

namespace A112397.P8631786535684611395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112397.P8631786535684611395

/-! ## A112397.P14286259875560601674

`p?[A001358(n+1)+A000045(n+1)]`
-/

namespace A112397.P14286259875560601674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112397.P14286259875560601674

/-! ## A112397.P12326021488522463771

`p?[A001358(n+1)+A000071(n+1)+1]`
-/

namespace A112397.P12326021488522463771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + A000071 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112397.P12326021488522463771

/-!
# A112398: Odd numbers which are exclusively the shortest side of primitive Pythagorean triangles.

The programs for A112398, there is no canonical definition to state claims against.
-/

/-! ## A112398.P3352950970998167695

`∩[2*n+1, A112680(n+1)]`
-/

namespace A112398.P3352950970998167695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P3352950970998167695

/-! ## A112398.P6410180358493535983

`filter[A112680(n+1), A039982(#)]`
-/

namespace A112398.P6410180358493535983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A112398.P6410180358493535983

/-! ## A112398.P12702573653420435796

`filter[A112680(n+1), A098725(#)]`
-/

namespace A112398.P12702573653420435796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A112398.P12702573653420435796

/-! ## A112398.P4687691133850082384

`filter[A112680(n+1), A166486(#)]`
-/

namespace A112398.P4687691133850082384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A112398.P4687691133850082384

/-! ## A112398.P12459752371186514816

`∩[A112680(n+1), A317439(n+1)]`
-/

namespace A112398.P12459752371186514816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P12459752371186514816

/-! ## A112398.P16637222566498028942

`A112680(eq[1, A112680(n+1)%2]+1)`
-/

namespace A112398.P16637222566498028942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112680 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112398.P16637222566498028942

/-! ## A112398.P12211431722510502207

`A112680(eq[1, gcd(2, A112680(n+1))]+1)`
-/

namespace A112398.P12211431722510502207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A112680 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A112398.P12211431722510502207

/-! ## A112398.P5770859738818125375

`∩[A112680(n+1), A004273(n)]`
-/

namespace A112398.P5770859738818125375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P5770859738818125375

/-! ## A112398.P6352136317770219677

`∩[A112680(n+1), A004275(n)+1]`
-/

namespace A112398.P6352136317770219677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P6352136317770219677

/-! ## A112398.P8713826043755895590

`∩[A112680(n+1), A004277(n)+1]`
-/

namespace A112398.P8713826043755895590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P8713826043755895590

/-! ## A112398.P198727158148587996

`∩[A112680(n+1), A005843(n)+1]`
-/

namespace A112398.P198727158148587996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P198727158148587996

/-! ## A112398.P8487352051394906520

`∩[A112680(n+1), A144396(n+1)]`
-/

namespace A112398.P8487352051394906520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P8487352051394906520

/-! ## A112398.P2514097106657696872

`∩[A112680(n+1), A103517(n)-1]`
-/

namespace A112398.P2514097106657696872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P2514097106657696872

/-! ## A112398.P15634698284302608010

`∩[A112680(n+1), A163300(n+1)-1]`
-/

namespace A112398.P15634698284302608010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P15634698284302608010

/-! ## A112398.P6361012954048720236

`∩[A112680(n+1), A004274(n)]`
-/

namespace A112398.P6361012954048720236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P6361012954048720236

/-! ## A112398.P4183794050153293555

`∩[A112680(n+1), A004276(n)]`
-/

namespace A112398.P4183794050153293555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P4183794050153293555

/-! ## A112398.P9643363483099499987

`∩[A112680(n+1), A004281(n)]`
-/

namespace A112398.P9643363483099499987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P9643363483099499987

/-! ## A112398.P13814958595173974335

`∩[A112680(n+1), A060747(n)]`
-/

namespace A112398.P13814958595173974335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P13814958595173974335

/-! ## A112398.P6498062165798117122

`∩[A112372(n+1), A137409(n+1)]`
-/

namespace A112398.P6498062165798117122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112398.P6498062165798117122

/-! ## A112398.P13673385165482972101

`filter[A112680(n+1), A000035(#)]`
-/

namespace A112398.P13673385165482972101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A112398.P13673385165482972101

/-!
# A112399: a(n) = Sum_{k=1..n, gcd(k,n)=1} mu(k), where mu(k) = A008683(k) (the Moebius function).

The programs for A112399, the canonical program `A112399.P10178886166519952619` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112399 has offset 1).

The definition of A112399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112399.P10178886166519952619

`∑{d}[n+1, A332685(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112399

/-- `∑{d}[n+1, A332685(#)*A008683((n+1)/#)]` -/
def P10178886166519952619.Spec : Prop :=
  ∀ n, P10178886166519952619.a n = A112399 (n + 1)

theorem P10178886166519952619.correct : P10178886166519952619.Spec := by
  intro n
  simp only [A112399, Nat.add_sub_cancel]

end A112399

/-! ## A112399.P17713019167916983513

`∑{d}[n+1, A008683(#)*A332685((n+1)/#)]`
-/

namespace A112399.P17713019167916983513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112399.P17713019167916983513

namespace A112399

/-- `∑{d}[n+1, A008683(#)*A332685((n+1)/#)]` -/
def P17713019167916983513.Spec : Prop :=
  ∀ n, P17713019167916983513.a n = A112399 (n + 1)

end A112399

/-! ## A112399.P12481156734037712895

`A006345(A051535(n))-A000194(n)`
-/

namespace A112399.P12481156734037712895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006345 (A051535 n).toNat - A000194 n

end

end A112399.P12481156734037712895

namespace A112399

/-- `A006345(A051535(n))-A000194(n)` -/
def P12481156734037712895.Spec : Prop :=
  ∀ n, P12481156734037712895.a n = A112399 (n + 1)

end A112399

/-! ## A112399.P11355143343118074935

`A280933(A203003(n+1))-(round(sqrt(n+1))-1)`
-/

namespace A112399.P11355143343118074935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280933 (A203003 (n + 1)).toNat - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A112399.P11355143343118074935

namespace A112399

/-- `A280933(A203003(n+1))-(round(sqrt(n+1))-1)` -/
def P11355143343118074935.Spec : Prop :=
  ∀ n, P11355143343118074935.a n = A112399 (n + 1)

end A112399

/-! ## A112399.P5516125924989970465

`A048866(n+1)-A073312(A187829(n+1))`
-/

namespace A112399.P5516125924989970465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1) - A073312 (A187829 (n + 1)).toNat

end

end A112399.P5516125924989970465

namespace A112399

/-- `A048866(n+1)-A073312(A187829(n+1))` -/
def P5516125924989970465.Spec : Prop :=
  ∀ n, P5516125924989970465.a n = A112399 (n + 1)

end A112399

