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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A208101: Triangle read by rows: T(n,0) = 1; for n > 0: T(n,1) = n, for n>1: T(n,n) = T(n-1,n-2); T(n,k) = T(n-2,k-1) + T(n-1,k) for k: 1 < k < n.

The programs for A208101, the canonical program `A208101.P8839203671577163983` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208101 has offset 0).

The definition of A208101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208101.P6088340337234503481

`A052173(comp[∑[n]])+A052173(n)`
-/

namespace A208101.P6088340337234503481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A052173 n

end

end A208101.P6088340337234503481

namespace A208101

/-- `A052173(comp[∑[n]])+A052173(n)` -/
def P6088340337234503481.Spec : Prop :=
  ∀ n, P6088340337234503481.a n = A208101 n

end A208101

/-! ## A208101.P8839203671577163983

`gcd(A052173(n), A052173(A080036(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208101

/-- `gcd(A052173(n), A052173(A080036(n)))` -/
def P8839203671577163983.Spec : Prop :=
  ∀ n, (P8839203671577163983.a n : ℤ) = A208101 n

theorem P8839203671577163983.correct : P8839203671577163983.Spec := by
  intro n
  simp only [A208101]

end A208101

/-! ## A208101.P13128370355351384768

`or(A052173(A014132(n+1)), A052173(n))`
-/

namespace A208101.P13128370355351384768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052173 (A014132 (n + 1)).toNat) (A052173 n)

end

end A208101.P13128370355351384768

namespace A208101

/-- `or(A052173(A014132(n+1)), A052173(n))` -/
def P13128370355351384768.Spec : Prop :=
  ∀ n, P13128370355351384768.a n = A208101 n

end A208101

/-! ## A208101.P6244758059137685309

`A053121(A061579(n))+A052173(A014132(n+1))`
-/

namespace A208101.P6244758059137685309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A061579 n).toNat + A052173 (A014132 (n + 1)).toNat

end

end A208101.P6244758059137685309

namespace A208101

/-- `A053121(A061579(n))+A052173(A014132(n+1))` -/
def P6244758059137685309.Spec : Prop :=
  ∀ n, P6244758059137685309.a n = A208101 n

end A208101

/-! ## A208101.P10556217973378715001

`A188277(n+1)-A157928(A271852(n+1))`
-/

namespace A208101.P10556217973378715001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188277 (n + 1) - A157928 (A271852 (n + 1)).toNat

end

end A208101.P10556217973378715001

namespace A208101

/-- `A188277(n+1)-A157928(A271852(n+1))` -/
def P10556217973378715001.Spec : Prop :=
  ∀ n, P10556217973378715001.a n = A208101 n

end A208101

/-!
# A208102: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208102, there is no canonical definition to state claims against.
-/

/-! ## A208102.P11381265019759933473

`A208108(∑[4*n]+1)`
-/

namespace A208102.P11381265019759933473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208102.P11381265019759933473

/-! ## A208102.P1082559647635770737

`record[gcd(A114327(n), A208108(n+1))]`
-/

namespace A208102.P1082559647635770737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208108 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208102.P1082559647635770737

/-! ## A208102.P4820327601929327849

`gcd(A000038(n), A208108(A001844(n)))`
-/

namespace A208102.P4820327601929327849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208108 (A001844 n).toNat)

end

end A208102.P4820327601929327849

/-! ## A208102.P2338001733806836342

`lcm(A020985(n), A208108(A001844(n)))`
-/

namespace A208102.P2338001733806836342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A208108 (A001844 n).toNat)

end

end A208102.P2338001733806836342

/-! ## A208102.P75335630851105022

`A208108(A001844(n))+A000007(n+1)`
-/

namespace A208102.P75335630851105022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A001844 n).toNat + A000007 (n + 1)

end

end A208102.P75335630851105022

/-!
# A208103: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208103, the canonical program `A208103.P14693043031936500014` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208103 has offset 1).

The definition of A208103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208103.P17550716352083789799

`ogf((6+12x-54x^2-33x^3+70x^4+20x^5-15x^6)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))`
-/

namespace A208103.P17550716352083789799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 12, -54, -33, 70, 20, -15] [1, -4, 2, 6, -4, -2, 1] n

end

end A208103.P17550716352083789799

namespace A208103

/-- `ogf((6+12x-54x^2-33x^3+70x^4+20x^5-15x^6)/(1-4x+2x^2+6x^3-4x^4-2x^5+x^6))` -/
def P17550716352083789799.Spec : Prop :=
  ∀ n, P17550716352083789799.a n = A208103 (n + 1)

end A208103

/-! ## A208103.P14693043031936500014

`sqrt(A207436(n+1))*sqrt(A208104(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208103

/-- `sqrt(A207436(n+1))*sqrt(A208104(n+1))` -/
def P14693043031936500014.Spec : Prop :=
  ∀ n, P14693043031936500014.a n = (A208103 (n + 1) : ℝ)

end A208103

/-! ## A208103.P14286585821998516533

`sqrt(A207436(n+1)*A208104(n+1))`
-/

namespace A208103.P14286585821998516533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) * A208104 (n + 1) : ℝ)

end

end A208103.P14286585821998516533

namespace A208103

/-- `sqrt(A207436(n+1)*A208104(n+1))` -/
def P14286585821998516533.Spec : Prop :=
  ∀ n, P14286585821998516533.a n = (A208103 (n + 1) : ℝ)

end A208103

/-! ## A208103.P12725602965666587637

`A208840(∑[n+3]+1)`
-/

namespace A208103.P12725602965666587637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208103.P12725602965666587637

namespace A208103

/-- `A208840(∑[n+3]+1)` -/
def P12725602965666587637.Spec : Prop :=
  ∀ n, P12725602965666587637.a n = A208103 (n + 1)

end A208103

/-! ## A208103.P1616569094764357349

`A208840(A055999(n)+4)%(n+5)!`
-/

namespace A208103.P1616569094764357349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208840 (A055999 n + 4).toNat) (Nat.factorial (n + 5) : ℤ)

end

end A208103.P1616569094764357349

namespace A208103

/-- `A208840(A055999(n)+4)%(n+5)!` -/
def P1616569094764357349.Spec : Prop :=
  ∀ n, P1616569094764357349.a n = A208103 (n + 1)

end A208103

/-! ## A208103.P149630185040775267

`A208840(A055999(n)+4)+A000007(n+1)`
-/

namespace A208103.P149630185040775267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A208103.P149630185040775267

namespace A208103

/-- `A208840(A055999(n)+4)+A000007(n+1)` -/
def P149630185040775267.Spec : Prop :=
  ∀ n, P149630185040775267.a n = A208103 (n + 1)

end A208103

/-! ## A208103.P2907284228819877179

`A000041(C(n, n²))*A208840(A055999(n)+4)`
-/

namespace A208103.P2907284228819877179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A208840 (A055999 n + 4).toNat

end

end A208103.P2907284228819877179

namespace A208103

/-- `A000041(C(n, n²))*A208840(A055999(n)+4)` -/
def P2907284228819877179.Spec : Prop :=
  ∀ n, P2907284228819877179.a n = A208103 (n + 1)

end A208103

/-! ## A208103.P17584668550419628191

`A014963(12*n+6)*A208840(A055999(n)+4)`
-/

namespace A208103.P17584668550419628191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A208840 (A055999 n + 4).toNat

end

end A208103.P17584668550419628191

namespace A208103

/-- `A014963(12*n+6)*A208840(A055999(n)+4)` -/
def P17584668550419628191.Spec : Prop :=
  ∀ n, P17584668550419628191.a n = A208103 (n + 1)

end A208103

/-!
# A208104: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208104, the canonical program `A208104.P11413548433470164677` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208104 has offset 1).

The definition of A208104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208104.P11413548433470164677

`∑[a(n-1)+a(n-2)]²` with `a(0)=3, a(1)=6, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208104

/-- `∑[a(n-1)+a(n-2)]²` -/
def P11413548433470164677.Spec : Prop :=
  ∀ n, (P11413548433470164677.a n : ℤ) = A208104 (n + 1)

theorem P11413548433470164677.correct : P11413548433470164677.Spec := by
  intro n
  simp only [A208104, Nat.add_sub_cancel]

end A208104

/-! ## A208104.P7548679554257455367

`(2*A226271(n+1)+1)²`
-/

namespace A208104.P7548679554257455367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A226271 (n + 1) + 1) ^ 2

end

end A208104.P7548679554257455367

namespace A208104

/-- `(2*A226271(n+1)+1)²` -/
def P7548679554257455367.Spec : Prop :=
  ∀ n, P7548679554257455367.a n = A208104 (n + 1)

end A208104

/-! ## A208104.P8648021548880592226

`A208103(n+1)/A207436(n+1)*A208103(n+1)`
-/

namespace A208104.P8648021548880592226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A208103 (n + 1) : ℚ)

end

end A208104.P8648021548880592226

namespace A208104

/-- `A208103(n+1)/A207436(n+1)*A208103(n+1)` -/
def P8648021548880592226.Spec : Prop :=
  ∀ n, P8648021548880592226.a n = (A208104 (n + 1) : ℚ)

end A208104

/-! ## A208104.P15775271967860183173

`A208105(n+1)/A208106(n+1)*A208105(n+1)`
-/

namespace A208104.P15775271967860183173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208105 (n + 1) : ℚ) / (A208106 (n + 1) : ℚ) * (A208105 (n + 1) : ℚ)

end

end A208104.P15775271967860183173

namespace A208104

/-- `A208105(n+1)/A208106(n+1)*A208105(n+1)` -/
def P15775271967860183173.Spec : Prop :=
  ∀ n, P15775271967860183173.a n = (A208104 (n + 1) : ℚ)

end A208104

/-! ## A208104.P2171938194547194008

`A208103(n+1)²/A207436(n+1)`
-/

namespace A208104.P2171938194547194008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A208104.P2171938194547194008

namespace A208104

/-- `A208103(n+1)²/A207436(n+1)` -/
def P2171938194547194008.Spec : Prop :=
  ∀ n, P2171938194547194008.a n = (A208104 (n + 1) : ℚ)

end A208104

/-! ## A208104.P11768846998587794272

`(A208105(n+1)/gcd(A208105(n+1), A208107(n+1)))²`
-/

namespace A208104.P11768846998587794272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208105 (n + 1) : ℚ) / (Int.gcd (A208105 (n + 1)) (A208107 (n + 1)) : ℚ)) ^ 2

end

end A208104.P11768846998587794272

namespace A208104

/-- `(A208105(n+1)/gcd(A208105(n+1), A208107(n+1)))²` -/
def P11768846998587794272.Spec : Prop :=
  ∀ n, P11768846998587794272.a n = (A208104 (n + 1) : ℚ)

end A208104

/-! ## A208104.P2965559032947997280

`A208105(n+1)²/A208106(n+1)`
-/

namespace A208104.P2965559032947997280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208105 (n + 1) ^ 2 : ℚ) / (A208106 (n + 1) : ℚ)

end

end A208104.P2965559032947997280

namespace A208104

/-- `A208105(n+1)²/A208106(n+1)` -/
def P2965559032947997280.Spec : Prop :=
  ∀ n, P2965559032947997280.a n = (A208104 (n + 1) : ℚ)

end A208104

/-!
# A208105: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208105, there is no canonical definition to state claims against.
-/

/-! ## A208105.P1417270644371582800

`A208103(n+1)/A207436(n+1)*A208836(n+1)`
-/

namespace A208105.P1417270644371582800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A208836 (n + 1) : ℚ)

end

end A208105.P1417270644371582800

/-! ## A208105.P12733250693837629197

`A208108(A046691(n+3))`
-/

namespace A208105.P12733250693837629197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A046691 (n + 3)).toNat

end

end A208105.P12733250693837629197

/-! ## A208105.P9012564688804593596

`A208108(Δ[A023545(n+1)])`
-/

namespace A208105.P9012564688804593596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (f1 (n + 1) - f1 n).toNat

end

end A208105.P9012564688804593596

/-! ## A208105.P9092419564723718958

`A208108(A000124(n+5)-5)`
-/

namespace A208105.P9092419564723718958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 5) - 5).toNat

end

end A208105.P9092419564723718958

/-! ## A208105.P12897770895377391998

`A208108(2*(n+1)+A055998(n+1)+6)`
-/

namespace A208105.P12897770895377391998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 ((2 * (n + 1) : ℤ) + (A055998 (n + 1) + 6)).toNat

end

end A208105.P12897770895377391998

/-!
# A208106: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208106, there is no canonical definition to state claims against.
-/

/-! ## A208106.P16569408248199844675

`A208105(n+1)/A208104(n+1)*A208105(n+1)`
-/

namespace A208106.P16569408248199844675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208105 (n + 1) : ℚ) / (A208104 (n + 1) : ℚ) * (A208105 (n + 1) : ℚ)

end

end A208106.P16569408248199844675

/-! ## A208106.P10042819862613277356

`A208836(n+1)/A207436(n+1)*A208836(n+1)`
-/

namespace A208106.P10042819862613277356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208836 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A208836 (n + 1) : ℚ)

end

end A208106.P10042819862613277356

/-! ## A208106.P15256922103815329381

`gcd(A208105(n+1), A208107(n+1))²`
-/

namespace A208106.P15256922103815329381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208105 (n + 1)) (A208107 (n + 1)) ^ 2

end

end A208106.P15256922103815329381

/-! ## A208106.P6653877858303266063

`A208836(n+1)²/A207436(n+1)`
-/

namespace A208106.P6653877858303266063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208836 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A208106.P6653877858303266063

/-! ## A208106.P6298967651450797420

`A208836(n+1)²/(A071679(n+1)+1)²`
-/

namespace A208106.P6298967651450797420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208836 (n + 1) ^ 2 : ℚ) / ((A071679 (n + 1) + 1) ^ 2 : ℚ)

end

end A208106.P6298967651450797420

/-! ## A208106.P11405147666025078545

`A208836(n+1)²/(A116470(2*n+1)+1)²`
-/

namespace A208106.P11405147666025078545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208836 (n + 1) ^ 2 : ℚ) / ((A116470 (2 * n + 1) + 1) ^ 2 : ℚ)

end

end A208106.P11405147666025078545

/-! ## A208106.P13437741289373662637

`A208836(n+1)²/(A008683(2*A000040(n+1))+A000045(n+3))²`
-/

namespace A208106.P13437741289373662637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208836 (n + 1) ^ 2 : ℚ) / ((A008683 (2 * A000040 (n + 1)).toNat + A000045 (n + 3)) ^ 2 : ℚ)

end

end A208106.P13437741289373662637

/-! ## A208106.P2002090441121971121

`A208105(n+1)²/A208104(n+1)`
-/

namespace A208106.P2002090441121971121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208105 (n + 1) ^ 2 : ℚ) / (A208104 (n + 1) : ℚ)

end

end A208106.P2002090441121971121

/-!
# A208107: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208107, there is no canonical definition to state claims against.
-/

/-! ## A208107.P15859602309789545102

`A208108(A055999(n+4))`
-/

namespace A208107.P15859602309789545102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A055999 (n + 4)).toNat

end

end A208107.P15859602309789545102

/-! ## A208107.P14653528964011113122

`A208108(A000217(n+7)-6)`
-/

namespace A208107.P14653528964011113122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000217 (n + 7) - 6).toNat

end

end A208107.P14653528964011113122

/-! ## A208107.P1204987022333606422

`A208108(A000124(n+7)-7)`
-/

namespace A208107.P1204987022333606422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 7) - 7).toNat

end

end A208107.P1204987022333606422

/-! ## A208107.P3466945556123271818

`A208108(A112355(n+4)+n+1)`
-/

namespace A208107.P3466945556123271818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A112355 (n + 4) + (n + 1 : ℤ)).toNat

end

end A208107.P3466945556123271818

/-! ## A208107.P8584623465631666609

`A208108(A000096(n+5)+n+2)`
-/

namespace A208107.P8584623465631666609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A208107.P8584623465631666609

/-!
# A208108: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208108, there is no canonical definition to state claims against.
-/

/-! ## A208108.P9319530560474013222

`A207729(n+1)-A210709(A067747(n+1))`
-/

namespace A208108.P9319530560474013222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A208108.P9319530560474013222

/-! ## A208108.P1567892586269833238

`A207729(n+1)-A210709(n+11)`
-/

namespace A208108.P1567892586269833238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (n + 1) - A210709 (n + 11)

end

end A208108.P1567892586269833238

/-! ## A208108.P301266324104474857

`A209224(n+1)+A207729(n+1)%(A210709(n+11)+A209224(n+1))`
-/

namespace A208108.P301266324104474857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (n + 1) + Int.tmod (A207729 (n + 1)) (A210709 (n + 11) + A209224 (n + 1))

end

end A208108.P301266324104474857

/-!
# A208109: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208109, there is no canonical definition to state claims against.
-/

/-! ## A208109.P11140005044206844455

`A208108(A052905(n)+9)`
-/

namespace A208109.P11140005044206844455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A052905 n + 9).toNat

end

end A208109.P11140005044206844455

/-! ## A208109.P6643679350012812103

`A208108(A055999(n)+10)`
-/

namespace A208109.P6643679350012812103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A055999 n + 10).toNat

end

end A208109.P6643679350012812103

/-! ## A208109.P4582468191967107703

`A208108(A167614(n+2)+1)`
-/

namespace A208109.P4582468191967107703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167614 (n + 2) + 1).toNat

end

end A208109.P4582468191967107703

/-! ## A208109.P6919392576114195834

`A208108(A166136(n+2)-2)`
-/

namespace A208109.P6919392576114195834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A166136 (n + 2) - 2).toNat

end

end A208109.P6919392576114195834

/-! ## A208109.P6633346753030703690

`A208108(A000124(n+3)+3)`
-/

namespace A208109.P6633346753030703690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 3) + 3).toNat

end

end A208109.P6633346753030703690

/-!
# A208110: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208110, there is no canonical definition to state claims against.
-/

/-! ## A208110.P869080488984684920

`A208108(A167499(n+3))`
-/

namespace A208110.P869080488984684920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167499 (n + 3)).toNat

end

end A208110.P869080488984684920

/-! ## A208110.P16679645628204029394

`A208108(A133263(n+4)+3)`
-/

namespace A208110.P16679645628204029394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A133263 (n + 4) + 3).toNat

end

end A208110.P16679645628204029394

/-! ## A208110.P6170371185597950884

`A208108(A000124(n+4)+4)`
-/

namespace A208110.P6170371185597950884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 4) + 4).toNat

end

end A208110.P6170371185597950884

/-! ## A208110.P18328922111382771899

`A208108(A000217(n+4)+5)`
-/

namespace A208110.P18328922111382771899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000217 (n + 4) + 5).toNat

end

end A208110.P18328922111382771899

/-! ## A208110.P8267152311095622927

`A208108(A046691(n+2)+9)`
-/

namespace A208110.P8267152311095622927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A046691 (n + 2) + 9).toNat

end

end A208110.P8267152311095622927

/-!
# A208111: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208111, there is no canonical definition to state claims against.
-/

/-! ## A208111.P13560142692037652547

`A208108(A166136(n+4))`
-/

namespace A208111.P13560142692037652547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A166136 (n + 4)).toNat

end

end A208111.P13560142692037652547

/-! ## A208111.P16159352174755199339

`A208108(A167499(n+4)+1)`
-/

namespace A208111.P16159352174755199339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167499 (n + 4) + 1).toNat

end

end A208111.P16159352174755199339

/-! ## A208111.P12410309467249970497

`A208108(A000217(n+5)+6)`
-/

namespace A208111.P12410309467249970497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000217 (n + 5) + 6).toNat

end

end A208111.P12410309467249970497

/-! ## A208111.P5374271870772405853

`A208108(A055998(n+3)+9)`
-/

namespace A208111.P5374271870772405853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A055998 (n + 3) + 9).toNat

end

end A208111.P5374271870772405853

/-! ## A208111.P10418102842260355140

`A208108(A000124(n+6)-(n+1))`
-/

namespace A208111.P10418102842260355140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A208111.P10418102842260355140

/-!
# A208112: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208112, there is no canonical definition to state claims against.
-/

/-! ## A208112.P9169957175125922071

`A208108(A056119(n)+28)`
-/

namespace A208112.P9169957175125922071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A056119 n + 28).toNat

end

end A208112.P9169957175125922071

/-! ## A208112.P6256163632987968620

`A208108(A167499(n+5)+2)`
-/

namespace A208112.P6256163632987968620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167499 (n + 5) + 2).toNat

end

end A208112.P6256163632987968620

/-! ## A208112.P11594380535947315514

`A208108(A167614(n+5)+4)`
-/

namespace A208112.P11594380535947315514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167614 (n + 5) + 4).toNat

end

end A208112.P11594380535947315514

/-! ## A208112.P3914165852152371321

`A208108(A000217(n+6)+7)`
-/

namespace A208112.P3914165852152371321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000217 (n + 6) + 7).toNat

end

end A208112.P3914165852152371321

/-! ## A208112.P5700182510807525864

`A208108(A000124(n+7)-(n+1))`
-/

namespace A208112.P5700182510807525864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A208112.P5700182510807525864

/-!
# A208113: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208113, there is no canonical definition to state claims against.
-/

/-! ## A208113.P1049903755864303664

`A208118((n+1)²+n²)`
-/

namespace A208113.P1049903755864303664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 ((n + 1) ^ 2 + n ^ 2)

end

end A208113.P1049903755864303664

/-! ## A208113.P16986662340677109140

`record[A003982(n)*A208118(n+1)]`
-/

namespace A208113.P16986662340677109140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208113.P16986662340677109140

/-! ## A208113.P17351857501476733364

`record[gcd(A114327(n), A208118(n+1))]`
-/

namespace A208113.P17351857501476733364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208113.P17351857501476733364

/-! ## A208113.P8650652400030557450

`gcd(A000038(n), A208118(A001844(n)))`
-/

namespace A208113.P8650652400030557450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208118 (A001844 n).toNat)

end

end A208113.P8650652400030557450

/-! ## A208113.P6814644295859684371

`lcm(A033999(n), A208118(A001844(n)))`
-/

namespace A208113.P6814644295859684371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208118 (A001844 n).toNat)

end

end A208113.P6814644295859684371

/-!
# A208114: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208114, the canonical program `A208114.P10928158505155759628` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208114 has offset 1).

The definition of A208114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208114.P10928158505155759628

`or(1, -(n+2)²)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208114

/-- `or(1, -(n+2)²)²` -/
def P10928158505155759628.Spec : Prop :=
  ∀ n, P10928158505155759628.a n = A208114 (n + 1)

theorem P10928158505155759628.correct : P10928158505155759628.Spec := by
  intro n
  simp only [A208114, Nat.add_sub_cancel]

end A208114

/-! ## A208114.P8344387377816441784

`record[or(1, -(2-n)²)²]`
-/

namespace A208114.P8344387377816441784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 - (n : ℤ)) ^ 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208114.P8344387377816441784

namespace A208114

/-- `record[or(1, -(2-n)²)²]` -/
def P8344387377816441784.Spec : Prop :=
  ∀ n, P8344387377816441784.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P2549140558048621456

`or(1, (n+2)²-1)^2`
-/

namespace A208114.P2549140558048621456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 2) ^ 2 : ℤ) - 1) ^ 2

end

end A208114.P2549140558048621456

namespace A208114

/-- `or(1, (n+2)²-1)^2` -/
def P2549140558048621456.Spec : Prop :=
  ∀ n, P2549140558048621456.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P7457847928916313814

`abs(or(1, (n+2)²-1))²`
-/

namespace A208114.P7457847928916313814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((n + 2) ^ 2 : ℤ) - 1)| ^ 2

end

end A208114.P7457847928916313814

namespace A208114

/-- `abs(or(1, (n+2)²-1))²` -/
def P7457847928916313814.Spec : Prop :=
  ∀ n, P7457847928916313814.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P9774160619362740741

`(char[2*n]-(n+2)²)²`
-/

namespace A208114.P9774160619362740741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((n + 2) ^ 2 : ℤ)) ^ 2

end

end A208114.P9774160619362740741

namespace A208114

/-- `(char[2*n]-(n+2)²)²` -/
def P9774160619362740741.Spec : Prop :=
  ∀ n, P9774160619362740741.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P10841628114630402227

`∏[ratio[or(1, n*(n+2))]²]`
-/

namespace A208114.P10841628114630402227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 2))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208114.P10841628114630402227

namespace A208114

/-- `∏[ratio[or(1, n*(n+2))]²]` -/
def P10841628114630402227.Spec : Prop :=
  ∀ n, P10841628114630402227.a n = (A208114 (n + 1) : ℚ)

end A208114

/-! ## A208114.P2442807205154772468

`or(1, or(1, (n+1)*(n+3))²)`
-/

namespace A208114.P2442807205154772468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 ((n + 1) * (n + 3)) ^ 2)

end

end A208114.P2442807205154772468

namespace A208114

/-- `or(1, or(1, (n+1)*(n+3))²)` -/
def P2442807205154772468.Spec : Prop :=
  ∀ n, (P2442807205154772468.a n : ℤ) = A208114 (n + 1)

end A208114

/-! ## A208114.P9940860093166000843

`record[(and(1, n+1)-(2-n)²)²]`
-/

namespace A208114.P9940860093166000843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) : ℤ) - (2 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208114.P9940860093166000843

namespace A208114

/-- `record[(and(1, n+1)-(2-n)²)²]` -/
def P9940860093166000843.Spec : Prop :=
  ∀ n, P9940860093166000843.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P15978324161708253512

`record[(2*n-or(3, (1-n)²))²]`
-/

namespace A208114.P15978324161708253512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - Int.lor 3 ((1 - (n : ℤ)) ^ 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208114.P15978324161708253512

namespace A208114

/-- `record[(2*n-or(3, (1-n)²))²]` -/
def P15978324161708253512.Spec : Prop :=
  ∀ n, P15978324161708253512.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P5632246746306642065

`ogf((9+63x+45x^2+67x^3+11x^4-3x^5-x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A208114.P5632246746306642065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 63, 45, 67, 11, -3, -1, 1] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A208114.P5632246746306642065

namespace A208114

/-- `ogf((9+63x+45x^2+67x^3+11x^4-3x^5-x^6+x^7)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P5632246746306642065.Spec : Prop :=
  ∀ n, P5632246746306642065.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P5342739016525028108

`A208115(n+1)²/A208116(n+1)`
-/

namespace A208114.P5342739016525028108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208115 (n + 1) ^ 2 : ℚ) / (A208116 (n + 1) : ℚ)

end

end A208114.P5342739016525028108

namespace A208114

/-- `A208115(n+1)²/A208116(n+1)` -/
def P5342739016525028108.Spec : Prop :=
  ∀ n, P5342739016525028108.a n = (A208114 (n + 1) : ℚ)

end A208114

/-! ## A208114.P2970113803834079696

`A085046(n+2)^2`
-/

namespace A208114.P2970113803834079696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 2) ^ 2

end

end A208114.P2970113803834079696

namespace A208114

/-- `A085046(n+2)^2` -/
def P2970113803834079696.Spec : Prop :=
  ∀ n, P2970113803834079696.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P14736395578824368908

`record[A214661(n+2)²]`
-/

namespace A208114.P14736395578824368908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214661 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208114.P14736395578824368908

namespace A208114

/-- `record[A214661(n+2)²]` -/
def P14736395578824368908.Spec : Prop :=
  ∀ n, P14736395578824368908.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P430017547812365682

`record[A143218(n+2)²]`
-/

namespace A208114.P430017547812365682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208114.P430017547812365682

namespace A208114

/-- `record[A143218(n+2)²]` -/
def P430017547812365682.Spec : Prop :=
  ∀ n, P430017547812365682.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P8535590174433832882

`A016754(A074148(n+1))`
-/

namespace A208114.P8535590174433832882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A074148 (n + 1)).toNat

end

end A208114.P8535590174433832882

namespace A208114

/-- `A016754(A074148(n+1))` -/
def P8535590174433832882.Spec : Prop :=
  ∀ n, P8535590174433832882.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P1030787830753659946

`A016754(∑[A109613(n+1)])`
-/

namespace A208114.P1030787830753659946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208114.P1030787830753659946

namespace A208114

/-- `A016754(∑[A109613(n+1)])` -/
def P1030787830753659946.Spec : Prop :=
  ∀ n, P1030787830753659946.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P7613842113724749873

`A016754(A183300(∑[n+1]))`
-/

namespace A208114.P7613842113724749873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A183300 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A208114.P7613842113724749873

namespace A208114

/-- `A016754(A183300(∑[n+1]))` -/
def P7613842113724749873.Spec : Prop :=
  ∀ n, P7613842113724749873.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P13737496951293140658

`A016754(∑[A063196(n+2)])`
-/

namespace A208114.P13737496951293140658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208114.P13737496951293140658

namespace A208114

/-- `A016754(∑[A063196(n+2)])` -/
def P13737496951293140658.Spec : Prop :=
  ∀ n, P13737496951293140658.a n = A208114 (n + 1)

end A208114

/-! ## A208114.P12155497162135539292

`A016754(A000982(n+2)-1)`
-/

namespace A208114.P12155497162135539292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A000982 (n + 2) - 1).toNat

end

end A208114.P12155497162135539292

namespace A208114

/-- `A016754(A000982(n+2)-1)` -/
def P12155497162135539292.Spec : Prop :=
  ∀ n, P12155497162135539292.a n = A208114 (n + 1)

end A208114

/-!
# A208115: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208115, the canonical program `A208115.P15927855600313523114` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208115 has offset 1).

The definition of A208115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208115.P11275708171061954891

`ogf((15+195x+315x^2+625x^3+290x^4+34x^5-50x^6+14x^7+7x^8-5x^9-x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`
-/

namespace A208115.P11275708171061954891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 195, 315, 625, 290, 34, -50, 14, 7, -5, -1, 1] [1, -2, -4, 10, 5, -20, 0, 20, -5, -10, 4, 2, -1] n

end

end A208115.P11275708171061954891

namespace A208115

/-- `ogf((15+195x+315x^2+625x^3+290x^4+34x^5-50x^6+14x^7+7x^8-5x^9-x^10+x^11)/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P11275708171061954891.Spec : Prop :=
  ∀ n, P11275708171061954891.a n = A208115 (n + 1)

end A208115

/-! ## A208115.P15927855600313523114

`sqrt(A208114(n+1)*A208116(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208115

/-- `sqrt(A208114(n+1)*A208116(n+1))` -/
def P15927855600313523114.Spec : Prop :=
  ∀ n, P15927855600313523114.a n = (A208115 (n + 1) : ℝ)

end A208115

/-! ## A208115.P10269593256596367382

`A207363(n+1)*A208117(n+1)/A208552(n+1)`
-/

namespace A208115.P10269593256596367382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207363 (n + 1) * A208117 (n + 1) : ℚ) / (A208552 (n + 1) : ℚ)

end

end A208115.P10269593256596367382

namespace A208115

/-- `A207363(n+1)*A208117(n+1)/A208552(n+1)` -/
def P10269593256596367382.Spec : Prop :=
  ∀ n, P10269593256596367382.a n = (A208115 (n + 1) : ℚ)

end A208115

/-! ## A208115.P669516676271279752

`A208118(A046691(n+3))`
-/

namespace A208115.P669516676271279752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A046691 (n + 3)).toNat

end

end A208115.P669516676271279752

namespace A208115

/-- `A208118(A046691(n+3))` -/
def P669516676271279752.Spec : Prop :=
  ∀ n, P669516676271279752.a n = A208115 (n + 1)

end A208115

/-! ## A208115.P7070329498228336720

`A208118(Δ[A023545(n+1)])`
-/

namespace A208115.P7070329498228336720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (f1 (n + 1) - f1 n).toNat

end

end A208115.P7070329498228336720

namespace A208115

/-- `A208118(Δ[A023545(n+1)])` -/
def P7070329498228336720.Spec : Prop :=
  ∀ n, P7070329498228336720.a n = A208115 (n + 1)

end A208115

/-!
# A208116: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208116, the canonical program `A208116.P12057990313644117716` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208116 has offset 1).

The definition of A208116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208116.P15280868250898282159

`A208115(n+1)²/A208114(n+1)`
-/

namespace A208116.P15280868250898282159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208115 (n + 1) ^ 2 : ℚ) / (A208114 (n + 1) : ℚ)

end

end A208116.P15280868250898282159

namespace A208116

/-- `A208115(n+1)²/A208114(n+1)` -/
def P15280868250898282159.Spec : Prop :=
  ∀ n, P15280868250898282159.a n = (A208116 (n + 1) : ℚ)

end A208116

/-! ## A208116.P12057990313644117716

`(A208551(n+1)/A002620(n+3))²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208116

/-- `(A208551(n+1)/A002620(n+3))²` -/
def P12057990313644117716.Spec : Prop :=
  ∀ n, P12057990313644117716.a n = (A208116 (n + 1) : ℚ)

end A208116

/-! ## A208116.P2876066774185403359

`A209350(∑[A109613(n+3)])²`
-/

namespace A208116.P2876066774185403359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A208116.P2876066774185403359

namespace A208116

/-- `A209350(∑[A109613(n+3)])²` -/
def P2876066774185403359.Spec : Prop :=
  ∀ n, P2876066774185403359.a n = A208116 (n + 1)

end A208116

/-! ## A208116.P2795196482026394216

`A209350(∑[A109613(n+3)])^(2%A000412(n))`
-/

namespace A208116.P2795196482026394216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (Int.tmod 2 (A000412 n) : ℤ)

end

end A208116.P2795196482026394216

namespace A208116

/-- `A209350(∑[A109613(n+3)])^(2%A000412(n))` -/
def P2795196482026394216.Spec : Prop :=
  ∀ n, P2795196482026394216.a n = (A208116 (n + 1) : ℚ)

end A208116

/-! ## A208116.P13000272924877939348

`A209350(∑[A109613(n+3)])^A000034(2*n+1)`
-/

namespace A208116.P13000272924877939348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A208116.P13000272924877939348

namespace A208116

/-- `A209350(∑[A109613(n+3)])^A000034(2*n+1)` -/
def P13000272924877939348.Spec : Prop :=
  ∀ n, P13000272924877939348.a n = (A208116 (n + 1) : ℚ)

end A208116

/-! ## A208116.P2240685762947961506

`A209350(∑[A109613(n+3)])^A020639(2*(n+1))`
-/

namespace A208116.P2240685762947961506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A208116.P2240685762947961506

namespace A208116

/-- `A209350(∑[A109613(n+3)])^A020639(2*(n+1))` -/
def P2240685762947961506.Spec : Prop :=
  ∀ n, P2240685762947961506.a n = (A208116 (n + 1) : ℚ)

end A208116

/-!
# A208117: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208117, the canonical program `A208117.P2010372378160813750` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208117 has offset 1).

The definition of A208117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208117.P2010372378160813750

`A208115(n+1)/A207363(n+1)*A208552(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208117

/-- `A208115(n+1)/A207363(n+1)*A208552(n+1)` -/
def P2010372378160813750.Spec : Prop :=
  ∀ n, P2010372378160813750.a n = (A208117 (n + 1) : ℚ)

end A208117

/-! ## A208117.P11749702729599446855

`A208118(Δ[A023551(n+2)])`
-/

namespace A208117.P11749702729599446855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (f1 (n + 1) - f1 n).toNat

end

end A208117.P11749702729599446855

namespace A208117

/-- `A208118(Δ[A023551(n+2)])` -/
def P11749702729599446855.Spec : Prop :=
  ∀ n, P11749702729599446855.a n = A208117 (n + 1)

end A208117

/-! ## A208117.P476860924275104374

`A208118(A052905(n+4)-1)`
-/

namespace A208117.P476860924275104374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A052905 (n + 4) - 1).toNat

end

end A208117.P476860924275104374

namespace A208117

/-- `A208118(A052905(n+4)-1)` -/
def P476860924275104374.Spec : Prop :=
  ∀ n, P476860924275104374.a n = A208117 (n + 1)

end A208117

/-! ## A208117.P4741866757935409982

`A208118(A000124(n+7)-7)`
-/

namespace A208117.P4741866757935409982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000124 (n + 7) - 7).toNat

end

end A208117.P4741866757935409982

namespace A208117

/-- `A208118(A000124(n+7)-7)` -/
def P4741866757935409982.Spec : Prop :=
  ∀ n, P4741866757935409982.a n = A208117 (n + 1)

end A208117

/-! ## A208117.P5252768626662075240

`A208118(A000096(n+5)+n+2)`
-/

namespace A208117.P5252768626662075240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A208117.P5252768626662075240

namespace A208117

/-- `A208118(A000096(n+5)+n+2)` -/
def P5252768626662075240.Spec : Prop :=
  ∀ n, P5252768626662075240.a n = A208117 (n + 1)

end A208117

/-!
# A208118: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208118, there is no canonical definition to state claims against.
-/

/-! ## A208118.P381427652122481532

`A207368(n+1)+A067168(A067176(n))`
-/

namespace A208118.P381427652122481532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207368 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A208118.P381427652122481532

/-! ## A208118.P12353368946298696823

`A208013(n+1)+A067168(A067176(n))`
-/

namespace A208118.P12353368946298696823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208013 (n + 1) + A067168 ((A067176 n).toNat + 10)

end

end A208118.P12353368946298696823

/-! ## A208118.P15892022967006352276

`A342376(A342342(n))+A207368(n+1)`
-/

namespace A208118.P15892022967006352276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A207368 (n + 1)

end

end A208118.P15892022967006352276

/-! ## A208118.P11722279246776184147

`A342376(A342342(n))+A208013(n+1)`
-/

namespace A208118.P11722279246776184147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A208013 (n + 1)

end

end A208118.P11722279246776184147

/-! ## A208118.P4307630736147498505

`or(A207368(n+1), A326292(A193958(n)))`
-/

namespace A208118.P4307630736147498505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207368 (n + 1)) (A326292 (A193958 n).toNat)

end

end A208118.P4307630736147498505

/-!
# A208119: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208119, the canonical program `A208119.P18306426128629227262` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208119 has offset 1).

The definition of A208119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208119.P18306426128629227262

`A138495(n+4)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208119

/-- `A138495(n+4)²` -/
def P18306426128629227262.Spec : Prop :=
  ∀ n, P18306426128629227262.a n = A208119 (n + 1)

theorem P18306426128629227262.correct : P18306426128629227262.Spec := by
  intro n
  simp only [A208119, Nat.add_sub_cancel]

end A208119

/-! ## A208119.P1845589297324323070

`Δ[A138477(n+4)]²`
-/

namespace A208119.P1845589297324323070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A208119.P1845589297324323070

namespace A208119

/-- `Δ[A138477(n+4)]²` -/
def P1845589297324323070.Spec : Prop :=
  ∀ n, P1845589297324323070.a n = A208119 (n + 1)

end A208119

/-! ## A208119.P10397265974713270076

`A138495(96/32+n+1)^2`
-/

namespace A208119.P10397265974713270076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (SequenceMachineLib.roundAway ((96 : ℚ) / 32 + (n + 1 : ℚ))).toNat ^ 2

end

end A208119.P10397265974713270076

namespace A208119

/-- `A138495(96/32+n+1)^2` -/
def P10397265974713270076.Spec : Prop :=
  ∀ n, P10397265974713270076.a n = A208119 (n + 1)

end A208119

/-! ## A208119.P786770560734956474

`A208120(n+1)/A208121(n+1)*A208120(n+1)`
-/

namespace A208119.P786770560734956474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208120 (n + 1) : ℚ) / (A208121 (n + 1) : ℚ) * (A208120 (n + 1) : ℚ)

end

end A208119.P786770560734956474

namespace A208119

/-- `A208120(n+1)/A208121(n+1)*A208120(n+1)` -/
def P786770560734956474.Spec : Prop :=
  ∀ n, P786770560734956474.a n = (A208119 (n + 1) : ℚ)

end A208119

/-! ## A208119.P15257703002614153899

`A208120(n+1)²/A208121(n+1)`
-/

namespace A208119.P15257703002614153899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208120 (n + 1) ^ 2 : ℚ) / (A208121 (n + 1) : ℚ)

end

end A208119.P15257703002614153899

namespace A208119

/-- `A208120(n+1)²/A208121(n+1)` -/
def P15257703002614153899.Spec : Prop :=
  ∀ n, P15257703002614153899.a n = (A208119 (n + 1) : ℚ)

end A208119

/-!
# A208120: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208120, there is no canonical definition to state claims against.
-/

/-! ## A208120.P4746397765790716274

`sqrt(A208119(n+1))*sqrt(A208121(n+1))`
-/

namespace A208120.P4746397765790716274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208119 (n + 1) : ℝ) * Real.sqrt (A208121 (n + 1) : ℝ)

end

end A208120.P4746397765790716274

/-! ## A208120.P15991530794504905092

`sqrt(A208119(n+1)*A208121(n+1))`
-/

namespace A208120.P15991530794504905092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208119 (n + 1) * A208121 (n + 1) : ℝ)

end

end A208120.P15991530794504905092

/-! ## A208120.P11116768211712937640

`A208118(A167499(n+3))`
-/

namespace A208120.P11116768211712937640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A167499 (n + 3)).toNat

end

end A208120.P11116768211712937640

/-! ## A208120.P14382381702695302974

`A208118(A056000(n)+15)`
-/

namespace A208120.P14382381702695302974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A056000 n + 15).toNat

end

end A208120.P14382381702695302974

/-! ## A208120.P1939748334795312738

`A208118(A000124(n+4)+4)`
-/

namespace A208120.P1939748334795312738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000124 (n + 4) + 4).toNat

end

end A208120.P1939748334795312738

/-!
# A208121: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208121, there is no canonical definition to state claims against.
-/

/-! ## A208121.P14227784255470611901

`(A207601(n+1)/A006498(n+3))²`
-/

namespace A208121.P14227784255470611901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207601 (n + 1) : ℚ) / (A006498 (n + 3) : ℚ)) ^ 2

end

end A208121.P14227784255470611901

/-! ## A208121.P10366719462357739032

`A208120(n+1)²/A208119(n+1)`
-/

namespace A208121.P10366719462357739032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208120 (n + 1) ^ 2 : ℚ) / (A208119 (n + 1) : ℚ)

end

end A208121.P10366719462357739032

/-! ## A208121.P8992539548154958475

`A208118(A166136(n+4))`
-/

namespace A208121.P8992539548154958475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A166136 (n + 4)).toNat

end

end A208121.P8992539548154958475

/-! ## A208121.P4990208676342295903

`A208118(A000217(n+5)+6)`
-/

namespace A208121.P4990208676342295903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000217 (n + 5) + 6).toNat

end

end A208121.P4990208676342295903

/-! ## A208121.P8050744762179478457

`A208118(A034856(n+4)+8)`
-/

namespace A208121.P8050744762179478457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A034856 (n + 4) + 8).toNat

end

end A208121.P8050744762179478457

/-!
# A208122: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 0 1 1 vertically.

The programs for A208122, there is no canonical definition to state claims against.
-/

/-! ## A208122.P9960991036223270871

`A208118(A167487(n+5))`
-/

namespace A208122.P9960991036223270871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A167487 (n + 5)).toNat

end

end A208122.P9960991036223270871

/-! ## A208122.P16603823221261907640

`A208118(A000124(n+6)+6)`
-/

namespace A208122.P16603823221261907640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000124 (n + 6) + 6).toNat

end

end A208122.P16603823221261907640

/-! ## A208122.P12231272643301050423

`A208118(A253145(n+5)+7)`
-/

namespace A208122.P12231272643301050423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A253145 (n + 5) + 7).toNat

end

end A208122.P12231272643301050423

/-! ## A208122.P15143711378175360188

`A208118(A000217(n+6)+7)`
-/

namespace A208122.P15143711378175360188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (A000217 (n + 6) + 7).toNat

end

end A208122.P15143711378175360188

/-! ## A208122.P12313468853341871427

`A208118(eq[6, A002262(n)]+1)`
-/

namespace A208122.P12313468853341871427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208122.P12313468853341871427

/-!
# A208124: a(1)=2, a(n) = (4n/3)*(2n-1)!! (see A001147) for n>1.

The programs for A208124, there is no canonical definition to state claims against.
-/

/-! ## A208124.P3599186675985777404

`Δ[a(n-1)*Δ[n²]]` with `a(0)=0, a(1)=2`
-/

namespace A208124.P3599186675985777404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208124.P3599186675985777404

/-! ## A208124.P12835349135635351347

`Δ[record[(n+2)*a(n-2)]]` with `a(0)=0, a(1)=2`
-/

namespace A208124.P12835349135635351347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n + 2) * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208124.P12835349135635351347

/-! ## A208124.P7790228452852244153

`Δ[(2*n+1)*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A208124.P7790228452852244153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (2 * n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A208124.P7790228452852244153

/-! ## A208124.P7825198484112003607

`(n+1)*∏[a(n-1)+2]` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A208124.P7825198484112003607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208124.P7825198484112003607

/-! ## A208124.P3528701946428832443

`2*(n+1)*∏[A140139(n+1)]`
-/

namespace A208124.P3528701946428832443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208124.P3528701946428832443

/-! ## A208124.P16730816901275148390

`2*Δ[a(n-1)*A005408(n)]` with `a(0)=0, a(1)=1`
-/

namespace A208124.P16730816901275148390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A208124.P16730816901275148390

/-! ## A208124.P10441781193983272253

`A288950(n+2)+A001879(n)`
-/

namespace A208124.P10441781193983272253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288950 (n + 2) + A001879 n

end

end A208124.P10441781193983272253

/-! ## A208124.P16497374788916092933

`∏[A140139(n+1)]*A005843(n+1)`
-/

namespace A208124.P16497374788916092933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005843 (n + 1)

end

end A208124.P16497374788916092933

/-! ## A208124.P887391705810722215

`(A004273(n)+2-n)*∏[A223134(n)]`
-/

namespace A208124.P887391705810722215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (2 - (n : ℤ))) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208124.P887391705810722215

/-! ## A208124.P1319616287062356413

`(2-A057427(n)+n)*∏[A223134(n)]`
-/

namespace A208124.P1319616287062356413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057427 n + (n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A208124.P1319616287062356413

/-!
# A208126: Meandric numbers for a river crossing up to 5 parallel roads at n points.

The programs for A208126, there is no canonical definition to state claims against.
-/

/-! ## A208126.P7244070259183125587

`A380367(A052905(n+2))`
-/

namespace A208126.P7244070259183125587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A052905 (n + 2)).toNat

end

end A208126.P7244070259183125587

/-! ## A208126.P15831400015200264673

`A380367(eq[4, A025581(n)])`
-/

namespace A208126.P15831400015200264673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208126.P15831400015200264673

/-! ## A208126.P6177773956129731689

`A380367(A027379(n+3)-2)`
-/

namespace A208126.P6177773956129731689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A027379 (n + 3) - 2).toNat

end

end A208126.P6177773956129731689

/-! ## A208126.P9793375981041103981

`A380367(A000217(n+4)+n)`
-/

namespace A208126.P9793375981041103981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A208126.P9793375981041103981

/-! ## A208126.P15654987572809659751

`A380367(A000096(n+3)+n+1)`
-/

namespace A208126.P15654987572809659751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A208126.P15654987572809659751

/-!
# A208127: Cardinality of the set f^n({s}), where f is a variant of the Collatz function that replaces any element x in the argument set with both x/2 and 3*x+1, and s is an arbitrary irrational number.

The programs for A208127, there is no canonical definition to state claims against.
-/

/-! ## A208127.P5506672958483652588

`A000079(n)-A091202(A324088(n+1))`
-/

namespace A208127.P5506672958483652588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A091202 (A324088 (n + 1)).toNat

end

end A208127.P5506672958483652588

/-! ## A208127.P8601454840501200883

`A162641(A324736(2*n))+A145113(n)`
-/

namespace A208127.P8601454840501200883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A324736 (2 * n)).toNat + A145113 n

end

end A208127.P8601454840501200883

/-!
# A208128: Numbers n for which A210255(n)=3.

The programs for A208128, there is no canonical definition to state claims against.
-/

/-! ## A208128.P4154874384895753010

`eq[3, A210255(n+1)]+1`
-/

namespace A208128.P4154874384895753010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A208128.P4154874384895753010

/-! ## A208128.P488974842818087800

`eq[3, A210255(A028310(n))]`
-/

namespace A208128.P488974842818087800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210255 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208128.P488974842818087800

/-! ## A208128.P9191583232868702115

`A020725(eq[3, A210255(n+1)])`
-/

namespace A208128.P9191583232868702115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208128.P9191583232868702115

/-! ## A208128.P16509190260948907544

`eq[3, A007843(n)-A210253(n)]`
-/

namespace A208128.P16509190260948907544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - A210253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208128.P16509190260948907544

/-! ## A208128.P3172266192318384163

`A273926(Δ[A069129(n+1)]+1)+5`
-/

namespace A208128.P3172266192318384163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273926 (f1 (n + 1) - f1 n + 1).toNat + 5

end

end A208128.P3172266192318384163

/-!
# A208129: First differences of A208128.

The programs for A208129, there is no canonical definition to state claims against.
-/

/-! ## A208129.P784974525791829350

`Δ[A208128(n+1)]`
-/

namespace A208129.P784974525791829350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208129.P784974525791829350

/-! ## A208129.P3313666243461482691

`Δ[record[A208128(A065648(n))]]`
-/

namespace A208129.P3313666243461482691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208128 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208129.P3313666243461482691

/-! ## A208129.P4113293035650734569

`Δ[record[A208128(A133310(n))]]`
-/

namespace A208129.P4113293035650734569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208128 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208129.P4113293035650734569

/-! ## A208129.P1739393763352513909

`Δ[record[A208128(A261363(n))]]`
-/

namespace A208129.P1739393763352513909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208128 (A261363 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208129.P1739393763352513909

/-! ## A208129.P4266089008222044746

`A208128(n+2)-A208128(n+1)`
-/

namespace A208129.P4266089008222044746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208128 (n + 2) - A208128 (n + 1)

end

end A208129.P4266089008222044746

/-!
# A208130: Numbers that when expressed in decimal are equal to the sum of the digits sorted into nondecreasing order and raised to the powers 1, 2, 3, ...

The programs for A208130, there is no canonical definition to state claims against.
-/

/-! ## A208130.P2444700799712155796

`A032799(a(n-2)+3)` with `a(0)=1, a(1)=2`
-/

namespace A208130.P2444700799712155796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A032799 (a (n - 2) + 3).toNat

end

end A208130.P2444700799712155796

/-! ## A208130.P2190670143347631781

`A032799(A030283(n)+2)`
-/

namespace A208130.P2190670143347631781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A030283 n + 2).toNat

end

end A208130.P2190670143347631781

/-! ## A208130.P6231011802639301731

`A032799(A032947(n+2))`
-/

namespace A208130.P6231011802639301731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A032947 (n + 2)).toNat

end

end A208130.P6231011802639301731

/-! ## A208130.P5213769565433034514

`A032799(A032981(n+2))`
-/

namespace A208130.P5213769565433034514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A032981 (n + 2)).toNat

end

end A208130.P5213769565433034514

/-! ## A208130.P5056682458133580547

`A032799(A055649(n)+2)`
-/

namespace A208130.P5056682458133580547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (A055649 n + 2).toNat

end

end A208130.P5056682458133580547

/-!
# A208131: Partial products of A052901.

The programs for A208131, the canonical program `A208131.P8406164979598636617` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208131 has offset 0).

The definition of A208131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208131.P8406164979598636617

`ogf((1+3x+6x^2)/(1-12x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208131

/-- `ogf((1+3x+6x^2)/(1-12x^3))` -/
def P8406164979598636617.Spec : Prop :=
  ∀ n, P8406164979598636617.a n = A208131 n

theorem P8406164979598636617.correct : P8406164979598636617.Spec := by
  intro n
  simp only [A208131]

end A208131

/-! ## A208131.P6375112590484459034

`12*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A208131.P6375112590484459034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  12 * a (n - 3)

end

end A208131.P6375112590484459034

namespace A208131

/-- `12*a(n-3)` -/
def P6375112590484459034.Spec : Prop :=
  ∀ n, (P6375112590484459034.a n : ℤ) = A208131 n

end A208131

/-! ## A208131.P11460982496163428956

`∏[runs[A289120(2*n)]]`
-/

namespace A208131.P11460982496163428956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P11460982496163428956

namespace A208131

/-- `∏[runs[A289120(2*n)]]` -/
def P11460982496163428956.Spec : Prop :=
  ∀ n, (P11460982496163428956.a n : ℤ) = A208131 n

end A208131

/-! ## A208131.P18080399773924253255

`∏[A101825(2*n)+1]`
-/

namespace A208131.P18080399773924253255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P18080399773924253255

namespace A208131

/-- `∏[A101825(2*n)+1]` -/
def P18080399773924253255.Spec : Prop :=
  ∀ n, P18080399773924253255.a n = A208131 n

end A208131

/-! ## A208131.P9200426549209538755

`∏[A323156(2*n+1)]`
-/

namespace A208131.P9200426549209538755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323156 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P9200426549209538755

namespace A208131

/-- `∏[A323156(2*n+1)]` -/
def P9200426549209538755.Spec : Prop :=
  ∀ n, P9200426549209538755.a n = A208131 n

end A208131

/-! ## A208131.P15806415724365212323

`∏[A196437(8*n+1)]`
-/

namespace A208131.P15806415724365212323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P15806415724365212323

namespace A208131

/-- `∏[A196437(8*n+1)]` -/
def P15806415724365212323.Spec : Prop :=
  ∀ n, P15806415724365212323.a n = A208131 n

end A208131

/-! ## A208131.P17004618914394981446

`∏[A000005(a(n-3)+1)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A208131.P17004618914394981446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  A000005 (f1 (n - 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P17004618914394981446

namespace A208131

/-- `∏[A000005(a(n-3)+1)]` -/
def P17004618914394981446.Spec : Prop :=
  ∀ n, P17004618914394981446.a n = A208131 n

end A208131

/-! ## A208131.P12698202667086260271

`∏[A000045(a(n-3))+1]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A208131.P12698202667086260271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  A000045 (f1 (n - 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P12698202667086260271

namespace A208131

/-- `∏[A000045(a(n-3))+1]` -/
def P12698202667086260271.Spec : Prop :=
  ∀ n, P12698202667086260271.a n = A208131 n

end A208131

/-! ## A208131.P8496411627983911886

`A253852(A063213(n+1))`
-/

namespace A208131.P8496411627983911886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253852 (A063213 (n + 1)).toNat

end

end A208131.P8496411627983911886

namespace A208131

/-- `A253852(A063213(n+1))` -/
def P8496411627983911886.Spec : Prop :=
  ∀ n, P8496411627983911886.a n = A208131 n

end A208131

/-! ## A208131.P15869777449389759354

`A253852(A317633(n+1))`
-/

namespace A208131.P15869777449389759354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253852 (A317633 (n + 1)).toNat

end

end A208131.P15869777449389759354

namespace A208131

/-- `A253852(A317633(n+1))` -/
def P15869777449389759354.Spec : Prop :=
  ∀ n, P15869777449389759354.a n = A208131 n

end A208131

/-! ## A208131.P11040383588516059010

`∏[A020639(A097922(n+1))]`
-/

namespace A208131.P11040383588516059010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P11040383588516059010

namespace A208131

/-- `∏[A020639(A097922(n+1))]` -/
def P11040383588516059010.Spec : Prop :=
  ∀ n, P11040383588516059010.a n = A208131 n

end A208131

/-! ## A208131.P13979521345283694991

`∏[A020639(A074311(2*n+1))]`
-/

namespace A208131.P13979521345283694991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074311 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P13979521345283694991

namespace A208131

/-- `∏[A020639(A074311(2*n+1))]` -/
def P13979521345283694991.Spec : Prop :=
  ∀ n, P13979521345283694991.a n = A208131 n

end A208131

/-! ## A208131.P12384253896873473054

`∏[A130156(A020639(2*n+1))]`
-/

namespace A208131.P12384253896873473054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130156 (A020639 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P12384253896873473054

namespace A208131

/-- `∏[A130156(A020639(2*n+1))]` -/
def P12384253896873473054.Spec : Prop :=
  ∀ n, P12384253896873473054.a n = A208131 n

end A208131

/-! ## A208131.P17599392236928581516

`∏[A020639(A144429(2*n+1))]`
-/

namespace A208131.P17599392236928581516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A144429 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P17599392236928581516

namespace A208131

/-- `∏[A020639(A144429(2*n+1))]` -/
def P17599392236928581516.Spec : Prop :=
  ∀ n, P17599392236928581516.a n = A208131 n

end A208131

/-! ## A208131.P17619336062974345923

`∏[A164359(n*A164359(n+2))]`
-/

namespace A208131.P17619336062974345923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164359 ((n : ℤ) * A164359 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P17619336062974345923

namespace A208131

/-- `∏[A164359(n*A164359(n+2))]` -/
def P17619336062974345923.Spec : Prop :=
  ∀ n, P17619336062974345923.a n = A208131 n

end A208131

/-! ## A208131.P4594978699323844753

`A127975(n+2)*A173862(2*n+1)`
-/

namespace A208131.P4594978699323844753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127975 (n + 2) * A173862 (2 * n + 1)

end

end A208131.P4594978699323844753

namespace A208131

/-- `A127975(n+2)*A173862(2*n+1)` -/
def P4594978699323844753.Spec : Prop :=
  ∀ n, P4594978699323844753.a n = A208131 n

end A208131

/-! ## A208131.P5746282307500614374

`∏[A226513(A312065(2*n+1)-A312065(2*n))]`
-/

namespace A208131.P5746282307500614374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A312065 (2 * n + 1) - A312065 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208131.P5746282307500614374

namespace A208131

/-- `∏[A226513(A312065(2*n+1)-A312065(2*n))]` -/
def P5746282307500614374.Spec : Prop :=
  ∀ n, P5746282307500614374.a n = A208131 n

end A208131

/-! ## A208131.P13342223428534684120

`∏[A131534(n)+1]/2`
-/

namespace A208131.P13342223428534684120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A208131.P13342223428534684120

namespace A208131

/-- `∏[A131534(n)+1]/2` -/
def P13342223428534684120.Spec : Prop :=
  ∀ n, P13342223428534684120.a n = (A208131 n : ℚ)

end A208131

/-! ## A208131.P17283108134884533773

`∏[A052901(n+2)]/2`
-/

namespace A208131.P17283108134884533773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052901 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A208131.P17283108134884533773

namespace A208131

/-- `∏[A052901(n+2)]/2` -/
def P17283108134884533773.Spec : Prop :=
  ∀ n, P17283108134884533773.a n = (A208131 n : ℚ)

end A208131

/-! ## A208131.P6711245860323302146

`∪[A107904(n), A282022(n)]`
-/

namespace A208131.P6711245860323302146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208131.P6711245860323302146

namespace A208131

/-- `∪[A107904(n), A282022(n)]` -/
def P6711245860323302146.Spec : Prop :=
  ∀ n, (P6711245860323302146.a n : ℤ) = A208131 n

end A208131

/-!
# A208132: Smallest k such that the number of composites of the form a^2 + 1 between two successive primes of this form equals 2n-1.

The programs for A208132, there is no canonical definition to state claims against.
-/

/-! ## A208132.P15203398633597661716

`A071868(A245463(n+1))`
-/

namespace A208132.P15203398633597661716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (A245463 (n + 1)).toNat

end

end A208132.P15203398633597661716

/-!
# A208133: Total number of subgroups of rank <= 2 of a certain class of abelian groups of order n defined as direct products of Z/(mZ) X Z/(kZ) with m|k.

The programs for A208133, there is no canonical definition to state claims against.
-/

/-! ## A208133.P2613721906381490816

`A078734(A079991(n))*A239614(n+1)`
-/

namespace A208133.P2613721906381490816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A079991 n).toNat * A239614 (n + 1)

end

end A208133.P2613721906381490816

/-! ## A208133.P7122586273973583176

`A000188(n+1)*A239614(A187829(n+1))`
-/

namespace A208133.P7122586273973583176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A239614 (A187829 (n + 1)).toNat

end

end A208133.P7122586273973583176

/-! ## A208133.P14136657958365013850

`A071773(n+1)*A239614(A187829(n+1))`
-/

namespace A208133.P14136657958365013850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A239614 (A187829 (n + 1)).toNat

end

end A208133.P14136657958365013850

/-! ## A208133.P15578683944856200632

`A006530(A000189(n+1))*A239614(A187829(n+1))`
-/

namespace A208133.P15578683944856200632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000189 (n + 1)).toNat * A239614 (A187829 (n + 1)).toNat

end

end A208133.P15578683944856200632

/-! ## A208133.P2600427037278065391

`A014963(A003557(n+1))*A239614(A187829(n+1))`
-/

namespace A208133.P2600427037278065391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003557 (n + 1)).toNat * A239614 (A187829 (n + 1)).toNat

end

end A208133.P2600427037278065391

/-!
# A208135: Numbers that match polynomials over {0,1} that have a factor containing a negative coefficient.

The programs for A208135, there is no canonical definition to state claims against.
-/

/-! ## A208135.P13503470077186520221

`A059261(A152023(n+1))`
-/

namespace A208135.P13503470077186520221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A152023 (n + 1)).toNat

end

end A208135.P13503470077186520221

/-! ## A208135.P13474226951494327536

`A059252(2*A152023(n+1))`
-/

namespace A208135.P13474226951494327536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (2 * A152023 (n + 1)).toNat

end

end A208135.P13474226951494327536

/-! ## A208135.P12101074618220999087

`A059253(2*A152023(n+1))`
-/

namespace A208135.P12101074618220999087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (2 * A152023 (n + 1)).toNat

end

end A208135.P12101074618220999087

/-! ## A208135.P11331772167101714224

`A292372(2*A152023(n+1))`
-/

namespace A208135.P11331772167101714224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (2 * A152023 (n + 1)).toNat

end

end A208135.P11331772167101714224

/-! ## A208135.P11736073973739831802

`A292373(3*A152023(n+1))`
-/

namespace A208135.P11736073973739831802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (3 * A152023 (n + 1)).toNat

end

end A208135.P11736073973739831802

/-!
# A208137: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208137, there is no canonical definition to state claims against.
-/

/-! ## A208137.P9519378532139922222

`A208142(∑[4*n]+1)`
-/

namespace A208137.P9519378532139922222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208137.P9519378532139922222

/-! ## A208137.P13074655462523414861

`lcm(2, A208142(A001844(n)))`
-/

namespace A208137.P13074655462523414861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208142 (A001844 n).toNat)

end

end A208137.P13074655462523414861

/-! ## A208137.P17459652159749912392

`record[A003982(n)*A208142(n+1)]`
-/

namespace A208137.P17459652159749912392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208137.P17459652159749912392

/-! ## A208137.P7045268246938966609

`record[gcd(A166040(n), A208142(n+1))]`
-/

namespace A208137.P7045268246938966609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A208142 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208137.P7045268246938966609

/-! ## A208137.P16710330447620074957

`A208142(A001844(n))+A008683(4*(n+4))`
-/

namespace A208137.P16710330447620074957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A001844 n).toNat + A008683 (4 * (n + 4))

end

end A208137.P16710330447620074957

/-!
# A208138: Number of n X 4 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208138, the canonical program `A208138.P7605465691485693601` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208138 has offset 1).

The definition of A208138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208138.P7605465691485693601

`∑[3*(1+n)]²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208138

/-- `∑[3*(1+n)]²` -/
def P7605465691485693601.Spec : Prop :=
  ∀ n, (P7605465691485693601.a n : ℤ) = A208138 (n + 1)

theorem P7605465691485693601.correct : P7605465691485693601.Spec := by
  intro n
  simp only [A208138, Nat.add_sub_cancel]

end A208138

/-! ## A208138.P5751143055551070282

`9*C(n+2, 2)²`
-/

namespace A208138.P5751143055551070282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 2) 2 ^ 2

end

end A208138.P5751143055551070282

namespace A208138

/-- `9*C(n+2, 2)²` -/
def P5751143055551070282.Spec : Prop :=
  ∀ n, (P5751143055551070282.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P12399171171364642901

`9*∑[xor(n, -1)]²`
-/

namespace A208138.P12399171171364642901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P12399171171364642901

namespace A208138

/-- `9*∑[xor(n, -1)]²` -/
def P12399171171364642901.Spec : Prop :=
  ∀ n, P12399171171364642901.a n = A208138 (n + 1)

end A208138

/-! ## A208138.P5485127377401911464

`∑[∑[lcm(9, Δ[n^3])]]`
-/

namespace A208138.P5485127377401911464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208138.P5485127377401911464

namespace A208138

/-- `∑[∑[lcm(9, Δ[n^3])]]` -/
def P5485127377401911464.Spec : Prop :=
  ∀ n, (P5485127377401911464.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P12511318557093170573

`(3*C(n+2, 2))^2`
-/

namespace A208138.P12511318557093170573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 2) ^ 2

end

end A208138.P12511318557093170573

namespace A208138

/-- `(3*C(n+2, 2))^2` -/
def P12511318557093170573.Spec : Prop :=
  ∀ n, (P12511318557093170573.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P3832052698923825776

`∑[lcm(3, 3*(n+1))]^2`
-/

namespace A208138.P3832052698923825776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P3832052698923825776

namespace A208138

/-- `∑[lcm(3, 3*(n+1))]^2` -/
def P3832052698923825776.Spec : Prop :=
  ∀ n, (P3832052698923825776.a n : ℤ) = A208138 (n + 1)

theorem P3832052698923825776.correct : P3832052698923825776.Spec := by
  intro n
  simp only [A208138, Nat.add_sub_cancel, A208138.P3832052698923825776.f1, A208138.P3832052698923825776.a, A208138.P7605465691485693601.f1, A208138.P7605465691485693601.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A208138

/-! ## A208138.P8793175950041208923

`∑[a(n-1)+3]^2` with `a(0)=3`
-/

namespace A208138.P8793175950041208923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P8793175950041208923

namespace A208138

/-- `∑[a(n-1)+3]^2` -/
def P8793175950041208923.Spec : Prop :=
  ∀ n, (P8793175950041208923.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P17267772877799980523

`floor(∑[a(n-1)+3]²)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A208138.P17267772877799980523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P17267772877799980523

namespace A208138

/-- `floor(∑[a(n-1)+3]²)` -/
def P17267772877799980523.Spec : Prop :=
  ∀ n, (P17267772877799980523.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P12796506895515328646

`ceil(∑[a(n-1)+3]²)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A208138.P12796506895515328646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P12796506895515328646

namespace A208138

/-- `ceil(∑[a(n-1)+3]²)` -/
def P12796506895515328646.Spec : Prop :=
  ∀ n, (P12796506895515328646.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P14018009683296264594

`round(∑[a(n-1)+3]²)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A208138.P14018009683296264594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208138.P14018009683296264594

namespace A208138

/-- `round(∑[a(n-1)+3]²)` -/
def P14018009683296264594.Spec : Prop :=
  ∀ n, (P14018009683296264594.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P4142523816597221218

`∑[3*(n+1)]^acos(cos(2))`
-/

namespace A208138.P4142523816597221218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A208138.P4142523816597221218

namespace A208138

/-- `∑[3*(n+1)]^acos(cos(2))` -/
def P4142523816597221218.Spec : Prop :=
  ∀ n, P4142523816597221218.a n = (A208138 (n + 1) : ℝ)

end A208138

/-! ## A208138.P9509297868505466877

`∑[n+1]²/tan(acot(3))²`
-/

namespace A208138.P9509297868505466877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ)) ^ 2

end

end A208138.P9509297868505466877

namespace A208138

/-- `∑[n+1]²/tan(acot(3))²` -/
def P9509297868505466877.Spec : Prop :=
  ∀ n, P9509297868505466877.a n = (A208138 (n + 1) : ℝ)

end A208138

/-! ## A208138.P10989157889515198340

`∑[n+1]²/cot(atan(3))²`
-/

namespace A208138.P10989157889515198340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) / Real.cot (Real.arctan (3 : ℝ)) ^ 2

end

end A208138.P10989157889515198340

namespace A208138

/-- `∑[n+1]²/cot(atan(3))²` -/
def P10989157889515198340.Spec : Prop :=
  ∀ n, P10989157889515198340.a n = (A208138 (n + 1) : ℝ)

end A208138

/-! ## A208138.P11582639719778994191

`∑[a(n-1)+6]²/4` with `a(0)=6`
-/

namespace A208138.P11582639719778994191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A208138.P11582639719778994191

namespace A208138

/-- `∑[a(n-1)+6]²/4` -/
def P11582639719778994191.Spec : Prop :=
  ∀ n, P11582639719778994191.a n = (A208138 (n + 1) : ℚ)

end A208138

/-! ## A208138.P6655877742202295103

`ogf((9+36x+9x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A208138.P6655877742202295103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 36, 9] [1, -5, 10, -10, 5, -1] n

end

end A208138.P6655877742202295103

namespace A208138

/-- `ogf((9+36x+9x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6655877742202295103.Spec : Prop :=
  ∀ n, P6655877742202295103.a n = A208138 (n + 1)

end A208138

/-! ## A208138.P16596555582334574894

`(3*lcm(n+1, n+2))²/4`
-/

namespace A208138.P16596555582334574894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lcm (n + 1) (n + 2)) ^ 2 : ℚ) / 4

end

end A208138.P16596555582334574894

namespace A208138

/-- `(3*lcm(n+1, n+2))²/4` -/
def P16596555582334574894.Spec : Prop :=
  ∀ n, P16596555582334574894.a n = (A208138 (n + 1) : ℚ)

end A208138

/-! ## A208138.P11221372795292039553

`∑[3*(n+1)]^(2%(n+3))`
-/

namespace A208138.P11221372795292039553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % (n + 3))

end

end A208138.P11221372795292039553

namespace A208138

/-- `∑[3*(n+1)]^(2%(n+3))` -/
def P11221372795292039553.Spec : Prop :=
  ∀ n, (P11221372795292039553.a n : ℤ) = A208138 (n + 1)

end A208138

/-! ## A208138.P14314334122609884823

`∑[3*(n+1)]^gcd(2, 2*n)`
-/

namespace A208138.P14314334122609884823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A208138.P14314334122609884823

namespace A208138

/-- `∑[3*(n+1)]^gcd(2, 2*n)` -/
def P14314334122609884823.Spec : Prop :=
  ∀ n, (P14314334122609884823.a n : ℤ) = A208138 (n + 1)

theorem P14314334122609884823.correct : P14314334122609884823.Spec := by
  intro n
  simp only [A208138, Nat.add_sub_cancel, A208138.P14314334122609884823.f1, A208138.P14314334122609884823.a, A208138.P7605465691485693601.f1, A208138.P7605465691485693601.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A208138

/-! ## A208138.P14894698989760505424

`((n+2)/n)²*a(n-1)` with `a(0)=9`
-/

namespace A208138.P14894698989760505424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  ((n + 2 : ℚ) / (n : ℚ)) ^ 2 * a (n - 1)

end

end A208138.P14894698989760505424

namespace A208138

/-- `((n+2)/n)²*a(n-1)` -/
def P14894698989760505424.Spec : Prop :=
  ∀ n, P14894698989760505424.a n = (A208138 (n + 1) : ℚ)

end A208138

/-! ## A208138.P5948905388612262828

`a(n-1)/(n/(n+2))²` with `a(0)=9`
-/

namespace A208138.P5948905388612262828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 2 : ℚ)) ^ 2

end

end A208138.P5948905388612262828

namespace A208138

/-- `a(n-1)/(n/(n+2))²` -/
def P5948905388612262828.Spec : Prop :=
  ∀ n, P5948905388612262828.a n = (A208138 (n + 1) : ℚ)

end A208138

/-!
# A208139: Number of n X 5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208139, the canonical program `A208139.P14534235322679682199` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208139 has offset 1).

The definition of A208139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208139.P14534235322679682199

`(n+3)*∑[2*(n+1)]²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208139

/-- `(n+3)*∑[2*(n+1)]²` -/
def P14534235322679682199.Spec : Prop :=
  ∀ n, (P14534235322679682199.a n : ℤ) = A208139 (n + 1)

theorem P14534235322679682199.correct : P14534235322679682199.Spec := by
  intro n
  simp only [A208139, Nat.add_sub_cancel]

end A208139

/-! ## A208139.P9982538554209250988

`ogf((12+72x+36x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A208139.P9982538554209250988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 72, 36] [1, -6, 15, -20, 15, -6, 1] n

end

end A208139.P9982538554209250988

namespace A208139

/-- `ogf((12+72x+36x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P9982538554209250988.Spec : Prop :=
  ∀ n, P9982538554209250988.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P12169584371780957816

`lcm((n+3)*(n+1)², (n+2)²)`
-/

namespace A208139.P12169584371780957816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 3) * (n + 1) ^ 2) ((n + 2) ^ 2)

end

end A208139.P12169584371780957816

namespace A208139

/-- `lcm((n+3)*(n+1)², (n+2)²)` -/
def P12169584371780957816.Spec : Prop :=
  ∀ n, (P12169584371780957816.a n : ℤ) = A208139 (n + 1)

end A208139

/-! ## A208139.P17291213586646161925

`(n+3)/(1/lcm(n+1, n+2))²`
-/

namespace A208139.P17291213586646161925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (1 / (Nat.lcm (n + 1) (n + 2) : ℚ)) ^ 2

end

end A208139.P17291213586646161925

namespace A208139

/-- `(n+3)/(1/lcm(n+1, n+2))²` -/
def P17291213586646161925.Spec : Prop :=
  ∀ n, P17291213586646161925.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P17167011738131753064

`∑[∑[a(n-1)+20]*∑[n+1]]` with `a(0)=12`
-/

namespace A208139.P17167011738131753064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f2 =>
  f2 (n - 1) + 20

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208139.P17167011738131753064

namespace A208139

/-- `∑[∑[a(n-1)+20]*∑[n+1]]` -/
def P17167011738131753064.Spec : Prop :=
  ∀ n, (P17167011738131753064.a n : ℤ) = A208139 (n + 1)

end A208139

/-! ## A208139.P16221502693057093099

`∑[∑[12*A096000(n)]]`
-/

namespace A208139.P16221502693057093099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A096000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208139.P16221502693057093099

namespace A208139

/-- `∑[∑[12*A096000(n)]]` -/
def P16221502693057093099.Spec : Prop :=
  ∀ n, P16221502693057093099.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P12565547406129284316

`∑[12*A117066(n+1)]`
-/

namespace A208139.P12565547406129284316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A117066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208139.P12565547406129284316

namespace A208139

/-- `∑[12*A117066(n+1)]` -/
def P12565547406129284316.Spec : Prop :=
  ∀ n, P12565547406129284316.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P4996163062408575356

`A331433(n)²/(n+3)`
-/

namespace A208139.P4996163062408575356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331433 n ^ 2 : ℚ) / (n + 3 : ℚ)

end

end A208139.P4996163062408575356

namespace A208139

/-- `A331433(n)²/(n+3)` -/
def P4996163062408575356.Spec : Prop :=
  ∀ n, P4996163062408575356.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P16772809335030164399

`A099764(n+1)/(n+3)`
-/

namespace A208139.P16772809335030164399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099764 (n + 1) : ℚ) / (n + 3 : ℚ)

end

end A208139.P16772809335030164399

namespace A208139

/-- `A099764(n+1)/(n+3)` -/
def P16772809335030164399.Spec : Prop :=
  ∀ n, P16772809335030164399.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P16894042973885633062

`A192832(n+2)/4`
-/

namespace A208139.P16894042973885633062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192832 (n + 2) : ℚ) / 4

end

end A208139.P16894042973885633062

namespace A208139

/-- `A192832(n+2)/4` -/
def P16894042973885633062.Spec : Prop :=
  ∀ n, P16894042973885633062.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P7764934154293936587

`∑[12*Δ[A004302(n)]]`
-/

namespace A208139.P7764934154293936587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208139.P7764934154293936587

namespace A208139

/-- `∑[12*Δ[A004302(n)]]` -/
def P7764934154293936587.Spec : Prop :=
  ∀ n, P7764934154293936587.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P9754096125397298915

`Δ[A033487(n)]²/(n+3)`
-/

namespace A208139.P9754096125397298915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / (n + 3 : ℚ)

end

end A208139.P9754096125397298915

namespace A208139

/-- `Δ[A033487(n)]²/(n+3)` -/
def P9754096125397298915.Spec : Prop :=
  ∀ n, P9754096125397298915.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P7615956413795818114

`A292282(n+2)/(2*(n+1))`
-/

namespace A208139.P7615956413795818114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292282 (n + 2) : ℚ) / (2 * (n + 1) : ℚ)

end

end A208139.P7615956413795818114

namespace A208139

/-- `A292282(n+2)/(2*(n+1))` -/
def P7615956413795818114.Spec : Prop :=
  ∀ n, P7615956413795818114.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P13815521112123910719

`∑[A028896(n+1)]²/(n+3)`
-/

namespace A208139.P13815521112123910719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A208139.P13815521112123910719

namespace A208139

/-- `∑[A028896(n+1)]²/(n+3)` -/
def P13815521112123910719.Spec : Prop :=
  ∀ n, P13815521112123910719.a n = (A208139 (n + 1) : ℚ)

end A208139

/-! ## A208139.P4897636891906724344

`(n+1)²+(n+1)²*A003777(n+2)`
-/

namespace A208139.P4897636891906724344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A003777 (n + 2)

end

end A208139.P4897636891906724344

namespace A208139

/-- `(n+1)²+(n+1)²*A003777(n+2)` -/
def P4897636891906724344.Spec : Prop :=
  ∀ n, P4897636891906724344.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P9302947784751473290

`A152017(n+2)+A014105(n+2)`
-/

namespace A208139.P9302947784751473290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 (n + 2) + A014105 (n + 2)

end

end A208139.P9302947784751473290

namespace A208139

/-- `A152017(n+2)+A014105(n+2)` -/
def P9302947784751473290.Spec : Prop :=
  ∀ n, P9302947784751473290.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P6457290742464859391

`A002378(n+1)+A002378(n+1)*A126420(n+2)`
-/

namespace A208139.P6457290742464859391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + A002378 (n + 1) * A126420 (n + 2)

end

end A208139.P6457290742464859391

namespace A208139

/-- `A002378(n+1)+A002378(n+1)*A126420(n+2)` -/
def P6457290742464859391.Spec : Prop :=
  ∀ n, P6457290742464859391.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P16654263865645605564

`A133071(n+2)-(n+2)²²`
-/

namespace A208139.P16654263865645605564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133071 (n + 2) - (((n + 2) ^ 2) ^ 2 : ℤ)

end

end A208139.P16654263865645605564

namespace A208139

/-- `A133071(n+2)-(n+2)²²` -/
def P16654263865645605564.Spec : Prop :=
  ∀ n, P16654263865645605564.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P15481479558227898520

`∑[(n+1)²*A051624(n+2)]`
-/

namespace A208139.P15481479558227898520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A051624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208139.P15481479558227898520

namespace A208139

/-- `∑[(n+1)²*A051624(n+2)]` -/
def P15481479558227898520.Spec : Prop :=
  ∀ n, P15481479558227898520.a n = A208139 (n + 1)

end A208139

/-! ## A208139.P13741008716654156509

`A085538(n+2)-A045991(n+2)`
-/

namespace A208139.P13741008716654156509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (n + 2) - A045991 (n + 2)

end

end A208139.P13741008716654156509

namespace A208139

/-- `A085538(n+2)-A045991(n+2)` -/
def P13741008716654156509.Spec : Prop :=
  ∀ n, P13741008716654156509.a n = A208139 (n + 1)

end A208139

/-!
# A208140: Number of n X 6 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208140, the canonical program `A208140.P12272643090207899275` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208140 has offset 1).

The definition of A208140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208140.P12272643090207899275

`(4*C(n+3, 3))²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208140

/-- `(4*C(n+3, 3))²` -/
def P12272643090207899275.Spec : Prop :=
  ∀ n, (P12272643090207899275.a n : ℤ) = A208140 (n + 1)

theorem P12272643090207899275.correct : P12272643090207899275.Spec := by
  intro n
  simp only [A208140, Nat.add_sub_cancel]

end A208140

/-! ## A208140.P18142890025990079823

`∑[∑[4*(n+1)]]²`
-/

namespace A208140.P18142890025990079823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P18142890025990079823

namespace A208140

/-- `∑[∑[4*(n+1)]]²` -/
def P18142890025990079823.Spec : Prop :=
  ∀ n, (P18142890025990079823.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P319579162470687078

`(4*C(n+3, 3))^2`
-/

namespace A208140.P319579162470687078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 3) 3) ^ 2

end

end A208140.P319579162470687078

namespace A208140

/-- `(4*C(n+3, 3))^2` -/
def P319579162470687078.Spec : Prop :=
  ∀ n, (P319579162470687078.a n : ℤ) = A208140 (n + 1)

theorem P319579162470687078.correct : P319579162470687078.Spec := by
  intro n
  simp only [A208140, Nat.add_sub_cancel, A208140.P319579162470687078.a, A208140.P12272643090207899275.a, SequenceMachineLib.memo_apply]

end A208140

/-! ## A208140.P5302812684068250541

`16*∑[∑[xor(n, -1)]]²`
-/

namespace A208140.P5302812684068250541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P5302812684068250541

namespace A208140

/-- `16*∑[∑[xor(n, -1)]]²` -/
def P5302812684068250541.Spec : Prop :=
  ∀ n, P5302812684068250541.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P4853734020605200165

`∑[∑[record[xor(3, n)+1]]]^2`
-/

namespace A208140.P4853734020605200165
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P4853734020605200165

namespace A208140

/-- `∑[∑[record[xor(3, n)+1]]]^2` -/
def P4853734020605200165.Spec : Prop :=
  ∀ n, (P4853734020605200165.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P6620643325404379919

`∑[∑[record[gcd(4, n)+n]]]^2`
-/

namespace A208140.P6620643325404379919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P6620643325404379919

namespace A208140

/-- `∑[∑[record[gcd(4, n)+n]]]^2` -/
def P6620643325404379919.Spec : Prop :=
  ∀ n, (P6620643325404379919.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P14761608933624213785

`∑[∑[lcm(2, 4*(n+1))]]^2`
-/

namespace A208140.P14761608933624213785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P14761608933624213785

namespace A208140

/-- `∑[∑[lcm(2, 4*(n+1))]]^2` -/
def P14761608933624213785.Spec : Prop :=
  ∀ n, (P14761608933624213785.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P12794007502950142535

`∑[∑[a(n-1)+4]]^2` with `a(0)=4`
-/

namespace A208140.P12794007502950142535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P12794007502950142535

namespace A208140

/-- `∑[∑[a(n-1)+4]]^2` -/
def P12794007502950142535.Spec : Prop :=
  ∀ n, (P12794007502950142535.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P618024109669776590

`floor(∑[∑[a(n-1)+4]]²)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A208140.P618024109669776590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P618024109669776590

namespace A208140

/-- `floor(∑[∑[a(n-1)+4]]²)` -/
def P618024109669776590.Spec : Prop :=
  ∀ n, (P618024109669776590.a n : ℤ) = A208140 (n + 1)

end A208140

/-! ## A208140.P12511725943005197824

`∑[∑[ogf(8/(1-2x+x^2))]]²/4`
-/

namespace A208140.P12511725943005197824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A208140.P12511725943005197824

namespace A208140

/-- `∑[∑[ogf(8/(1-2x+x^2))]]²/4` -/
def P12511725943005197824.Spec : Prop :=
  ∀ n, P12511725943005197824.a n = (A208140 (n + 1) : ℚ)

end A208140

/-! ## A208140.P13908275499176689155

`∑[∑[a(n-1)+8]]²/4` with `a(0)=8`
-/

namespace A208140.P13908275499176689155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A208140.P13908275499176689155

namespace A208140

/-- `∑[∑[a(n-1)+8]]²/4` -/
def P13908275499176689155.Spec : Prop :=
  ∀ n, P13908275499176689155.a n = (A208140 (n + 1) : ℚ)

end A208140

/-! ## A208140.P18250999422269583927

`4*∑[record[(n-1)*(n-2)]]²`
-/

namespace A208140.P18250999422269583927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P18250999422269583927

namespace A208140

/-- `4*∑[record[(n-1)*(n-2)]]²` -/
def P18250999422269583927.Spec : Prop :=
  ∀ n, P18250999422269583927.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P263096781974355840

`4*∑[∑[a(n-1)-2]]²` with `a(0)=-2`
-/

namespace A208140.P263096781974355840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P263096781974355840

namespace A208140

/-- `4*∑[∑[a(n-1)-2]]²` -/
def P263096781974355840.Spec : Prop :=
  ∀ n, P263096781974355840.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P13405369144007883884

`4*(2*∑[∑[ogf(1/(1-2x+x^2))]])²`
-/

namespace A208140.P13405369144007883884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A208140.P13405369144007883884

namespace A208140

/-- `4*(2*∑[∑[ogf(1/(1-2x+x^2))]])²` -/
def P13405369144007883884.Spec : Prop :=
  ∀ n, P13405369144007883884.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P5912157324917950235

`ogf((16+144x+144x^2+16x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A208140.P5912157324917950235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 144, 144, 16] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A208140.P5912157324917950235

namespace A208140

/-- `ogf((16+144x+144x^2+16x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5912157324917950235.Spec : Prop :=
  ∀ n, P5912157324917950235.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P7122843847706855492

`floor(∑[(a(n-1)/n)²-a(n-1)]²)` with `a(0)=4`
-/

namespace A208140.P7122843847706855492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  (f1 (n - 1) / (n : ℚ)) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A208140.P7122843847706855492

namespace A208140

/-- `floor(∑[(a(n-1)/n)²-a(n-1)]²)` -/
def P7122843847706855492.Spec : Prop :=
  ∀ n, P7122843847706855492.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P3582532258608781484

`16*A001249(n)`
-/

namespace A208140.P3582532258608781484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001249 n

end

end A208140.P3582532258608781484

namespace A208140

/-- `16*A001249(n)` -/
def P3582532258608781484.Spec : Prop :=
  ∀ n, P3582532258608781484.a n = A208140 (n + 1)

end A208140

/-! ## A208140.P11271961580658561053

`A130809(n+3)²/4`
-/

namespace A208140.P11271961580658561053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130809 (n + 3) ^ 2 : ℚ) / 4

end

end A208140.P11271961580658561053

namespace A208140

/-- `A130809(n+3)²/4` -/
def P11271961580658561053.Spec : Prop :=
  ∀ n, P11271961580658561053.a n = (A208140 (n + 1) : ℚ)

end A208140

/-! ## A208140.P8374112999261358289

`16*A000292(n+1)²`
-/

namespace A208140.P8374112999261358289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000292 (n + 1) ^ 2

end

end A208140.P8374112999261358289

namespace A208140

/-- `16*A000292(n+1)²` -/
def P8374112999261358289.Spec : Prop :=
  ∀ n, P8374112999261358289.a n = A208140 (n + 1)

theorem P8374112999261358289.correct : P8374112999261358289.Spec := by
  intro n
  simp only [A208140, Nat.add_sub_cancel, A208140.P8374112999261358289.a, A208140.P12272643090207899275.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208140

/-! ## A208140.P14814594886713021792

`∑[A046092(n+1)]^2`
-/

namespace A208140.P14814594886713021792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A208140.P14814594886713021792

namespace A208140

/-- `∑[A046092(n+1)]^2` -/
def P14814594886713021792.Spec : Prop :=
  ∀ n, P14814594886713021792.a n = A208140 (n + 1)

end A208140

/-!
# A208141: Number of n X 7 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208141, the canonical program `A208141.P16846516520556497949` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208141 has offset 1).

The definition of A208141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208141.P16846516520556497949

`5*(n+4)*∑[∑[n+1]]²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208141

/-- `5*(n+4)*∑[∑[n+1]]²` -/
def P16846516520556497949.Spec : Prop :=
  ∀ n, (P16846516520556497949.a n : ℤ) = A208141 (n + 1)

theorem P16846516520556497949.correct : P16846516520556497949.Spec := by
  intro n
  simp only [A208141, Nat.add_sub_cancel]

end A208141

/-! ## A208141.P3018592087119430079

`ogf((20+240x+360x^2+80x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A208141.P3018592087119430079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 240, 360, 80] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A208141.P3018592087119430079

namespace A208141

/-- `ogf((20+240x+360x^2+80x^3)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P3018592087119430079.Spec : Prop :=
  ∀ n, P3018592087119430079.a n = A208141 (n + 1)

end A208141

/-! ## A208141.P7916781365599160961

`((n+3)²+n+3)*a(n-1)/n/n` with `a(0)=20`
-/

namespace A208141.P7916781365599160961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [20] fun n a =>
  ((n + 3) ^ 2 + (n + 3) : ℚ) * (a (n - 1) / (n : ℚ)) / (n : ℚ)

end

end A208141.P7916781365599160961

namespace A208141

/-- `((n+3)²+n+3)*a(n-1)/n/n` -/
def P7916781365599160961.Spec : Prop :=
  ∀ n, P7916781365599160961.a n = (A208141 (n + 1) : ℚ)

end A208141

/-! ## A208141.P17228452192493173754

`A208142(A055999(n+4))`
-/

namespace A208141.P17228452192493173754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A055999 (n + 4)).toNat

end

end A208141.P17228452192493173754

namespace A208141

/-- `A208142(A055999(n+4))` -/
def P17228452192493173754.Spec : Prop :=
  ∀ n, P17228452192493173754.a n = A208141 (n + 1)

end A208141

/-! ## A208141.P17263244426457995866

`A208142(A052905(n+4)-1)`
-/

namespace A208141.P17263244426457995866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A052905 (n + 4) - 1).toNat

end

end A208141.P17263244426457995866

namespace A208141

/-- `A208142(A052905(n+4)-1)` -/
def P17263244426457995866.Spec : Prop :=
  ∀ n, P17263244426457995866.a n = A208141 (n + 1)

end A208141

/-! ## A208141.P478412718882513775

`A208142(eq[7, A004736(n+1)]+1)`
-/

namespace A208141.P478412718882513775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208141.P478412718882513775

namespace A208141

/-- `A208142(eq[7, A004736(n+1)]+1)` -/
def P478412718882513775.Spec : Prop :=
  ∀ n, P478412718882513775.a n = A208141 (n + 1)

end A208141

/-! ## A208141.P10822293265186657373

`A208142(A000217(n+6)+n+1)`
-/

namespace A208141.P10822293265186657373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A208141.P10822293265186657373

namespace A208141

/-- `A208142(A000217(n+6)+n+1)` -/
def P10822293265186657373.Spec : Prop :=
  ∀ n, P10822293265186657373.a n = A208141 (n + 1)

end A208141

/-! ## A208141.P4537816604795385712

`A208142(eq[5, A002262(n)]+2*(n+1))`
-/

namespace A208141.P4537816604795385712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * (n + 1))

end

end A208141.P4537816604795385712

namespace A208141

/-- `A208142(eq[5, A002262(n)]+2*(n+1))` -/
def P4537816604795385712.Spec : Prop :=
  ∀ n, P4537816604795385712.a n = A208141 (n + 1)

end A208141

/-!
# A208142: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208142, there is no canonical definition to state claims against.
-/

/-! ## A208142.P6100014709089265447

`A207403(n+1)+A173068(A059922(n))`
-/

namespace A208142.P6100014709089265447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (n + 1) + A173068 (A059922 n).toNat

end

end A208142.P6100014709089265447

/-! ## A208142.P2033300686349965575

`A207403(n+1)+A173068(A160449(n))`
-/

namespace A208142.P2033300686349965575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (n + 1) + A173068 (A160449 n).toNat

end

end A208142.P2033300686349965575

/-! ## A208142.P57955758977173657

`A207403(n+1)+A115859(A331315(n))`
-/

namespace A208142.P57955758977173657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (n + 1) + A115859 (A331315 n).toNat

end

end A208142.P57955758977173657

/-! ## A208142.P14310696674906534949

`A207403(n+1)+A111775(A141310(A000676(n)))`
-/

namespace A208142.P14310696674906534949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (n + 1) + A111775 (A141310 (A000676 n).toNat).toNat

end

end A208142.P14310696674906534949

/-! ## A208142.P5847136909835787143

`A207403(n+1)+A173068(A147309(n))`
-/

namespace A208142.P5847136909835787143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207403 (n + 1) + A173068 (A147309 n).toNat

end

end A208142.P5847136909835787143

/-!
# A208143: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208143, there is no canonical definition to state claims against.
-/

/-! ## A208143.P12831824473986742144

`A208142(A052905(n)+9)`
-/

namespace A208143.P12831824473986742144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A052905 n + 9).toNat

end

end A208143.P12831824473986742144

/-! ## A208143.P5599425197566025441

`A208142(A055999(n)+10)`
-/

namespace A208143.P5599425197566025441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A055999 n + 10).toNat

end

end A208143.P5599425197566025441

/-! ## A208143.P5707280499455017263

`A208142(Δ[A008778(n)]+6)`
-/

namespace A208143.P5707280499455017263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (f1 (n + 1) - f1 n + 6).toNat

end

end A208143.P5707280499455017263

/-! ## A208143.P17793460548185318307

`A208142(A167614(n+2)+1)`
-/

namespace A208143.P17793460548185318307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167614 (n + 2) + 1).toNat

end

end A208143.P17793460548185318307

/-! ## A208143.P12853080606929552803

`A208142(A340266(n+2)+2)`
-/

namespace A208143.P12853080606929552803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A340266 (n + 2) + 2).toNat

end

end A208143.P12853080606929552803

/-!
# A208144: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208144, the canonical program `A208144.P897647981440989581` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208144 has offset 1).

The definition of A208144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208144.P897647981440989581

`A027800(A008619(n))*A027800(A110654(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208144

/-- `A027800(A008619(n))*A027800(A110654(n))` -/
def P897647981440989581.Spec : Prop :=
  ∀ n, P897647981440989581.a n = A208144 (n + 1)

theorem P897647981440989581.correct : P897647981440989581.Spec := by
  intro n
  simp only [A208144, Nat.add_sub_cancel]

end A208144

/-! ## A208144.P7050194035965616761

`A208142(A167499(n+3))`
-/

namespace A208144.P7050194035965616761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167499 (n + 3)).toNat

end

end A208144.P7050194035965616761

namespace A208144

/-- `A208142(A167499(n+3))` -/
def P7050194035965616761.Spec : Prop :=
  ∀ n, P7050194035965616761.a n = A208144 (n + 1)

end A208144

/-! ## A208144.P12300386382154759559

`A208142(A000217(n+4)+5)`
-/

namespace A208144.P12300386382154759559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000217 (n + 4) + 5).toNat

end

end A208144.P12300386382154759559

namespace A208144

/-- `A208142(A000217(n+4)+5)` -/
def P12300386382154759559.Spec : Prop :=
  ∀ n, P12300386382154759559.a n = A208144 (n + 1)

end A208144

/-! ## A208144.P14869804344585853724

`A208142(A161680(n+5)+5)`
-/

namespace A208144.P14869804344585853724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A161680 (n + 5) + 5).toNat

end

end A208144.P14869804344585853724

namespace A208144

/-- `A208142(A161680(n+5)+5)` -/
def P14869804344585853724.Spec : Prop :=
  ∀ n, P14869804344585853724.a n = A208144 (n + 1)

end A208144

/-! ## A208144.P4460554727412380113

`A208142(A317107(n+8)+A055998(n))`
-/

namespace A208144.P4460554727412380113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A317107 (n + 8) + A055998 n).toNat

end

end A208144.P4460554727412380113

namespace A208144

/-- `A208142(A317107(n+8)+A055998(n))` -/
def P4460554727412380113.Spec : Prop :=
  ∀ n, P4460554727412380113.a n = A208144 (n + 1)

end A208144

/-!
# A208145: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208145, there is no canonical definition to state claims against.
-/

/-! ## A208145.P9327502138986542830

`A208142(A167499(n+4)+1)`
-/

namespace A208145.P9327502138986542830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167499 (n + 4) + 1).toNat

end

end A208145.P9327502138986542830

/-! ## A208145.P7143491629857984435

`A208142(A253145(n+4)+6)`
-/

namespace A208145.P7143491629857984435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A253145 (n + 4) + 6).toNat

end

end A208145.P7143491629857984435

/-! ## A208145.P15006304697592008026

`A208142(A000217(n+5)+6)`
-/

namespace A208145.P15006304697592008026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000217 (n + 5) + 6).toNat

end

end A208145.P15006304697592008026

/-! ## A208145.P16658190391905796229

`A208142(A161680(n+6)+6)`
-/

namespace A208145.P16658190391905796229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A161680 (n + 6) + 6).toNat

end

end A208145.P16658190391905796229

/-! ## A208145.P6578280056951689629

`A208142(A046691(n+5)-A317107(n+2))`
-/

namespace A208145.P6578280056951689629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A046691 (n + 5) - A317107 (n + 2)).toNat

end

end A208145.P6578280056951689629

/-! ## A208145.P8306231166415599570

`A208142(A317107(n+10)+A046691(n+1))`
-/

namespace A208145.P8306231166415599570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A317107 (n + 10) + A046691 (n + 1)).toNat

end

end A208145.P8306231166415599570

/-!
# A208146: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208146, the canonical program `A208146.P17569854038189943159` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208146 has offset 1).

The definition of A208146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208146.P17569854038189943159

`A027818(A008619(n))*A027818(A110654(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208146

/-- `A027818(A008619(n))*A027818(A110654(n))` -/
def P17569854038189943159.Spec : Prop :=
  ∀ n, P17569854038189943159.a n = A208146 (n + 1)

theorem P17569854038189943159.correct : P17569854038189943159.Spec := by
  intro n
  simp only [A208146, Nat.add_sub_cancel]

end A208146

/-! ## A208146.P13430875661208160193

`A208142(A000124(n+6)+6)`
-/

namespace A208146.P13430875661208160193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000124 (n + 6) + 6).toNat

end

end A208146.P13430875661208160193

namespace A208146

/-- `A208142(A000124(n+6)+6)` -/
def P13430875661208160193.Spec : Prop :=
  ∀ n, P13430875661208160193.a n = A208146 (n + 1)

end A208146

/-! ## A208146.P13639596078441474378

`A208142(A000217(n+6)+7)`
-/

namespace A208146.P13639596078441474378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A000217 (n + 6) + 7).toNat

end

end A208146.P13639596078441474378

namespace A208146

/-- `A208142(A000217(n+6)+7)` -/
def P13639596078441474378.Spec : Prop :=
  ∀ n, P13639596078441474378.a n = A208146 (n + 1)

end A208146

/-! ## A208146.P2211986868780418549

`A208142(A161680(n+7)+7)`
-/

namespace A208146.P2211986868780418549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A161680 (n + 7) + 7).toNat

end

end A208146.P2211986868780418549

namespace A208146

/-- `A208142(A161680(n+7)+7)` -/
def P2211986868780418549.Spec : Prop :=
  ∀ n, P2211986868780418549.a n = A208146 (n + 1)

end A208146

/-! ## A208146.P13400398298281323243

`A208142(A167499(n+3)+A005408(n+6))`
-/

namespace A208146.P13400398298281323243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A167499 (n + 3) + A005408 (n + 6)).toNat

end

end A208146.P13400398298281323243

namespace A208146

/-- `A208142(A167499(n+3)+A005408(n+6))` -/
def P13400398298281323243.Spec : Prop :=
  ∀ n, P13400398298281323243.a n = A208146 (n + 1)

end A208146

/-! ## A208146.P14698761714351624942

`A208142(A055998(n+6)-A317107(n+3))`
-/

namespace A208146.P14698761714351624942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (A055998 (n + 6) - A317107 (n + 3)).toNat

end

end A208146.P14698761714351624942

namespace A208146

/-- `A208142(A055998(n+6)-A317107(n+3))` -/
def P14698761714351624942.Spec : Prop :=
  ∀ n, P14698761714351624942.a n = A208146 (n + 1)

end A208146

/-!
# A208147: Sequence generated from A089080.

The programs for A208147, the canonical program `A208147.P10861958524906169565` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208147 has offset 1).

The definition of A208147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208147.P10861958524906169565

`A089080(n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208147

/-- `A089080(n+1)*a(n-1)` -/
def P10861958524906169565.Spec : Prop :=
  ∀ n, P10861958524906169565.a n = A208147 (n + 1)

theorem P10861958524906169565.correct : P10861958524906169565.Spec := by
  intro n
  simp only [A208147, Nat.add_sub_cancel]

end A208147

/-! ## A208147.P13684078674930714638

`(2*(n+1)-1)!/A067281(2*(n+1)-1)`
-/

namespace A208147.P13684078674930714638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) / (A067281 (2 * (n + 1) - 1) : ℚ)

end

end A208147.P13684078674930714638

namespace A208147

/-- `(2*(n+1)-1)!/A067281(2*(n+1)-1)` -/
def P13684078674930714638.Spec : Prop :=
  ∀ n, P13684078674930714638.a n = (A208147 (n + 1) : ℚ)

end A208147

/-! ## A208147.P947649025946779194

`∏[val(record[lcm(2, n)+2], 2)]`
-/

namespace A208147.P947649025946779194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P947649025946779194

namespace A208147

/-- `∏[val(record[lcm(2, n)+2], 2)]` -/
def P947649025946779194.Spec : Prop :=
  ∀ n, (P947649025946779194.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P111210277481502383

`∏[a(∑[n]%n)+1]` with `a(0)=1`
-/

namespace A208147.P111210277481502383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P111210277481502383

namespace A208147

/-- `∏[a(∑[n]%n)+1]` -/
def P111210277481502383.Spec : Prop :=
  ∀ n, (P111210277481502383.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P12452808162296256235

`∏[1+∑{e}[xor(n, -n), #]]`
-/

namespace A208147.P12452808162296256235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P12452808162296256235

namespace A208147

/-- `∏[1+∑{e}[xor(n, -n), #]]` -/
def P12452808162296256235.Spec : Prop :=
  ∀ n, (P12452808162296256235.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P7740884434192782061

`∏[∏{e}[xor(n, -n), #+1]]`
-/

namespace A208147.P7740884434192782061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P7740884434192782061

namespace A208147

/-- `∏[∏{e}[xor(n, -n), #+1]]` -/
def P7740884434192782061.Spec : Prop :=
  ∀ n, (P7740884434192782061.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P9916936643269677239

`∏[∏{e}[2*xor(n, -n), #]]`
-/

namespace A208147.P9916936643269677239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P9916936643269677239

namespace A208147

/-- `∏[∏{e}[2*xor(n, -n), #]]` -/
def P9916936643269677239.Spec : Prop :=
  ∀ n, (P9916936643269677239.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P458424032532092318

`(val(n, 2)+2)*a(n-1)` with `a(0)=1`
-/

namespace A208147.P458424032532092318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation n 2 + 2) * a (n - 1)

end

end A208147.P458424032532092318

namespace A208147

/-- `(val(n, 2)+2)*a(n-1)` -/
def P458424032532092318.Spec : Prop :=
  ∀ n, (P458424032532092318.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P2596328105567710759

`val(4*n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A208147.P2596328105567710759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (4 * n) 2 * a (n - 1)

end

end A208147.P2596328105567710759

namespace A208147

/-- `val(4*n, 2)*a(n-1)` -/
def P2596328105567710759.Spec : Prop :=
  ∀ n, (P2596328105567710759.a n : ℤ) = A208147 (n + 1)

end A208147

/-! ## A208147.P14853700148650811200

`∏[abs(A123725(n))]`
-/

namespace A208147.P14853700148650811200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P14853700148650811200

namespace A208147

/-- `∏[abs(A123725(n))]` -/
def P14853700148650811200.Spec : Prop :=
  ∀ n, P14853700148650811200.a n = A208147 (n + 1)

end A208147

/-! ## A208147.P380982451828647730

`∏[A089080(n+1)]`
-/

namespace A208147.P380982451828647730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P380982451828647730

namespace A208147

/-- `∏[A089080(n+1)]` -/
def P380982451828647730.Spec : Prop :=
  ∀ n, P380982451828647730.a n = A208147 (n + 1)

end A208147

/-! ## A208147.P8358368664404081305

`∏[sqrt(A123726(2*n))]`
-/

namespace A208147.P8358368664404081305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P8358368664404081305

namespace A208147

/-- `∏[sqrt(A123726(2*n))]` -/
def P8358368664404081305.Spec : Prop :=
  ∀ n, P8358368664404081305.a n = (A208147 (n + 1) : ℝ)

end A208147

/-! ## A208147.P10136972951237381578

`∏[A124774(2*n+1)/A124774(2*n)]`
-/

namespace A208147.P10136972951237381578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124774 (2 * n + 1) : ℚ) / (A124774 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208147.P10136972951237381578

namespace A208147

/-- `∏[A124774(2*n+1)/A124774(2*n)]` -/
def P10136972951237381578.Spec : Prop :=
  ∀ n, P10136972951237381578.a n = (A208147 (n + 1) : ℚ)

end A208147

/-! ## A208147.P17973857570540336021

`∏[A085058(n)]/A085058(n)`
-/

namespace A208147.P17973857570540336021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A085058 n : ℚ)

end

end A208147.P17973857570540336021

namespace A208147

/-- `∏[A085058(n)]/A085058(n)` -/
def P17973857570540336021.Spec : Prop :=
  ∀ n, P17973857570540336021.a n = (A208147 (n + 1) : ℚ)

end A208147

/-! ## A208147.P10295875526646344066

`∏[A001511(2*(n+1))]/A001511(2*(n+1))`
-/

namespace A208147.P10295875526646344066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001511 (2 * (n + 1)) : ℚ)

end

end A208147.P10295875526646344066

namespace A208147

/-- `∏[A001511(2*(n+1))]/A001511(2*(n+1))` -/
def P10295875526646344066.Spec : Prop :=
  ∀ n, P10295875526646344066.a n = (A208147 (n + 1) : ℚ)

end A208147

/-!
# A208148: Number of n state 1 dimensional radius-1 totalistic cellular automata.

The programs for A208148, the canonical program `A208148.P12458632917118762840` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208148 has offset 1).

The definition of A208148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208148.P12458632917118762840

`(n+1)^(3*(n+1)-2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208148

/-- `(n+1)^(3*(n+1)-2)` -/
def P12458632917118762840.Spec : Prop :=
  ∀ n, P12458632917118762840.a n = (A208148 (n + 1) : ℚ)

end A208148

/-! ## A208148.P5865780652528940801

`record[floor(xor(1, n)-n/2)^comp[3*n]]`
-/

namespace A208148.P5865780652528940801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) - (n : ℚ) / 2⌋ ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208148.P5865780652528940801

namespace A208148

/-- `record[floor(xor(1, n)-n/2)^comp[3*n]]` -/
def P5865780652528940801.Spec : Prop :=
  ∀ n, P5865780652528940801.a n = A208148 (n + 1)

end A208148

/-! ## A208148.P405977002866014801

`record[(∑[n+1]%(n+2))^(gcd(n, floor(n/2))+1+n)]`
-/

namespace A208148.P405977002866014801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) ^ (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208148.P405977002866014801

namespace A208148

/-- `record[(∑[n+1]%(n+2))^(gcd(n, floor(n/2))+1+n)]` -/
def P405977002866014801.Spec : Prop :=
  ∀ n, (P405977002866014801.a n : ℤ) = A208148 (n + 1)

end A208148

/-! ## A208148.P13901444670613295136

`record[A290981(n+2)^n]`
-/

namespace A208148.P13901444670613295136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290981 (n + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208148.P13901444670613295136

namespace A208148

/-- `record[A290981(n+2)^n]` -/
def P13901444670613295136.Spec : Prop :=
  ∀ n, P13901444670613295136.a n = A208148 (n + 1)

end A208148

/-! ## A208148.P16131478019327247532

`floor((n+1)^log2(A013730(n)))`
-/

namespace A208148.P16131478019327247532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (Real.logb 2 (A013730 n : ℝ))⌋

end

end A208148.P16131478019327247532

namespace A208148

/-- `floor((n+1)^log2(A013730(n)))` -/
def P16131478019327247532.Spec : Prop :=
  ∀ n, P16131478019327247532.a n = A208148 (n + 1)

end A208148

/-!
# A208149: Primes prime(k) such that prime(k) <= 2^(prime(k+1) - prime(k)).

The programs for A208149, the canonical program `A208149.P8257743425623628444` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208149 has offset 1).

The definition of A208149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208149.P8257743425623628444

`record[A000040(n+1)%A137780(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208149

/-- `record[A000040(n+1)%A137780(n+1)]` -/
def P8257743425623628444.Spec : Prop :=
  ∀ n, P8257743425623628444.a n = A208149 (n + 1)

theorem P8257743425623628444.correct : P8257743425623628444.Spec := by
  intro n
  simp only [A208149, Nat.add_sub_cancel]

end A208149

/-! ## A208149.P14109405690528521090

`record[A008578(n+2)%A137780(n+1)]`
-/

namespace A208149.P14109405690528521090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P14109405690528521090

namespace A208149

/-- `record[A008578(n+2)%A137780(n+1)]` -/
def P14109405690528521090.Spec : Prop :=
  ∀ n, P14109405690528521090.a n = A208149 (n + 1)

end A208149

/-! ## A208149.P5355255768964596211

`record[sqrt(A001248(n+1))%A137780(n+1)]`
-/

namespace A208149.P5355255768964596211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P5355255768964596211

namespace A208149

/-- `record[sqrt(A001248(n+1))%A137780(n+1)]` -/
def P5355255768964596211.Spec : Prop :=
  ∀ n, P5355255768964596211.a n = A208149 (n + 1)

end A208149

/-! ## A208149.P7223156405199264600

`record[(A006093(n+1)+1)%A137780(n+1)]`
-/

namespace A208149.P7223156405199264600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P7223156405199264600

namespace A208149

/-- `record[(A006093(n+1)+1)%A137780(n+1)]` -/
def P7223156405199264600.Spec : Prop :=
  ∀ n, P7223156405199264600.a n = A208149 (n + 1)

end A208149

/-! ## A208149.P9752362064487548340

`record[A006530(A100484(n+1))%A137780(n+1)]`
-/

namespace A208149.P9752362064487548340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A100484 (n + 1)).toNat) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P9752362064487548340

namespace A208149

/-- `record[A006530(A100484(n+1))%A137780(n+1)]` -/
def P9752362064487548340.Spec : Prop :=
  ∀ n, P9752362064487548340.a n = A208149 (n + 1)

end A208149

/-! ## A208149.P4844505054075267062

`record[A004086(A004087(n+1))%A137780(n+1)]`
-/

namespace A208149.P4844505054075267062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004087 (n + 1)).toNat) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P4844505054075267062

namespace A208149

/-- `record[A004086(A004087(n+1))%A137780(n+1)]` -/
def P4844505054075267062.Spec : Prop :=
  ∀ n, P4844505054075267062.a n = A208149 (n + 1)

end A208149

/-! ## A208149.P8634250936914667282

`p?[gcd(A103354(n+1), A136548(n+1))]`
-/

namespace A208149.P8634250936914667282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103354 (n + 1)) (A136548 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A208149.P8634250936914667282

namespace A208149

/-- `p?[gcd(A103354(n+1), A136548(n+1))]` -/
def P8634250936914667282.Spec : Prop :=
  ∀ n, (P8634250936914667282.a n : ℤ) = A208149 (n + 1)

end A208149

/-! ## A208149.P6201511167175803630

`record[A136548(A065091(n+1))%A137780(n+1)]`
-/

namespace A208149.P6201511167175803630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (A065091 (n + 1)).toNat) (A137780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208149.P6201511167175803630

namespace A208149

/-- `record[A136548(A065091(n+1))%A137780(n+1)]` -/
def P6201511167175803630.Spec : Prop :=
  ∀ n, P6201511167175803630.a n = A208149 (n + 1)

end A208149

/-!
# A208153: Convolution triangle based on A006053.

The programs for A208153, the canonical program `A208153.P2855493275335560367` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208153 has offset 0).

The definition of A208153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208153.P2855493275335560367

`T(n-1,k-1)+T(n-1,k)+2*T(n-2,k)-T(row(n)-3, col(n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208153

/-- `T(n-1,k-1)+T(n-1,k)+2*T(n-2,k)-T(row(n)-3, col(n))` -/
def P2855493275335560367.Spec : Prop :=
  ∀ n, P2855493275335560367.a n = A208153 n

theorem P2855493275335560367.correct : P2855493275335560367.Spec := by
  intro n
  simp only [A208153]

end A208153

/-! ## A208153.P16163629382909817792

`T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)-T(row(n)-3, col(n))` with `a(0)=1`
-/

namespace A208153.P16163629382909817792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) (SequenceMachineLib.triCol n : ℤ)

end

end A208153.P16163629382909817792

namespace A208153

/-- `T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)-T(row(n)-3, col(n))` -/
def P16163629382909817792.Spec : Prop :=
  ∀ n, P16163629382909817792.a n = A208153 n

end A208153

/-! ## A208153.P4871964135022088114

`A188107(A061579(n))`
-/

namespace A208153.P4871964135022088114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A061579 n).toNat

end

end A208153.P4871964135022088114

namespace A208153

/-- `A188107(A061579(n))` -/
def P4871964135022088114.Spec : Prop :=
  ∀ n, P4871964135022088114.a n = A208153 n

end A208153

/-! ## A208153.P9244878785918414335

`A188107(A114327(n)+n)`
-/

namespace A208153.P9244878785918414335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A114327 n + (n : ℤ)).toNat

end

end A208153.P9244878785918414335

namespace A208153

/-- `A188107(A114327(n)+n)` -/
def P9244878785918414335.Spec : Prop :=
  ∀ n, P9244878785918414335.a n = A208153 n

end A208153

/-! ## A208153.P18409249910888182874

`A188107(∑[A198954(n)-1])`
-/

namespace A208153.P18409249910888182874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208153.P18409249910888182874

namespace A208153

/-- `A188107(∑[A198954(n)-1])` -/
def P18409249910888182874.Spec : Prop :=
  ∀ n, P18409249910888182874.a n = A208153 n

end A208153

/-! ## A208153.P4104534951776427633

`A188107(A038722(n+1)-1)`
-/

namespace A208153.P4104534951776427633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A038722 (n + 1) - 1).toNat

end

end A208153.P4104534951776427633

namespace A208153

/-- `A188107(A038722(n+1)-1)` -/
def P4104534951776427633.Spec : Prop :=
  ∀ n, P4104534951776427633.a n = A208153 n

end A208153

/-! ## A208153.P1468937257505876108

`A188107(A093995(n+1)-(n+1))`
-/

namespace A208153.P1468937257505876108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A208153.P1468937257505876108

namespace A208153

/-- `A188107(A093995(n+1)-(n+1))` -/
def P1468937257505876108.Spec : Prop :=
  ∀ n, P1468937257505876108.a n = A208153 n

end A208153

/-! ## A208153.P15556486233821302283

`A188107(A002024(n+1)²-(n+1))`
-/

namespace A208153.P15556486233821302283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A208153.P15556486233821302283

namespace A208153

/-- `A188107(A002024(n+1)²-(n+1))` -/
def P15556486233821302283.Spec : Prop :=
  ∀ n, P15556486233821302283.a n = A208153 n

end A208153

/-! ## A208153.P4951978949861428591

`A188107(A038722(n+2))`
-/

namespace A208153.P4951978949861428591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188107 (A038722 (n + 2)).toNat

end

end A208153.P4951978949861428591

namespace A208153

/-- `A188107(A038722(n+2))` -/
def P4951978949861428591.Spec : Prop :=
  ∀ n, P4951978949861428591.a n = A208153 n

end A208153

/-!
# A208154: 6-Knödel numbers.

The programs for A208154, there is no canonical definition to state claims against.
-/

/-! ## A208154.P11504455994571698656

`record[gcd(A005843(n+4), A006863(n+1))]`
-/

namespace A208154.P11504455994571698656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (n + 4)) (A006863 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208154.P11504455994571698656

/-! ## A208154.P3455104272856166012

`record[gcd(A004275(n+5), A079612(2*(n+1)))]`
-/

namespace A208154.P3455104272856166012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004275 (n + 5)) (A079612 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208154.P3455104272856166012

/-! ## A208154.P6883589378525336596

`record[gcd(A065190(n+3)+6, A079612(n+2))]`
-/

namespace A208154.P6883589378525336596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065190 (n + 3) + 6) (A079612 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208154.P6883589378525336596

/-! ## A208154.P17753376079365559871

`A070319(5*A083575(n))-Δ[A243828(3*n+1)]`
-/

namespace A208154.P17753376079365559871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243828 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070319 (5 * A083575 n).toNat - (f1 (n + 1) - f1 n)

end

end A208154.P17753376079365559871

/-! ## A208154.P14010379009452433807

`A070319((n+6)*A003116(n+3))-Δ[A243828(3*n+1)]`
-/

namespace A208154.P14010379009452433807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243828 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070319 ((n + 6 : ℤ) * A003116 (n + 3)).toNat - (f1 (n + 1) - f1 n)

end

end A208154.P14010379009452433807

/-!
# A208155: 7-Knödel numbers.

The programs for A208155, there is no canonical definition to state claims against.
-/

/-! ## A208155.P9529749881242002608

`A007645(n+1)*A008472(A020714(n))`
-/

namespace A208155.P9529749881242002608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) * A008472 (A020714 n).toNat

end

end A208155.P9529749881242002608

/-! ## A208155.P7912275584780507153

`A096651(A000217(n))+7*p?[A047237(n+1)]`
-/

namespace A208155.P7912275584780507153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A000217 n).toNat + 7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208155.P7912275584780507153

/-! ## A208155.P17825382306582584320

`A007645(n+1)*A168093(A271487(2*n+1))`
-/

namespace A208155.P17825382306582584320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) * A168093 (A271487 (2 * n + 1)).toNat

end

end A208155.P17825382306582584320

/-! ## A208155.P17310379518252383875

`∩[A108574(n+1), A276969(n+1)]`
-/

namespace A208155.P17310379518252383875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208155.P17310379518252383875

/-! ## A208155.P4763115913971634838

`A007645(n+1)*A010718(A084161(n))`
-/

namespace A208155.P4763115913971634838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) * A010718 (A084161 n).toNat

end

end A208155.P4763115913971634838

/-!
# A208156: 8-Knödel numbers.

The programs for A208156, there is no canonical definition to state claims against.
-/

/-! ## A208156.P156853100457059910

`record[gcd(A004275(n+7), A079612(2*(n+2)))]`
-/

namespace A208156.P156853100457059910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004275 (n + 7)) (A079612 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208156.P156853100457059910

/-! ## A208156.P5462473860635768166

`A015929(A185284(3*n+4)+n+6)`
-/

namespace A208156.P5462473860635768166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (A185284 (3 * n + 4) + (n + 6 : ℤ)).toNat

end

end A208156.P5462473860635768166

/-! ## A208156.P13325051916279172798

`A015929(A227549(n+1)+6)`
-/

namespace A208156.P13325051916279172798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (A227549 (n + 1) + 6).toNat

end

end A208156.P13325051916279172798

/-! ## A208156.P939605024173242912

`A015929(A020715(n)^A128936(n))`
-/

namespace A208156.P939605024173242912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (SequenceMachineLib.roundAway ((A020715 n : ℚ) ^ (A128936 n : ℤ))).toNat

end

end A208156.P939605024173242912

/-! ## A208156.P2791376041945725699

`A015929(A020715(n)^A250286(n))`
-/

namespace A208156.P2791376041945725699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (SequenceMachineLib.roundAway ((A020715 n : ℚ) ^ (A250286 n : ℤ))).toNat

end

end A208156.P2791376041945725699

/-!
# A208157: 9-Knödel numbers.

The programs for A208157, there is no canonical definition to state claims against.
-/

/-! ## A208157.P4643954849046790430

`A276970(n+6)+C(n, A285356(n+1))`
-/

namespace A208157.P4643954849046790430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276970 (n + 6) + (Nat.choose n (A285356 (n + 1)).toNat : ℤ)

end

end A208157.P4643954849046790430

/-! ## A208157.P12379769985219868393

`A276970(n+6)%or(n, 4*A095275(n))²`
-/

namespace A208157.P12379769985219868393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276970 (n + 6)) (Int.lor (n : ℤ) (4 * A095275 n) ^ 2)

end

end A208157.P12379769985219868393

/-! ## A208157.P5178392985902835576

`A276970(n+6)+A000007(A322115(n))`
-/

namespace A208157.P5178392985902835576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276970 (n + 6) + A000007 (A322115 n).toNat

end

end A208157.P5178392985902835576

/-! ## A208157.P17873149798603946935

`A276970(n+6)+A159075(A322115(n)+1)`
-/

namespace A208157.P17873149798603946935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276970 (n + 6) + A159075 (A322115 n + 1).toNat

end

end A208157.P17873149798603946935

/-! ## A208157.P8467459378285893788

`A276970(n+6)%A022547(A322115(n)+1)`
-/

namespace A208157.P8467459378285893788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276970 (n + 6)) (A022547 (A322115 n + 1).toNat)

end

end A208157.P8467459378285893788

/-! ## A208157.P17204961952680319823

`A276970(n+6)/A072058(A322115(n)+1)%2`
-/

namespace A208157.P17204961952680319823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276970 (n + 6) : ℚ) / (Int.tmod (A072058 (A322115 n + 1).toNat) 2 : ℚ)

end

end A208157.P17204961952680319823

/-! ## A208157.P5739407322180615995

`A276970(n+6)^gcd(A322115(n)+1, A000040(n+2))`
-/

namespace A208157.P5739407322180615995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276970 (n + 6) ^ Int.gcd (A322115 n + 1) (A000040 (n + 2))

end

end A208157.P5739407322180615995

/-! ## A208157.P1099081830582776099

`A276970(A020715(n))%A112130(A082043(n))`
-/

namespace A208157.P1099081830582776099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276970 (A020715 n).toNat) (A112130 (A082043 n).toNat)

end

end A208157.P1099081830582776099

/-! ## A208157.P4666580912461527740

`A001222(A107811(n+1))*A276970(A020715(n))`
-/

namespace A208157.P4666580912461527740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107811 (n + 1)).toNat * A276970 (A020715 n).toNat

end

end A208157.P4666580912461527740

/-! ## A208157.P3970428886155099968

`A064911(A241554(n+1))*A276970(A020715(n))`
-/

namespace A208157.P3970428886155099968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A241554 (n + 1)).toNat * A276970 (A020715 n).toNat

end

end A208157.P3970428886155099968

/-!
# A208158: 10-Knödel numbers.

The programs for A208158, there is no canonical definition to state claims against.
-/

/-! ## A208158.P16496856826813434474

`record[gcd(A005843(n+6), A006863(n+1))]`
-/

namespace A208158.P16496856826813434474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (n + 6)) (A006863 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208158.P16496856826813434474

/-! ## A208158.P501907552986218028

`record[gcd(n+12, A079612(n+2))]`
-/

namespace A208158.P501907552986218028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 12 : ℤ) (A079612 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208158.P501907552986218028

/-!
# A208159: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208159, there is no canonical definition to state claims against.
-/

/-! ## A208159.P14739307706790498091

`A208164((n+1)²+n²)`
-/

namespace A208159.P14739307706790498091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 ((n + 1) ^ 2 + n ^ 2)

end

end A208159.P14739307706790498091

/-! ## A208159.P1201098070282690977

`record[gcd(A008482(n), A208164(n+1))]`
-/

namespace A208159.P1201098070282690977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A208164 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208159.P1201098070282690977

/-! ## A208159.P2114347937321704235

`record[root(A208164(n+1), A072030(n+1))]`
-/

namespace A208159.P2114347937321704235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208164 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208159.P2114347937321704235

/-! ## A208159.P7625911194005540057

`A208164(A001844(n))+A178798(n)`
-/

namespace A208159.P7625911194005540057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A001844 n).toNat + A178798 n

end

end A208159.P7625911194005540057

/-! ## A208159.P4783430729504747021

`A208164(A001844(n))*A262681(n)`
-/

namespace A208159.P4783430729504747021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A001844 n).toNat * A262681 n

end

end A208159.P4783430729504747021

/-!
# A208160: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208160, there is no canonical definition to state claims against.
-/

/-! ## A208160.P5394027648067590394

`A208164(A141214(n+1))`
-/

namespace A208160.P5394027648067590394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A141214 (n + 1)).toNat

end

end A208160.P5394027648067590394

/-! ## A208160.P16108888645333296214

`A208164(A027379(n+2))`
-/

namespace A208160.P16108888645333296214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A027379 (n + 2)).toNat

end

end A208160.P16108888645333296214

/-! ## A208160.P1974605439392661847

`A208164(A055998(n+2))`
-/

namespace A208160.P1974605439392661847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A055998 (n + 2)).toNat

end

end A208160.P1974605439392661847

/-! ## A208160.P2097982271250185446

`A208164(A052905(n+1)+2)`
-/

namespace A208160.P2097982271250185446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 1) + 2).toNat

end

end A208160.P2097982271250185446

/-! ## A208160.P2424852482202115923

`A208164(Δ[A008778(n+1)]-1)`
-/

namespace A208160.P2424852482202115923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (f1 (n + 1) - f1 n - 1).toNat

end

end A208160.P2424852482202115923

/-!
# A208161: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208161, there is no canonical definition to state claims against.
-/

/-! ## A208161.P14834298698131958057

`A208164(A046691(n+3))`
-/

namespace A208161.P14834298698131958057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A046691 (n + 3)).toNat

end

end A208161.P14834298698131958057

/-! ## A208161.P17690691621993316168

`A208164(Δ[A023545(n+1)])`
-/

namespace A208161.P17690691621993316168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (f1 (n + 1) - f1 n).toNat

end

end A208161.P17690691621993316168

/-! ## A208161.P5039433978350361696

`A208164(A052905(n+2)+1)`
-/

namespace A208161.P5039433978350361696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 2) + 1).toNat

end

end A208161.P5039433978350361696

/-! ## A208161.P14132800062171026411

`A208164(A034856(n+4)-2)`
-/

namespace A208161.P14132800062171026411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A034856 (n + 4) - 2).toNat

end

end A208161.P14132800062171026411

/-! ## A208161.P16754242059127229381

`A208164(A246172(n+1)+10)`
-/

namespace A208161.P16754242059127229381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A246172 (n + 1) + 10).toNat

end

end A208161.P16754242059127229381

/-!
# A208162: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208162, there is no canonical definition to state claims against.
-/

/-! ## A208162.P9617741985517989019

`A208164(A052905(n+3))`
-/

namespace A208162.P9617741985517989019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 3)).toNat

end

end A208162.P9617741985517989019

/-! ## A208162.P4086334220580459972

`A208164(A034856(n+5)-3)`
-/

namespace A208162.P4086334220580459972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A034856 (n + 5) - 3).toNat

end

end A208162.P4086334220580459972

/-! ## A208162.P1906727105346716215

`A208164(A000217(n+6)-5)`
-/

namespace A208162.P1906727105346716215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 6) - 5).toNat

end

end A208162.P1906727105346716215

/-! ## A208162.P10008816767167881306

`A208164(A000124(n+6)-6)`
-/

namespace A208162.P10008816767167881306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000124 (n + 6) - 6).toNat

end

end A208162.P10008816767167881306

/-! ## A208162.P17213761280325761722

`A208164(Δ[A023545(n+2)]-1)`
-/

namespace A208162.P17213761280325761722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (f1 (n + 1) - f1 n - 1).toNat

end

end A208162.P17213761280325761722

/-!
# A208163: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208163, there is no canonical definition to state claims against.
-/

/-! ## A208163.P11114054349622363367

`A208164(A046691(n+5)-2)`
-/

namespace A208163.P11114054349622363367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A046691 (n + 5) - 2).toNat

end

end A208163.P11114054349622363367

/-! ## A208163.P590763627513472899

`A208164(A027379(n+5)-3)`
-/

namespace A208163.P590763627513472899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A027379 (n + 5) - 3).toNat

end

end A208163.P590763627513472899

/-! ## A208163.P669074145026468282

`A208164(A000217(n+7)-6)`
-/

namespace A208163.P669074145026468282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 7) - 6).toNat

end

end A208163.P669074145026468282

/-! ## A208163.P15233499270172701085

`A208164(A000124(n+7)-7)`
-/

namespace A208163.P15233499270172701085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000124 (n + 7) - 7).toNat

end

end A208163.P15233499270172701085

/-! ## A208163.P9107400161174547309

`A208164(n+1+A000217(n+6))`
-/

namespace A208163.P9107400161174547309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 ((n + 1 : ℤ) + A000217 (n + 6)).toNat

end

end A208163.P9107400161174547309

/-!
# A208164: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208164, there is no canonical definition to state claims against.
-/

/-! ## A208164.P6954691527081600249

`A207960(n+1)-A185264(A324362(n))`
-/

namespace A208164.P6954691527081600249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (n + 1) - A185264 (A324362 n).toNat

end

end A208164.P6954691527081600249

/-!
# A208165: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208165, there is no canonical definition to state claims against.
-/

/-! ## A208165.P91170935988463686

`A208164(A141214(n)+7)`
-/

namespace A208165.P91170935988463686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A141214 n + 7).toNat

end

end A208165.P91170935988463686

/-! ## A208165.P16460842023568766504

`A208164(A052905(n)+9)`
-/

namespace A208165.P16460842023568766504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 n + 9).toNat

end

end A208165.P16460842023568766504

/-! ## A208165.P4477931944745807329

`A208164(A055999(n)+10)`
-/

namespace A208165.P4477931944745807329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A055999 n + 10).toNat

end

end A208165.P4477931944745807329

/-! ## A208165.P9628065413275718402

`A208164(A167614(n+2)+1)`
-/

namespace A208165.P9628065413275718402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A167614 (n + 2) + 1).toNat

end

end A208165.P9628065413275718402

/-! ## A208165.P9150620428600469706

`A208164(A000217(n+3)+4)`
-/

namespace A208165.P9150620428600469706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 3) + 4).toNat

end

end A208165.P9150620428600469706

/-!
# A208166: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208166, there is no canonical definition to state claims against.
-/

/-! ## A208166.P11657122874109266445

`A208164(A000124(n+4)+4)`
-/

namespace A208166.P11657122874109266445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000124 (n + 4) + 4).toNat

end

end A208166.P11657122874109266445

/-! ## A208166.P15498973837177766924

`A208164(A000217(n+4)+5)`
-/

namespace A208166.P15498973837177766924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 4) + 5).toNat

end

end A208166.P15498973837177766924

/-! ## A208166.P4289373482402180580

`A208164(A027379(n+2)+8)`
-/

namespace A208166.P4289373482402180580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A027379 (n + 2) + 8).toNat

end

end A208166.P4289373482402180580

/-! ## A208166.P6677995474495025813

`A208164(A000096(n+4)-(n-1))`
-/

namespace A208166.P6677995474495025813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A208166.P6677995474495025813

/-! ## A208166.P14993637574324853344

`A208164(A052905(n+3)-(2*n+1))`
-/

namespace A208166.P14993637574324853344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A208166.P14993637574324853344

/-!
# A208167: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208167, there is no canonical definition to state claims against.
-/

/-! ## A208167.P7527835372309861603

`A208164(A000124(n+5)+5)`
-/

namespace A208167.P7527835372309861603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000124 (n + 5) + 5).toNat

end

end A208167.P7527835372309861603

/-! ## A208167.P17846859634506508844

`A208164(A000096(n+4)+7)`
-/

namespace A208167.P17846859634506508844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000096 (n + 4) + 7).toNat

end

end A208167.P17846859634506508844

/-! ## A208167.P15499012947815876315

`A208164(A000217(n+5)+6)`
-/

namespace A208167.P15499012947815876315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 5) + 6).toNat

end

end A208167.P15499012947815876315

/-! ## A208167.P3380305209007773269

`A208164(A052905(n+2)+11)`
-/

namespace A208167.P3380305209007773269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 2) + 11).toNat

end

end A208167.P3380305209007773269

/-! ## A208167.P11340183981966292321

`A208164(Δ[A023545(n+1)]+10)`
-/

namespace A208167.P11340183981966292321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (f1 (n + 1) - f1 n + 10).toNat

end

end A208167.P11340183981966292321

/-!
# A208168: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208168, there is no canonical definition to state claims against.
-/

/-! ## A208168.P10333101812244618451

`A208164(A000217(n+6)+7)`
-/

namespace A208168.P10333101812244618451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A000217 (n + 6) + 7).toNat

end

end A208168.P10333101812244618451

/-! ## A208168.P14651796916609120023

`A208164(A141214(n+3)+10)`
-/

namespace A208168.P14651796916609120023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A141214 (n + 3) + 10).toNat

end

end A208168.P14651796916609120023

/-! ## A208168.P7927583123771931658

`A208164(A161680(n+7)+7)`
-/

namespace A208168.P7927583123771931658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A161680 (n + 7) + 7).toNat

end

end A208168.P7927583123771931658

/-! ## A208168.P5400713729319121317

`A208164(A052905(n+3)+12)`
-/

namespace A208168.P5400713729319121317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A052905 (n + 3) + 12).toNat

end

end A208168.P5400713729319121317

/-! ## A208168.P12136012852952639764

`A208164(A055999(n+3)+13)`
-/

namespace A208168.P12136012852952639764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (A055999 (n + 3) + 13).toNat

end

end A208168.P12136012852952639764

/-!
# A208169: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208169, there is no canonical definition to state claims against.
-/

/-! ## A208169.P1693648280032074133

`A208175((n+1)²+n²)`
-/

namespace A208169.P1693648280032074133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 ((n + 1) ^ 2 + n ^ 2)

end

end A208169.P1693648280032074133

/-!
# A208170: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208170, there is no canonical definition to state claims against.
-/

/-! ## A208170.P7568764380078605608

`A208175(∑[n+2]+4)`
-/

namespace A208170.P7568764380078605608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208170.P7568764380078605608

/-! ## A208170.P10366328256631761540

`A208175(A167614(n+1))+A034512(n+1)`
-/

namespace A208170.P10366328256631761540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A167614 (n + 1)).toNat + A034512 (n + 1)

end

end A208170.P10366328256631761540

/-! ## A208170.P8876078192825884960

`A208175(A167614(n+1))%A208171(n+1)`
-/

namespace A208170.P8876078192825884960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208175 (A167614 (n + 1)).toNat) (A208171 (n + 1))

end

end A208170.P8876078192825884960

/-! ## A208170.P526328664316308531

`or(A208175(A167614(n+1)), A302110(n+1))`
-/

namespace A208170.P526328664316308531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208175 (A167614 (n + 1)).toNat) (A302110 (n + 1))

end

end A208170.P526328664316308531

/-! ## A208170.P13106956357010564478

`A244415(2*n+1)+A208175(A167614(n+1))`
-/

namespace A208170.P13106956357010564478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (2 * n + 1) + A208175 (A167614 (n + 1)).toNat

end

end A208170.P13106956357010564478

/-!
# A208171: Number of nX4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208171, there is no canonical definition to state claims against.
-/

/-! ## A208171.P3755366739039475268

`A208175(A145018(n+4))`
-/

namespace A208171.P3755366739039475268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A145018 (n + 4)).toNat

end

end A208171.P3755366739039475268

/-! ## A208171.P13645988769855295288

`A208175(A141214(n)+7)`
-/

namespace A208171.P13645988769855295288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A141214 n + 7).toNat

end

end A208171.P13645988769855295288

/-! ## A208171.P10089927451479407526

`A208175(A052905(n)+9)`
-/

namespace A208171.P10089927451479407526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A052905 n + 9).toNat

end

end A208171.P10089927451479407526

/-! ## A208171.P12771811590583669443

`A208175(A055999(n)+10)`
-/

namespace A208171.P12771811590583669443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A055999 n + 10).toNat

end

end A208171.P12771811590583669443

/-! ## A208171.P14345025323084061987

`A208175(A167614(n+2)+1)`
-/

namespace A208171.P14345025323084061987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A167614 (n + 2) + 1).toNat

end

end A208171.P14345025323084061987

/-!
# A208172: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208172, there is no canonical definition to state claims against.
-/

/-! ## A208172.P8883540206472918611

`A208175(A374005(n+1))`
-/

namespace A208172.P8883540206472918611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A374005 (n + 1)).toNat

end

end A208172.P8883540206472918611

/-! ## A208172.P16850668168204130094

`A208175(A046691(n+3))`
-/

namespace A208172.P16850668168204130094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (A046691 (n + 3)).toNat

end

end A208172.P16850668168204130094

/-!
# A208174: Number of nX7 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208174, there is no canonical definition to state claims against.
-/

/-! ## A208174.P16208317163771345930

`A208175(eq[6, A193592(n)])`
-/

namespace A208174.P16208317163771345930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208174.P16208317163771345930

/-!
# A208175: T(n,k)=Number of nXk 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208175, there is no canonical definition to state claims against.
-/

/-! ## A208175.P14350501641574908413

`A364728(A208258(n+1))`
-/

namespace A208175.P14350501641574908413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (A208258 (n + 1)).toNat

end

end A208175.P14350501641574908413

/-! ## A208175.P8819093628548144505

`or(A208581(n+1), A261424(Δ[A291482(n)]))`
-/

namespace A208175.P8819093628548144505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208581 (n + 1)) (A261424 (f1 (n + 1) - f1 n).toNat)

end

end A208175.P8819093628548144505

/-! ## A208175.P11964057789273611901

`or(A208581(n+1), A261424(A291482(n+1)-A291482(n)))`
-/

namespace A208175.P11964057789273611901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208581 (n + 1)) (A261424 (A291482 (n + 1) - A291482 n).toNat)

end

end A208175.P11964057789273611901

/-!
# A208176: a(n) = F(n+1)^2, if n>=0 is even (F=A000045) and a(n) = (L(2n+2)+8)/5, if n is odd (L=A000204).

The programs for A208176, the canonical program `A208176.P7450232996244708998` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208176 has offset 0).

The definition of A208176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208176.P1000815750800894298

`ogf((1-5x^2+2x^3)/(1-3x+3x^3-x^4))`
-/

namespace A208176.P1000815750800894298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5, 2] [1, -3, 0, 3, -1] n

end

end A208176.P1000815750800894298

namespace A208176

/-- `ogf((1-5x^2+2x^3)/(1-3x+3x^3-x^4))` -/
def P1000815750800894298.Spec : Prop :=
  ∀ n, P1000815750800894298.a n = A208176 n

end A208176

/-! ## A208176.P7450232996244708998

`A000045(n)²+A000045(n)*A000045(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208176

/-- `A000045(n)²+A000045(n)*A000045(n+1)+1` -/
def P7450232996244708998.Spec : Prop :=
  ∀ n, P7450232996244708998.a n = A208176 n

theorem P7450232996244708998.correct : P7450232996244708998.Spec := by
  intro n
  simp only [A208176]

end A208176

/-! ## A208176.P8313184489686064591

`1+A059929(n)`
-/

namespace A208176.P8313184489686064591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A059929 n

end

end A208176.P8313184489686064591

namespace A208176

/-- `1+A059929(n)` -/
def P8313184489686064591.Spec : Prop :=
  ∀ n, P8313184489686064591.a n = A208176 n

end A208176

/-! ## A208176.P9019274499300491647

`∑[abs(A260259(n))]`
-/

namespace A208176.P9019274499300491647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260259 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208176.P9019274499300491647

namespace A208176

/-- `∑[abs(A260259(n))]` -/
def P9019274499300491647.Spec : Prop :=
  ∀ n, P9019274499300491647.a n = A208176 n

end A208176

/-! ## A208176.P18394532438268344217

`∑[abs(A111569(2*n))]`
-/

namespace A208176.P18394532438268344217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111569 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208176.P18394532438268344217

namespace A208176

/-- `∑[abs(A111569(2*n))]` -/
def P18394532438268344217.Spec : Prop :=
  ∀ n, P18394532438268344217.a n = A208176 n

end A208176

/-! ## A208176.P3800501462998363418

`Δ[A059840(n+1)]+1`
-/

namespace A208176.P3800501462998363418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A208176.P3800501462998363418

namespace A208176

/-- `Δ[A059840(n+1)]+1` -/
def P3800501462998363418.Spec : Prop :=
  ∀ n, P3800501462998363418.a n = A208176 n

end A208176

/-! ## A208176.P10904928616429995707

`A236165(2*(n+1))+1`
-/

namespace A208176.P10904928616429995707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (2 * (n + 1)) + 1

end

end A208176.P10904928616429995707

namespace A208176

/-- `A236165(2*(n+1))+1` -/
def P10904928616429995707.Spec : Prop :=
  ∀ n, P10904928616429995707.a n = A208176 n

end A208176

/-! ## A208176.P10473572508517957620

`A166516(n+1)+and(1, n)`
-/

namespace A208176.P10473572508517957620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 1) + (Nat.land 1 n : ℤ)

end

end A208176.P10473572508517957620

namespace A208176

/-- `A166516(n+1)+and(1, n)` -/
def P10473572508517957620.Spec : Prop :=
  ∀ n, P10473572508517957620.a n = A208176 n

end A208176

/-! ## A208176.P11537938375272447772

`Δ[or(1, n)]+A000045(n+1)²`
-/

namespace A208176.P11537938375272447772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + A000045 (n + 1) ^ 2

end

end A208176.P11537938375272447772

namespace A208176

/-- `Δ[or(1, n)]+A000045(n+1)²` -/
def P11537938375272447772.Spec : Prop :=
  ∀ n, P11537938375272447772.a n = A208176 n

end A208176

/-! ## A208176.P4572980511061171667

`∑[A000045(2*n)-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A208176.P4572980511061171667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000045 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208176.P4572980511061171667

namespace A208176

/-- `∑[A000045(2*n)-a(n-1)]` -/
def P4572980511061171667.Spec : Prop :=
  ∀ n, P4572980511061171667.a n = A208176 n

end A208176

/-! ## A208176.P4276244186930664394

`A000045(Δ[n²])+2-a(n-1)` with `a(0)=1`
-/

namespace A208176.P4276244186930664394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (2 - a (n - 1))

end

end A208176.P4276244186930664394

namespace A208176

/-- `A000045(Δ[n²])+2-a(n-1)` -/
def P4276244186930664394.Spec : Prop :=
  ∀ n, P4276244186930664394.a n = A208176 n

end A208176

/-! ## A208176.P2336251315780110889

`2-(a(n-1)-A000045(2*n+1))` with `a(0)=1`
-/

namespace A208176.P2336251315780110889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - A000045 (2 * n + 1))

end

end A208176.P2336251315780110889

namespace A208176

/-- `2-(a(n-1)-A000045(2*n+1))` -/
def P2336251315780110889.Spec : Prop :=
  ∀ n, P2336251315780110889.a n = A208176 n

end A208176

/-! ## A208176.P13604031974992956645

`A064831(n)+A000034(n)`
-/

namespace A208176.P13604031974992956645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + A000034 n

end

end A208176.P13604031974992956645

namespace A208176

/-- `A064831(n)+A000034(n)` -/
def P13604031974992956645.Spec : Prop :=
  ∀ n, P13604031974992956645.a n = A208176 n

end A208176

/-! ## A208176.P4126367714481253206

`A245306(n)+A001654(n)`
-/

namespace A208176.P4126367714481253206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + A001654 n

end

end A208176.P4126367714481253206

namespace A208176

/-- `A245306(n)+A001654(n)` -/
def P4126367714481253206.Spec : Prop :=
  ∀ n, P4126367714481253206.a n = A208176 n

end A208176

/-! ## A208176.P7887371975213250537

`A001654(n)+A007598(n)+1`
-/

namespace A208176.P7887371975213250537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (A007598 n + 1)

end

end A208176.P7887371975213250537

namespace A208176

/-- `A001654(n)+A007598(n)+1` -/
def P7887371975213250537.Spec : Prop :=
  ∀ n, P7887371975213250537.a n = A208176 n

end A208176

/-! ## A208176.P18305259252262106020

`A010673(n)+A007598(n+1)`
-/

namespace A208176.P18305259252262106020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A007598 (n + 1)

end

end A208176.P18305259252262106020

namespace A208176

/-- `A010673(n)+A007598(n+1)` -/
def P18305259252262106020.Spec : Prop :=
  ∀ n, P18305259252262106020.a n = A208176 n

end A208176

/-! ## A208176.P2186363156224149901

`A000035(n)+A064831(n)+1`
-/

namespace A208176.P2186363156224149901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A064831 n + 1)

end

end A208176.P2186363156224149901

namespace A208176

/-- `A000035(n)+A064831(n)+1` -/
def P2186363156224149901.Spec : Prop :=
  ∀ n, P2186363156224149901.a n = A208176 n

end A208176

/-! ## A208176.P1203126812816557635

`A081714(n)+1-A007598(n)`
-/

namespace A208176.P1203126812816557635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n + (1 - A007598 n)

end

end A208176.P1203126812816557635

namespace A208176

/-- `A081714(n)+1-A007598(n)` -/
def P1203126812816557635.Spec : Prop :=
  ∀ n, P1203126812816557635.a n = A208176 n

end A208176

/-! ## A208176.P12665786215276685000

`A120718(n)+1-A001906(n)`
-/

namespace A208176.P12665786215276685000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + (1 - A001906 n)

end

end A208176.P12665786215276685000

namespace A208176

/-- `A120718(n)+1-A001906(n)` -/
def P12665786215276685000.Spec : Prop :=
  ∀ n, P12665786215276685000.a n = A208176 n

end A208176

/-! ## A208176.P6142204097450288871

`A245306(n)+∑[A000045(n)²]`
-/

namespace A208176.P6142204097450288871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208176.P6142204097450288871

namespace A208176

/-- `A245306(n)+∑[A000045(n)²]` -/
def P6142204097450288871.Spec : Prop :=
  ∀ n, P6142204097450288871.a n = A208176 n

end A208176

/-!
# A208177: Primes of the form 128*k + 1.

The programs for A208177, there is no canonical definition to state claims against.
-/

/-! ## A208177.P12948667186204356568

`∪[A105130(n+1), A208178(n+1)]`
-/

namespace A208177.P12948667186204356568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P12948667186204356568

/-! ## A208177.P16397228350272301377

`∪[A229854(n+1), A229856(n+1)]`
-/

namespace A208177.P16397228350272301377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P16397228350272301377

/-! ## A208177.P7438155736447910586

`∩[A133870(n+1), A157951(n+1)]`
-/

namespace A208177.P7438155736447910586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P7438155736447910586

/-! ## A208177.P1331012141595036580

`∩[A142925(n+1), A157951(n+1)]`
-/

namespace A208177.P1331012141595036580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P1331012141595036580

/-! ## A208177.P13679945326859751368

`∩[A157951(n+1), A209554(n+1)]`
-/

namespace A208177.P13679945326859751368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P13679945326859751368

/-! ## A208177.P14007665034429180738

`∩[A094407(n+1), A157951(n+1)]`
-/

namespace A208177.P14007665034429180738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P14007665034429180738

/-! ## A208177.P17864698207301472321

`∩[A157951(n+1), A214643(n+1)]`
-/

namespace A208177.P17864698207301472321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P17864698207301472321

/-! ## A208177.P363422800787767287

`p?[8*16*n+1]`
-/

namespace A208177.P363422800787767287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (16 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A208177.P363422800787767287

/-! ## A208177.P15590764808589508125

`or(1, p?[A157951(n+1)])`
-/

namespace A208177.P15590764808589508125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A208177.P15590764808589508125

/-! ## A208177.P2483470546593698035

`p?[A157951(n+1)]%A017500(n)`
-/

namespace A208177.P2483470546593698035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017500 n)

end

end A208177.P2483470546593698035

/-! ## A208177.P6707628153097160941

`record[p?[A158071(A000265(n+1)+1)]]`
-/

namespace A208177.P6707628153097160941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A000265 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208177.P6707628153097160941

/-! ## A208177.P2419170466002477381

`∩[A158071(2*(n+1)), A094407(n+2)]`
-/

namespace A208177.P2419170466002477381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P2419170466002477381

/-! ## A208177.P5558857395285103600

`∩[A158071(2*(n+1)), A133870(n+2)]`
-/

namespace A208177.P5558857395285103600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P5558857395285103600

/-! ## A208177.P12616286159742836294

`∩[A158071(2*(n+1)), A209554(n+2)]`
-/

namespace A208177.P12616286159742836294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P12616286159742836294

/-! ## A208177.P11365265145380076289

`∩[8*8*n+A151984(2*(n+1)), A094407(n+2)]`
-/

namespace A208177.P11365265145380076289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (8 * n) : ℤ) + A151984 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P11365265145380076289

/-! ## A208177.P17600824268015870120

`A000027(p?[A157951(n+1)])`
-/

namespace A208177.P17600824268015870120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208177.P17600824268015870120

/-! ## A208177.P13716409286069985751

`∩[A007519(n+1), A157951(n+1)]`
-/

namespace A208177.P13716409286069985751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P13716409286069985751

/-! ## A208177.P9958552468910387345

`∩[A045390(n+1), A157951(n+1)]`
-/

namespace A208177.P9958552468910387345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P9958552468910387345

/-! ## A208177.P1985682480435087312

`∩[A157951(n+1), A209544(n+1)]`
-/

namespace A208177.P1985682480435087312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P1985682480435087312

/-! ## A208177.P5665023422623509922

`∩[A157951(n+1), A172280(n+1)]`
-/

namespace A208177.P5665023422623509922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208177.P5665023422623509922

/-!
# A208178: Primes of the form 256*k + 1.

The programs for A208178, there is no canonical definition to state claims against.
-/

/-! ## A208178.P17758989618714358980

`∪[A076339(n+1), A105131(n+1)]`
-/

namespace A208178.P17758989618714358980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P17758989618714358980

/-! ## A208178.P318623705069261386

`∩[A142925(n+1), A158231(n+1)]`
-/

namespace A208178.P318623705069261386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P318623705069261386

/-! ## A208178.P10928889991872519347

`∩[A158231(n+1), A208177(n+1)]`
-/

namespace A208178.P10928889991872519347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P10928889991872519347

/-! ## A208178.P13765073899942452986

`∩[A133870(n+1), A158231(n+1)]`
-/

namespace A208178.P13765073899942452986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P13765073899942452986

/-! ## A208178.P12738719096021138321

`∩[A158231(n+1), A209554(n+1)]`
-/

namespace A208178.P12738719096021138321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P12738719096021138321

/-! ## A208178.P14918734375901691063

`∩[A157951(2*(n+1)), A133870(n+2)]`
-/

namespace A208178.P14918734375901691063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P14918734375901691063

/-! ## A208178.P3593010015094414509

`∩[A157951(2*(n+1)), A142925(n+2)]`
-/

namespace A208178.P3593010015094414509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P3593010015094414509

/-! ## A208178.P3506900936800607092

`∩[A157951(2*(n+1)), A209554(n+2)]`
-/

namespace A208178.P3506900936800607092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P3506900936800607092

/-! ## A208178.P13962869377009833514

`∩[A094407(n+1), A158231(n+1)]`
-/

namespace A208178.P13962869377009833514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P13962869377009833514

/-! ## A208178.P9637703491102446703

`∩[A157951(2*(n+1)), A094407(n+2)]`
-/

namespace A208178.P9637703491102446703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P9637703491102446703

/-! ## A208178.P13328311364483482582

`∩[A158231(n+1), A214643(n+1)]`
-/

namespace A208178.P13328311364483482582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P13328311364483482582

/-! ## A208178.P16655881780217200051

`p?[8*32*n+1]`
-/

namespace A208178.P16655881780217200051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (32 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A208178.P16655881780217200051

/-! ## A208178.P2425636415178234692

`or(1, p?[A158231(n+1)])`
-/

namespace A208178.P2425636415178234692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A208178.P2425636415178234692

/-! ## A208178.P15341260695724662331

`p?[A158231(n+1)]%A309385(n+1)`
-/

namespace A208178.P15341260695724662331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A309385 (n + 1))

end

end A208178.P15341260695724662331

/-! ## A208178.P4322768458720496420

`A035376(A065380(n+1))+p?[A158231(n+1)]`
-/

namespace A208178.P4322768458720496420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (A065380 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A208178.P4322768458720496420

/-! ## A208178.P4546745832434287984

`A000027(p?[A158231(n+1)])`
-/

namespace A208178.P4546745832434287984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208178.P4546745832434287984

/-! ## A208178.P14535277121692554388

`A000027(p?[A157951(n+2+n)])`
-/

namespace A208178.P14535277121692554388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A208178.P14535277121692554388

/-! ## A208178.P5327739171883518605

`∩[A007519(n+1), A158231(n+1)]`
-/

namespace A208178.P5327739171883518605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208178.P5327739171883518605

/-!
# A208184: Number of distinct n-colored necklaces with 3 beads per color.

The programs for A208184, there is no canonical definition to state claims against.
-/

/-! ## A208184.P8298487646312216541

`A208183(A167614(n+2))`
-/

namespace A208184.P8298487646312216541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A167614 (n + 2)).toNat

end

end A208184.P8298487646312216541

/-! ## A208184.P8463241961187684689

`A208183(A141214(n)+6)`
-/

namespace A208184.P8463241961187684689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A141214 n + 6).toNat

end

end A208184.P8463241961187684689

/-! ## A208184.P7928992236543161916

`A208183(A052905(n)+8)`
-/

namespace A208184.P7928992236543161916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A052905 n + 8).toNat

end

end A208184.P7928992236543161916

/-! ## A208184.P7876030998282189730

`A208183(A055999(n)+9)`
-/

namespace A208184.P7876030998282189730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A055999 n + 9).toNat

end

end A208184.P7876030998282189730

/-! ## A208184.P13112711855590790009

`A208183(eq[3, A002262(n)])`
-/

namespace A208184.P13112711855590790009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208184.P13112711855590790009

/-!
# A208185: Number of distinct n-colored necklaces with 4 beads per color.

The programs for A208185, there is no canonical definition to state claims against.
-/

/-! ## A208185.P13845039062705666333

`A208183(A155212(n)+12)`
-/

namespace A208185.P13845039062705666333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (A155212 n + 12).toNat

end

end A208185.P13845039062705666333

/-! ## A208185.P9400759944590382875

`A208183(eq[4, A002262(n)])`
-/

namespace A208185.P9400759944590382875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208185.P9400759944590382875

/-! ## A208185.P17640562131950651455

`A208183(eq[16, A059268(n)])`
-/

namespace A208185.P17640562131950651455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208185.P17640562131950651455

/-! ## A208185.P1529409132350843681

`A208183(eq[4, A025682(n+1)])`
-/

namespace A208185.P1529409132350843681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208185.P1529409132350843681

/-! ## A208185.P4023612295509849946

`A208183(eq[5, A002260(n+1)])`
-/

namespace A208185.P4023612295509849946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208185.P4023612295509849946

/-!
# A208186: Number of distinct n-colored necklaces with 5 beads per color.

The programs for A208186, there is no canonical definition to state claims against.
-/

/-! ## A208186.P8575883688935093695

`A208183(eq[5, A002262(n)])`
-/

namespace A208186.P8575883688935093695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208186.P8575883688935093695

/-!
# A208187: Number of distinct n-colored necklaces with 6 beads per color.

The programs for A208187, there is no canonical definition to state claims against.
-/

/-! ## A208187.P2115681062688725992

`A208183(eq[6, A002262(n)])`
-/

namespace A208187.P2115681062688725992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208187.P2115681062688725992

/-! ## A208187.P1245623680713702671

`A208183(eq[8, sqrt(A059268(n))])`
-/

namespace A208187.P1245623680713702671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A208187.P1245623680713702671

/-!
# A208188: Number of distinct n-colored necklaces with 7 beads per color.

The programs for A208188, there is no canonical definition to state claims against.
-/

/-! ## A208188.P17060245139282661631

`A208183(eq[7, A002262(n)])`
-/

namespace A208188.P17060245139282661631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208188.P17060245139282661631

/-!
# A208190: Number of distinct 5-colored necklaces with n beads per color.

The programs for A208190, there is no canonical definition to state claims against.
-/

/-! ## A208190.P15308533470552961963

`A208183(eq[5, A025581(n)])`
-/

namespace A208190.P15308533470552961963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208190.P15308533470552961963

/-! ## A208190.P7158026966169038339

`A208183(eq[6, A004736(n+1)])`
-/

namespace A208190.P7158026966169038339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208190.P7158026966169038339

/-!
# A208191: Number of distinct 6-colored necklaces with n beads per color.

The programs for A208191, there is no canonical definition to state claims against.
-/

/-! ## A208191.P2466957215815319525

`A208183(eq[6, A025581(n)])`
-/

namespace A208191.P2466957215815319525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208191.P2466957215815319525

/-! ## A208191.P14117111103151942054

`A208183(eq[4, A219347(n+1)])`
-/

namespace A208191.P14117111103151942054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208191.P14117111103151942054

/-! ## A208191.P7220235792116560552

`A208183(eq[7, A004736(n+1)])`
-/

namespace A208191.P7220235792116560552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208191.P7220235792116560552

/-!
# A208192: Number of distinct 7-colored necklaces with n beads per color.

The programs for A208192, there is no canonical definition to state claims against.
-/

/-! ## A208192.P12533693758021443164

`A208183(eq[7, A025581(n)])`
-/

namespace A208192.P12533693758021443164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208192.P12533693758021443164

/-!
# A208193: Number of distinct 8-colored necklaces with n beads per color.

The programs for A208193, there is no canonical definition to state claims against.
-/

/-! ## A208193.P1034431711618326261

`A208183(eq[8, A025581(n)])`
-/

namespace A208193.P1034431711618326261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208193.P1034431711618326261

/-!
# A208194: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208194, there is no canonical definition to state claims against.
-/

/-! ## A208194.P3159282036474787535

`A208201((n+1)²+n²)`
-/

namespace A208194.P3159282036474787535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 ((n + 1) ^ 2 + n ^ 2)

end

end A208194.P3159282036474787535

/-!
# A208195: Number of n X 2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208195, there is no canonical definition to state claims against.
-/

/-! ## A208195.P14920368091640497400

`ogf((2-22x-12x^2+15x^3+8x^4)/(1-18x+31x^2+66x^3+24x^4))`
-/

namespace A208195.P14920368091640497400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -22, -12, 15, 8] [1, -18, 31, 66, 24] n

end

end A208195.P14920368091640497400

/-! ## A208195.P12993363459491963599

`A208201(∑[n+1]+2)`
-/

namespace A208195.P12993363459491963599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208195.P12993363459491963599

/-! ## A208195.P14077134318217637864

`record[gcd(A002262(n), A208201(n+2))]`
-/

namespace A208195.P14077134318217637864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A208201 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208195.P14077134318217637864

/-! ## A208195.P17648028943370457891

`record[gcd(A092921(n), A208201(n+3))]`
-/

namespace A208195.P17648028943370457891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A208201 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208195.P17648028943370457891

/-! ## A208195.P14854637636315918419

`record[A208201(n+2)/A008969(n+1)]`
-/

namespace A208195.P14854637636315918419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208201 (n + 2) : ℚ) / (A008969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208195.P14854637636315918419

/-!
# A208196: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208196, there is no canonical definition to state claims against.
-/

/-! ## A208196.P10602090477141867302

`A208201(∑[n+2]+4)`
-/

namespace A208196.P10602090477141867302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208196.P10602090477141867302

/-! ## A208196.P15705188270584456979

`lcm(A033999(n), A208201(A167614(n+1)))`
-/

namespace A208196.P15705188270584456979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208201 (A167614 (n + 1)).toNat)

end

end A208196.P15705188270584456979

/-! ## A208196.P14658394756080509413

`or(A000007(n), A208201(A167614(n+1)))`
-/

namespace A208196.P14658394756080509413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208201 (A167614 (n + 1)).toNat)

end

end A208196.P14658394756080509413

/-! ## A208196.P2726654032258937958

`A160338(n+1)*A208201(A167614(n+1))`
-/

namespace A208196.P2726654032258937958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (n + 1) * A208201 (A167614 (n + 1)).toNat

end

end A208196.P2726654032258937958

/-! ## A208196.P11983839031098597615

`A208201(A167614(n+1))%A183787(n+1)`
-/

namespace A208196.P11983839031098597615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208201 (A167614 (n + 1)).toNat) (A183787 (n + 1))

end

end A208196.P11983839031098597615

/-!
# A208197: Number of nX4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208197, there is no canonical definition to state claims against.
-/

/-! ## A208197.P13630123842083333774

`A208201(A141214(n)+7)`
-/

namespace A208197.P13630123842083333774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A141214 n + 7).toNat

end

end A208197.P13630123842083333774

/-! ## A208197.P1653895916368391125

`A208201(A052905(n)+9)`
-/

namespace A208197.P1653895916368391125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A052905 n + 9).toNat

end

end A208197.P1653895916368391125

/-! ## A208197.P7730577289586489464

`A208201(A055999(n)+10)`
-/

namespace A208197.P7730577289586489464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A055999 n + 10).toNat

end

end A208197.P7730577289586489464

/-! ## A208197.P1998462275903417983

`A208201(A167614(n+2)+1)`
-/

namespace A208197.P1998462275903417983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A167614 (n + 2) + 1).toNat

end

end A208197.P1998462275903417983

/-! ## A208197.P9979056825862462078

`A208201(A155212(n)+5)`
-/

namespace A208197.P9979056825862462078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A155212 n + 5).toNat

end

end A208197.P9979056825862462078

/-!
# A208198: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208198, there is no canonical definition to state claims against.
-/

/-! ## A208198.P5699305053865339643

`A208201(A374005(n+1))`
-/

namespace A208198.P5699305053865339643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A374005 (n + 1)).toNat

end

end A208198.P5699305053865339643

/-! ## A208198.P10299986429368541805

`A208201(A167499(n+3))`
-/

namespace A208198.P10299986429368541805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A167499 (n + 3)).toNat

end

end A208198.P10299986429368541805

/-! ## A208198.P642515109590198315

`A208201(Δ[A264443(n)])`
-/

namespace A208198.P642515109590198315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (f1 (n + 1) - f1 n).toNat

end

end A208198.P642515109590198315

/-! ## A208198.P12505250683898564895

`A208201(Δ[A023545(n+1)])`
-/

namespace A208198.P12505250683898564895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (f1 (n + 1) - f1 n).toNat

end

end A208198.P12505250683898564895

/-! ## A208198.P11775537167737675854

`A208201(A000124(n+5)-5)`
-/

namespace A208198.P11775537167737675854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208201 (A000124 (n + 5) - 5).toNat

end

end A208198.P11775537167737675854

