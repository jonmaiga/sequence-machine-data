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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A203800: a(n) = (1/n) * Sum_{d|n} moebius(n/d) * Lucas(d)^(d-1), where Lucas(n) = A000032(n).

The programs for A203800, there is no canonical definition to state claims against.
-/

/-! ## A203800.P9409921187644118767

`A144502(n)+A013928(A241999(n))`
-/

namespace A203800.P9409921187644118767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n + A013928 (A241999 n).toNat

end

end A203800.P9409921187644118767

/-!
# A203801: G.f.: Product_{n>=1} (1 + Lucas(n)*x^n + (-1)^n*x^(2*n)) where Lucas(n) = A000204(n).

The programs for A203801, there is no canonical definition to state claims against.
-/

/-! ## A203801.P9063186538376076868

`A326966(A285290(n)+1)`
-/

namespace A203801.P9063186538376076868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326966 (A285290 n + 1).toNat

end

end A203801.P9063186538376076868

/-! ## A203801.P2819624634347875463

`xor(A005811(A020047(n)), A027934(n))`
-/

namespace A203801.P2819624634347875463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005811 (A020047 n).toNat) (A027934 n)

end

end A203801.P2819624634347875463

/-! ## A203801.P2753271623035035262

`A329559(A323227(n)-A304038(n+1))`
-/

namespace A203801.P2753271623035035262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (A323227 n - A304038 (n + 1)).toNat

end

end A203801.P2753271623035035262

/-!
# A203803: G.f.: exp( Sum_{n>=1} A000204(n)^3 * x^n/n ) where A000204 is the Lucas numbers.

The programs for A203803, there is no canonical definition to state claims against.
-/

/-! ## A203803.P3033363034610269399

`A178933(n)+A091319(A072880(n+2))`
-/

namespace A203803.P3033363034610269399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178933 n + A091319 (A072880 (n + 2)).toNat

end

end A203803.P3033363034610269399

/-!
# A203804: G.f.: exp( Sum_{n>=1} A000204(n)^4 * x^n/n ) where A000204 is the Lucas numbers.

The programs for A203804, there is no canonical definition to state claims against.
-/

/-! ## A203804.P7072686164882825613

`A004526(2*A205797(n))`
-/

namespace A203804.P7072686164882825613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A205797 n).toNat

end

end A203804.P7072686164882825613

/-!
# A203811: Denominators of s(i) = s(i-1) - (1/i)*sign(s(i-1)) with s(1) = 1.

The programs for A203811, there is no canonical definition to state claims against.
-/

/-! ## A203811.P15512109934877932411

`gcd(A058312(n+1), A103931(A242474(n+1)))`
-/

namespace A203811.P15512109934877932411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058312 (n + 1)) (A103931 (A242474 (n + 1)).toNat)

end

end A203811.P15512109934877932411

/-! ## A203811.P8838109610876472028

`gcd(A058312(A351374(n+1)), A103931(n+1))`
-/

namespace A203811.P8838109610876472028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058312 (A351374 (n + 1)).toNat) (A103931 (n + 1))

end

end A203811.P8838109610876472028

/-! ## A203811.P7662520957617117690

`lcm(A081604(A000569(n+1)), A232090(n+1))`
-/

namespace A203811.P7662520957617117690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081604 (A000569 (n + 1)).toNat) (A232090 (n + 1))

end

end A203811.P7662520957617117690

/-! ## A203811.P1394903934572870126

`gcd(A002805(n+1)², A058312(A242474(n+1)))`
-/

namespace A203811.P1394903934572870126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (n + 1) ^ 2) (A058312 (A242474 (n + 1)).toNat)

end

end A203811.P1394903934572870126

/-! ## A203811.P8452031883421370868

`A058312(A242474(n+1))/A142992(A213711(n))`
-/

namespace A203811.P8452031883421370868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (A242474 (n + 1)).toNat : ℚ) / (A142992 (A213711 n).toNat : ℚ)

end

end A203811.P8452031883421370868

/-!
# A203812: Numbers n where abs(s(n)) produces a new minimum, with s(1) = 1 and s(i) = s(i-1) - sign(s(i-1))*(1/i).

The programs for A203812, there is no canonical definition to state claims against.
-/

/-! ## A203812.P10540696244919690256

`∑[A304181(∏[A349976(n)])]`
-/

namespace A203812.P10540696244919690256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349976 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203812.P10540696244919690256

/-! ## A203812.P17702036709900706054

`∑[∏[A111616(A174099(n+1))]]`
-/

namespace A203812.P17702036709900706054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A174099 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203812.P17702036709900706054

/-! ## A203812.P7210964368747291400

`∑[∏[A353742(A080646(3*n+5))]]`
-/

namespace A203812.P7210964368747291400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (A080646 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203812.P7210964368747291400

/-! ## A203812.P1640938971360267656

`∑[A151659(A287893(A130084(n+1)))]`
-/

namespace A203812.P1640938971360267656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151659 (A287893 (A130084 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203812.P1640938971360267656

/-! ## A203812.P7688866127383318357

`∑[∏[A270641(A140753(n+1))]]`
-/

namespace A203812.P7688866127383318357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270641 (A140753 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203812.P7688866127383318357

/-!
# A203818: Number of (n+1) X (n+1) 0..3 arrays with no 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203818, there is no canonical definition to state claims against.
-/

/-! ## A203818.P7117731641656811844

`A203826((n+1)²+n²)`
-/

namespace A203818.P7117731641656811844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 ((n + 1) ^ 2 + n ^ 2)

end

end A203818.P7117731641656811844

/-!
# A203819: Number of (n+1)X2 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203819, the canonical program `A203819.P15921634918125586566` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203819 has offset 1).

The definition of A203819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203819.P15921634918125586566

`(12*3^n)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203819

/-- `(12*3^n)²` -/
def P15921634918125586566.Spec : Prop :=
  ∀ n, (P15921634918125586566.a n : ℤ) = A203819 (n + 1)

theorem P15921634918125586566.correct : P15921634918125586566.Spec := by
  intro n
  simp only [A203819, Nat.add_sub_cancel]

end A203819

/-! ## A203819.P3315011111607497716

`Δ[ogf(18/(1-9x))]`
-/

namespace A203819.P3315011111607497716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18] [1, -9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P3315011111607497716

namespace A203819

/-- `Δ[ogf(18/(1-9x))]` -/
def P3315011111607497716.Spec : Prop :=
  ∀ n, P3315011111607497716.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P8083338604109757383

`lcm(16, 9^(n+1))`
-/

namespace A203819.P8083338604109757383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 16 (9 ^ (n + 1))

end

end A203819.P8083338604109757383

namespace A203819

/-- `lcm(16, 9^(n+1))` -/
def P8083338604109757383.Spec : Prop :=
  ∀ n, (P8083338604109757383.a n : ℤ) = A203819 (n + 1)

end A203819

/-! ## A203819.P17875811132400966644

`9*a(n-1)` with `a(0)=144`
-/

namespace A203819.P17875811132400966644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [144] fun n a =>
  9 * a (n - 1)

end

end A203819.P17875811132400966644

namespace A203819

/-- `9*a(n-1)` -/
def P17875811132400966644.Spec : Prop :=
  ∀ n, (P17875811132400966644.a n : ℤ) = A203819 (n + 1)

theorem P17875811132400966644.correct : P17875811132400966644.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A203819, Nat.add_sub_cancel, A203819.P17875811132400966644.a, A203819.P15921634918125586566.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A203819, Nat.add_sub_cancel, A203819.P17875811132400966644.a, A203819.P15921634918125586566.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A203819

/-! ## A203819.P6673837916784959891

`Δ[lcm(12, floor(3/2*9^n))]`
-/

namespace A203819.P6673837916784959891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 ⌊(3 : ℚ) / 2 * (9 ^ n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203819.P6673837916784959891

namespace A203819

/-- `Δ[lcm(12, floor(3/2*9^n))]` -/
def P6673837916784959891.Spec : Prop :=
  ∀ n, P6673837916784959891.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P8280072080763294074

`48*A013708(n)`
-/

namespace A203819.P8280072080763294074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A013708 n

end

end A203819.P8280072080763294074

namespace A203819

/-- `48*A013708(n)` -/
def P8280072080763294074.Spec : Prop :=
  ∀ n, P8280072080763294074.a n = A203819 (n + 1)

theorem P8280072080763294074.correct : P8280072080763294074.Spec := by
  intro n
  simp only [A203819, Nat.add_sub_cancel, A203819.P8280072080763294074.a, A203819.P15921634918125586566.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203819

/-! ## A203819.P7278467619295247178

`Δ[A198859(n+1)]`
-/

namespace A203819.P7278467619295247178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P7278467619295247178

namespace A203819

/-- `Δ[A198859(n+1)]` -/
def P7278467619295247178.Spec : Prop :=
  ∀ n, P7278467619295247178.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P17676022861835331749

`Δ[3*A198963(n)]`
-/

namespace A203819.P17676022861835331749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P17676022861835331749

namespace A203819

/-- `Δ[3*A198963(n)]` -/
def P17676022861835331749.Spec : Prop :=
  ∀ n, P17676022861835331749.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P11427773244041135841

`Δ[6*A198960(n)]`
-/

namespace A203819.P11427773244041135841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P11427773244041135841

namespace A203819

/-- `Δ[6*A198960(n)]` -/
def P11427773244041135841.Spec : Prop :=
  ∀ n, P11427773244041135841.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P15636709073031749047

`Δ[18*A001019(n)]`
-/

namespace A203819.P15636709073031749047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P15636709073031749047

namespace A203819

/-- `Δ[18*A001019(n)]` -/
def P15636709073031749047.Spec : Prop :=
  ∀ n, P15636709073031749047.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P2028473909703734617

`Δ[18*A253212(n)]`
-/

namespace A203819.P2028473909703734617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A253212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P2028473909703734617

namespace A203819

/-- `Δ[18*A253212(n)]` -/
def P2028473909703734617.Spec : Prop :=
  ∀ n, P2028473909703734617.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P5020256973833281871

`A183355(2*(n+1))`
-/

namespace A203819.P5020256973833281871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183355 (2 * (n + 1))

end

end A203819.P5020256973833281871

namespace A203819

/-- `A183355(2*(n+1))` -/
def P5020256973833281871.Spec : Prop :=
  ∀ n, P5020256973833281871.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P9410803939128933294

`2*A055275(n+2)`
-/

namespace A203819.P9410803939128933294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055275 (n + 2)

end

end A203819.P9410803939128933294

namespace A203819

/-- `2*A055275(n+2)` -/
def P9410803939128933294.Spec : Prop :=
  ∀ n, P9410803939128933294.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P12650280944876090694

`A188825(2*(n+2))`
-/

namespace A203819.P12650280944876090694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188825 (2 * (n + 2))

end

end A203819.P12650280944876090694

namespace A203819

/-- `A188825(2*(n+2))` -/
def P12650280944876090694.Spec : Prop :=
  ∀ n, P12650280944876090694.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P6919304683992117748

`A257970(2*(n+3))`
-/

namespace A203819.P6919304683992117748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (2 * (n + 3))

end

end A203819.P6919304683992117748

namespace A203819

/-- `A257970(2*(n+3))` -/
def P6919304683992117748.Spec : Prop :=
  ∀ n, P6919304683992117748.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P7386039351521710805

`4*A270473(n+2)`
-/

namespace A203819.P7386039351521710805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A270473 (n + 2)

end

end A203819.P7386039351521710805

namespace A203819

/-- `4*A270473(n+2)` -/
def P7386039351521710805.Spec : Prop :=
  ∀ n, P7386039351521710805.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P520222549873572058

`16*A001019(n+1)`
-/

namespace A203819.P520222549873572058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001019 (n + 1)

end

end A203819.P520222549873572058

namespace A203819

/-- `16*A001019(n+1)` -/
def P520222549873572058.Spec : Prop :=
  ∀ n, P520222549873572058.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P11967134630903927135

`36*A228879(4*n)`
-/

namespace A203819.P11967134630903927135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A228879 (4 * n)

end

end A203819.P11967134630903927135

namespace A203819

/-- `36*A228879(4*n)` -/
def P11967134630903927135.Spec : Prop :=
  ∀ n, P11967134630903927135.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P6422259247031947528

`record[A162766(n+3)²]`
-/

namespace A203819.P6422259247031947528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162766 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203819.P6422259247031947528

namespace A203819

/-- `record[A162766(n+3)²]` -/
def P6422259247031947528.Spec : Prop :=
  ∀ n, P6422259247031947528.a n = A203819 (n + 1)

end A203819

/-! ## A203819.P7383478668633169816

`Δ[A008776(2*(n+1))]`
-/

namespace A203819.P7383478668633169816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203819.P7383478668633169816

namespace A203819

/-- `Δ[A008776(2*(n+1))]` -/
def P7383478668633169816.Spec : Prop :=
  ∀ n, P7383478668633169816.a n = A203819 (n + 1)

theorem P7383478668633169816.correct : P7383478668633169816.Spec := by
  intro n
  simp only [A203819, Nat.add_sub_cancel, A203819.P7383478668633169816.f1, A203819.P7383478668633169816.a, A203819.P15921634918125586566.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203819

/-!
# A203820: Number of (n+1)X3 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203820, there is no canonical definition to state claims against.
-/

/-! ## A203820.P16125682946136263939

`24*(A203872(n+1)-1)`
-/

namespace A203820.P16125682946136263939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A203872 (n + 1) - 1)

end

end A203820.P16125682946136263939

/-! ## A203820.P2982849198933292069

`(6*root(A009965(n), 4))²²`
-/

namespace A203820.P2982849198933292069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 * (A009965 n : ℝ) ^ (1 / (4 : ℝ))) ^ 2) ^ 2

end

end A203820.P2982849198933292069

/-! ## A203820.P5827285156045512305

`sqrt(A203819(n+1))*sqrt(A203821(n+1))`
-/

namespace A203820.P5827285156045512305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203819 (n + 1) : ℝ) * Real.sqrt (A203821 (n + 1) : ℝ)

end

end A203820.P5827285156045512305

/-! ## A203820.P6396062257111842076

`sqrt(A203819(n+1)*A203821(n+1))`
-/

namespace A203820.P6396062257111842076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203819 (n + 1) * A203821 (n + 1) : ℝ)

end

end A203820.P6396062257111842076

/-! ## A203820.P11294506645420254824

`A203826(∑[n+1]+2)`
-/

namespace A203820.P11294506645420254824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203820.P11294506645420254824

/-!
# A203821: Number of (n+1)X4 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203821, there is no canonical definition to state claims against.
-/

/-! ## A203821.P16291987693571201515

`(9*12*7^n)²`
-/

namespace A203821.P16291987693571201515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * (12 * 7 ^ n)) ^ 2

end

end A203821.P16291987693571201515

/-! ## A203821.P6350142811488823841

`4*Δ[A198690(n)]²`
-/

namespace A203821.P6350142811488823841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n) ^ 2

end

end A203821.P6350142811488823841

/-! ## A203821.P12731271097115501938

`Δ[A203873(n+1)/2]`
-/

namespace A203821.P12731271097115501938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203873 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203821.P12731271097115501938

/-! ## A203821.P7149648331680131207

`Δ[18*A233078(n+1)]`
-/

namespace A203821.P7149648331680131207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A233078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203821.P7149648331680131207

/-! ## A203821.P2142340085388863149

`A203820(n+1)/A203819(n+1)*A203820(n+1)`
-/

namespace A203821.P2142340085388863149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203820 (n + 1) : ℚ) / (A203819 (n + 1) : ℚ) * (A203820 (n + 1) : ℚ)

end

end A203821.P2142340085388863149

/-!
# A203822: Number of (n+1) X 5 0..3 arrays with no 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203822, there is no canonical definition to state claims against.
-/

/-! ## A203822.P15363157278772244720

`A203826(A141214(n)+7)`
-/

namespace A203822.P15363157278772244720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A141214 n + 7).toNat

end

end A203822.P15363157278772244720

/-! ## A203822.P4976794222316030458

`A203826(A167614(n+2)+1)`
-/

namespace A203822.P4976794222316030458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A167614 (n + 2) + 1).toNat

end

end A203822.P4976794222316030458

/-! ## A203822.P14888524233797788533

`A203826(A056000(n)+7)`
-/

namespace A203822.P14888524233797788533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A056000 n + 7).toNat

end

end A203822.P14888524233797788533

/-! ## A203822.P17196265751920221766

`A203826(eq[3, A193592(n)])`
-/

namespace A203822.P17196265751920221766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203822.P17196265751920221766

/-!
# A203823: Number of (n+1)X6 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203823, there is no canonical definition to state claims against.
-/

/-! ## A203823.P14340168440969578341

`A203826(A374005(n+1))`
-/

namespace A203823.P14340168440969578341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A374005 (n + 1)).toNat

end

end A203823.P14340168440969578341

/-! ## A203823.P7338836454195178297

`A203826(A155212(n)+13)`
-/

namespace A203823.P7338836454195178297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A155212 n + 13).toNat

end

end A203823.P7338836454195178297

/-! ## A203823.P8486922793615322177

`A203826(A056000(n)+15)`
-/

namespace A203823.P8486922793615322177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A056000 n + 15).toNat

end

end A203823.P8486922793615322177

/-! ## A203823.P11419228913764070490

`A203826(eq[4, A193592(n)])`
-/

namespace A203823.P11419228913764070490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203823.P11419228913764070490

/-! ## A203823.P3935385589639165358

`A203826(Δ[A023545(n+1)])`
-/

namespace A203823.P3935385589639165358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (f1 (n + 1) - f1 n).toNat

end

end A203823.P3935385589639165358

/-!
# A203824: 

The programs for A203824, there is no canonical definition to state claims against.
-/

/-! ## A203824.P4687698541183074858

`A203826(eq[5, A193592(n)])`
-/

namespace A203824.P4687698541183074858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203824.P4687698541183074858

/-! ## A203824.P2295515672209713963

`A203826(A055999(n+3)+A000041(floor(1/(n+1))))`
-/

namespace A203824.P2295515672209713963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (A055999 (n + 3) + A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A203824.P2295515672209713963

/-!
# A203825: 

The programs for A203825, there is no canonical definition to state claims against.
-/

/-! ## A203825.P9107938940395692898

`A203826(eq[6, A193592(n)])`
-/

namespace A203825.P9107938940395692898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203825.P9107938940395692898

/-!
# A203826: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203826, there is no canonical definition to state claims against.
-/

/-! ## A203826.P10256373665783696523

`24*(A203878(n+1)-1)`
-/

namespace A203826.P10256373665783696523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A203878 (n + 1) - 1)

end

end A203826.P10256373665783696523

/-! ## A203826.P3635269185948797741

`8*A047238(A203878(n+1))`
-/

namespace A203826.P3635269185948797741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A047238 (A203878 (n + 1)).toNat

end

end A203826.P3635269185948797741

/-! ## A203826.P7838894605784633619

`A135659(A203878(n+1))-A135659(A121391(n))`
-/

namespace A203826.P7838894605784633619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A203878 (n + 1)).toNat - A135659 (A121391 n).toNat

end

end A203826.P7838894605784633619

/-!
# A203827: Table of coefficients of up-down polynomials P_n(m) = Sum_{i=0..floor(log_2(2n))} binomial(m,i).

The programs for A203827, there is no canonical definition to state claims against.
-/

/-! ## A203827.P17467586158188300897

`A163538(∑[A322999(n)+6])`
-/

namespace A203827.P17467586158188300897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322999 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203827.P17467586158188300897

/-! ## A203827.P8082675963902222060

`A166282(record[A048621(A102450(n+1))])`
-/

namespace A203827.P8082675963902222060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A102450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203827.P8082675963902222060

/-! ## A203827.P1542737444673077935

`A138019(A281375(n+1))^A053639(3*n+4)`
-/

namespace A203827.P1542737444673077935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138019 (A281375 (n + 1)).toNat : ℚ) ^ (A053639 (3 * n + 4) : ℤ)

end

end A203827.P1542737444673077935

/-! ## A203827.P9408834518151192383

`A118229(lt[A245790(n), A176230(3*n)])`
-/

namespace A203827.P9408834518151192383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A203827.P9408834518151192383

/-! ## A203827.P16450014242219159896

`A054354(or(A007384(3*n+2), A257340(2*n+1)))`
-/

namespace A203827.P16450014242219159896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (Int.lor (A007384 (3 * n + 2)) (A257340 (2 * n + 1))).toNat

end

end A203827.P16450014242219159896

/-!
# A203828: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203828, there is no canonical definition to state claims against.
-/

/-! ## A203828.P4388776859463367772

`3*A223203(n+2)`
-/

namespace A203828.P4388776859463367772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223203 (n + 2)

end

end A203828.P4388776859463367772

/-! ## A203828.P14147728747655924406

`A203835((n+1)²+n²)`
-/

namespace A203828.P14147728747655924406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 ((n + 1) ^ 2 + n ^ 2)

end

end A203828.P14147728747655924406

/-!
# A203829: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203829, the canonical program `A203829.P4022856505637105064` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203829 has offset 1).

The definition of A203829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203829.P4022856505637105064

`3*A223204(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203829

/-- `3*A223204(n+2)` -/
def P4022856505637105064.Spec : Prop :=
  ∀ n, P4022856505637105064.a n = A203829 (n + 1)

theorem P4022856505637105064.correct : P4022856505637105064.Spec := by
  intro n
  simp only [A203829, Nat.add_sub_cancel]

end A203829

/-! ## A203829.P12801950652275656510

`6*A204070(n+1)-3`
-/

namespace A203829.P12801950652275656510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A204070 (n + 1) - 3

end

end A203829.P12801950652275656510

namespace A203829

/-- `6*A204070(n+1)-3` -/
def P12801950652275656510.Spec : Prop :=
  ∀ n, P12801950652275656510.a n = A203829 (n + 1)

end A203829

/-! ## A203829.P17533315279683517608

`Δ[A204070(n+1)-A223204(n+1)]`
-/

namespace A203829.P17533315279683517608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204070 (n + 1) - A223204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203829.P17533315279683517608

namespace A203829

/-- `Δ[A204070(n+1)-A223204(n+1)]` -/
def P17533315279683517608.Spec : Prop :=
  ∀ n, P17533315279683517608.a n = A203829 (n + 1)

end A203829

/-! ## A203829.P11930093209087454859

`Δ[A223204(n+2)/2-A223204(n+1)]`
-/

namespace A203829.P11930093209087454859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223204 (n + 2) : ℚ) / 2 - (A223204 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203829.P11930093209087454859

namespace A203829

/-- `Δ[A223204(n+2)/2-A223204(n+1)]` -/
def P11930093209087454859.Spec : Prop :=
  ∀ n, P11930093209087454859.a n = (A203829 (n + 1) : ℚ)

end A203829

/-! ## A203829.P4489456499087647773

`6*A204076(A167499(n)-3)-3`
-/

namespace A203829.P4489456499087647773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A204076 (A167499 n - 3).toNat - 3

end

end A203829.P4489456499087647773

namespace A203829

/-- `6*A204076(A167499(n)-3)-3` -/
def P4489456499087647773.Spec : Prop :=
  ∀ n, P4489456499087647773.a n = A203829 (n + 1)

end A203829

/-!
# A203830: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203830, there is no canonical definition to state claims against.
-/

/-! ## A203830.P8677991208295847369

`3*A223205(n+2)`
-/

namespace A203830.P8677991208295847369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223205 (n + 2)

end

end A203830.P8677991208295847369

/-! ## A203830.P10104086107694407307

`A203835(∑[n+2]+4)`
-/

namespace A203830.P10104086107694407307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203830.P10104086107694407307

/-! ## A203830.P9069250220266054654

`lcm(3, A203835(A167614(n+1)))`
-/

namespace A203830.P9069250220266054654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A203835 (A167614 (n + 1)).toNat)

end

end A203830.P9069250220266054654

/-! ## A203830.P13392892194420969306

`or(A000007(n), A203835(A167614(n+1)))`
-/

namespace A203830.P13392892194420969306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A203835 (A167614 (n + 1)).toNat)

end

end A203830.P13392892194420969306

/-! ## A203830.P2155638932723146193

`or(A000035(n), A203835(A167614(n+1)))`
-/

namespace A203830.P2155638932723146193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A203835 (A167614 (n + 1)).toNat)

end

end A203830.P2155638932723146193

/-!
# A203831: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203831, there is no canonical definition to state claims against.
-/

/-! ## A203831.P16066852852387588456

`3*A223206(n+2)`
-/

namespace A203831.P16066852852387588456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223206 (n + 2)

end

end A203831.P16066852852387588456

/-! ## A203831.P9602118916117733825

`A203835(A374004(n+1))`
-/

namespace A203831.P9602118916117733825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A374004 (n + 1)).toNat

end

end A203831.P9602118916117733825

/-! ## A203831.P9856803801230124318

`A203835(A052905(n)+9)`
-/

namespace A203831.P9856803801230124318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A052905 n + 9).toNat

end

end A203831.P9856803801230124318

/-! ## A203831.P16723695853105687369

`A203835(A167614(n+2)+1)`
-/

namespace A203831.P16723695853105687369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A167614 (n + 2) + 1).toNat

end

end A203831.P16723695853105687369

/-! ## A203831.P8688573951788361502

`A203835(Δ[A264443(n)-n²])`
-/

namespace A203831.P8688573951788361502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (f1 (n + 1) - f1 n).toNat

end

end A203831.P8688573951788361502

/-!
# A203832: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203832, there is no canonical definition to state claims against.
-/

/-! ## A203832.P9455571919790705808

`3*A223207(n+2)`
-/

namespace A203832.P9455571919790705808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223207 (n + 2)

end

end A203832.P9455571919790705808

/-! ## A203832.P18133715120890142051

`A203835(A374005(n+1))`
-/

namespace A203832.P18133715120890142051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A374005 (n + 1)).toNat

end

end A203832.P18133715120890142051

/-! ## A203832.P14997822534906712032

`A203835(A167499(n+3))`
-/

namespace A203832.P14997822534906712032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A167499 (n + 3)).toNat

end

end A203832.P14997822534906712032

/-! ## A203832.P16625154445326241478

`A203835(Δ[A264443(n)])`
-/

namespace A203832.P16625154445326241478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (f1 (n + 1) - f1 n).toNat

end

end A203832.P16625154445326241478

/-! ## A203832.P5060803814650271948

`A203835(Δ[A023545(n+1)])`
-/

namespace A203832.P5060803814650271948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (f1 (n + 1) - f1 n).toNat

end

end A203832.P5060803814650271948

/-!
# A203833: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203833, there is no canonical definition to state claims against.
-/

/-! ## A203833.P13561501278206229975

`3*A223208(n+2)`
-/

namespace A203833.P13561501278206229975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223208 (n + 2)

end

end A203833.P13561501278206229975

/-! ## A203833.P16102892860467433168

`A203835(A374007(n+1))`
-/

namespace A203833.P16102892860467433168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A374007 (n + 1)).toNat

end

end A203833.P16102892860467433168

/-! ## A203833.P17309875224235030581

`A203835(Δ[A264443(n+1)]-1)`
-/

namespace A203833.P17309875224235030581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (f1 (n + 1) - f1 n - 1).toNat

end

end A203833.P17309875224235030581

/-!
# A203834: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203834, there is no canonical definition to state claims against.
-/

/-! ## A203834.P4026997651852277943

`A203835(A374008(n+1))`
-/

namespace A203834.P4026997651852277943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A374008 (n + 1)).toNat

end

end A203834.P4026997651852277943

/-! ## A203834.P15795152000762874758

`A203835(A000096(n+5)+8)`
-/

namespace A203834.P15795152000762874758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A000096 (n + 5) + 8).toNat

end

end A203834.P15795152000762874758

/-! ## A203834.P12709388374457526652

`A203835(A055999(n+4))`
-/

namespace A203834.P12709388374457526652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203835 (A055999 (n + 4)).toNat

end

end A203834.P12709388374457526652

/-!
# A203835: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203835, there is no canonical definition to state claims against.
-/

/-! ## A203835.P6976049606559984175

`6*A204076(n+1)-3`
-/

namespace A203835.P6976049606559984175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A204076 (n + 1) - 3

end

end A203835.P6976049606559984175

/-! ## A203835.P8620209983457017811

`A270545(A204076(n+1))`
-/

namespace A203835.P8620209983457017811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 (A204076 (n + 1)).toNat

end

end A203835.P8620209983457017811

/-! ## A203835.P4904651345887609901

`A016945(A204076(n+1)-1)`
-/

namespace A203835.P4904651345887609901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A204076 (n + 1) - 1).toNat

end

end A203835.P4904651345887609901

/-! ## A203835.P4722732389349730945

`A047241(2*A204076(n+1))`
-/

namespace A203835.P4722732389349730945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (2 * A204076 (n + 1)).toNat

end

end A203835.P4722732389349730945

/-! ## A203835.P3546179838664388165

`A047243(2*A204076(n+1))`
-/

namespace A203835.P3546179838664388165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (2 * A204076 (n + 1)).toNat

end

end A203835.P3546179838664388165

/-!
# A203836: Smallest sum s of two consecutive primes such that s = 0 mod prime(n).

The programs for A203836, there is no canonical definition to state claims against.
-/

/-! ## A203836.P8155026666532873714

`A247245(A000040(n+1))`
-/

namespace A203836.P8155026666532873714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A000040 (n + 1)).toNat

end

end A203836.P8155026666532873714

/-! ## A203836.P5260760884127366541

`A247245(A161847(n+1))`
-/

namespace A203836.P5260760884127366541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A161847 (n + 1)).toNat

end

end A203836.P5260760884127366541

/-! ## A203836.P13360752002338039785

`A247245(A008578(n+2))`
-/

namespace A203836.P13360752002338039785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A008578 (n + 2)).toNat

end

end A203836.P13360752002338039785

/-! ## A203836.P13954196560403688627

`A247245(A182986(n+2))`
-/

namespace A203836.P13954196560403688627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A182986 (n + 2)).toNat

end

end A203836.P13954196560403688627

/-! ## A203836.P17098415187576820214

`A247245(record[A093074(n+1)])`
-/

namespace A203836.P17098415187576820214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203836.P17098415187576820214

/-! ## A203836.P11995344073158069268

`A247245(record[A006530(n+2)])`
-/

namespace A203836.P11995344073158069268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203836.P11995344073158069268

/-! ## A203836.P7304346248011833340

`A247245(record[A014963(n+2)])`
-/

namespace A203836.P7304346248011833340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203836.P7304346248011833340

/-! ## A203836.P16152984099131352728

`A247245(record[A020639(n+2)])`
-/

namespace A203836.P16152984099131352728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203836.P16152984099131352728

/-! ## A203836.P17219652690795039895

`A247245(A014692(n+1)+n)`
-/

namespace A203836.P17219652690795039895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A203836.P17219652690795039895

/-! ## A203836.P16821995677276852199

`A247245(eq[n+1, A129283(n)])`
-/

namespace A203836.P16821995677276852199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203836.P16821995677276852199

/-! ## A203836.P14155932007940290739

`A247245(eq[1, A129283(n)-n])`
-/

namespace A203836.P14155932007940290739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203836.P14155932007940290739

/-! ## A203836.P7762189655287764030

`A000040(n+1)*A247252(n+1)`
-/

namespace A203836.P7762189655287764030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A247252 (n + 1)

end

end A203836.P7762189655287764030

/-! ## A203836.P12650342768186377677

`record[A093074(n+1)]*A247252(n+1)`
-/

namespace A203836.P12650342768186377677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A247252 (n + 1)

end

end A203836.P12650342768186377677

/-! ## A203836.P10613081933483048970

`p?[A206074(n+1)]*A247252(n+1)`
-/

namespace A203836.P10613081933483048970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A247252 (n + 1)

end

end A203836.P10613081933483048970

/-! ## A203836.P14231876737720083473

`A247245(record[A051664(n+1)])`
-/

namespace A203836.P14231876737720083473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203836.P14231876737720083473

/-! ## A203836.P17856334443451207844

`record[A051664(n+1)]*A247252(n+1)`
-/

namespace A203836.P17856334443451207844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A247252 (n + 1)

end

end A203836.P17856334443451207844

/-! ## A203836.P1919454130521031213

`p?[A167175(n+1)]*A247252(n+1)`
-/

namespace A203836.P1919454130521031213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A247252 (n + 1)

end

end A203836.P1919454130521031213

/-! ## A203836.P16746850579068300442

`A001043(A202063(n+1))`
-/

namespace A203836.P16746850579068300442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A202063 (n + 1)).toNat

end

end A203836.P16746850579068300442

/-! ## A203836.P17046702710204274091

`A247245(eq[n+1, A238505(n)])`
-/

namespace A203836.P17046702710204274091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203836.P17046702710204274091

/-! ## A203836.P12897723462027960574

`A247245(eq[1, A238505(n)-n])`
-/

namespace A203836.P12897723462027960574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238505 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203836.P12897723462027960574

/-!
# A203837: Expansion of x^2*(1-x^2)*(1-3*x^2)/(1-x-5*x^2+4*x^3+5*x^4-3*x^5).

The programs for A203837, the canonical program `A203837.P2078628394667399207` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203837 has offset 0).

The definition of A203837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-4x^4+3x^6)/(1-x-5x^2+4x^3+5x^4-3x^5))` (program `A203837.P2078628394667399207`, by `A203837.P2078628394667399207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203837.P2078628394667399207

`ogf((x^2-4x^4+3x^6)/(1-x-5x^2+4x^3+5x^4-3x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203837

/-- `ogf((x^2-4x^4+3x^6)/(1-x-5x^2+4x^3+5x^4-3x^5))` -/
def P2078628394667399207.Spec : Prop :=
  ∀ n, P2078628394667399207.a n = A203837 n

theorem P2078628394667399207.correct : P2078628394667399207.Spec := by
  intro n
  simp only [A203837]

end A203837

/-! ## A203837.P7174829042476886887

`A001405(n)-A003056(A089846(n))`
-/

namespace A203837.P7174829042476886887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A003056 (A089846 n).toNat

end

end A203837.P7174829042476886887

namespace A203837

/-- `A001405(n)-A003056(A089846(n))` -/
def P7174829042476886887.Spec : Prop :=
  ∀ n, P7174829042476886887.a n = A203837 n

end A203837

/-! ## A203837.P8190633804301872585

`A336678(n)-A003056(A089846(n))`
-/

namespace A203837.P8190633804301872585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 n - A003056 (A089846 n).toNat

end

end A203837.P8190633804301872585

namespace A203837

/-- `A336678(n)-A003056(A089846(n))` -/
def P8190633804301872585.Spec : Prop :=
  ∀ n, P8190633804301872585.a n = A203837 n

end A203837

/-! ## A203837.P7962444740760798311

`A001405(n)-A000196(A148584(n))`
-/

namespace A203837.P7962444740760798311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A000196 (A148584 n).toNat

end

end A203837.P7962444740760798311

namespace A203837

/-- `A001405(n)-A000196(A148584(n))` -/
def P7962444740760798311.Spec : Prop :=
  ∀ n, P7962444740760798311.a n = A203837 n

end A203837

/-! ## A203837.P3804928656592815509

`A336675(n)-A000196(A148584(n))`
-/

namespace A203837.P3804928656592815509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 n - A000196 (A148584 n).toNat

end

end A203837.P3804928656592815509

namespace A203837

/-- `A336675(n)-A000196(A148584(n))` -/
def P3804928656592815509.Spec : Prop :=
  ∀ n, P3804928656592815509.a n = A203837 n

end A203837

/-!
# A203838: a(n) = sigma_3(n)*Fibonacci(n), where sigma_3(n) = A001158(n), the sum of cubes of divisors of n.

The programs for A203838, the canonical program `A203838.P17438525263270194069` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203838 has offset 1).

The definition of A203838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A203838.P17438525263270194069

`A001158(n+1)*A000045(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203838

/-- `A001158(n+1)*A000045(n+1)` -/
def P17438525263270194069.Spec : Prop :=
  ∀ n, P17438525263270194069.a n = A203838 (n + 1)

theorem P17438525263270194069.correct : P17438525263270194069.Spec := by
  intro n
  simp only [A203838, Nat.add_sub_cancel]

end A203838

/-! ## A203838.P5258731623834061344

`Δ[round(ϕ*a(n-1))]*∑{d}[n+1, #^3]` with `a(0)=1`
-/

namespace A203838.P5258731623834061344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℤ)

end

end A203838.P5258731623834061344

namespace A203838

/-- `Δ[round(ϕ*a(n-1))]*∑{d}[n+1, #^3]` -/
def P5258731623834061344.Spec : Prop :=
  ∀ n, P5258731623834061344.a n = A203838 (n + 1)

end A203838

/-! ## A203838.P1283586508954039490

`∑[round(ϕ*a(n-1))]*∑{d}[n+1, #^3]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A203838.P1283586508954039490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℤ)

end

end A203838.P1283586508954039490

namespace A203838

/-- `∑[round(ϕ*a(n-1))]*∑{d}[n+1, #^3]` -/
def P1283586508954039490.Spec : Prop :=
  ∀ n, P1283586508954039490.a n = A203838 (n + 1)

end A203838

/-! ## A203838.P12571988303565064207

`∑[A212804(n)]*∑{d}[n+1, #^3]`
-/

namespace A203838.P12571988303565064207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℤ)

end

end A203838.P12571988303565064207

namespace A203838

/-- `∑[A212804(n)]*∑{d}[n+1, #^3]` -/
def P12571988303565064207.Spec : Prop :=
  ∀ n, P12571988303565064207.a n = A203838 (n + 1)

end A203838

/-!
# A203839: Number of n X n 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203839, there is no canonical definition to state claims against.
-/

/-! ## A203839.P2323134299024381551

`A203846((n+1)²+n²)`
-/

namespace A203839.P2323134299024381551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 ((n + 1) ^ 2 + n ^ 2)

end

end A203839.P2323134299024381551

/-! ## A203839.P4850642319783101071

`record[A003982(n)*A203846(n+1)]`
-/

namespace A203839.P4850642319783101071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A203846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203839.P4850642319783101071

/-!
# A203840: Number of n X 2 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203840, there is no canonical definition to state claims against.
-/

/-! ## A203840.P5202655244026499160

`record[ratio[A203846(n+1)]]`
-/

namespace A203840.P5202655244026499160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203840.P5202655244026499160

/-! ## A203840.P10613218543584872816

`A203846(∑[n+1]+2)`
-/

namespace A203840.P10613218543584872816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203840.P10613218543584872816

/-! ## A203840.P11048700343788808589

`record[gcd(A203846(n+1), A225413(n))]`
-/

namespace A203840.P11048700343788808589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203846 (n + 1)) (A225413 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203840.P11048700343788808589

/-! ## A203840.P17491134550941820522

`record[A203846(n+1)/A304320(n+1)]`
-/

namespace A203840.P17491134550941820522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203846 (n + 1) : ℚ) / (A304320 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203840.P17491134550941820522

/-! ## A203840.P3395340027993887726

`record[A203846(n+2)/A203846(n+1)]`
-/

namespace A203840.P3395340027993887726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203846 (n + 2) : ℚ) / (A203846 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203840.P3395340027993887726

/-!
# A203841: Number of nX3 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203841, there is no canonical definition to state claims against.
-/

/-! ## A203841.P16070954117417769798

`A203846(∑[n+2]+4)`
-/

namespace A203841.P16070954117417769798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203841.P16070954117417769798

/-! ## A203841.P15243141442515696286

`A203846(A167614(n+1))+A011736(n)`
-/

namespace A203841.P15243141442515696286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A167614 (n + 1)).toNat + A011736 n

end

end A203841.P15243141442515696286

/-! ## A203841.P14115873725118562680

`A203846(A167614(n+1))+A185044(n)`
-/

namespace A203841.P14115873725118562680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A167614 (n + 1)).toNat + A185044 n

end

end A203841.P14115873725118562680

/-! ## A203841.P4363446209786812771

`A016192(n)*A203846(A167614(n+1))`
-/

namespace A203841.P4363446209786812771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A203846 (A167614 (n + 1)).toNat

end

end A203841.P4363446209786812771

/-! ## A203841.P15141700612096789347

`A203846(A167614(n+1))%A167774(n)`
-/

namespace A203841.P15141700612096789347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203846 (A167614 (n + 1)).toNat) (A167774 n)

end

end A203841.P15141700612096789347

/-!
# A203842: Number of nX4 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203842, there is no canonical definition to state claims against.
-/

/-! ## A203842.P6013275443664607241

`A203846(A374004(n+1))`
-/

namespace A203842.P6013275443664607241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A374004 (n + 1)).toNat

end

end A203842.P6013275443664607241

/-! ## A203842.P6482201272688495123

`A203846(A052905(n)+9)`
-/

namespace A203842.P6482201272688495123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A052905 n + 9).toNat

end

end A203842.P6482201272688495123

/-! ## A203842.P1296215847523797432

`A203846(A055999(n)+10)`
-/

namespace A203842.P1296215847523797432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A055999 n + 10).toNat

end

end A203842.P1296215847523797432

/-! ## A203842.P6710254467012381833

`A203846(A167614(n+2)+1)`
-/

namespace A203842.P6710254467012381833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A167614 (n + 2) + 1).toNat

end

end A203842.P6710254467012381833

/-! ## A203842.P14793069760396365682

`A203846(A134227(n+1)+10)`
-/

namespace A203842.P14793069760396365682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A134227 (n + 1) + 10).toNat

end

end A203842.P14793069760396365682

/-!
# A203843: Number of nX5 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203843, there is no canonical definition to state claims against.
-/

/-! ## A203843.P17722578217587703178

`A203846(A374005(n+1))`
-/

namespace A203843.P17722578217587703178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A374005 (n + 1)).toNat

end

end A203843.P17722578217587703178

/-! ## A203843.P7462402921540058902

`A203846(eq[7, A066657(n)])`
-/

namespace A203843.P7462402921540058902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203843.P7462402921540058902

/-! ## A203843.P787275540506564755

`A203846(A056115(n)+11)`
-/

namespace A203843.P787275540506564755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A056115 n + 11).toNat

end

end A203843.P787275540506564755

/-! ## A203843.P10687436726948406893

`A203846(eq[2, A092921(n)])`
-/

namespace A203843.P10687436726948406893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203843.P10687436726948406893

/-! ## A203843.P13073417696878633495

`A203846(eq[8, A209439(n)])`
-/

namespace A203843.P13073417696878633495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203843.P13073417696878633495

/-!
# A203844: Number of nX6 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203844, there is no canonical definition to state claims against.
-/

/-! ## A203844.P9768188355536542024

`A203846(A374007(n+1))`
-/

namespace A203844.P9768188355536542024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A374007 (n + 1)).toNat

end

end A203844.P9768188355536542024

/-! ## A203844.P14989196372578046218

`A203846(eq[7, A131818(n+1)])`
-/

namespace A203844.P14989196372578046218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203844.P14989196372578046218

/-! ## A203844.P12542579673903939508

`A203846(Δ[A023545(n+1)]+10)`
-/

namespace A203844.P12542579673903939508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (f1 (n + 1) - f1 n + 10).toNat

end

end A203844.P12542579673903939508

/-! ## A203844.P13610855642555604865

`A203846(A052905(n+3))`
-/

namespace A203844.P13610855642555604865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A052905 (n + 3)).toNat

end

end A203844.P13610855642555604865

/-! ## A203844.P7454988783399702565

`A203846(eq[6, A200370(n+1)])`
-/

namespace A203844.P7454988783399702565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203844.P7454988783399702565

/-!
# A203845: Number of nX7 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203845, there is no canonical definition to state claims against.
-/

/-! ## A203845.P7110378446846675845

`A203846(A374008(n+1))`
-/

namespace A203845.P7110378446846675845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (A374008 (n + 1)).toNat

end

end A203845.P7110378446846675845

/-! ## A203845.P1147822757958807703

`A203846(eq[7, A200370(n+1)])`
-/

namespace A203845.P1147822757958807703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203845.P1147822757958807703

/-!
# A203846: T(n,k)=Number of nXk 0..3 arrays with every nonzero element less than or equal to at least two horizontal and vertical neighbors.

The programs for A203846, there is no canonical definition to state claims against.
-/

/-! ## A203846.P10135405937312693269

`A023189(A174377(n))`
-/

namespace A203846.P10135405937312693269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023189 (A174377 n).toNat

end

end A203846.P10135405937312693269

/-! ## A203846.P16348000925081159130

`A141729(A056941(n))`
-/

namespace A203846.P16348000925081159130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (A056941 n).toNat

end

end A203846.P16348000925081159130

/-! ## A203846.P2293470998555218757

`A059879(A157221(n))`
-/

namespace A203846.P2293470998555218757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059879 (A157221 n).toNat

end

end A203846.P2293470998555218757

/-! ## A203846.P11241963750311936145

`A201206(A022174(n))`
-/

namespace A203846.P11241963750311936145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (A022174 n).toNat

end

end A203846.P11241963750311936145

/-! ## A203846.P14344392389958301651

`A174715(A049207(n))`
-/

namespace A203846.P14344392389958301651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174715 (A049207 n).toNat

end

end A203846.P14344392389958301651

/-!
# A203847: a(n) = tau(n)*Fibonacci(n), where tau(n) = A000005(n), the number of divisors of n.

The programs for A203847, the canonical program `A203847.P9260597228781313842` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203847 has offset 1).

The definition of A203847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000045(n+1)` (program `A203847.P9260597228781313842`, by `A203847.P9260597228781313842.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203847.P9260597228781313842

`A000005(n+1)*A000045(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A203847

/-- `A000005(n+1)*A000045(n+1)` -/
def P9260597228781313842.Spec : Prop :=
  ∀ n, P9260597228781313842.a n = A203847 (n + 1)

theorem P9260597228781313842.correct : P9260597228781313842.Spec := by
  intro n
  simp only [A203847, Nat.add_sub_cancel]

end A203847

/-! ## A203847.P6728679573787343477

`∑{d}[n+1, A000045(lcm(#, n+1))]`
-/

namespace A203847.P6728679573787343477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (Nat.lcm d (n + 1))

end

end A203847.P6728679573787343477

namespace A203847

/-- `∑{d}[n+1, A000045(lcm(#, n+1))]` -/
def P6728679573787343477.Spec : Prop :=
  ∀ n, P6728679573787343477.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P18019840603136735059

`A000005(n+1)*∑[A212804(n)]`
-/

namespace A203847.P18019840603136735059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203847.P18019840603136735059

namespace A203847

/-- `A000005(n+1)*∑[A212804(n)]` -/
def P18019840603136735059.Spec : Prop :=
  ∀ n, P18019840603136735059.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P4327966980916454246

`A000045(n+1)*Δ[A006218(n)]`
-/

namespace A203847.P4327966980916454246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A203847.P4327966980916454246

namespace A203847

/-- `A000045(n+1)*Δ[A006218(n)]` -/
def P4327966980916454246.Spec : Prop :=
  ∀ n, P4327966980916454246.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P7522905916723467635

`A001511(n+1)*A205965(n+1)`
-/

namespace A203847.P7522905916723467635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A205965 (n + 1)

end

end A203847.P7522905916723467635

namespace A203847

/-- `A001511(n+1)*A205965(n+1)` -/
def P7522905916723467635.Spec : Prop :=
  ∀ n, P7522905916723467635.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P14239644328189406512

`A000005(n+1)*A212804(n+2)`
-/

namespace A203847.P14239644328189406512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A212804 (n + 2)

end

end A203847.P14239644328189406512

namespace A203847

/-- `A000005(n+1)*A212804(n+2)` -/
def P14239644328189406512.Spec : Prop :=
  ∀ n, P14239644328189406512.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P14994270154124462383

`A000005(n+1)*A324969(n+2)`
-/

namespace A203847.P14994270154124462383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A324969 (n + 2)

end

end A203847.P14994270154124462383

namespace A203847

/-- `A000005(n+1)*A324969(n+2)` -/
def P14994270154124462383.Spec : Prop :=
  ∀ n, P14994270154124462383.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P17390663138240522213

`A000005(n+1)*A079977(2*n)`
-/

namespace A203847.P17390663138240522213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A079977 (2 * n)

end

end A203847.P17390663138240522213

namespace A203847

/-- `A000005(n+1)*A079977(2*n)` -/
def P17390663138240522213.Spec : Prop :=
  ∀ n, P17390663138240522213.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P17875485306803008913

`(A081659(n)-n)*A000005(n+1)`
-/

namespace A203847.P17875485306803008913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081659 n - (n : ℤ)) * A000005 (n + 1)

end

end A203847.P17875485306803008913

namespace A203847

/-- `(A081659(n)-n)*A000005(n+1)` -/
def P17875485306803008913.Spec : Prop :=
  ∀ n, P17875485306803008913.a n = A203847 (n + 1)

theorem P17875485306803008913.correct : P17875485306803008913.Spec := by
  intro n
  simp only [A203847, Nat.add_sub_cancel, A203847.P17875485306803008913.a, A203847.P9260597228781313842.a, A000005, A000005.P16091521709108585461.a, A000045, A000045.P11838749114346432762.a, A081659, A081659.P2520138309410164665.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203847

/-! ## A203847.P6536764322297751260

`A000005(n+1)*Δ[Δ[A001911(n)]]`
-/

namespace A203847.P6536764322297751260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A203847.P6536764322297751260

namespace A203847

/-- `A000005(n+1)*Δ[Δ[A001911(n)]]` -/
def P6536764322297751260.Spec : Prop :=
  ∀ n, P6536764322297751260.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P15473653298939726645

`A000005(n+1)*Δ[Δ[A018910(n)]]`
-/

namespace A203847.P15473653298939726645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A203847.P15473653298939726645

namespace A203847

/-- `A000005(n+1)*Δ[Δ[A018910(n)]]` -/
def P15473653298939726645.Spec : Prop :=
  ∀ n, P15473653298939726645.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P11883999117199300205

`(A000071(n+1)+1)*A000005(n+1)`
-/

namespace A203847.P11883999117199300205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A000005 (n + 1)

end

end A203847.P11883999117199300205

namespace A203847

/-- `(A000071(n+1)+1)*A000005(n+1)` -/
def P11883999117199300205.Spec : Prop :=
  ∀ n, P11883999117199300205.a n = A203847 (n + 1)

theorem P11883999117199300205.correct : P11883999117199300205.Spec := by
  intro n
  simp only [A203847, Nat.add_sub_cancel, A203847.P11883999117199300205.a, A203847.P9260597228781313842.a, A000005, A000005.P16091521709108585461.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203847

/-! ## A203847.P18181000904038726125

`(A032741(n+1)+1)*A000045(n+1)`
-/

namespace A203847.P18181000904038726125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A000045 (n + 1)

end

end A203847.P18181000904038726125

namespace A203847

/-- `(A032741(n+1)+1)*A000045(n+1)` -/
def P18181000904038726125.Spec : Prop :=
  ∀ n, P18181000904038726125.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P14157720096130917771

`A000005(n+1)*A163227(2*n+1)`
-/

namespace A203847.P14157720096130917771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A163227 (2 * n + 1)

end

end A203847.P14157720096130917771

namespace A203847

/-- `A000005(n+1)*A163227(2*n+1)` -/
def P14157720096130917771.Spec : Prop :=
  ∀ n, P14157720096130917771.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P4503856348017347976

`A000045(n+1)*A183063(2*(n+1))`
-/

namespace A203847.P4503856348017347976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A183063 (2 * (n + 1))

end

end A203847.P4503856348017347976

namespace A203847

/-- `A000045(n+1)*A183063(2*(n+1))` -/
def P4503856348017347976.Spec : Prop :=
  ∀ n, P4503856348017347976.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P13963721213030252338

`A183063(2*(n+1))*A324969(n+2)`
-/

namespace A203847.P13963721213030252338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) * A324969 (n + 2)

end

end A203847.P13963721213030252338

namespace A203847

/-- `A183063(2*(n+1))*A324969(n+2)` -/
def P13963721213030252338.Spec : Prop :=
  ∀ n, P13963721213030252338.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P5111344458465591394

`A000045(n+1)*∑{d}[n+1, A057427(#)]`
-/

namespace A203847.P5111344458465591394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A057427 d)

end

end A203847.P5111344458465591394

namespace A203847

/-- `A000045(n+1)*∑{d}[n+1, A057427(#)]` -/
def P5111344458465591394.Spec : Prop :=
  ∀ n, P5111344458465591394.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P9620318143456006057

`(A338117(2*(n+1))+1)*A000045(n+1)`
-/

namespace A203847.P9620318143456006057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338117 (2 * (n + 1)) + 1) * A000045 (n + 1)

end

end A203847.P9620318143456006057

namespace A203847

/-- `(A338117(2*(n+1))+1)*A000045(n+1)` -/
def P9620318143456006057.Spec : Prop :=
  ∀ n, P9620318143456006057.a n = A203847 (n + 1)

end A203847

/-! ## A203847.P12737094197473413484

`A038040(n+1)/(n+1)*A000045(n+1)`
-/

namespace A203847.P12737094197473413484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000045 (n + 1) : ℚ)

end

end A203847.P12737094197473413484

namespace A203847

/-- `A038040(n+1)/(n+1)*A000045(n+1)` -/
def P12737094197473413484.Spec : Prop :=
  ∀ n, P12737094197473413484.a n = (A203847 (n + 1) : ℚ)

end A203847

/-!
# A203848: a(n) = sigma(n)*Fibonacci(n), where sigma(n) = A000203(n), the sum of divisors of n.

The programs for A203848, the canonical program `A203848.P2614796090139845301` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203848 has offset 1).

The definition of A203848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A000045(n+1)` (program `A203848.P2614796090139845301`, by `A203848.P2614796090139845301.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A203848.P2614796090139845301

`A000203(n+1)*A000045(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A203848

/-- `A000203(n+1)*A000045(n+1)` -/
def P2614796090139845301.Spec : Prop :=
  ∀ n, P2614796090139845301.a n = A203848 (n + 1)

theorem P2614796090139845301.correct : P2614796090139845301.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel]

end A203848

/-! ## A203848.P9983496483353791696

`∑[A212804(n)]*A000203(n+1)`
-/

namespace A203848.P9983496483353791696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000203 (n + 1)

end

end A203848.P9983496483353791696

namespace A203848

/-- `∑[A212804(n)]*A000203(n+1)` -/
def P9983496483353791696.Spec : Prop :=
  ∀ n, P9983496483353791696.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P10737684458233093079

`A000203(n+1)*A212804(n+2)`
-/

namespace A203848.P10737684458233093079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A212804 (n + 2)

end

end A203848.P10737684458233093079

namespace A203848

/-- `A000203(n+1)*A212804(n+2)` -/
def P10737684458233093079.Spec : Prop :=
  ∀ n, P10737684458233093079.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P16018243455573566569

`A000203(n+1)*A324969(n+2)`
-/

namespace A203848.P16018243455573566569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A324969 (n + 2)

end

end A203848.P16018243455573566569

namespace A203848

/-- `A000203(n+1)*A324969(n+2)` -/
def P16018243455573566569.Spec : Prop :=
  ∀ n, P16018243455573566569.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P683272258857875038

`(A081659(n)-n)*A000203(n+1)`
-/

namespace A203848.P683272258857875038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081659 n - (n : ℤ)) * A000203 (n + 1)

end

end A203848.P683272258857875038

namespace A203848

/-- `(A081659(n)-n)*A000203(n+1)` -/
def P683272258857875038.Spec : Prop :=
  ∀ n, P683272258857875038.a n = A203848 (n + 1)

theorem P683272258857875038.correct : P683272258857875038.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P683272258857875038.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A081659, A081659.P2520138309410164665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P10232108795167956027

`(A000071(n+1)+1)*A000203(n+1)`
-/

namespace A203848.P10232108795167956027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A000203 (n + 1)

end

end A203848.P10232108795167956027

namespace A203848

/-- `(A000071(n+1)+1)*A000203(n+1)` -/
def P10232108795167956027.Spec : Prop :=
  ∀ n, P10232108795167956027.a n = A203848 (n + 1)

theorem P10232108795167956027.correct : P10232108795167956027.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P10232108795167956027.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P10417091345525512387

`A000203(n+1)*A163227(2*n+1)`
-/

namespace A203848.P10417091345525512387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A163227 (2 * n + 1)

end

end A203848.P10417091345525512387

namespace A203848

/-- `A000203(n+1)*A163227(2*n+1)` -/
def P10417091345525512387.Spec : Prop :=
  ∀ n, P10417091345525512387.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P14718423905960679802

`A146076(2*(n+1))/2*A000045(n+1)`
-/

namespace A203848.P14718423905960679802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2 * (A000045 (n + 1) : ℚ)

end

end A203848.P14718423905960679802

namespace A203848

/-- `A146076(2*(n+1))/2*A000045(n+1)` -/
def P14718423905960679802.Spec : Prop :=
  ∀ n, P14718423905960679802.a n = (A203848 (n + 1) : ℚ)

end A203848

/-! ## A203848.P11436176943011224175

`A146076(2*(n+1))/2*A324969(n+2)`
-/

namespace A203848.P11436176943011224175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2 * (A324969 (n + 2) : ℚ)

end

end A203848.P11436176943011224175

namespace A203848

/-- `A146076(2*(n+1))/2*A324969(n+2)` -/
def P11436176943011224175.Spec : Prop :=
  ∀ n, P11436176943011224175.a n = (A203848 (n + 1) : ℚ)

end A203848

/-! ## A203848.P4603837179993570749

`(A001065(n+1)+n+1)*A000045(n+1)`
-/

namespace A203848.P4603837179993570749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ)) * A000045 (n + 1)

end

end A203848.P4603837179993570749

namespace A203848

/-- `(A001065(n+1)+n+1)*A000045(n+1)` -/
def P4603837179993570749.Spec : Prop :=
  ∀ n, P4603837179993570749.a n = A203848 (n + 1)

theorem P4603837179993570749.correct : P4603837179993570749.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P4603837179993570749.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P18158292843407455760

`(A155085(n+1)-(n+1))*A000045(n+1)`
-/

namespace A203848.P18158292843407455760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * A000045 (n + 1)

end

end A203848.P18158292843407455760

namespace A203848

/-- `(A155085(n+1)-(n+1))*A000045(n+1)` -/
def P18158292843407455760.Spec : Prop :=
  ∀ n, P18158292843407455760.a n = A203848 (n + 1)

theorem P18158292843407455760.correct : P18158292843407455760.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P18158292843407455760.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P4246705503321706093

`A064987(n+1)/(n+1)*A000045(n+1)`
-/

namespace A203848.P4246705503321706093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000045 (n + 1) : ℚ)

end

end A203848.P4246705503321706093

namespace A203848

/-- `A064987(n+1)/(n+1)*A000045(n+1)` -/
def P4246705503321706093.Spec : Prop :=
  ∀ n, P4246705503321706093.a n = (A203848 (n + 1) : ℚ)

end A203848

/-! ## A203848.P5663263745524661352

`(A033880(n+1)+A005843(n+1))*A000045(n+1)`
-/

namespace A203848.P5663263745524661352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033880 (n + 1) + A005843 (n + 1)) * A000045 (n + 1)

end

end A203848.P5663263745524661352

namespace A203848

/-- `(A033880(n+1)+A005843(n+1))*A000045(n+1)` -/
def P5663263745524661352.Spec : Prop :=
  ∀ n, P5663263745524661352.a n = A203848 (n + 1)

theorem P5663263745524661352.correct : P5663263745524661352.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P5663263745524661352.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005843, A005843.P3167286115683555970.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P8447612718989840593

`(A343224(n+1)+A003415(n+1))*A000045(n+1)`
-/

namespace A203848.P8447612718989840593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343224 (n + 1) + A003415 (n + 1)) * A000045 (n + 1)

end

end A203848.P8447612718989840593

namespace A203848

/-- `(A343224(n+1)+A003415(n+1))*A000045(n+1)` -/
def P8447612718989840593.Spec : Prop :=
  ∀ n, P8447612718989840593.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P9448308469040180457

`(A063477(n+1)-A074283(n+1))*A000203(n+1)`
-/

namespace A203848.P9448308469040180457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063477 (n + 1) - A074283 (n + 1)) * A000203 (n + 1)

end

end A203848.P9448308469040180457

namespace A203848

/-- `(A063477(n+1)-A074283(n+1))*A000203(n+1)` -/
def P9448308469040180457.Spec : Prop :=
  ∀ n, P9448308469040180457.a n = A203848 (n + 1)

theorem P9448308469040180457.correct : P9448308469040180457.Spec := by
  intro n
  simp only [A203848, Nat.add_sub_cancel, A203848.P9448308469040180457.a, A203848.P2614796090139845301.a, A000045, A000045.P11838749114346432762.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A063477, A063477.P7827917804109814506.a, A074283, A074283.P13789611695152124336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203848

/-! ## A203848.P6157726082455915650

`(A000285(n+1)-A000204(n+2))*A000203(n+1)`
-/

namespace A203848.P6157726082455915650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 (n + 1) - A000204 (n + 2)) * A000203 (n + 1)

end

end A203848.P6157726082455915650

namespace A203848

/-- `(A000285(n+1)-A000204(n+2))*A000203(n+1)` -/
def P6157726082455915650.Spec : Prop :=
  ∀ n, P6157726082455915650.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P12299650688294808326

`A000203(n+1)/A000005(n+1)*A203847(n+1)`
-/

namespace A203848.P12299650688294808326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A203847 (n + 1) : ℚ)

end

end A203848.P12299650688294808326

namespace A203848

/-- `A000203(n+1)/A000005(n+1)*A203847(n+1)` -/
def P12299650688294808326.Spec : Prop :=
  ∀ n, P12299650688294808326.a n = (A203848 (n + 1) : ℚ)

end A203848

/-! ## A203848.P11564441259226192700

`(A053602(2*n+1)-A053602(2*n))*A326065(2*(n+1))`
-/

namespace A203848.P11564441259226192700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053602 (2 * n + 1) - A053602 (2 * n)) * A326065 (2 * (n + 1))

end

end A203848.P11564441259226192700

namespace A203848

/-- `(A053602(2*n+1)-A053602(2*n))*A326065(2*(n+1))` -/
def P11564441259226192700.Spec : Prop :=
  ∀ n, P11564441259226192700.a n = A203848 (n + 1)

end A203848

/-! ## A203848.P10555051042118123050

`A000045(n+1)/A000204(n+1)*A225528(n+1)`
-/

namespace A203848.P10555051042118123050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ) * (A225528 (n + 1) : ℚ)

end

end A203848.P10555051042118123050

namespace A203848

/-- `A000045(n+1)/A000204(n+1)*A225528(n+1)` -/
def P10555051042118123050.Spec : Prop :=
  ∀ n, P10555051042118123050.a n = (A203848 (n + 1) : ℚ)

end A203848

/-!
# A203849: a(n) = sigma_2(n)*Fibonacci(n), where sigma_2(n) = A001157(n), the sum of squares of divisors of n.

The programs for A203849, the canonical program `A203849.P5663793052223685031` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203849 has offset 1).

The definition of A203849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A203849.P5663793052223685031

`A001157(n+1)*A000045(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A203849

/-- `A001157(n+1)*A000045(n+1)` -/
def P5663793052223685031.Spec : Prop :=
  ∀ n, P5663793052223685031.a n = A203849 (n + 1)

theorem P5663793052223685031.correct : P5663793052223685031.Spec := by
  intro n
  simp only [A203849, Nat.add_sub_cancel]

end A203849

/-! ## A203849.P14516665087714763856

`abs(∑{d}[n+1, #²]*A236191(n+1))`
-/

namespace A203849.P14516665087714763856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) * A236191 (n + 1)|

end

end A203849.P14516665087714763856

namespace A203849

/-- `abs(∑{d}[n+1, #²]*A236191(n+1))` -/
def P14516665087714763856.Spec : Prop :=
  ∀ n, P14516665087714763856.a n = A203849 (n + 1)

end A203849

/-! ## A203849.P5924167140854945293

`(A000071(n+1)+1)*∑{d}[n+1, #²]`
-/

namespace A203849.P5924167140854945293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A203849.P5924167140854945293

namespace A203849

/-- `(A000071(n+1)+1)*∑{d}[n+1, #²]` -/
def P5924167140854945293.Spec : Prop :=
  ∀ n, P5924167140854945293.a n = A203849 (n + 1)

end A203849

/-! ## A203849.P7220107097268938447

`A001157(n+1)*A324969(n+2)`
-/

namespace A203849.P7220107097268938447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A324969 (n + 2)

end

end A203849.P7220107097268938447

namespace A203849

/-- `A001157(n+1)*A324969(n+2)` -/
def P7220107097268938447.Spec : Prop :=
  ∀ n, P7220107097268938447.a n = A203849 (n + 1)

end A203849

/-! ## A203849.P17363456030950859284

`(A063477(n+1)-A074283(n+1))*A001157(n+1)`
-/

namespace A203849.P17363456030950859284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063477 (n + 1) - A074283 (n + 1)) * A001157 (n + 1)

end

end A203849.P17363456030950859284

namespace A203849

/-- `(A063477(n+1)-A074283(n+1))*A001157(n+1)` -/
def P17363456030950859284.Spec : Prop :=
  ∀ n, P17363456030950859284.a n = A203849 (n + 1)

theorem P17363456030950859284.correct : P17363456030950859284.Spec := by
  intro n
  simp only [A203849, Nat.add_sub_cancel, A203849.P17363456030950859284.a, A203849.P5663793052223685031.a, A000045, A000045.P11838749114346432762.a, A001157, A001157.P6892814788348726787.a, A063477, A063477.P7827917804109814506.a, A074283, A074283.P13789611695152124336.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A203849

/-! ## A203849.P14786948541875453010

`A001157(n+1)/A000005(n+1)*A203847(n+1)`
-/

namespace A203849.P14786948541875453010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A203847 (n + 1) : ℚ)

end

end A203849.P14786948541875453010

namespace A203849

/-- `A001157(n+1)/A000005(n+1)*A203847(n+1)` -/
def P14786948541875453010.Spec : Prop :=
  ∀ n, P14786948541875453010.a n = (A203849 (n + 1) : ℚ)

end A203849

/-! ## A203849.P646707550855617460

`A001157(n+1)/A000203(n+1)*A203848(n+1)`
-/

namespace A203849.P646707550855617460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A203848 (n + 1) : ℚ)

end

end A203849.P646707550855617460

namespace A203849

/-- `A001157(n+1)/A000203(n+1)*A203848(n+1)` -/
def P646707550855617460.Spec : Prop :=
  ∀ n, P646707550855617460.a n = (A203849 (n + 1) : ℚ)

end A203849

/-! ## A203849.P13433788899291434664

`A203848(n+1)/A001158(n+1)*A320917(n+1)`
-/

namespace A203849.P13433788899291434664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203848 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A320917 (n + 1) : ℚ)

end

end A203849.P13433788899291434664

namespace A203849

/-- `A203848(n+1)/A001158(n+1)*A320917(n+1)` -/
def P13433788899291434664.Spec : Prop :=
  ∀ n, P13433788899291434664.a n = (A203849 (n + 1) : ℚ)

end A203849

/-! ## A203849.P11377112668341054295

`A001157(n+1)/A001158(n+1)*A203838(n+1)`
-/

namespace A203849.P11377112668341054295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A203838 (n + 1) : ℚ)

end

end A203849.P11377112668341054295

namespace A203849

/-- `A001157(n+1)/A001158(n+1)*A203838(n+1)` -/
def P11377112668341054295.Spec : Prop :=
  ∀ n, P11377112668341054295.a n = (A203849 (n + 1) : ℚ)

end A203849

/-! ## A203849.P6173164661285614371

`A000045(n+1)/A000129(n+1)*A204272(n+1)`
-/

namespace A203849.P6173164661285614371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A203849.P6173164661285614371

namespace A203849

/-- `A000045(n+1)/A000129(n+1)*A204272(n+1)` -/
def P6173164661285614371.Spec : Prop :=
  ∀ n, P6173164661285614371.a n = (A203849 (n + 1) : ℚ)

end A203849

/-!
# A203852: Expansion of e.g.f. exp( Integral -log(1-x) dx ).

The programs for A203852, there is no canonical definition to state claims against.
-/

/-! ## A203852.P7619827959728130962

`A276996(∑[n]+n)`
-/

namespace A203852.P7619827959728130962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276996 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A203852.P7619827959728130962

/-! ## A203852.P4887046716552831097

`abs(A276996(A000096(n)))`
-/

namespace A203852.P4887046716552831097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276996 (A000096 n).toNat|

end

end A203852.P4887046716552831097

/-! ## A203852.P6478406682944793298

`abs(A276996(A061579(∑[n])))`
-/

namespace A203852.P6478406682944793298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276996 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A203852.P6478406682944793298

/-! ## A203852.P15210179617738148825

`abs(A276996(record[A061579(n)]))`
-/

namespace A203852.P15210179617738148825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A203852.P15210179617738148825

/-! ## A203852.P4638916403513520706

`abs(A276996(eq[1, A112007(n)]))`
-/

namespace A203852.P4638916403513520706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A203852.P4638916403513520706

/-!
# A203853: a(n) = (1/n) * Sum_{d|n} moebius(n/d) * Lucas(d)^2, where Lucas(n) = A000204(n).

The programs for A203853, the canonical program `A203853.P2380919053175103754` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203853 has offset 1).

The definition of A203853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203853.P2380919053175103754

`A032170(n+1)*A373565(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A203853

/-- `A032170(n+1)*A373565(n)` -/
def P2380919053175103754.Spec : Prop :=
  ∀ n, P2380919053175103754.a n = A203853 (n + 1)

theorem P2380919053175103754.correct : P2380919053175103754.Spec := by
  intro n
  simp only [A203853, Nat.add_sub_cancel]

end A203853

/-! ## A203853.P160676409433730548

`A001006(C(2, n))*A032170(n+1)`
-/

namespace A203853.P160676409433730548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (Nat.choose 2 n) * A032170 (n + 1)

end

end A203853.P160676409433730548

namespace A203853

/-- `A001006(C(2, n))*A032170(n+1)` -/
def P160676409433730548.Spec : Prop :=
  ∀ n, P160676409433730548.a n = A203853 (n + 1)

end A203853

/-! ## A203853.P18093013551048791478

`A028310(C(2, n))*A032170(n+1)`
-/

namespace A203853.P18093013551048791478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose 2 n) * A032170 (n + 1)

end

end A203853.P18093013551048791478

namespace A203853

/-- `A028310(C(2, n))*A032170(n+1)` -/
def P18093013551048791478.Spec : Prop :=
  ∀ n, P18093013551048791478.a n = A203853 (n + 1)

end A203853

/-! ## A203853.P4452994543840388242

`A032170(n+1)^A325713(C(2, n)+1)`
-/

namespace A203853.P4452994543840388242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032170 (n + 1) : ℚ) ^ (A325713 (Nat.choose 2 n + 1) : ℤ)

end

end A203853.P4452994543840388242

namespace A203853

/-- `A032170(n+1)^A325713(C(2, n)+1)` -/
def P4452994543840388242.Spec : Prop :=
  ∀ n, P4452994543840388242.a n = (A203853 (n + 1) : ℚ)

end A203853

/-! ## A203853.P5206195929373953446

`A032170(n+1)^A032170(C(2, n+1)+1)`
-/

namespace A203853.P5206195929373953446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032170 (n + 1) : ℚ) ^ (A032170 (Nat.choose 2 (n + 1) + 1) : ℤ)

end

end A203853.P5206195929373953446

namespace A203853

/-- `A032170(n+1)^A032170(C(2, n+1)+1)` -/
def P5206195929373953446.Spec : Prop :=
  ∀ n, P5206195929373953446.a n = (A203853 (n + 1) : ℚ)

end A203853

/-! ## A203853.P15478745352148455605

`A001511(A008578(n+1))*A032170(n+1)`
-/

namespace A203853.P15478745352148455605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A008578 (n + 1)).toNat * A032170 (n + 1)

end

end A203853.P15478745352148455605

namespace A203853

/-- `A001511(A008578(n+1))*A032170(n+1)` -/
def P15478745352148455605.Spec : Prop :=
  ∀ n, P15478745352148455605.a n = A203853 (n + 1)

end A203853

/-! ## A203853.P17019391943760248779

`A032170(n+1)+A084099(n)*A209229(n)`
-/

namespace A203853.P17019391943760248779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032170 (n + 1) + A084099 n * A209229 n

end

end A203853.P17019391943760248779

namespace A203853

/-- `A032170(n+1)+A084099(n)*A209229(n)` -/
def P17019391943760248779.Spec : Prop :=
  ∀ n, P17019391943760248779.a n = A203853 (n + 1)

end A203853

/-!
# A203854: a(n) = (1/n) * Sum_{d|n} moebius(n/d) * Lucas(d)^3, where Lucas(n) = A000204(n).

The programs for A203854, there is no canonical definition to state claims against.
-/

/-! ## A203854.P15645546979945801821

`A077028(A004041(n)+27)`
-/

namespace A203854.P15645546979945801821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A004041 n + 27).toNat

end

end A203854.P15645546979945801821

/-!
# A203862: Number of (n+1)X(n+1) 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203862, there is no canonical definition to state claims against.
-/

/-! ## A203862.P6116572377389743819

`A203870(∑[4*n]+1)`
-/

namespace A203862.P6116572377389743819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203862.P6116572377389743819

/-! ## A203862.P13212093527712069674

`record[gcd(A114327(n), A203870(n+1))]`
-/

namespace A203862.P13212093527712069674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203870 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203862.P13212093527712069674

/-! ## A203862.P15099863811168943158

`A326470(n)+A203870(A001844(n))`
-/

namespace A203862.P15099863811168943158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326470 n + A203870 (A001844 n).toNat

end

end A203862.P15099863811168943158

/-! ## A203862.P10529040680043562673

`A203870(A001844(n))*A250261(n)`
-/

namespace A203862.P10529040680043562673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A001844 n).toNat * A250261 n

end

end A203862.P10529040680043562673

/-! ## A203862.P6306584492832661567

`lcm(A203870(A001844(n)), A246016(n))`
-/

namespace A203862.P6306584492832661567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A203870 (A001844 n).toNat) (A246016 n)

end

end A203862.P6306584492832661567

/-!
# A203863: Number of (n+1)X2 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203863, there is no canonical definition to state claims against.
-/

/-! ## A203863.P1936218838996231545

`A203870(∑[n]+1)`
-/

namespace A203863.P1936218838996231545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203863.P1936218838996231545

/-! ## A203863.P12784908722438601590

`record[A010054(n)*A203870(n+1)]`
-/

namespace A203863.P12784908722438601590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203863.P12784908722438601590

/-! ## A203863.P7805502153902780699

`record[A203870(n+1)/A013614(n)]`
-/

namespace A203863.P7805502153902780699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203870 (n + 1) : ℚ) / (A013614 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203863.P7805502153902780699

/-! ## A203863.P318025179522549028

`record[A203870(n+1)/A174451(n)]`
-/

namespace A203863.P318025179522549028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203870 (n + 1) : ℚ) / (A174451 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203863.P318025179522549028

/-! ## A203863.P13613879414846947585

`record[root(A203870(n+1), A193592(n))]`
-/

namespace A203863.P13613879414846947585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203870 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203863.P13613879414846947585

/-!
# A203864: Number of (n+1) X 3 0..4 arrays with column and row pair sums b(i,j) = a(i,j)+a(i,j-1) and c(i,j) = a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203864, there is no canonical definition to state claims against.
-/

/-! ## A203864.P13827602669350404913

`A203870(∑[n+1]+2)`
-/

namespace A203864.P13827602669350404913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203864.P13827602669350404913

/-! ## A203864.P17380045904329530697

`record[A010054(n)*A203870(n+2)]`
-/

namespace A203864.P17380045904329530697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203864.P17380045904329530697

/-! ## A203864.P17811427480518788430

`record[A203870(n+2)/A013614(n)]`
-/

namespace A203864.P17811427480518788430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203870 (n + 2) : ℚ) / (A013614 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203864.P17811427480518788430

/-! ## A203864.P546928911840448618

`record[A203870(A133263(val(n+1, 2)+1))]`
-/

namespace A203864.P546928911840448618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203864.P546928911840448618

/-! ## A203864.P5504653373970867503

`or(A037860(n+2), A203870(A133263(n+1)))`
-/

namespace A203864.P5504653373970867503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037860 (n + 2)) (A203870 (A133263 (n + 1)).toNat)

end

end A203864.P5504653373970867503

/-!
# A203865: Number of (n+1) X 4 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203865, there is no canonical definition to state claims against.
-/

/-! ## A203865.P12161375761720544971

`A203870(∑[n+2]+4)`
-/

namespace A203865.P12161375761720544971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203865.P12161375761720544971

/-! ## A203865.P11338586895684206816

`lcm((-1)^n, A203870(A167614(n+1)))`
-/

namespace A203865.P11338586895684206816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A203870 (A167614 (n + 1)).toNat)

end

end A203865.P11338586895684206816

/-! ## A203865.P9695039298240848517

`A203870(A167614(n+1))+A011736(n)`
-/

namespace A203865.P9695039298240848517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A167614 (n + 1)).toNat + A011736 n

end

end A203865.P9695039298240848517

/-! ## A203865.P7828735653394428606

`A203870(A167614(n+1))+A185255(n)`
-/

namespace A203865.P7828735653394428606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A167614 (n + 1)).toNat + A185255 n

end

end A203865.P7828735653394428606

/-! ## A203865.P15614441490059550862

`A014963(4*n+6)*A203870(A152950(n+3))`
-/

namespace A203865.P15614441490059550862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A203870 (A152950 (n + 3)).toNat

end

end A203865.P15614441490059550862

/-!
# A203866: Number of (n+1)X5 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203866, there is no canonical definition to state claims against.
-/

/-! ## A203866.P7634147867702218394

`A203870(A141214(n)+7)`
-/

namespace A203866.P7634147867702218394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A141214 n + 7).toNat

end

end A203866.P7634147867702218394

/-! ## A203866.P1260361798309243637

`A203870(A052905(n)+9)`
-/

namespace A203866.P1260361798309243637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A052905 n + 9).toNat

end

end A203866.P1260361798309243637

/-! ## A203866.P11554865196973956321

`A203870(A055999(n)+10)`
-/

namespace A203866.P11554865196973956321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A055999 n + 10).toNat

end

end A203866.P11554865196973956321

/-! ## A203866.P4539273695683909044

`A203870(A167614(n+2)+1)`
-/

namespace A203866.P4539273695683909044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A167614 (n + 2) + 1).toNat

end

end A203866.P4539273695683909044

/-! ## A203866.P7418269454826960328

`A203870(Δ[A023545(n+1)-n²])`
-/

namespace A203866.P7418269454826960328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (f1 (n + 1) - f1 n).toNat

end

end A203866.P7418269454826960328

/-!
# A203867: Number of (n+1)X6 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203867, there is no canonical definition to state claims against.
-/

/-! ## A203867.P9806129459273841493

`A203870(A155212(n)+13)`
-/

namespace A203867.P9806129459273841493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A155212 n + 13).toNat

end

end A203867.P9806129459273841493

/-! ## A203867.P17995848058380089425

`A203870(A374005(n+1))`
-/

namespace A203867.P17995848058380089425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A374005 (n + 1)).toNat

end

end A203867.P17995848058380089425

/-! ## A203867.P4159345810118851427

`A203870(eq[4, A193592(n)])`
-/

namespace A203867.P4159345810118851427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203867.P4159345810118851427

/-! ## A203867.P6921466186010843492

`A203870(Δ[A023545(n+1)])`
-/

namespace A203867.P6921466186010843492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (f1 (n + 1) - f1 n).toNat

end

end A203867.P6921466186010843492

/-! ## A203867.P10807466802953248583

`A203870(eq[5, A200370(n+1)])`
-/

namespace A203867.P10807466802953248583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203867.P10807466802953248583

/-!
# A203868: Number of (n+1)X7 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203868, there is no canonical definition to state claims against.
-/

/-! ## A203868.P2057143807613815098

`A203870(A374007(n+1))`
-/

namespace A203868.P2057143807613815098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A374007 (n + 1)).toNat

end

end A203868.P2057143807613815098

/-! ## A203868.P16616741894554681525

`A203870(eq[3, A219347(n)])`
-/

namespace A203868.P16616741894554681525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203868.P16616741894554681525

/-! ## A203868.P951596121371424180

`A203870(eq[5, A193592(n)])`
-/

namespace A203868.P951596121371424180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203868.P951596121371424180

/-! ## A203868.P6629920139898884513

`A203870(eq[6, A200370(n+1)])`
-/

namespace A203868.P6629920139898884513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203868.P6629920139898884513

/-! ## A203868.P15147034709913245603

`A203870(Δ[Δ[A006504(n+1)]])`
-/

namespace A203868.P15147034709913245603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (f1 (n + 1) - f1 n).toNat

end

end A203868.P15147034709913245603

/-!
# A203869: Number of (n+1)X8 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203869, there is no canonical definition to state claims against.
-/

/-! ## A203869.P3295010174150290644

`A203870(A374008(n+1))`
-/

namespace A203869.P3295010174150290644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (A374008 (n + 1)).toNat

end

end A203869.P3295010174150290644

/-! ## A203869.P8599366476027495953

`A203870(eq[4, A219347(n)])`
-/

namespace A203869.P8599366476027495953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203869.P8599366476027495953

/-! ## A203869.P13869926173510479608

`A203870(eq[6, A193592(n)])`
-/

namespace A203869.P13869926173510479608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203869.P13869926173510479608

/-! ## A203869.P5143255762119858220

`A203870(eq[7, A200370(n+1)])`
-/

namespace A203869.P5143255762119858220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203869.P5143255762119858220

/-! ## A203869.P327920463268613418

`A203870(eq[10, A185782(n+1)])`
-/

namespace A203869.P327920463268613418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203869.P327920463268613418

/-!
# A203871: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203871, there is no canonical definition to state claims against.
-/

/-! ## A203871.P10992963720217072079

`A203878(∑[4*n]+1)`
-/

namespace A203871.P10992963720217072079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203871.P10992963720217072079

/-!
# A203872: Number of (n+1)X3 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203872, there is no canonical definition to state claims against.
-/

/-! ## A203872.P5591323496105623381

`54*21^n+1`
-/

namespace A203872.P5591323496105623381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * 21 ^ n + 1

end

end A203872.P5591323496105623381

/-! ## A203872.P6937203601657182985

`A203878(∑[n+1]+2)`
-/

namespace A203872.P6937203601657182985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203872.P6937203601657182985

/-! ## A203872.P10668483701717694315

`record[A203878(Δ[A003453(n+5)])]`
-/

namespace A203872.P10668483701717694315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203872.P10668483701717694315

/-!
# A203873: Number of (n+1)X4 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203873, there is no canonical definition to state claims against.
-/

/-! ## A203873.P5696626378493502338

`49^n*486+1`
-/

namespace A203873.P5696626378493502338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 ^ n * 486 + 1

end

end A203873.P5696626378493502338

/-! ## A203873.P10833103589531562274

`A203878(∑[n+2]+4)`
-/

namespace A203873.P10833103589531562274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203873.P10833103589531562274

/-! ## A203873.P14684235029474169711

`or(1, A203878(A167614(n+1)))`
-/

namespace A203873.P14684235029474169711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203878 (A167614 (n + 1)).toNat)

end

end A203873.P14684235029474169711

/-! ## A203873.P9577867961688937651

`A203878(A167614(n+1))%A203821(n+1)`
-/

namespace A203873.P9577867961688937651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203878 (A167614 (n + 1)).toNat) (A203821 (n + 1))

end

end A203873.P9577867961688937651

/-! ## A203873.P5315843378275319624

`A008683(n+1)²!*A203878(Δ[A008778(n)])`
-/

namespace A203873.P5315843378275319624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A203878 (f1 (n + 1) - f1 n).toNat

end

end A203873.P5315843378275319624

/-!
# A203874: Number of (n+1)X5 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203874, there is no canonical definition to state claims against.
-/

/-! ## A203874.P8363209209581428417

`A203878(A167614(n+2)+1)`
-/

namespace A203874.P8363209209581428417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A167614 (n + 2) + 1).toNat

end

end A203874.P8363209209581428417

/-! ## A203874.P11123325960431945036

`A203878(Δ[A008778(n+1)]-1)`
-/

namespace A203874.P11123325960431945036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (f1 (n + 1) - f1 n - 1).toNat

end

end A203874.P11123325960431945036

/-!
# A203875: Number of (n+1)X6 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203875, there is no canonical definition to state claims against.
-/

/-! ## A203875.P5421799244404700410

`A203878(A167499(n+3))`
-/

namespace A203875.P5421799244404700410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A167499 (n + 3)).toNat

end

end A203875.P5421799244404700410

/-! ## A203875.P103997452560514799

`A203878(Δ[A264443(n)])`
-/

namespace A203875.P103997452560514799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (f1 (n + 1) - f1 n).toNat

end

end A203875.P103997452560514799

/-! ## A203875.P8136255976039731369

`A203878(A374005(n+1))`
-/

namespace A203875.P8136255976039731369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A374005 (n + 1)).toNat

end

end A203875.P8136255976039731369

/-! ## A203875.P8947110692061233399

`A203878(A056115(n)+11)`
-/

namespace A203875.P8947110692061233399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A056115 n + 11).toNat

end

end A203875.P8947110692061233399

/-! ## A203875.P51777018481225891

`A203878(eq[4, A193592(n)])`
-/

namespace A203875.P51777018481225891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203875.P51777018481225891

/-!
# A203876: 

The programs for A203876, there is no canonical definition to state claims against.
-/

/-! ## A203876.P15348600467214563831

`A203878(A000217(n+6)-dr(n))`
-/

namespace A203876.P15348600467214563831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A000217 (n + 6) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A203876.P15348600467214563831

/-! ## A203876.P9149123526473672557

`A203878(A055999(n+3)+A000041(floor(1/(n+1))))`
-/

namespace A203876.P9149123526473672557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A055999 (n + 3) + A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A203876.P9149123526473672557

/-!
# A203877: 

The programs for A203877, there is no canonical definition to state claims against.
-/

/-! ## A203877.P323571588159201246

`A203878(A167499(n+5)+2)`
-/

namespace A203877.P323571588159201246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (A167499 (n + 5) + 2).toNat

end

end A203877.P323571588159201246

/-! ## A203877.P13188562130857874552

`A203826(eq[6, A193592(n)])/24+1`
-/

namespace A203877.P13188562130857874552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 24 + 1

end

end A203877.P13188562130857874552

/-! ## A203877.P6390796844133176474

`A203878(eq[6, A193592(n)])`
-/

namespace A203877.P6390796844133176474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203877.P6390796844133176474

/-!
# A203878: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no 2X2 subblock having equal diagonal elements or equal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A203878, there is no canonical definition to state claims against.
-/

/-! ## A203878.P2090145759762540329

`A203826(n+1)/24+1`
-/

namespace A203878.P2090145759762540329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203826 (n + 1) : ℚ) / 24 + 1

end

end A203878.P2090145759762540329

/-! ## A203878.P15216160908807331899

`A016777(A203826(n+1)/72)`
-/

namespace A203878.P15216160908807331899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway ((A203826 (n + 1) : ℚ) / 72)).toNat

end

end A203878.P15216160908807331899

/-! ## A203878.P3880188692173612028

`A008619(A203826(n+1)/12)`
-/

namespace A203878.P3880188692173612028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A203826 (n + 1) : ℚ) / 12)).toNat

end

end A203878.P3880188692173612028

/-!
# A203879: 

The programs for A203879, there is no canonical definition to state claims against.
-/

/-! ## A203879.P18087754475020494060

`A203887((n+1)²+n²)`
-/

namespace A203879.P18087754475020494060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 ((n + 1) ^ 2 + n ^ 2)

end

end A203879.P18087754475020494060

/-!
# A203880: Number of (n+1)X2 0..6 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203880, there is no canonical definition to state claims against.
-/

/-! ## A203880.P5804035373418084800

`49*13^(n+1)`
-/

namespace A203880.P5804035373418084800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * 13 ^ (n + 1)

end

end A203880.P5804035373418084800

/-! ## A203880.P14951609992247115990

`lcm(49, 13^(n+1))`
-/

namespace A203880.P14951609992247115990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 49 (13 ^ (n + 1))

end

end A203880.P14951609992247115990

/-! ## A203880.P6100347107357497591

`Δ[13*(a(n-1)+1)]` with `a(0)=52`
-/

namespace A203880.P6100347107357497591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [52] fun n f1 =>
  13 * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A203880.P6100347107357497591

/-! ## A203880.P4884560075763763047

`Δ[49*A091030(n+1)]`
-/

namespace A203880.P4884560075763763047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A091030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203880.P4884560075763763047

/-! ## A203880.P16086299718852178725

`Δ[49*(A196792(n+1)-1)]`
-/

namespace A203880.P16086299718852178725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * (A196792 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A203880.P16086299718852178725

/-!
# A203881: Number of (n+1) X 3 0..6 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203881, there is no canonical definition to state claims against.
-/

/-! ## A203881.P2598298464843300639

`A203887(∑[n+1]+2)`
-/

namespace A203881.P2598298464843300639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203881.P2598298464843300639

/-! ## A203881.P10684667090524363730

`record[A203887(A114091(n+1)+1)]`
-/

namespace A203881.P10684667090524363730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203881.P10684667090524363730

/-! ## A203881.P3586363166684415244

`record[A203887(A333530(n+1))]`
-/

namespace A203881.P3586363166684415244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203881.P3586363166684415244

/-! ## A203881.P14748889135149250029

`or(1, A203887(A000096(n+1)))`
-/

namespace A203881.P14748889135149250029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203887 (A000096 (n + 1)).toNat)

end

end A203881.P14748889135149250029

/-!
# A203882: Number of (n+1) X 4 0..6 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203882, there is no canonical definition to state claims against.
-/

/-! ## A203882.P3637101744160342921

`A203887(A167614(n+1))`
-/

namespace A203882.P3637101744160342921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A167614 (n + 1)).toNat

end

end A203882.P3637101744160342921

/-! ## A203882.P16516481139794910999

`A203887(∑[n+3]+1)`
-/

namespace A203882.P16516481139794910999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203882.P16516481139794910999

/-!
# A203883: Number of (n+1)X5 0..6 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203883, there is no canonical definition to state claims against.
-/

/-! ## A203883.P11123268260420317066

`A203887(A141214(n)+7)`
-/

namespace A203883.P11123268260420317066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A141214 n + 7).toNat

end

end A203883.P11123268260420317066

/-! ## A203883.P4275297819590850487

`A203887(A052905(n)+(A009714(n)+3)²)`
-/

namespace A203883.P4275297819590850487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A052905 n + (A009714 n + 3) ^ 2).toNat

end

end A203883.P4275297819590850487

/-! ## A203883.P17134927133574557589

`A203887(A055998(n+2))`
-/

namespace A203883.P17134927133574557589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A055998 (n + 2)).toNat

end

end A203883.P17134927133574557589

/-!
# A203884: 

The programs for A203884, there is no canonical definition to state claims against.
-/

/-! ## A203884.P17327331605891950129

`A203887(A167499(n+3))`
-/

namespace A203884.P17327331605891950129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A167499 (n + 3)).toNat

end

end A203884.P17327331605891950129

/-! ## A203884.P5321591881016750112

`A203887(A046691(n+3))`
-/

namespace A203884.P5321591881016750112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A046691 (n + 3)).toNat

end

end A203884.P5321591881016750112

/-!
# A203885: 

The programs for A203885, there is no canonical definition to state claims against.
-/

/-! ## A203885.P2027057465695987433

`A203887(A000217(n+6)-dr(n))`
-/

namespace A203885.P2027057465695987433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A000217 (n + 6) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A203885.P2027057465695987433

/-!
# A203886: 

The programs for A203886, there is no canonical definition to state claims against.
-/

/-! ## A203886.P11536200163276283067

`A203887(A055999(n+4))`
-/

namespace A203886.P11536200163276283067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203887 (A055999 (n + 4)).toNat

end

end A203886.P11536200163276283067

/-!
# A203888: 

The programs for A203888, there is no canonical definition to state claims against.
-/

/-! ## A203888.P5540929222847921533

`A203896((n+1)²+n²)`
-/

namespace A203888.P5540929222847921533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 ((n + 1) ^ 2 + n ^ 2)

end

end A203888.P5540929222847921533

/-!
# A203889: Number of (n+1)X2 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203889, there is no canonical definition to state claims against.
-/

/-! ## A203889.P13154626736369544740

`A203896(∑[n]+1)`
-/

namespace A203889.P13154626736369544740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203889.P13154626736369544740

/-! ## A203889.P11353556816615959134

`record[A010054(n)*A203896(n+1)]`
-/

namespace A203889.P11353556816615959134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203889.P11353556816615959134

/-! ## A203889.P18322585015167058205

`record[A203896(n+1)/A156601(n)]`
-/

namespace A203889.P18322585015167058205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203896 (n + 1) : ℚ) / (A156601 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203889.P18322585015167058205

/-! ## A203889.P9098348021144929042

`record[root(A203896(n+1), A035317(n))]`
-/

namespace A203889.P9098348021144929042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203896 (n + 1) : ℝ) ^ (1 / (A035317 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203889.P9098348021144929042

/-! ## A203889.P5716584437460628641

`record[root(A203896(n+1), A074909(n))]`
-/

namespace A203889.P5716584437460628641
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203896 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203889.P5716584437460628641

/-!
# A203890: Number of (n+1)X3 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203890, there is no canonical definition to state claims against.
-/

/-! ## A203890.P9762228160642141904

`A203896(∑[n+1]+2)`
-/

namespace A203890.P9762228160642141904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203890.P9762228160642141904

/-! ## A203890.P13622052111970573605

`record[A010054(n)*A203896(n+2)]`
-/

namespace A203890.P13622052111970573605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A203896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203890.P13622052111970573605

/-! ## A203890.P10092090399623480377

`record[root(A203896(n+2), A074909(n))]`
-/

namespace A203890.P10092090399623480377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203896 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203890.P10092090399623480377

/-! ## A203890.P10760621275311974584

`record[A203896(Δ[A003453(n+5)])]`
-/

namespace A203890.P10760621275311974584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203890.P10760621275311974584

/-! ## A203890.P4518652997242694966

`record[A203896(A000096(val(n+1, 2)+1))]`
-/

namespace A203890.P4518652997242694966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203890.P4518652997242694966

/-!
# A203891: Number of (n+1)X4 0..4 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203891, there is no canonical definition to state claims against.
-/

/-! ## A203891.P13534726256361783949

`A203896(∑[n+2]+4)`
-/

namespace A203891.P13534726256361783949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203891.P13534726256361783949

/-!
# A203892: 

The programs for A203892, there is no canonical definition to state claims against.
-/

/-! ## A203892.P6346602865181615634

`A203896(A052905(n)+9)`
-/

namespace A203892.P6346602865181615634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (A052905 n + 9).toNat

end

end A203892.P6346602865181615634

/-! ## A203892.P16160023045760249025

`A203896(eq[3, A193592(n)])`
-/

namespace A203892.P16160023045760249025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203892.P16160023045760249025

/-!
# A203893: 

The programs for A203893, there is no canonical definition to state claims against.
-/

/-! ## A203893.P250502541902110896

`A203896(eq[4, A193592(n)])`
-/

namespace A203893.P250502541902110896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203893.P250502541902110896

/-!
# A203894: 

The programs for A203894, there is no canonical definition to state claims against.
-/

/-! ## A203894.P2235515164383887806

`A203896(eq[5, A193592(n)])`
-/

namespace A203894.P2235515164383887806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203894.P2235515164383887806

/-!
# A203895: 

The programs for A203895, there is no canonical definition to state claims against.
-/

/-! ## A203895.P2202256049598404680

`A203896(eq[6, A193592(n)])`
-/

namespace A203895.P2202256049598404680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203895.P2202256049598404680

/-!
# A203898: Number of vertices of the integer partition polytope.

The programs for A203898, there is no canonical definition to state claims against.
-/

/-! ## A203898.P11645206802499846133

`A108917(n+1)-A055641(A094441(∑[n]))`
-/

namespace A203898.P11645206802499846133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (n + 1) - A055641 (A094441 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A203898.P11645206802499846133

/-! ## A203898.P11240563276632872343

`A108917(n+1)-A281815(A346097(2*(n+2)))`
-/

namespace A203898.P11240563276632872343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (n + 1) - A281815 (A346097 (2 * (n + 2))).toNat

end

end A203898.P11240563276632872343

/-! ## A203898.P14444737266152053991

`A108917(n+1)-A324832(A058989(3*n+5))`
-/

namespace A203898.P14444737266152053991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (n + 1) - A324832 (A058989 (3 * n + 5)).toNat

end

end A203898.P14444737266152053991

/-! ## A203898.P18444992612321449536

`A301979(A338121(n+5))+A108917(n+1)`
-/

namespace A203898.P18444992612321449536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A338121 (n + 5)).toNat + A108917 (n + 1)

end

end A203898.P18444992612321449536

/-! ## A203898.P10539788239357254260

`A108917(n+1)-A091225(A359907(3*n+2))`
-/

namespace A203898.P10539788239357254260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (n + 1) - A091225 (A359907 (3 * n + 2)).toNat

end

end A203898.P10539788239357254260

