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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274800: Number of n X 5 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274800, there is no canonical definition to state claims against.
-/

/-! ## A274800.P13933947078558887763

`A274803(A167499(n+3))`
-/

namespace A274800.P13933947078558887763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A167499 (n + 3)).toNat

end

end A274800.P13933947078558887763

/-! ## A274800.P13479864855965704618

`A274803(A056000(n)+15)`
-/

namespace A274800.P13479864855965704618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A056000 n + 15).toNat

end

end A274800.P13479864855965704618

/-! ## A274800.P16993800773257232158

`A274803(A000124(n+4)+4)`
-/

namespace A274800.P16993800773257232158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A000124 (n + 4) + 4).toNat

end

end A274800.P16993800773257232158

/-! ## A274800.P3964925646371983455

`A274803(A027379(n+2)+8)`
-/

namespace A274800.P3964925646371983455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A027379 (n + 2) + 8).toNat

end

end A274800.P3964925646371983455

/-! ## A274800.P17446715140468455591

`record[A274803(A167499(A008612(n)))]`
-/

namespace A274800.P17446715140468455591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A167499 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274800.P17446715140468455591

/-!
# A274801: Number of n X 6 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274801, there is no canonical definition to state claims against.
-/

/-! ## A274801.P15910207148885394728

`A274803(A052905(n+2)+11)`
-/

namespace A274801.P15910207148885394728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A052905 (n + 2) + 11).toNat

end

end A274801.P15910207148885394728

/-! ## A274801.P13735104463650781532

`A274803(A055999(n+2)+12)`
-/

namespace A274801.P13735104463650781532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A055999 (n + 2) + 12).toNat

end

end A274801.P13735104463650781532

/-! ## A274801.P5907217437278713419

`A274803(A374007(n+1))`
-/

namespace A274801.P5907217437278713419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A374007 (n + 1)).toNat

end

end A274801.P5907217437278713419

/-! ## A274801.P5973000852855885031

`A274803(A052905(n+3))`
-/

namespace A274801.P5973000852855885031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A052905 (n + 3)).toNat

end

end A274801.P5973000852855885031

/-! ## A274801.P16953867657863017802

`A274803(eq[5, A193592(n)])`
-/

namespace A274801.P16953867657863017802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274801.P16953867657863017802

/-!
# A274802: Number of nX7 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274802, there is no canonical definition to state claims against.
-/

/-! ## A274802.P16755765749215006164

`A274803(eq[8, A131818(n+1)])`
-/

namespace A274802.P16755765749215006164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274802.P16755765749215006164

/-! ## A274802.P10384977473849797056

`A274803(A374008(n+1))`
-/

namespace A274802.P10384977473849797056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A374008 (n + 1)).toNat

end

end A274802.P10384977473849797056

/-! ## A274802.P14646404600496556377

`A274803(A055999(n+4))`
-/

namespace A274802.P14646404600496556377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (A055999 (n + 4)).toNat

end

end A274802.P14646404600496556377

/-! ## A274802.P2357682278128264183

`A274803(eq[6, A193592(n)])`
-/

namespace A274802.P2357682278128264183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274802.P2357682278128264183

/-! ## A274802.P2550374590120204856

`A274803(eq[10, A185782(n+1)])`
-/

namespace A274802.P2550374590120204856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274802.P2550374590120204856

/-!
# A274803: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-1,-2) (-2,-1) (0,-1) or (-1,0) and new values introduced in order 0..2.

The programs for A274803, there is no canonical definition to state claims against.
-/

/-! ## A274803.P11223565988018345513

`A065200(A059576(n))%p?[A050040(n+1)]`
-/

namespace A274803.P11223565988018345513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065200 (A059576 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A274803.P11223565988018345513

/-! ## A274803.P550358312388614462

`A065200(A059576(n))+A000007(A000465(n))`
-/

namespace A274803.P550358312388614462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (A059576 n).toNat + A000007 (A000465 n).toNat

end

end A274803.P550358312388614462

/-! ## A274803.P18198399044450426113

`A342526(A059576(n*A340102(n)))`
-/

namespace A274803.P18198399044450426113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A059576 ((n : ℤ) * A340102 n).toNat).toNat

end

end A274803.P18198399044450426113

/-! ## A274803.P12538429861206648516

`A342526(A059576(n)^A340102(n))`
-/

namespace A274803.P12538429861206648516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (SequenceMachineLib.roundAway ((A059576 n : ℚ) ^ (A340102 n : ℤ))).toNat

end

end A274803.P12538429861206648516

/-!
# A274804: The exponential transform of sigma(n).

The programs for A274804, there is no canonical definition to state claims against.
-/

/-! ## A274804.P10459762349512339829

`A064458(15*A005651(n))`
-/

namespace A274804.P10459762349512339829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (15 * A005651 n).toNat

end

end A274804.P10459762349512339829

/-! ## A274804.P16211475238950186464

`A127757(or(2, A175895(n)))`
-/

namespace A274804.P16211475238950186464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (Int.lor 2 (A175895 n)).toNat

end

end A274804.P16211475238950186464

/-!
# A274806: Number of diagonal Latin squares of order n.

The programs for A274806, there is no canonical definition to state claims against.
-/

/-! ## A274806.P1164858406788516439

`A274171(n+1)*(n+1)!`
-/

namespace A274806.P1164858406788516439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274171 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A274806.P1164858406788516439

/-! ## A274806.P2525663619709543740

`record[A094587(n)]*A274171(n+1)`
-/

namespace A274806.P2525663619709543740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A274171 (n + 1)

end

end A274806.P2525663619709543740

/-! ## A274806.P1658537980682304528

`A305571(n+1)+A305569(n+1)`
-/

namespace A274806.P1658537980682304528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305571 (n + 1) + A305569 (n + 1)

end

end A274806.P1658537980682304528

/-! ## A274806.P3328405478532017503

`∏[A051038(n+1)]*A274171(n+1)`
-/

namespace A274806.P3328405478532017503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A274171 (n + 1)

end

end A274806.P3328405478532017503

/-! ## A274806.P5552666925808557928

`∏[A076499(n+1)]*A274171(n+1)`
-/

namespace A274806.P5552666925808557928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A274171 (n + 1)

end

end A274806.P5552666925808557928

/-!
# A274817: a(n) = 2*a(n-1) - a(n-3) + 2*a(n-4) for n>3, a(0)=1, a(1)=-1, a(2)=4, a(3)=8.

The programs for A274817, the canonical program `A274817.P9420501858621061576` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274817 has offset 0).

The definition of A274817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+2*a(n-4)` (program `A274817.P9420501858621061576`, by `A274817.P9420501858621061576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274817.P9420501858621061576

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274817

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P9420501858621061576.Spec : Prop :=
  ∀ n, P9420501858621061576.a n = A274817 n

theorem P9420501858621061576.correct : P9420501858621061576.Spec := by
  intro n
  simp only [A274817]

end A274817

/-! ## A274817.P3418615738691486193

`2^n-sin(n*π/3)*(sqrt(3)+2*sin(2*n*π/3))`
-/

namespace A274817.P3418615738691486193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) - Real.sin ((n : ℝ) * Real.pi / 3) * (Real.sqrt (3 : ℝ) + 2 * Real.sin ((2 * n : ℝ) * Real.pi / 3))

end

end A274817.P3418615738691486193

namespace A274817

/-- `2^n-sin(n*π/3)*(sqrt(3)+2*sin(2*n*π/3))` -/
def P3418615738691486193.Spec : Prop :=
  ∀ n, P3418615738691486193.a n = (A274817 n : ℝ)

end A274817

/-! ## A274817.P1687671646746109087

`A014551(n)-A057079(n)`
-/

namespace A274817.P1687671646746109087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - A057079 n

end

end A274817.P1687671646746109087

namespace A274817

/-- `A014551(n)-A057079(n)` -/
def P1687671646746109087.Spec : Prop :=
  ∀ n, P1687671646746109087.a n = A274817 n

end A274817

/-! ## A274817.P10001227635168997314

`A087204(n+2)+A014551(n)`
-/

namespace A274817.P10001227635168997314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (n + 2) + A014551 n

end

end A274817.P10001227635168997314

namespace A274817

/-- `A087204(n+2)+A014551(n)` -/
def P10001227635168997314.Spec : Prop :=
  ∀ n, P10001227635168997314.a n = A274817 n

end A274817

/-! ## A274817.P5646070651750428973

`A057079(n+3)+A014551(n)`
-/

namespace A274817.P5646070651750428973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 3) + A014551 n

end

end A274817.P5646070651750428973

namespace A274817

/-- `A057079(n+3)+A014551(n)` -/
def P5646070651750428973.Spec : Prop :=
  ∀ n, P5646070651750428973.a n = A274817 n

end A274817

/-! ## A274817.P16485314514001806468

`A166249(n+1)+Δ[A166249(n)]`
-/

namespace A274817.P16485314514001806468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 (n + 1) + (f1 (n + 1) - f1 n)

end

end A274817.P16485314514001806468

namespace A274817

/-- `A166249(n+1)+Δ[A166249(n)]` -/
def P16485314514001806468.Spec : Prop :=
  ∀ n, P16485314514001806468.a n = A274817 n

end A274817

/-! ## A274817.P634253369741182226

`A242073(2*n+1)+A014551(n)`
-/

namespace A274817.P634253369741182226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242073 (2 * n + 1) + A014551 n

end

end A274817.P634253369741182226

namespace A274817

/-- `A242073(2*n+1)+A014551(n)` -/
def P634253369741182226.Spec : Prop :=
  ∀ n, P634253369741182226.a n = A274817 n

end A274817

/-! ## A274817.P3933940407884645813

`A001045(n+1)+A078008(n)-A057079(n)`
-/

namespace A274817.P3933940407884645813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A078008 n - A057079 n)

end

end A274817.P3933940407884645813

namespace A274817

/-- `A001045(n+1)+A078008(n)-A057079(n)` -/
def P3933940407884645813.Spec : Prop :=
  ∀ n, P3933940407884645813.a n = A274817 n

end A274817

/-! ## A274817.P4184620215253372789

`A014551(n)-(A128834(n+1)+A128834(n))`
-/

namespace A274817.P4184620215253372789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - (A128834 (n + 1) + A128834 n)

end

end A274817.P4184620215253372789

namespace A274817

/-- `A014551(n)-(A128834(n+1)+A128834(n))` -/
def P4184620215253372789.Spec : Prop :=
  ∀ n, P4184620215253372789.a n = A274817 n

end A274817

/-! ## A274817.P13394772097286539866

`A135446(n)+A057078(n)*A057079(n+1)`
-/

namespace A274817.P13394772097286539866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135446 n + A057078 n * A057079 (n + 1)

end

end A274817.P13394772097286539866

namespace A274817

/-- `A135446(n)+A057078(n)*A057079(n+1)` -/
def P13394772097286539866.Spec : Prop :=
  ∀ n, P13394772097286539866.a n = A274817 n

end A274817

/-! ## A274817.P14154315942437854380

`A133513(n+1)+A242563(n+1)+A024495(n)`
-/

namespace A274817.P14154315942437854380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133513 (n + 1) + (A242563 (n + 1) + A024495 n)

end

end A274817.P14154315942437854380

namespace A274817

/-- `A133513(n+1)+A242563(n+1)+A024495(n)` -/
def P14154315942437854380.Spec : Prop :=
  ∀ n, P14154315942437854380.a n = A274817 n

end A274817

/-! ## A274817.P1537359574140741062

`A135446(n)-A049347(n+1)*A057079(n+1)`
-/

namespace A274817.P1537359574140741062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135446 n - A049347 (n + 1) * A057079 (n + 1)

end

end A274817.P1537359574140741062

namespace A274817

/-- `A135446(n)-A049347(n+1)*A057079(n+1)` -/
def P1537359574140741062.Spec : Prop :=
  ∀ n, P1537359574140741062.a n = A274817 n

end A274817

/-! ## A274817.P1514676039701700839

`A014551(n)+A130750(n)-A130752(n)`
-/

namespace A274817.P1514676039701700839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n + (A130750 n - A130752 n)

end

end A274817.P1514676039701700839

namespace A274817

/-- `A014551(n)+A130750(n)-A130752(n)` -/
def P1514676039701700839.Spec : Prop :=
  ∀ n, P1514676039701700839.a n = A274817 n

end A274817

/-! ## A274817.P11845694934697543121

`A000079(n+1)-(A062510(n)+A057079(n))`
-/

namespace A274817.P11845694934697543121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A062510 n + A057079 n)

end

end A274817.P11845694934697543121

namespace A274817

/-- `A000079(n+1)-(A062510(n)+A057079(n))` -/
def P11845694934697543121.Spec : Prop :=
  ∀ n, P11845694934697543121.a n = A274817 n

end A274817

/-! ## A274817.P9597912017246025063

`A281166(n+1)+A014551(n)-A130752(n)`
-/

namespace A274817.P9597912017246025063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 (n + 1) + (A014551 n - A130752 n)

end

end A274817.P9597912017246025063

namespace A274817

/-- `A281166(n+1)+A014551(n)-A130752(n)` -/
def P9597912017246025063.Spec : Prop :=
  ∀ n, P9597912017246025063.a n = A274817 n

end A274817

/-! ## A274817.P12472038446356301946

`A130750(n)+A281166(n)-A014551(n+1)`
-/

namespace A274817.P12472038446356301946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + (A281166 n - A014551 (n + 1))

end

end A274817.P12472038446356301946

namespace A274817

/-- `A130750(n)+A281166(n)-A014551(n+1)` -/
def P12472038446356301946.Spec : Prop :=
  ∀ n, P12472038446356301946.a n = A274817 n

end A274817

/-! ## A274817.P4976393894364832356

`A062510(n+1)-(A141775(n)+A128834(n+1))`
-/

namespace A274817.P4976393894364832356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (n + 1) - (A141775 n + A128834 (n + 1))

end

end A274817.P4976393894364832356

namespace A274817

/-- `A062510(n+1)-(A141775(n)+A128834(n+1))` -/
def P4976393894364832356.Spec : Prop :=
  ∀ n, P4976393894364832356.a n = A274817 n

end A274817

/-! ## A274817.P13443590770143394716

`A281166(n+1)+A281166(n)-A014551(n+1)`
-/

namespace A274817.P13443590770143394716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 (n + 1) + (A281166 n - A014551 (n + 1))

end

end A274817.P13443590770143394716

namespace A274817

/-- `A281166(n+1)+A281166(n)-A014551(n+1)` -/
def P13443590770143394716.Spec : Prop :=
  ∀ n, P13443590770143394716.a n = A274817 n

end A274817

/-! ## A274817.P10982607003896873752

`A130755(n+1)+A014551(n)-A130752(n+1)`
-/

namespace A274817.P10982607003896873752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 (n + 1) + (A014551 n - A130752 (n + 1))

end

end A274817.P10982607003896873752

namespace A274817

/-- `A130755(n+1)+A014551(n)-A130752(n+1)` -/
def P10982607003896873752.Spec : Prop :=
  ∀ n, P10982607003896873752.a n = A274817 n

end A274817

/-!
# A274820: Spiral constructed on the nodes of the infinite triangular net in which each term is the least nonnegative integer such that no diagonal contains a repeated term.

The programs for A274820, there is no canonical definition to state claims against.
-/

/-! ## A274820.P12763683468495893384

`A274821(n)-1`
-/

namespace A274820.P12763683468495893384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274821 n - 1

end

end A274820.P12763683468495893384

/-! ## A274820.P16693963159510377424

`A002837(A274821(n))`
-/

namespace A274820.P16693963159510377424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A274821 n).toNat

end

end A274820.P16693963159510377424

/-! ## A274820.P6266386810024874936

`A057918(A274821(n)²)`
-/

namespace A274820.P6266386810024874936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A274821 n ^ 2).toNat

end

end A274820.P6266386810024874936

/-! ## A274820.P3446837503801368681

`A086520(A274821(n)²)`
-/

namespace A274820.P3446837503801368681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A274821 n ^ 2).toNat

end

end A274820.P3446837503801368681

/-! ## A274820.P17454619523426433793

`A088226(A274821(n)²)`
-/

namespace A274820.P17454619523426433793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A274821 n ^ 2).toNat

end

end A274820.P17454619523426433793

/-! ## A274820.P4764146223251302394

`A214526(A274821(n)²)`
-/

namespace A274820.P4764146223251302394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A274821 n ^ 2).toNat

end

end A274820.P4764146223251302394

/-! ## A274820.P1195392008770565523

`A023445(A274821(n)+2)`
-/

namespace A274820.P1195392008770565523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A274821 n + 2).toNat

end

end A274820.P1195392008770565523

/-! ## A274820.P9893017080345301874

`A046667(2*A274821(n))`
-/

namespace A274820.P9893017080345301874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A274821 n).toNat

end

end A274820.P9893017080345301874

/-! ## A274820.P17312152817585040267

`A023448(A274821(n)+5)`
-/

namespace A274820.P17312152817585040267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A274821 n + 5).toNat

end

end A274820.P17312152817585040267

/-! ## A274820.P4916575595426235112

`A070198(n)%A274821(n)`
-/

namespace A274820.P4916575595426235112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274821 n)

end

end A274820.P4916575595426235112

/-! ## A274820.P14732703684050256375

`A030494(n+1)%A274821(n)`
-/

namespace A274820.P14732703684050256375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A274821 n)

end

end A274820.P14732703684050256375

/-! ## A274820.P6151386232483283165

`A072828(n+1)%A274821(n)`
-/

namespace A274820.P6151386232483283165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A274821 n)

end

end A274820.P6151386232483283165

/-! ## A274820.P2682986313831972023

`A079782(n+1)%A274821(n)`
-/

namespace A274820.P2682986313831972023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274821 n)

end

end A274820.P2682986313831972023

/-! ## A274820.P4932768783342959292

`A083685(n+1)%A274821(n)`
-/

namespace A274820.P4932768783342959292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274821 n)

end

end A274820.P4932768783342959292

/-! ## A274820.P12780375520895840560

`A083800(n+1)%A274821(n)`
-/

namespace A274820.P12780375520895840560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A274821 n)

end

end A274820.P12780375520895840560

/-! ## A274820.P12391496975217287668

`A121934(n+1)%A274821(n)`
-/

namespace A274820.P12391496975217287668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A274821 n)

end

end A274820.P12391496975217287668

/-! ## A274820.P1377377312538867997

`A023443(A274821(n)%(n+2))`
-/

namespace A274820.P1377377312538867997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A274821 n) (n + 2 : ℤ)).toNat

end

end A274820.P1377377312538867997

/-! ## A274820.P1732177273230916074

`abs(A274821(n)+ratio[A033999(n)])`
-/

namespace A274820.P1732177273230916074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A274821 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)|

end

end A274820.P1732177273230916074

/-! ## A274820.P6950669005836231627

`A001478(n+1)+A274821(n)+n`
-/

namespace A274820.P6950669005836231627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A274821 n + (n : ℤ))

end

end A274820.P6950669005836231627

/-! ## A274820.P1658766660835343648

`(A274821(n)+A004771(n))%(n+1)`
-/

namespace A274820.P1658766660835343648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274821 n + A004771 n) (n + 1 : ℤ)

end

end A274820.P1658766660835343648

/-!
# A274821: Hexagonal spiral constructed on the nodes of the infinite triangular net in which each term is the least positive integer such that no diagonal contains a repeated term.

The programs for A274821, there is no canonical definition to state claims against.
-/

/-! ## A274821.P15865514882065119819

`A274820(n)+1`
-/

namespace A274821.P15865514882065119819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 n + 1

end

end A274821.P15865514882065119819

/-! ## A274821.P18266589899272852279

`A005496(A274820(n))`
-/

namespace A274821.P18266589899272852279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A274820 n).toNat

end

end A274821.P18266589899272852279

/-! ## A274821.P16061775310965039975

`A175213(A274820(n)²)`
-/

namespace A274821.P16061775310965039975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A274820 n ^ 2).toNat

end

end A274821.P16061775310965039975

/-! ## A274821.P13657151368661484858

`A260056(A274820(n)²)`
-/

namespace A274821.P13657151368661484858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A274820 n ^ 2).toNat

end

end A274821.P13657151368661484858

/-! ## A274821.P816128351352578839

`A264766(A274820(n)²)`
-/

namespace A274821.P816128351352578839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A274820 n ^ 2).toNat

end

end A274821.P816128351352578839

/-! ## A274821.P8325250691770210447

`A008619(2*A274820(n))`
-/

namespace A274821.P8325250691770210447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274820 n).toNat

end

end A274821.P8325250691770210447

/-! ## A274821.P6781327214420717116

`A028242(2*A274820(n))`
-/

namespace A274821.P6781327214420717116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A274820 n).toNat

end

end A274821.P6781327214420717116

/-! ## A274821.P8277372688945692878

`A080513(2*A274820(n))`
-/

namespace A274821.P8277372688945692878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A274820 n).toNat

end

end A274821.P8277372688945692878

/-! ## A274821.P8864338896406522698

`A008611(3*A274820(n))`
-/

namespace A274821.P8864338896406522698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274820 n).toNat

end

end A274821.P8864338896406522698

/-! ## A274821.P15312948896915332083

`A008620(3*A274820(n))`
-/

namespace A274821.P15312948896915332083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A274820 n).toNat

end

end A274821.P15312948896915332083

/-! ## A274821.P9174933102073378137

`A008612(6*A274820(n))`
-/

namespace A274821.P9174933102073378137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A274820 n).toNat

end

end A274821.P9174933102073378137

/-! ## A274821.P13024145910866262607

`A103221(6*A274820(n))`
-/

namespace A274821.P13024145910866262607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A274820 n).toNat

end

end A274821.P13024145910866262607

/-! ## A274821.P7306687182402214645

`A000005(2^A274820(n))`
-/

namespace A274821.P7306687182402214645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A274820 n : ℤ))).toNat

end

end A274821.P7306687182402214645

/-! ## A274821.P2952867658148395365

`A002377(or(16, A274820(n)))`
-/

namespace A274821.P2952867658148395365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.lor 16 (A274820 n)).toNat

end

end A274821.P2952867658148395365

/-! ## A274821.P4847186450430177573

`1-A001057(2*A274820(n))`
-/

namespace A274821.P4847186450430177573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A274820 n).toNat

end

end A274821.P4847186450430177573

/-! ## A274821.P11604752830565553770

`A001222(2*2^A274820(n))`
-/

namespace A274821.P11604752830565553770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A274820 n : ℤ))).toNat

end

end A274821.P11604752830565553770

/-! ## A274821.P3587071177648166254

`A001222(lcm(3, 2^A274820(n)))`
-/

namespace A274821.P3587071177648166254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A274820 n : ℤ))))

end

end A274821.P3587071177648166254

/-! ## A274821.P9167298196372317023

`1-A057428(n)*A274820(n)`
-/

namespace A274821.P9167298196372317023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A274820 n

end

end A274821.P9167298196372317023

/-! ## A274821.P1107977142693140421

`A005555(2*A274820(n)-A274820(n))`
-/

namespace A274821.P1107977142693140421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (2 * A274820 n - A274820 n).toNat

end

end A274821.P1107977142693140421

/-!
# A274824: Triangle read by rows: T(n,k) = (n-k+1)*sigma(k), n>=1, 1<=k<=n.

The programs for A274824, the canonical program `A274824.P3690629462728526552` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274824 has offset 1).

The definition of A274824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274824.P3690629462728526552

`A004736(n+1)*A245093(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A274824

/-- `A004736(n+1)*A245093(n+1)` -/
def P3690629462728526552.Spec : Prop :=
  ∀ n, P3690629462728526552.a n = A274824 (n + 1)

theorem P3690629462728526552.correct : P3690629462728526552.Spec := by
  intro n
  simp only [A274824, Nat.add_sub_cancel]

end A274824

/-! ## A274824.P1565439694275175603

`(A025581(n)+1)*A245093(n+1)`
-/

namespace A274824.P1565439694275175603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A245093 (n + 1)

end

end A274824.P1565439694275175603

namespace A274824

/-- `(A025581(n)+1)*A245093(n+1)` -/
def P1565439694275175603.Spec : Prop :=
  ∀ n, P1565439694275175603.a n = A274824 (n + 1)

theorem P1565439694275175603.correct : P1565439694275175603.Spec := by
  intro n
  simp only [A274824, Nat.add_sub_cancel, A274824.P1565439694275175603.a, A274824.P3690629462728526552.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A245093, A245093.P1980232344723571166.f1, A245093.P1980232344723571166.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A274824

/-! ## A274824.P5923936087431845872

`(A127739(n+1)-n)*A245093(n+1)`
-/

namespace A274824.P5923936087431845872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A245093 (n + 1)

end

end A274824.P5923936087431845872

namespace A274824

/-- `(A127739(n+1)-n)*A245093(n+1)` -/
def P5923936087431845872.Spec : Prop :=
  ∀ n, P5923936087431845872.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P15883027288003262956

`A000203(A002260(n+1))*A004736(n+1)`
-/

namespace A274824.P15883027288003262956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A004736 (n + 1)

end

end A274824.P15883027288003262956

namespace A274824

/-- `A000203(A002260(n+1))*A004736(n+1)` -/
def P15883027288003262956.Spec : Prop :=
  ∀ n, P15883027288003262956.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P11635029956909986841

`A000203(A002262(n)+1)*A004736(n+1)`
-/

namespace A274824.P11635029956909986841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002262 n + 1).toNat * A004736 (n + 1)

end

end A274824.P11635029956909986841

namespace A274824

/-- `A000203(A002262(n)+1)*A004736(n+1)` -/
def P11635029956909986841.Spec : Prop :=
  ∀ n, P11635029956909986841.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P10071146968953007487

`(A025581(n)+1)*A000203(A002260(n+1))`
-/

namespace A274824.P10071146968953007487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000203 (A002260 (n + 1)).toNat

end

end A274824.P10071146968953007487

namespace A274824

/-- `(A025581(n)+1)*A000203(A002260(n+1))` -/
def P10071146968953007487.Spec : Prop :=
  ∀ n, P10071146968953007487.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P6638392881102418015

`A221529(n+1)/A390877(n+1)*A390879(n+1)`
-/

namespace A274824.P6638392881102418015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221529 (n + 1) : ℚ) / (A390877 (n + 1) : ℚ) * (A390879 (n + 1) : ℚ)

end

end A274824.P6638392881102418015

namespace A274824

/-- `A221529(n+1)/A390877(n+1)*A390879(n+1)` -/
def P6638392881102418015.Spec : Prop :=
  ∀ n, P6638392881102418015.a n = (A274824 (n + 1) : ℚ)

end A274824

/-! ## A274824.P7667705550989288558

`A000203(A002260(n+1))*A065033(A099375(n))`
-/

namespace A274824.P7667705550989288558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A065033 (A099375 n).toNat

end

end A274824.P7667705550989288558

namespace A274824

/-- `A000203(A002260(n+1))*A065033(A099375(n))` -/
def P7667705550989288558.Spec : Prop :=
  ∀ n, P7667705550989288558.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P10340752240545505757

`A000203(A002260(n+1))*A002260(A278818(n))`
-/

namespace A274824.P10340752240545505757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A002260 (A278818 n).toNat

end

end A274824.P10340752240545505757

namespace A274824

/-- `A000203(A002260(n+1))*A002260(A278818(n))` -/
def P10340752240545505757.Spec : Prop :=
  ∀ n, P10340752240545505757.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P13962136618921814045

`A000203(A004736(A061579(n)+1))*A004736(n+1)`
-/

namespace A274824.P13962136618921814045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (A061579 n + 1).toNat).toNat * A004736 (n + 1)

end

end A274824.P13962136618921814045

namespace A274824

/-- `A000203(A004736(A061579(n)+1))*A004736(n+1)` -/
def P13962136618921814045.Spec : Prop :=
  ∀ n, P13962136618921814045.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P14369212659641145252

`A000203(A002260(n+1))*A057555(2*(n+1))`
-/

namespace A274824.P14369212659641145252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A057555 (2 * (n + 1))

end

end A274824.P14369212659641145252

namespace A274824

/-- `A000203(A002260(n+1))*A057555(2*(n+1))` -/
def P14369212659641145252.Spec : Prop :=
  ∀ n, P14369212659641145252.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P801226901605226673

`A000203(A057555(2*n+1))*A004736(n+1)`
-/

namespace A274824.P801226901605226673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057555 (2 * n + 1)).toNat * A004736 (n + 1)

end

end A274824.P801226901605226673

namespace A274824

/-- `A000203(A057555(2*n+1))*A004736(n+1)` -/
def P801226901605226673.Spec : Prop :=
  ∀ n, P801226901605226673.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P4417286303710527737

`A000203(A057555(2*n+1))*A057555(2*(n+1))`
-/

namespace A274824.P4417286303710527737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057555 (2 * n + 1)).toNat * A057555 (2 * (n + 1))

end

end A274824.P4417286303710527737

namespace A274824

/-- `A000203(A057555(2*n+1))*A057555(2*(n+1))` -/
def P4417286303710527737.Spec : Prop :=
  ∀ n, P4417286303710527737.a n = A274824 (n + 1)

end A274824

/-! ## A274824.P15711985093419450200

`A000203(A000005(A059268(n)))*A004736(n+1)`
-/

namespace A274824.P15711985093419450200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A059268 n).toNat).toNat * A004736 (n + 1)

end

end A274824.P15711985093419450200

namespace A274824

/-- `A000203(A000005(A059268(n)))*A004736(n+1)` -/
def P15711985093419450200.Spec : Prop :=
  ∀ n, P15711985093419450200.a n = A274824 (n + 1)

end A274824

/-!
# A274825: Gaps associated with the arithmetic progressions in A278735.

The programs for A274825, there is no canonical definition to state claims against.
-/

/-! ## A274825.P4507839953149262463

`A279021(A133263(n))-A279062(n+1)`
-/

namespace A274825.P4507839953149262463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279021 (A133263 n).toNat - A279062 (n + 1)

end

end A274825.P4507839953149262463

/-!
# A274826: Denominator of the n-th partial sum of the reciprocals of the successive prime gaps.

The programs for A274826, there is no canonical definition to state claims against.
-/

/-! ## A274826.P9804156576458920396

`A274827(n+1)/∑[1/A001223(n+1)]`
-/

namespace A274826.P9804156576458920396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001223 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274827 (n + 1) : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274826.P9804156576458920396

/-! ## A274826.P10871862594345202662

`lcm(A147810(A275074(n)), A274980(n+1))`
-/

namespace A274826.P10871862594345202662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A147810 (A275074 n).toNat) (A274980 (n + 1))

end

end A274826.P10871862594345202662

/-! ## A274826.P8960186623421970970

`A274980(C(A269396(n+1), n))`
-/

namespace A274826.P8960186623421970970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274980 (Nat.choose (A269396 (n + 1)).toNat n)

end

end A274826.P8960186623421970970

/-! ## A274826.P14940577300166424182

`A274980(n+1)%A197159(n+3)`
-/

namespace A274826.P14940577300166424182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274980 (n + 1)) (A197159 (n + 3))

end

end A274826.P14940577300166424182

/-! ## A274826.P9774887862194077031

`A274980(n+1)+A007814(A274974(n))`
-/

namespace A274826.P9774887862194077031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274980 (n + 1) + A007814 (A274974 n).toNat

end

end A274826.P9774887862194077031

/-!
# A274828: Integer part of the alternating n-th partial sum of the reciprocals of the successive prime gaps.

The programs for A274828, the canonical program `A274828.P10579815518661466708` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274828 has offset 1).

The definition of A274828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274828.P10579815518661466708

`floor(∑[(-1)^n/A001223(n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A274828

/-- `floor(∑[(-1)^n/A001223(n+1)])` -/
def P10579815518661466708.Spec : Prop :=
  ∀ n, P10579815518661466708.a n = A274828 (n + 1)

theorem P10579815518661466708.correct : P10579815518661466708.Spec := by
  intro n
  simp only [A274828, Nat.add_sub_cancel]

end A274828

/-! ## A274828.P1363882350462356353

`floor(A275056(n+1)/A274980(n+1))`
-/

namespace A274828.P1363882350462356353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275056 (n + 1) : ℚ) / (A274980 (n + 1) : ℚ)⌋

end

end A274828.P1363882350462356353

namespace A274828

/-- `floor(A275056(n+1)/A274980(n+1))` -/
def P1363882350462356353.Spec : Prop :=
  ∀ n, P1363882350462356353.a n = A274828 (n + 1)

end A274828

/-! ## A274828.P4913280708978211664

`floor(∑[(-1)^n/A075526(n+1)])`
-/

namespace A274828.P4913280708978211664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) / (A075526 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A274828.P4913280708978211664

namespace A274828

/-- `floor(∑[(-1)^n/A075526(n+1)])` -/
def P4913280708978211664.Spec : Prop :=
  ∀ n, P4913280708978211664.a n = A274828 (n + 1)

end A274828

/-! ## A274828.P18032077117763241885

`A204443(∑[∑[A062866(n)+1]])`
-/

namespace A274828.P18032077117763241885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274828.P18032077117763241885

namespace A274828

/-- `A204443(∑[∑[A062866(n)+1]])` -/
def P18032077117763241885.Spec : Prop :=
  ∀ n, P18032077117763241885.a n = A274828 (n + 1)

end A274828

/-! ## A274828.P8044317685036830425

`A347523(A030546(n)-A309873(n+1))`
-/

namespace A274828.P8044317685036830425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A030546 n - A309873 (n + 1)).toNat

end

end A274828.P8044317685036830425

namespace A274828

/-- `A347523(A030546(n)-A309873(n+1))` -/
def P8044317685036830425.Spec : Prop :=
  ∀ n, P8044317685036830425.a n = A274828 (n + 1)

end A274828

/-!
# A274829: Numbers in the range of the sum of deficient divisors function.

The programs for A274829, there is no canonical definition to state claims against.
-/

/-! ## A274829.P14356924244136510739

`eq[1, char[A187793(n+1)]]`
-/

namespace A274829.P14356924244136510739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274829.P14356924244136510739

/-! ## A274829.P701442397994058918

`comp[A210510(n+1)-1]+1`
-/

namespace A274829.P701442397994058918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210510 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274829.P701442397994058918

/-! ## A274829.P16026200546875884970

`lt[0, char[A187793(A032742(n+1))]]`
-/

namespace A274829.P16026200546875884970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A032742 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274829.P16026200546875884970

/-! ## A274829.P13986207976919130184

`comp[comp[A187793(A255940(n+1))]-1]+1`
-/

namespace A274829.P13986207976919130184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A255940 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274829.P13986207976919130184

/-! ## A274829.P3004351379663025449

`lt[A046769(2*n+1), char[A187793(n+1)]]`
-/

namespace A274829.P3004351379663025449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274829.P3004351379663025449

/-! ## A274829.P1998055216247697865

`lt[A294930(2*n+1), char[A187793(n+1)]]`
-/

namespace A274829.P1998055216247697865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274829.P1998055216247697865

/-! ## A274829.P14154976717518578268

`lt[A080224(2*n+3), char[A187793(n+1)]]`
-/

namespace A274829.P14154976717518578268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274829.P14154976717518578268

/-! ## A274829.P14435899955358136923

`lt[A063524(3*n+4), char[A187793(n+1)]]`
-/

namespace A274829.P14435899955358136923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274829.P14435899955358136923

/-!
# A274830: Numbers k such that 7*k+1 is a triangular number (A000217).

The programs for A274830, the canonical program `A274830.P11708419349371294296` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274830 has offset 1).

The definition of A274830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274830.P7548372886279336115

`(14*n*(n+1)+(2*(n+1)-1)*(-1)^(n+1)+1)/16`
-/

namespace A274830.P7548372886279336115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * n * (n + 1) : ℤ) + ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 1 : ℚ) / 16

end

end A274830.P7548372886279336115

namespace A274830

/-- `(14*n*(n+1)+(2*(n+1)-1)*(-1)^(n+1)+1)/16` -/
def P7548372886279336115.Spec : Prop :=
  ∀ n, P7548372886279336115.a n = (A274830 (n + 1) : ℚ)

theorem P7548372886279336115.correct : P7548372886279336115.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274830, Nat.add_sub_cancel, A274830.P7548372886279336115.a, A274830.P11708419349371294296.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274830, Nat.add_sub_cancel, A274830.P7548372886279336115.a, A274830.P11708419349371294296.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274830

/-! ## A274830.P11708419349371294296

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=17`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274830

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11708419349371294296.Spec : Prop :=
  ∀ n, P11708419349371294296.a n = A274830 (n + 1)

theorem P11708419349371294296.correct : P11708419349371294296.Spec := by
  intro n
  simp only [A274830, Nat.add_sub_cancel]

end A274830

/-! ## A274830.P14009076329765881155

`∑[gcd(n, ∑[n])+n]`
-/

namespace A274830.P14009076329765881155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274830.P14009076329765881155

namespace A274830

/-- `∑[gcd(n, ∑[n])+n]` -/
def P14009076329765881155.Spec : Prop :=
  ∀ n, (P14009076329765881155.a n : ℤ) = A274830 (n + 1)

end A274830

/-! ## A274830.P17406386877882276475

`∑[lcm(2, n)/2+n]`
-/

namespace A274830.P17406386877882276475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274830.P17406386877882276475

namespace A274830

/-- `∑[lcm(2, n)/2+n]` -/
def P17406386877882276475.Spec : Prop :=
  ∀ n, P17406386877882276475.a n = (A274830 (n + 1) : ℚ)

end A274830

/-! ## A274830.P8307801457652876468

`∑[(n%2+3)*n/2]`
-/

namespace A274830.P8307801457652876468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 : ℕ) : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274830.P8307801457652876468

namespace A274830

/-- `∑[(n%2+3)*n/2]` -/
def P8307801457652876468.Spec : Prop :=
  ∀ n, P8307801457652876468.a n = (A274830 (n + 1) : ℚ)

end A274830

/-! ## A274830.P1076728748553091612

`∑[n/(2-and(1, n))]+∑[n]`
-/

namespace A274830.P1076728748553091612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A274830.P1076728748553091612

namespace A274830

/-- `∑[n/(2-and(1, n))]+∑[n]` -/
def P1076728748553091612.Spec : Prop :=
  ∀ n, P1076728748553091612.a n = (A274830 (n + 1) : ℚ)

end A274830

/-! ## A274830.P8091189863313696875

`∑[-(n/or(n, -2))]+∑[n]`
-/

namespace A274830.P8091189863313696875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A274830.P8091189863313696875

namespace A274830

/-- `∑[-(n/or(n, -2))]+∑[n]` -/
def P8091189863313696875.Spec : Prop :=
  ∀ n, P8091189863313696875.a n = (A274830 (n + 1) : ℚ)

end A274830

/-! ## A274830.P6905865586294441827

`∑[2*n]-C(floor(n/2)+1, 2)`
-/

namespace A274830.P6905865586294441827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (⌊(n : ℚ) / 2⌋ + 1).toNat 2 : ℤ)

end

end A274830.P6905865586294441827

namespace A274830

/-- `∑[2*n]-C(floor(n/2)+1, 2)` -/
def P6905865586294441827.Spec : Prop :=
  ∀ n, P6905865586294441827.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P9508149305315624375

`∑[a(n-2)+7]-a(n-1)` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A274830.P9508149305315624375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A274830.P9508149305315624375

namespace A274830

/-- `∑[a(n-2)+7]-a(n-1)` -/
def P9508149305315624375.Spec : Prop :=
  ∀ n, P9508149305315624375.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P5530128662165594513

`A001318(n)+∑[n]`
-/

namespace A274830.P5530128662165594513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274830.P5530128662165594513

namespace A274830

/-- `A001318(n)+∑[n]` -/
def P5530128662165594513.Spec : Prop :=
  ∀ n, P5530128662165594513.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P2980352942950671199

`∑[A026741(n)+n]`
-/

namespace A274830.P2980352942950671199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274830.P2980352942950671199

namespace A274830

/-- `∑[A026741(n)+n]` -/
def P2980352942950671199.Spec : Prop :=
  ∀ n, P2980352942950671199.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P824555621825456399

`(n+1)²-A101881(n)`
-/

namespace A274830.P824555621825456399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A101881 n

end

end A274830.P824555621825456399

namespace A274830

/-- `(n+1)²-A101881(n)` -/
def P824555621825456399.Spec : Prop :=
  ∀ n, P824555621825456399.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P12014556860871915856

`∑[n]+A319390(n)-1`
-/

namespace A274830.P12014556860871915856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A319390 n - 1)

end

end A274830.P12014556860871915856

namespace A274830

/-- `∑[n]+A319390(n)-1` -/
def P12014556860871915856.Spec : Prop :=
  ∀ n, P12014556860871915856.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P16926839571334319448

`∑[n]+A152749(n)/2`
-/

namespace A274830.P16926839571334319448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A152749 n : ℚ) / 2

end

end A274830.P16926839571334319448

namespace A274830

/-- `∑[n]+A152749(n)/2` -/
def P16926839571334319448.Spec : Prop :=
  ∀ n, P16926839571334319448.a n = (A274830 (n + 1) : ℚ)

end A274830

/-! ## A274830.P4779504222139858454

`(n+1)²-∑[A158416(n)]`
-/

namespace A274830.P4779504222139858454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274830.P4779504222139858454

namespace A274830

/-- `(n+1)²-∑[A158416(n)]` -/
def P4779504222139858454.Spec : Prop :=
  ∀ n, P4779504222139858454.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P10239287636278683222

`A213782(n+1)-∑[(n+1)²]`
-/

namespace A274830.P10239287636278683222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213782 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274830.P10239287636278683222

namespace A274830

/-- `A213782(n+1)-∑[(n+1)²]` -/
def P10239287636278683222.Spec : Prop :=
  ∀ n, P10239287636278683222.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P547631681407981778

`A118277(n)+A001057(n)`
-/

namespace A274830.P547631681407981778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A001057 n

end

end A274830.P547631681407981778

namespace A274830

/-- `A118277(n)+A001057(n)` -/
def P547631681407981778.Spec : Prop :=
  ∀ n, P547631681407981778.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P11581189586954004767

`A211539(n)+A093353(n)`
-/

namespace A274830.P11581189586954004767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A093353 n

end

end A274830.P11581189586954004767

namespace A274830

/-- `A211539(n)+A093353(n)` -/
def P11581189586954004767.Spec : Prop :=
  ∀ n, P11581189586954004767.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P16062508890688084835

`A317301(n)+A074377(n)`
-/

namespace A274830.P16062508890688084835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317301 n + A074377 n

end

end A274830.P16062508890688084835

namespace A274830

/-- `A317301(n)+A074377(n)` -/
def P16062508890688084835.Spec : Prop :=
  ∀ n, P16062508890688084835.a n = A274830 (n + 1)

end A274830

/-! ## A274830.P16965089382442731525

`A317300(n)+A195160(n)`
-/

namespace A274830.P16965089382442731525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A195160 n

end

end A274830.P16965089382442731525

namespace A274830

/-- `A317300(n)+A195160(n)` -/
def P16965089382442731525.Spec : Prop :=
  ∀ n, P16965089382442731525.a n = A274830 (n + 1)

end A274830

/-!
# A274835: Number A(n,k) of set partitions of [n] such that the difference between each element and its block index is a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A274835, there is no canonical definition to state claims against.
-/

/-! ## A274835.P14045825421102379894

`A275069(n)-A302048(A352830(2*n+3))`
-/

namespace A274835.P14045825421102379894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n - A302048 (A352830 (2 * n + 3)).toNat

end

end A274835.P14045825421102379894

/-! ## A274835.P18038108120960681669

`A275069(n)-A341001(A034368(n+1))`
-/

namespace A274835.P18038108120960681669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n - A341001 ((A034368 (n + 1)).toNat + 385)

end

end A274835.P18038108120960681669

/-!
# A274836: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of three.

The programs for A274836, there is no canonical definition to state claims against.
-/

/-! ## A274836.P10488251236985003693

`A274835(∑[n+3]+n+3)`
-/

namespace A274836.P10488251236985003693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A274836.P10488251236985003693

/-! ## A274836.P18149996732836646361

`A274835(A046691(n+2))%A256150(n+1)`
-/

namespace A274836.P18149996732836646361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274835 (A046691 (n + 2)).toNat) (A256150 (n + 1))

end

end A274836.P18149996732836646361

/-! ## A274836.P5303112266043210669

`A090501(A186546(n))`
-/

namespace A274836.P5303112266043210669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A186546 n).toNat

end

end A274836.P5303112266043210669

/-! ## A274836.P9493136430309633833

`A165763(A273731(n))`
-/

namespace A274836.P9493136430309633833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165763 (A273731 n).toNat

end

end A274836.P9493136430309633833

/-!
# A274837: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of four.

The programs for A274837, there is no canonical definition to state claims against.
-/

/-! ## A274837.P1991633327957806425

`A274835(A052905(n+2))`
-/

namespace A274837.P1991633327957806425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A052905 (n + 2)).toNat

end

end A274837.P1991633327957806425

/-! ## A274837.P11554870455798366414

`A274835(eq[4, A025581(n)])`
-/

namespace A274837.P11554870455798366414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274837.P11554870455798366414

/-! ## A274837.P14687194623258134130

`A274835(A167499(n)+A059558(n+1))`
-/

namespace A274837.P14687194623258134130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A167499 n + A059558 (n + 1)).toNat

end

end A274837.P14687194623258134130

/-! ## A274837.P14089193484851796802

`A274835(A008574(n+2)+A000124(n+1))`
-/

namespace A274837.P14089193484851796802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A008574 (n + 2) + A000124 (n + 1)).toNat

end

end A274837.P14089193484851796802

/-! ## A274837.P3783722803498990373

`A274835(A152947(n+3)+A008574(n+2))`
-/

namespace A274837.P3783722803498990373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A152947 (n + 3) + A008574 (n + 2)).toNat

end

end A274837.P3783722803498990373

/-! ## A274837.P436258927811783562

`A274835(A167499(n+6)-A005408(n+11))`
-/

namespace A274837.P436258927811783562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A167499 (n + 6) - A005408 (n + 11)).toNat

end

end A274837.P436258927811783562

/-! ## A274837.P292502752100863965

`A274835(A059845(n+7)%A046691(n+8))`
-/

namespace A274837.P292502752100863965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (Int.tmod (A059845 (n + 7)) (A046691 (n + 8))).toNat

end

end A274837.P292502752100863965

/-!
# A274838: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of five.

The programs for A274838, there is no canonical definition to state claims against.
-/

/-! ## A274838.P9826195312230484257

`A274835(A055999(n+3))`
-/

namespace A274838.P9826195312230484257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A055999 (n + 3)).toNat

end

end A274838.P9826195312230484257

/-! ## A274838.P1123670600406655884

`A274835(Δ[A023551(n+1)])`
-/

namespace A274838.P1123670600406655884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (f1 (n + 1) - f1 n).toNat

end

end A274838.P1123670600406655884

/-! ## A274838.P11813033235542074352

`A274835(A000217(n+6)-6)`
-/

namespace A274838.P11813033235542074352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A000217 (n + 6) - 6).toNat

end

end A274838.P11813033235542074352

/-! ## A274838.P12039980369620120360

`A274835(eq[6, A004736(n+1)])`
-/

namespace A274838.P12039980369620120360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274838.P12039980369620120360

/-!
# A274839: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of six.

The programs for A274839, there is no canonical definition to state claims against.
-/

/-! ## A274839.P4727236582890168176

`A274835(eq[6, A025581(n)])`
-/

namespace A274839.P4727236582890168176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274839.P4727236582890168176

/-! ## A274839.P15295611747012391038

`A274835(eq[7, A193739(n)])`
-/

namespace A274839.P15295611747012391038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274839.P15295611747012391038

/-!
# A274840: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of seven.

The programs for A274840, there is no canonical definition to state claims against.
-/

/-! ## A274840.P18081477873051756219

`A274835(A155212(n+4))`
-/

namespace A274840.P18081477873051756219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A155212 (n + 4)).toNat

end

end A274840.P18081477873051756219

/-! ## A274840.P452154610368107286

`A274835(A000096(n+7)-7)`
-/

namespace A274840.P452154610368107286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A000096 (n + 7) - 7).toNat

end

end A274840.P452154610368107286

/-! ## A274840.P8576604439720137884

`A274835(A000217(n+8)-8)`
-/

namespace A274840.P8576604439720137884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A000217 (n + 8) - 8).toNat

end

end A274840.P8576604439720137884

/-! ## A274840.P1961699525735200606

`A274835(A000124(n+8)-9)`
-/

namespace A274840.P1961699525735200606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A000124 (n + 8) - 9).toNat

end

end A274840.P1961699525735200606

/-! ## A274840.P17680151213804196163

`A274835(A005843(n)+A046691(n+4)+11)`
-/

namespace A274840.P17680151213804196163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A005843 n + (A046691 (n + 4) + 11)).toNat

end

end A274840.P17680151213804196163

/-!
# A274841: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of eight.

The programs for A274841, there is no canonical definition to state claims against.
-/

/-! ## A274841.P6355032841117225996

`A274835(A052905(n+6)-4)`
-/

namespace A274841.P6355032841117225996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A052905 (n + 6) - 4).toNat

end

end A274841.P6355032841117225996

/-! ## A274841.P12240498417487772068

`A067043(A291146(n)%A340757(2*n+3))`
-/

namespace A274841.P12240498417487772068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067043 (Int.tmod (A291146 n) (A340757 (2 * n + 3))).toNat

end

end A274841.P12240498417487772068

/-!
# A274842: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of nine.

The programs for A274842, there is no canonical definition to state claims against.
-/

/-! ## A274842.P4520138312977360802

`A274835(Δ[n²]+9-A080956(n+9))`
-/

namespace A274842.P4520138312977360802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (9 - A080956 (n + 9))).toNat

end

end A274842.P4520138312977360802

/-!
# A274843: Number of set partitions of [n] such that the difference between each element and its block index is a multiple of ten.

The programs for A274843, there is no canonical definition to state claims against.
-/

/-! ## A274843.P7841219490460539181

`A274835(A000217(n+11)-11)`
-/

namespace A274843.P7841219490460539181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (A000217 (n + 11) - 11).toNat

end

end A274843.P7841219490460539181

/-!
# A274844: The inverse multinomial transform of A001818(n) = ((2*n-1)!!)^2.

The programs for A274844, there is no canonical definition to state claims against.
-/

/-! ## A274844.P1158507493679413014

`A000079(n)*A005411(n+1)`
-/

namespace A274844.P1158507493679413014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005411 (n + 1)

end

end A274844.P1158507493679413014

/-! ## A274844.P3719787182908123771

`A005411(n+1)*A011782(n+1)`
-/

namespace A274844.P3719787182908123771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005411 (n + 1) * A011782 (n + 1)

end

end A274844.P3719787182908123771

/-! ## A274844.P16153678297056959360

`A005411(n+1)*A016116(2*n)`
-/

namespace A274844.P16153678297056959360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005411 (n + 1) * A016116 (2 * n)

end

end A274844.P16153678297056959360

/-! ## A274844.P574326086796988755

`record[A001316(n)]*A258220(A025747(n))`
-/

namespace A274844.P574326086796988755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A258220 (A025747 n).toNat

end

end A274844.P574326086796988755

/-!
# A274845: a(0)=1, a(1)=0, a(4n+2) = a(4n+3) = a(4n+5) = (4^(n+1) +(-1)^n)/5, a(4n+4) = (2*4^(n+1) -3*(-1)^n)/5.

The programs for A274845, the canonical program `A274845.P11495950205805803333` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274845 has offset 0).

The definition of A274845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274845.P11495950205805803333

`3*a(n-4)+4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=3, a(7)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274845

/-- `3*a(n-4)+4*a(n-8)` -/
def P11495950205805803333.Spec : Prop :=
  ∀ n, (P11495950205805803333.a n : ℤ) = A274845 n

theorem P11495950205805803333.correct : P11495950205805803333.Spec := by
  intro n
  simp only [A274845]

end A274845

/-! ## A274845.P2758101473046270330

`A007909(A116921(n+1))-char[1]`
-/

namespace A274845.P2758101473046270330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (A116921 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274845.P2758101473046270330

namespace A274845

/-- `A007909(A116921(n+1))-char[1]` -/
def P2758101473046270330.Spec : Prop :=
  ∀ n, P2758101473046270330.a n = A274845 n

end A274845

/-! ## A274845.P9364174085415559143

`A007909(A116921(n+1))%A308709(n+1)`
-/

namespace A274845.P9364174085415559143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007909 (A116921 (n + 1)).toNat) (A308709 (n + 1))

end

end A274845.P9364174085415559143

namespace A274845

/-- `A007909(A116921(n+1))%A308709(n+1)` -/
def P9364174085415559143.Spec : Prop :=
  ∀ n, P9364174085415559143.a n = A274845 n

end A274845

/-! ## A274845.P1199596650276389115

`A007909(A173989(n+1))%A308709(n+1)`
-/

namespace A274845.P1199596650276389115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007909 (A173989 (n + 1)).toNat) (A308709 (n + 1))

end

end A274845.P1199596650276389115

namespace A274845

/-- `A007909(A173989(n+1))%A308709(n+1)` -/
def P1199596650276389115.Spec : Prop :=
  ∀ n, P1199596650276389115.a n = A274845 n

end A274845

/-! ## A274845.P1371426552655369805

`A176739(n)/gcd(A011782(n), A176739(n))`
-/

namespace A274845.P1371426552655369805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176739 n : ℚ) / (Int.gcd (A011782 n) (A176739 n) : ℚ)

end

end A274845.P1371426552655369805

namespace A274845

/-- `A176739(n)/gcd(A011782(n), A176739(n))` -/
def P1371426552655369805.Spec : Prop :=
  ∀ n, P1371426552655369805.a n = (A274845 n : ℚ)

end A274845

/-! ## A274845.P2081066085438705080

`lcm(A000079(n), A176739(n))/A000079(n)`
-/

namespace A274845.P2081066085438705080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A176739 n) : ℚ) / (A000079 n : ℚ)

end

end A274845.P2081066085438705080

namespace A274845

/-- `lcm(A000079(n), A176739(n))/A000079(n)` -/
def P2081066085438705080.Spec : Prop :=
  ∀ n, P2081066085438705080.a n = (A274845 n : ℚ)

end A274845

/-!
# A274846: Numbers described with a single word in Russian.

The programs for A274846, there is no canonical definition to state claims against.
-/

/-! ## A274846.P12684432998732634226

`eq[A057696(n), A057697(n)]`
-/

namespace A274846.P12684432998732634226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274846.P12684432998732634226

/-! ## A274846.P2076401677354665564

`lt[A148875(A007208(n)), A210893(n+2)]`
-/

namespace A274846.P2076401677354665564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148875 (A007208 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210893 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274846.P2076401677354665564

/-! ## A274846.P6813490716568508293

`lt[A131603(n), 11]`
-/

namespace A274846.P6813490716568508293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131603 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274846.P6813490716568508293

/-! ## A274846.P9614807016326084976

`eq[A056967(n), A257297(n)]`
-/

namespace A274846.P9614807016326084976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274846.P9614807016326084976

/-! ## A274846.P10133694199303803345

`record[A030066(n)]`
-/

namespace A274846.P10133694199303803345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274846.P10133694199303803345

/-!
# A274848: Numbers k such that k^2 is expressible in just one way as (p+1)(q+1) where p, q are distinct primes.

The programs for A274848, there is no canonical definition to state claims against.
-/

/-! ## A274848.P9184346140365738713

`A103517(eq[1, A274876(n+1)])`
-/

namespace A274848.P9184346140365738713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274848.P9184346140365738713

/-! ## A274848.P15068413515752749556

`A005408(eq[1, A274876(n+1)])+1`
-/

namespace A274848.P15068413515752749556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A274848.P15068413515752749556

/-! ## A274848.P11039759784484136863

`A005843(eq[1, A274876(n+1)]+1)`
-/

namespace A274848.P11039759784484136863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274848.P11039759784484136863

/-! ## A274848.P17062207823115311047

`A004275(eq[1, A274876(n+1)]+2)`
-/

namespace A274848.P17062207823115311047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A274848.P17062207823115311047

/-! ## A274848.P2869440209126387540

`A004273(eq[1, A274876(n+1)])+3`
-/

namespace A274848.P2869440209126387540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A274848.P2869440209126387540

/-!
# A274849: Isolated deficient numbers.

The programs for A274849, the canonical program `A274849.P17602630050161796661` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274849 has offset 1).

The definition of A274849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274849.P17602630050161796661

`∩[A160007(n+1), A316100(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274849

/-- `∩[A160007(n+1), A316100(n+1)]` -/
def P17602630050161796661.Spec : Prop :=
  ∀ n, (P17602630050161796661.a n : ℤ) = A274849 (n + 1)

theorem P17602630050161796661.correct : P17602630050161796661.Spec := by
  intro n
  simp only [A274849, Nat.add_sub_cancel]

end A274849

/-! ## A274849.P9410595466255153933

`∩[A005101(n+1)-1, A160007(n+1)]`
-/

namespace A274849.P9410595466255153933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274849.P9410595466255153933

namespace A274849

/-- `∩[A005101(n+1)-1, A160007(n+1)]` -/
def P9410595466255153933.Spec : Prop :=
  ∀ n, (P9410595466255153933.a n : ℤ) = A274849 (n + 1)

end A274849

/-! ## A274849.P10203677691951219693

`∩[A160007(n+1), lt[A294934(n+1), 1]]`
-/

namespace A274849.P10203677691951219693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160007 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274849.P10203677691951219693

namespace A274849

/-- `∩[A160007(n+1), lt[A294934(n+1), 1]]` -/
def P10203677691951219693.Spec : Prop :=
  ∀ n, (P10203677691951219693.a n : ℤ) = A274849 (n + 1)

end A274849

/-! ## A274849.P16946969858388636767

`∪[A276049(n+1), A276050(n+1)]`
-/

namespace A274849.P16946969858388636767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274849.P16946969858388636767

namespace A274849

/-- `∪[A276049(n+1), A276050(n+1)]` -/
def P16946969858388636767.Spec : Prop :=
  ∀ n, (P16946969858388636767.a n : ℤ) = A274849 (n + 1)

end A274849

/-!
# A274852: Number of n X n 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274852, there is no canonical definition to state claims against.
-/

/-! ## A274852.P4815930068079912312

`A274858((n+1)²+n²)`
-/

namespace A274852.P4815930068079912312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 ((n + 1) ^ 2 + n ^ 2)

end

end A274852.P4815930068079912312

/-! ## A274852.P8691827416691416664

`record[A003982(n)*A274858(n+1)]`
-/

namespace A274852.P8691827416691416664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A274858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274852.P8691827416691416664

/-! ## A274852.P7512699217053830370

`lcm(A020985(n), A274858(A001844(n)))`
-/

namespace A274852.P7512699217053830370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A274858 (A001844 n).toNat)

end

end A274852.P7512699217053830370

/-! ## A274852.P3162018374403382631

`or(A000007(n), A274858(A001844(n)))`
-/

namespace A274852.P3162018374403382631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274858 (A001844 n).toNat)

end

end A274852.P3162018374403382631

/-! ## A274852.P115938134331167955

`A274858(A001844(n))%A022502(n+1)`
-/

namespace A274852.P115938134331167955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274858 (A001844 n).toNat) (A022502 (n + 1))

end

end A274852.P115938134331167955

/-!
# A274853: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274853, the canonical program `A274853.P6844153935636056354` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274853 has offset 1).

The definition of A274853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274853.P8183083101921174374

`ogf((2+3x-4x^2+2x^3)/(1-3x+2x^2-x^3))`
-/

namespace A274853.P8183083101921174374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -4, 2] [1, -3, 2, -1] n

end

end A274853.P8183083101921174374

namespace A274853

/-- `ogf((2+3x-4x^2+2x^3)/(1-3x+2x^2-x^3))` -/
def P8183083101921174374.Spec : Prop :=
  ∀ n, P8183083101921174374.a n = A274853 (n + 1)

end A274853

/-! ## A274853.P6844153935636056354

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=2, a(1)=9, a(2)=19, a(3)=43`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274853

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P6844153935636056354.Spec : Prop :=
  ∀ n, P6844153935636056354.a n = A274853 (n + 1)

theorem P6844153935636056354.correct : P6844153935636056354.Spec := by
  intro n
  simp only [A274853, Nat.add_sub_cancel]

end A274853

/-! ## A274853.P10710510820331519494

`A135364(n+1)+2*A137584(n)`
-/

namespace A274853.P10710510820331519494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 (n + 1) + 2 * A137584 n

end

end A274853.P10710510820331519494

namespace A274853

/-- `A135364(n+1)+2*A137584(n)` -/
def P10710510820331519494.Spec : Prop :=
  ∀ n, P10710510820331519494.a n = A274853 (n + 1)

end A274853

/-! ## A274853.P6126460720321508852

`A135364(n)+A137584(n)+A137531(n)`
-/

namespace A274853.P6126460720321508852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135364 n + (A137584 n + A137531 n)

end

end A274853.P6126460720321508852

namespace A274853

/-- `A135364(n)+A137584(n)+A137531(n)` -/
def P6126460720321508852.Spec : Prop :=
  ∀ n, P6126460720321508852.a n = A274853 (n + 1)

end A274853

/-! ## A274853.P489796997912613229

`A274858(∑[n+2]+4)`
-/

namespace A274853.P489796997912613229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274853.P489796997912613229

namespace A274853

/-- `A274858(∑[n+2]+4)` -/
def P489796997912613229.Spec : Prop :=
  ∀ n, P489796997912613229.a n = A274853 (n + 1)

end A274853

/-!
# A274854: Number of n X 4 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274854, there is no canonical definition to state claims against.
-/

/-! ## A274854.P12589941498911210924

`A274858(A374004(n+1))`
-/

namespace A274854.P12589941498911210924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A374004 (n + 1)).toNat

end

end A274854.P12589941498911210924

/-! ## A274854.P18444654897294337089

`A274858(A141214(n)+7)`
-/

namespace A274854.P18444654897294337089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A141214 n + 7).toNat

end

end A274854.P18444654897294337089

/-! ## A274854.P5661466064279167360

`A274858(A052905(n)+9)`
-/

namespace A274854.P5661466064279167360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A052905 n + 9).toNat

end

end A274854.P5661466064279167360

/-! ## A274854.P7883443777189765796

`A274858(A167614(n+2)+1)`
-/

namespace A274854.P7883443777189765796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A167614 (n + 2) + 1).toNat

end

end A274854.P7883443777189765796

/-! ## A274854.P12326065959152119025

`A274858(A166136(n+2)-2)`
-/

namespace A274854.P12326065959152119025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A166136 (n + 2) - 2).toNat

end

end A274854.P12326065959152119025

/-!
# A274855: Number of n X 5 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274855, there is no canonical definition to state claims against.
-/

/-! ## A274855.P4963384572293507072

`A274858(A374005(n+1))`
-/

namespace A274855.P4963384572293507072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A374005 (n + 1)).toNat

end

end A274855.P4963384572293507072

/-! ## A274855.P11096513804724967513

`A274858(A167499(n+3))`
-/

namespace A274855.P11096513804724967513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A167499 (n + 3)).toNat

end

end A274855.P11096513804724967513

/-! ## A274855.P13753359830977016884

`A274858(A155212(n)+13)`
-/

namespace A274855.P13753359830977016884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A155212 n + 13).toNat

end

end A274855.P13753359830977016884

/-! ## A274855.P2309064095418659250

`A274858(A000217(n+4)+5)`
-/

namespace A274855.P2309064095418659250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A000217 (n + 4) + 5).toNat

end

end A274855.P2309064095418659250

/-! ## A274855.P5820576785781097189

`A274858(A034856(n+3)+7)`
-/

namespace A274855.P5820576785781097189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A034856 (n + 3) + 7).toNat

end

end A274855.P5820576785781097189

/-!
# A274856: Number of nX6 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274856, there is no canonical definition to state claims against.
-/

/-! ## A274856.P17800729862655959894

`A274858(A374007(n+1))`
-/

namespace A274856.P17800729862655959894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A374007 (n + 1)).toNat

end

end A274856.P17800729862655959894

/-! ## A274856.P9198099209137707437

`A274858(A167499(n+4)+1)`
-/

namespace A274856.P9198099209137707437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A167499 (n + 4) + 1).toNat

end

end A274856.P9198099209137707437

/-! ## A274856.P15709318397271108618

`A274858(A133263(n+5)+4)`
-/

namespace A274856.P15709318397271108618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A133263 (n + 5) + 4).toNat

end

end A274856.P15709318397271108618

/-! ## A274856.P15331861534804356727

`A274858(A000217(n+5)+6)`
-/

namespace A274856.P15331861534804356727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A000217 (n + 5) + 6).toNat

end

end A274856.P15331861534804356727

/-! ## A274856.P12487274351267556959

`A274858(A141214(n+2)+9)`
-/

namespace A274856.P12487274351267556959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A141214 (n + 2) + 9).toNat

end

end A274856.P12487274351267556959

/-!
# A274857: Number of nX7 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274857, there is no canonical definition to state claims against.
-/

/-! ## A274857.P17047809368724848913

`A274858(A374008(n+1))`
-/

namespace A274857.P17047809368724848913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A374008 (n + 1)).toNat

end

end A274857.P17047809368724848913

/-! ## A274857.P16115110115439425922

`A274858(A166136(n+5)+1)`
-/

namespace A274857.P16115110115439425922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A166136 (n + 5) + 1).toNat

end

end A274857.P16115110115439425922

/-! ## A274857.P836009500407625928

`A274858(A000096(n+6)-(n-1))`
-/

namespace A274857.P836009500407625928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A274857.P836009500407625928

/-! ## A274857.P8873811351967389499

`A274858(A055999(n+4))`
-/

namespace A274857.P8873811351967389499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A055999 (n + 4)).toNat

end

end A274857.P8873811351967389499

/-! ## A274857.P2027612811567425534

`A274858(A000124(n+7)-7)`
-/

namespace A274857.P2027612811567425534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274858 (A000124 (n + 7) - 7).toNat

end

end A274857.P2027612811567425534

/-!
# A274858: T(n,k) = Number of n X k 0..2 arrays with no element equal to any value at offset (-1,0) (0,-1) or (-2,-2) and new values introduced in order 0..2.

The programs for A274858, there is no canonical definition to state claims against.
-/

/-! ## A274858.P10792151042174227662

`A207997(n+1)%A323602(A251538(n+1))`
-/

namespace A274858.P10792151042174227662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207997 (n + 1)) (A323602 (A251538 (n + 1)).toNat)

end

end A274858.P10792151042174227662

/-! ## A274858.P8021352707398617970

`A161980(A207997(n+1))%90`
-/

namespace A274858.P8021352707398617970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161980 (A207997 (n + 1)).toNat) 90

end

end A274858.P8021352707398617970

/-!
# A274859: Number A(n,k) of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A274859, there is no canonical definition to state claims against.
-/

/-! ## A274859.P16401883581876344192

`and(-A113143(A084938(n)), A113143(n))`
-/

namespace A274859.P16401883581876344192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A113143 (A084938 n).toNat) (A113143 n)

end

end A274859.P16401883581876344192

/-! ## A274859.P16315757196839200585

`and(-A113143(A130167(n)), A113143(n))`
-/

namespace A274859.P16315757196839200585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A113143 (A130167 n).toNat) (A113143 n)

end

end A274859.P16315757196839200585

/-! ## A274859.P6567905650865113583

`A193677(5*A113143(n))`
-/

namespace A274859.P6567905650865113583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193677 (5 * A113143 n).toNat

end

end A274859.P6567905650865113583

/-! ## A274859.P13884737510588917321

`A296131(5*A334622(n))`
-/

namespace A274859.P13884737510588917321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296131 (5 * A334622 n).toNat

end

end A274859.P13884737510588917321

/-! ## A274859.P2507169819225881340

`and(A000578(A154942(n+1)), A113143(n))`
-/

namespace A274859.P2507169819225881340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000578 (A154942 (n + 1)).toNat) (A113143 n)

end

end A274859.P2507169819225881340

/-!
# A274860: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of three.

The programs for A274860, there is no canonical definition to state claims against.
-/

/-! ## A274860.P15006339266872195392

`A274859(∑[n+3]+n+3)`
-/

namespace A274860.P15006339266872195392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A274860.P15006339266872195392

/-! ## A274860.P1251069186968859991

`4*A229300(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A274860.P1251069186968859991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * A229300 (a (n - 2)).toNat

end

end A274860.P1251069186968859991

/-! ## A274860.P13432077691253561752

`4*A322901(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A274860.P13432077691253561752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * A322901 (a (n - 2)).toNat

end

end A274860.P13432077691253561752

/-! ## A274860.P9749116928168203014

`4*A322911(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A274860.P9749116928168203014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * A322911 (a (n - 2)).toNat

end

end A274860.P9749116928168203014

/-! ## A274860.P8055435871303266362

`A082447(A148497(n))`
-/

namespace A274860.P8055435871303266362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148497 n).toNat

end

end A274860.P8055435871303266362

/-!
# A274861: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of four.

The programs for A274861, there is no canonical definition to state claims against.
-/

/-! ## A274861.P8316466734720656094

`A274859(A052905(n+2))`
-/

namespace A274861.P8316466734720656094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A052905 (n + 2)).toNat

end

end A274861.P8316466734720656094

/-! ## A274861.P12767271125959948359

`A274859(eq[4, A025581(n)])`
-/

namespace A274861.P12767271125959948359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274861.P12767271125959948359

/-! ## A274861.P7925760127968439244

`A274859(A000217(n+5)-5)`
-/

namespace A274861.P7925760127968439244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A000217 (n + 5) - 5).toNat

end

end A274861.P7925760127968439244

/-! ## A274861.P4865215867850317831

`A274859(A000124(n+5)-6)`
-/

namespace A274861.P4865215867850317831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A000124 (n + 5) - 6).toNat

end

end A274861.P4865215867850317831

/-! ## A274861.P7953237730524406336

`A274859(A161680(n+6)-5)`
-/

namespace A274861.P7953237730524406336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A161680 (n + 6) - 5).toNat

end

end A274861.P7953237730524406336

/-!
# A274862: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of five.

The programs for A274862, there is no canonical definition to state claims against.
-/

/-! ## A274862.P7620304227043698992

`A274859(A055999(n+3))`
-/

namespace A274862.P7620304227043698992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A055999 (n + 3)).toNat

end

end A274862.P7620304227043698992

/-! ## A274862.P15846761923391878458

`A274859(eq[5, A025581(n)])`
-/

namespace A274862.P15846761923391878458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274862.P15846761923391878458

/-! ## A274862.P472304802182117401

`A274859(eq[11, A099375(n)])`
-/

namespace A274862.P472304802182117401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274862.P472304802182117401

/-! ## A274862.P15530624653067483413

`A274859(A000217(n+6)-6)`
-/

namespace A274862.P15530624653067483413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A000217 (n + 6) - 6).toNat

end

end A274862.P15530624653067483413

/-! ## A274862.P2765129416812461482

`A274859(A134869(n+5)+n-1)`
-/

namespace A274862.P2765129416812461482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A134869 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A274862.P2765129416812461482

/-!
# A274863: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of six.

The programs for A274863, there is no canonical definition to state claims against.
-/

/-! ## A274863.P4805273038486140015

`A274859(eq[6, A025581(n)])`
-/

namespace A274863.P4805273038486140015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274863.P4805273038486140015

/-! ## A274863.P14753910205275373747

`A274859(eq[7, A193739(n)])`
-/

namespace A274863.P14753910205275373747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274863.P14753910205275373747

/-! ## A274863.P4343611587836011082

`A274859(eq[7, A195663(n)])`
-/

namespace A274863.P4343611587836011082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274863.P4343611587836011082

/-! ## A274863.P10219655418883169937

`A274859(eq[13, A099375(n)])`
-/

namespace A274863.P10219655418883169937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274863.P10219655418883169937

/-! ## A274863.P17384185852742737004

`A274859(eq[7, A004736(n+1)])`
-/

namespace A274863.P17384185852742737004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274863.P17384185852742737004

/-!
# A274864: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of seven.

The programs for A274864, there is no canonical definition to state claims against.
-/

/-! ## A274864.P2353837845428083162

`A274859(A155212(n+4))`
-/

namespace A274864.P2353837845428083162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A155212 (n + 4)).toNat

end

end A274864.P2353837845428083162

/-! ## A274864.P3934962908485470746

`A274859(A000217(n+8)-8)`
-/

namespace A274864.P3934962908485470746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A000217 (n + 8) - 8).toNat

end

end A274864.P3934962908485470746

/-! ## A274864.P5614372539708994417

`A274859(A340266(n+7)-10)`
-/

namespace A274864.P5614372539708994417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A340266 (n + 7) - 10).toNat

end

end A274864.P5614372539708994417

/-! ## A274864.P18409055632530636037

`A274859(A000124(n+7)+n-1)`
-/

namespace A274864.P18409055632530636037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A274864.P18409055632530636037

/-! ## A274864.P1885951346861396385

`A274859(A005843(n)+A052905(n+3)+12)`
-/

namespace A274864.P1885951346861396385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274859 (A005843 n + (A052905 (n + 3) + 12)).toNat

end

end A274864.P1885951346861396385

/-!
# A274865: Number of set partitions of [n] such that the difference between each element and its index (in the partition) is a multiple of eight.

The programs for A274865, there is no canonical definition to state claims against.
-/

/-! ## A274865.P11361552998240777588

`A326456(A288972(n))+ceil(2^(n-1))`
-/

namespace A274865.P11361552998240777588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 (A288972 n).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A274865.P11361552998240777588

/-! ## A274865.P9479714648772790002

`or(ceil(2^(n-1)), A322308(A076144(n+1)))`
-/

namespace A274865.P9479714648772790002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A322308 (A076144 (n + 1)).toNat)

end

end A274865.P9479714648772790002

/-! ## A274865.P5518841846790773648

`or(A011782(n), A326456(A288972(n)))`
-/

namespace A274865.P5518841846790773648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A326456 (A288972 n).toNat)

end

end A274865.P5518841846790773648

/-! ## A274865.P4666052488852921458

`or(A274866(n), A326456(A288972(n)))`
-/

namespace A274865.P4666052488852921458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274866 n) (A326456 (A288972 n).toNat)

end

end A274865.P4666052488852921458

/-! ## A274865.P14564719105760302777

`or(A274867(n), A326456(A288972(n)))`
-/

namespace A274865.P14564719105760302777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274867 n) (A326456 (A288972 n).toNat)

end

end A274865.P14564719105760302777

/-!
# A274868: Number of set partitions of [n] into exactly four blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274868, the canonical program `A274868.P11746560201863881109` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274868 has offset 4).

The definition of A274868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274868.P11746560201863881109

`(3-(-1)^(n+4))/12*(4^floor((n+4)/2)-3*2^floor((n+4)/2)+2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274868

/-- `(3-(-1)^(n+4))/12*(4^floor((n+4)/2)-3*2^floor((n+4)/2)+2)` -/
def P11746560201863881109.Spec : Prop :=
  ∀ n, P11746560201863881109.a n = (A274868 (n + 4) : ℚ)

end A274868

/-! ## A274868.P2222535327760329619

`∑[ogf(1/(1-x-4x^2+2x^3+4x^4))]`
-/

namespace A274868.P2222535327760329619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4, 2, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274868.P2222535327760329619

namespace A274868

/-- `∑[ogf(1/(1-x-4x^2+2x^3+4x^4))]` -/
def P2222535327760329619.Spec : Prop :=
  ∀ n, P2222535327760329619.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P2045993351301363654

`ogf(1/(1-2x-3x^2+6x^3+2x^4-4x^5))`
-/

namespace A274868.P2045993351301363654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, 6, 2, -4] n

end

end A274868.P2045993351301363654

namespace A274868

/-- `ogf(1/(1-2x-3x^2+6x^3+2x^4-4x^5))` -/
def P2045993351301363654.Spec : Prop :=
  ∀ n, P2045993351301363654.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P14412161582586504871

`∑[2*or(a(n-1), a(n-2))]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A274868.P14412161582586504871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * Nat.lor (f1 (n - 1)) (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A274868.P14412161582586504871

namespace A274868

/-- `∑[2*or(a(n-1), a(n-2))]-a(n-1)` -/
def P14412161582586504871.Spec : Prop :=
  ∀ n, P14412161582586504871.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P10854008121421466801

`∑[A097038(n+1)]`
-/

namespace A274868.P10854008121421466801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274868.P10854008121421466801

namespace A274868

/-- `∑[A097038(n+1)]` -/
def P10854008121421466801.Spec : Prop :=
  ∀ n, P10854008121421466801.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P7953795841127983715

`A122746(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A274868.P7953795841127983715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A122746 n + a (n - 2)

end

end A274868.P7953795841127983715

namespace A274868

/-- `A122746(n)+a(n-2)` -/
def P7953795841127983715.Spec : Prop :=
  ∀ n, P7953795841127983715.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P16266057741980276841

`A274230(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A274868.P16266057741980276841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274230 (n + 2) - a (n - 1)

end

end A274868.P16266057741980276841

namespace A274868

/-- `A274230(n+2)-a(n-1)` -/
def P16266057741980276841.Spec : Prop :=
  ∀ n, P16266057741980276841.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P8377507008265899711

`A077896(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A274868.P8377507008265899711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077896 n + 2 * a (n - 1)

end

end A274868.P8377507008265899711

namespace A274868

/-- `A077896(n)+2*a(n-1)` -/
def P8377507008265899711.Spec : Prop :=
  ∀ n, P8377507008265899711.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P3385732536053681300

`∑[A032085(n+2)-a(n-1)]` with `a(0)=1`
-/

namespace A274868.P3385732536053681300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A032085 (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274868.P3385732536053681300

namespace A274868

/-- `∑[A032085(n+2)-a(n-1)]` -/
def P3385732536053681300.Spec : Prop :=
  ∀ n, P3385732536053681300.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P460634290582786524

`A005578(n+3)-A060546(n+2)`
-/

namespace A274868.P460634290582786524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 3) - A060546 (n + 2)

end

end A274868.P460634290582786524

namespace A274868

/-- `A005578(n+3)-A060546(n+2)` -/
def P460634290582786524.Spec : Prop :=
  ∀ n, P460634290582786524.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P6285941785452708509

`A005578(n+3)-A016116(n+3)`
-/

namespace A274868.P6285941785452708509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 3) - A016116 (n + 3)

end

end A274868.P6285941785452708509

namespace A274868

/-- `A005578(n+3)-A016116(n+3)` -/
def P6285941785452708509.Spec : Prop :=
  ∀ n, P6285941785452708509.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P3405891182499178624

`A122746(n)+A122746(n)-A000975(n+1)`
-/

namespace A274868.P3405891182499178624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n + (A122746 n - A000975 (n + 1))

end

end A274868.P3405891182499178624

namespace A274868

/-- `A122746(n)+A122746(n)-A000975(n+1)` -/
def P3405891182499178624.Spec : Prop :=
  ∀ n, P3405891182499178624.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P8613602875890483345

`A169969(2*n+1)-and(A097110(2*n), A097110(n+1))`
-/

namespace A274868.P8613602875890483345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (2 * n + 1) - Int.land (A097110 (2 * n)) (A097110 (n + 1))

end

end A274868.P8613602875890483345

namespace A274868

/-- `A169969(2*n+1)-and(A097110(2*n), A097110(n+1))` -/
def P8613602875890483345.Spec : Prop :=
  ∀ n, P8613602875890483345.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P4932784843257140868

`∪[A203241(n+2), A171477(n)]`
-/

namespace A274868.P4932784843257140868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203241 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274868.P4932784843257140868

namespace A274868

/-- `∪[A203241(n+2), A171477(n)]` -/
def P4932784843257140868.Spec : Prop :=
  ∀ n, (P4932784843257140868.a n : ℤ) = A274868 (n + 4)

end A274868

/-! ## A274868.P7254990404144537454

`A274537(eq[4, A002262(n)])`
-/

namespace A274868.P7254990404144537454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274868.P7254990404144537454

namespace A274868

/-- `A274537(eq[4, A002262(n)])` -/
def P7254990404144537454.Spec : Prop :=
  ∀ n, P7254990404144537454.a n = A274868 (n + 4)

end A274868

/-! ## A274868.P7821828557150697278

`record[A274537(A167499(n)-1)]`
-/

namespace A274868.P7821828557150697278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274868.P7821828557150697278

namespace A274868

/-- `record[A274537(A167499(n)-1)]` -/
def P7821828557150697278.Spec : Prop :=
  ∀ n, P7821828557150697278.a n = A274868 (n + 4)

end A274868

/-!
# A274869: Number of set partitions of [n] into exactly five blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274869, there is no canonical definition to state claims against.
-/

/-! ## A274869.P9004030373120568627

`A274537(A167499(n+4))`
-/

namespace A274869.P9004030373120568627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (n + 4)).toNat

end

end A274869.P9004030373120568627

/-! ## A274869.P82051488736989302

`record[A274537(A000124(n)+4)]`
-/

namespace A274869.P82051488736989302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000124 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274869.P82051488736989302

/-! ## A274869.P16935915642170703518

`A274537(A167614(n+4)+2)`
-/

namespace A274869.P16935915642170703518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167614 (n + 4) + 2).toNat

end

end A274869.P16935915642170703518

/-! ## A274869.P1103917025057014028

`A274537(A000096(n+4)+6)`
-/

namespace A274869.P1103917025057014028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 4) + 6).toNat

end

end A274869.P1103917025057014028

/-! ## A274869.P12478764305918880945

`record[A274537(A167499(A008620(n)))]`
-/

namespace A274869.P12478764305918880945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274869.P12478764305918880945

/-! ## A274869.P3929546304309363486

`record[A274537(A167499(A028242(n)))]`
-/

namespace A274869.P3929546304309363486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274869.P3929546304309363486

/-! ## A274869.P15778136129128943493

`record[A274537(A167499(A057979(n)))]`
-/

namespace A274869.P15778136129128943493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274869.P15778136129128943493

/-! ## A274869.P13636728126086192951

`A274537(A002378(n+5)-A052905(n+2))`
-/

namespace A274869.P13636728126086192951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A002378 (n + 5) - A052905 (n + 2)).toNat

end

end A274869.P13636728126086192951

/-!
# A274870: Number of set partitions of [n] into exactly six blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274870, there is no canonical definition to state claims against.
-/

/-! ## A274870.P13165219544136675732

`A274537(A167614(n+5)+3)`
-/

namespace A274870.P13165219544136675732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167614 (n + 5) + 3).toNat

end

end A274870.P13165219544136675732

/-! ## A274870.P12892298630636574628

`A274537(A000096(n+5)+7)`
-/

namespace A274870.P12892298630636574628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 5) + 7).toNat

end

end A274870.P12892298630636574628

/-! ## A274870.P3287780904205358833

`A274537(eq[5, A327844(n+1)])`
-/

namespace A274870.P3287780904205358833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274870.P3287780904205358833

/-! ## A274870.P10512131899102116608

`A274537(eq[7, A002260(n+1)])`
-/

namespace A274870.P10512131899102116608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274870.P10512131899102116608

/-! ## A274870.P1301132455288769007

`record[A274537(A167499(n+1)+1)]`
-/

namespace A274870.P1301132455288769007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274870.P1301132455288769007

/-! ## A274870.P3543088195279041232

`A274537(A027379(n+6)-A005843(n+3))`
-/

namespace A274870.P3543088195279041232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A027379 (n + 6) - A005843 (n + 3)).toNat

end

end A274870.P3543088195279041232

/-!
# A274871: Number of set partitions of [n] into exactly seven blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274871, there is no canonical definition to state claims against.
-/

/-! ## A274871.P569247903348889898

`record[A274537(A167499(n)+2)]`
-/

namespace A274871.P569247903348889898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274871.P569247903348889898

/-! ## A274871.P16613701327113370592

`A274537(A167614(n+6)+4)`
-/

namespace A274871.P16613701327113370592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167614 (n + 6) + 4).toNat

end

end A274871.P16613701327113370592

/-! ## A274871.P8127125131880517930

`A274537(A000096(n+6)+8)`
-/

namespace A274871.P8127125131880517930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 6) + 8).toNat

end

end A274871.P8127125131880517930

/-! ## A274871.P11714201276053880444

`A274537(eq[8, A002260(n+1)])`
-/

namespace A274871.P11714201276053880444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274871.P11714201276053880444

/-! ## A274871.P4797707285631074235

`A274537(A052905(n)+A016825(n+8))`
-/

namespace A274871.P4797707285631074235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A052905 n + A016825 (n + 8)).toNat

end

end A274871.P4797707285631074235

/-! ## A274871.P368342179602333394

`A274537(A016777(n+8)+A000217(n+4))`
-/

namespace A274871.P368342179602333394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A016777 (n + 8) + A000217 (n + 4)).toNat

end

end A274871.P368342179602333394

/-!
# A274872: Number of set partitions of [n] into exactly eight blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274872, there is no canonical definition to state claims against.
-/

/-! ## A274872.P6528574620342755879

`A274537(A167499(n+7)+3)`
-/

namespace A274872.P6528574620342755879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (n + 7) + 3).toNat

end

end A274872.P6528574620342755879

/-! ## A274872.P528237127053510881

`A274537(A000096(n+7)+9)`
-/

namespace A274872.P528237127053510881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 7) + 9).toNat

end

end A274872.P528237127053510881

/-! ## A274872.P16743039557573775935

`A274537(A000217(n+8)+8)`
-/

namespace A274872.P16743039557573775935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000217 (n + 8) + 8).toNat

end

end A274872.P16743039557573775935

/-! ## A274872.P17341928567037878441

`A274537(A000124(n+10)-10-2*(n+1))`
-/

namespace A274872.P17341928567037878441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000124 (n + 10) - 10 - (2 * (n + 1) : ℤ)).toNat

end

end A274872.P17341928567037878441

/-! ## A274872.P13140519536710153786

`A274537(A027379(n+8)-A005843(n+4))`
-/

namespace A274872.P13140519536710153786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A027379 (n + 8) - A005843 (n + 4)).toNat

end

end A274872.P13140519536710153786

/-!
# A274873: Number of set partitions of [n] into exactly nine blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274873, there is no canonical definition to state claims against.
-/

/-! ## A274873.P3461667404129234830

`A274537(eq[9, A002262(n)])`
-/

namespace A274873.P3461667404129234830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274873.P3461667404129234830

/-! ## A274873.P17799218800758796648

`A274537(A133263(n+9)+7)`
-/

namespace A274873.P17799218800758796648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A133263 (n + 9) + 7).toNat

end

end A274873.P17799218800758796648

/-! ## A274873.P10323342045044054173

`A274537(A000096(n+8)+10)`
-/

namespace A274873.P10323342045044054173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 8) + 10).toNat

end

end A274873.P10323342045044054173

/-! ## A274873.P1319133790279341341

`A274537(A000217(n+9)+9)`
-/

namespace A274873.P1319133790279341341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000217 (n + 9) + 9).toNat

end

end A274873.P1319133790279341341

/-! ## A274873.P2990502633824547012

`A274537(eq[10, A002260(n+1)])`
-/

namespace A274873.P2990502633824547012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274873.P2990502633824547012

/-!
# A274874: Number of set partitions of [n] into exactly ten blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274874, there is no canonical definition to state claims against.
-/

/-! ## A274874.P10488346581697897348

`A274537(A167499(n+9)+5)`
-/

namespace A274874.P10488346581697897348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A167499 (n + 9) + 5).toNat

end

end A274874.P10488346581697897348

/-! ## A274874.P15161173025801295872

`A274537(A000096(n+9)+11)`
-/

namespace A274874.P15161173025801295872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000096 (n + 9) + 11).toNat

end

end A274874.P15161173025801295872

/-! ## A274874.P7177991842382612300

`A274537(A055998(n+8)+13)`
-/

namespace A274874.P7177991842382612300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A055998 (n + 8) + 13).toNat

end

end A274874.P7177991842382612300

/-! ## A274874.P11612836012527460597

`A274537(eq[11, A002260(n+1)])`
-/

namespace A274874.P11612836012527460597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274874.P11612836012527460597

/-! ## A274874.P7687030983207037323

`A274537(A000124(n+11)-(n+2))`
-/

namespace A274874.P7687030983207037323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A274874.P7687030983207037323

/-!
# A274875: Number of set partitions of [2n] into exactly n blocks such that all odd elements are in blocks with an odd index and all even elements are in blocks with an even index.

The programs for A274875, there is no canonical definition to state claims against.
-/

/-! ## A274875.P13031209197507507583

`A274537(∑[4*n])`
-/

namespace A274875.P13031209197507507583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274875.P13031209197507507583

/-! ## A274875.P15987456999377702078

`A274537(A106232(n+1))+A004248(∑[n])`
-/

namespace A274875.P15987456999377702078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A106232 (n + 1)).toNat + A004248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274875.P15987456999377702078

/-! ## A274875.P11816012146755738235

`A274537(A106232(n+1))+A274537(∑[n])`
-/

namespace A274875.P11816012146755738235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A106232 (n + 1)).toNat + A274537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274875.P11816012146755738235

/-! ## A274875.P18437629185411908846

`A274537(A106232(n+1))+1-A057427(n)`
-/

namespace A274875.P18437629185411908846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A106232 (n + 1)).toNat + (1 - A057427 n)

end

end A274875.P18437629185411908846

/-! ## A274875.P1266930025407270526

`A274537(A106232(n+1))+A010054(2*n²)`
-/

namespace A274875.P1266930025407270526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A106232 (n + 1)).toNat + A010054 (2 * n ^ 2)

end

end A274875.P1266930025407270526

/-! ## A274875.P8470331396924438070

`A274537(A106232(n+1))+A108951(n+1)%2`
-/

namespace A274875.P8470331396924438070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274537 (A106232 (n + 1)).toNat + Int.tmod (A108951 (n + 1)) 2

end

end A274875.P8470331396924438070

/-!
# A274876: The number of ways (2n)^2 is expressible as (p+1)(q+1) where p and q are distinct primes.

The programs for A274876, there is no canonical definition to state claims against.
-/

/-! ## A274876.P15993950199167476110

`A006561(A000079(n))%(Δ[n²]%6)`
-/

namespace A274876.P15993950199167476110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006561 (A000079 n).toNat) (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 6)

end

end A274876.P15993950199167476110

/-! ## A274876.P12319241938389555264

`A001878(∑[A001359(A184747(n+1))])`
-/

namespace A274876.P12319241938389555264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A184747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274876.P12319241938389555264

/-! ## A274876.P11564768137617917411

`A161445(A062113(n))%A072078(n+1)`
-/

namespace A274876.P11564768137617917411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161445 (A062113 n).toNat) (A072078 (n + 1))

end

end A274876.P11564768137617917411

/-! ## A274876.P5315265604109133450

`A169611(gcd(A143642(n+1), A277042(n)))`
-/

namespace A274876.P5315265604109133450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (Int.gcd (A143642 (n + 1)) (A277042 n))

end

end A274876.P5315265604109133450

/-! ## A274876.P11866849895282456199

`A065040(A337673(n+1))`
-/

namespace A274876.P11866849895282456199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 (A337673 (n + 1)).toNat

end

end A274876.P11866849895282456199

/-!
# A274877: Least number, m, such that m^2 is expressible in just n ways as (p+1)(q+1) where p and q are distinct primes.

The programs for A274877, there is no canonical definition to state claims against.
-/

/-! ## A274877.P4829403962873681543

`A074259(xor(A000254(n), A072473(n+1)))`
-/

namespace A274877.P4829403962873681543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074259 (Int.xor (A000254 n) (A072473 (n + 1))).toNat

end

end A274877.P4829403962873681543

/-!
# A274882: a(n) is the largest coefficient of q-binomial(2*n, n) / q-binomial(n+1, 1), which are the q-Catalan polynomials.

The programs for A274882, there is no canonical definition to state claims against.
-/

/-! ## A274882.P6966267387765082564

`A275213(2*n)`
-/

namespace A274882.P6966267387765082564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (2 * n)

end

end A274882.P6966267387765082564

/-! ## A274882.P17547783357548477639

`or(char[1], A275213(A004277(n)))`
-/

namespace A274882.P17547783357548477639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A275213 (A004277 n).toNat)

end

end A274882.P17547783357548477639

/-! ## A274882.P15549213434776058178

`A275213(A004277(n))^A178334(n)`
-/

namespace A274882.P15549213434776058178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275213 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274882.P15549213434776058178

/-! ## A274882.P5924004245459836733

`A275213(A004277(n))+char[A038825(n)]`
-/

namespace A274882.P5924004245459836733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274882.P5924004245459836733

/-! ## A274882.P7233966225829611042

`A275213(A004277(n))%A058481(n+2)`
-/

namespace A274882.P7233966225829611042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275213 (A004277 n).toNat) (A058481 (n + 2))

end

end A274882.P7233966225829611042

/-! ## A274882.P5621803529454908878

`A275213(A004277(n))+char[A133527(n+1)]`
-/

namespace A274882.P5621803529454908878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274882.P5621803529454908878

/-! ## A274882.P1245081023382933179

`A275213(A004277(n))+char[A340438(n+4)]`
-/

namespace A274882.P1245081023382933179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340438 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275213 (A004277 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274882.P1245081023382933179

/-!
# A274883: Triangle read by rows, T(n,k) = 2^k*binomial(n,k)*A057977(n-k) for n>=0 and 0<=k<=n.

The programs for A274883, there is no canonical definition to state claims against.
-/

/-! ## A274883.P4203130155359231578

`2^(n-C(∑[char[∑[n]]], 2))*A189913(∑[2*n]%comp[∑[n]])`
-/

namespace A274883.P4203130155359231578
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A189913 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n) : ℚ)

end

end A274883.P4203130155359231578

/-! ## A274883.P16272158806382235283

`gcd(A121448(n), A143358(n))`
-/

namespace A274883.P16272158806382235283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121448 n) (A143358 n)

end

end A274883.P16272158806382235283

/-! ## A274883.P13343858909232718552

`A013609(n)*A057977(A025581(n))`
-/

namespace A274883.P13343858909232718552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A057977 (A025581 n).toNat

end

end A274883.P13343858909232718552

/-! ## A274883.P2848975632206547756

`A059268(n)*A189913(A061579(n))`
-/

namespace A274883.P2848975632206547756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A189913 (A061579 n).toNat

end

end A274883.P2848975632206547756

/-! ## A274883.P7351421318512670858

`A143358(n)/A158416(A025581(n))`
-/

namespace A274883.P7351421318512670858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143358 n : ℚ) / (A158416 (A025581 n).toNat : ℚ)

end

end A274883.P7351421318512670858

/-! ## A274883.P11688537943551802029

`A143358(n)/A152271(A004736(n+1))`
-/

namespace A274883.P11688537943551802029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143358 n : ℚ) / (A152271 (A004736 (n + 1)).toNat : ℚ)

end

end A274883.P11688537943551802029

/-!
# A274884: Triangle read by rows, coefficients of q-polynomials representing the oscillating orbitals over n sectors as A274888(n) - 2*A274886(n), a q-analog of A232500.

The programs for A274884, there is no canonical definition to state claims against.
-/

/-! ## A274884.P13485315592972491387

`A332828(lcm(16, A129920(n)))`
-/

namespace A274884.P13485315592972491387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332828 (Int.lcm 16 (A129920 n))

end

end A274884.P13485315592972491387

/-! ## A274884.P14207278894028351979

`A100047(A326379(n+1)+A205488(n))`
-/

namespace A274884.P14207278894028351979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A326379 (n + 1) + A205488 n).toNat

end

end A274884.P14207278894028351979

/-! ## A274884.P12284393955569057597

`A054354(or(A006519(n+1), A056381(n+2)))`
-/

namespace A274884.P12284393955569057597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (Int.lor (A006519 (n + 1)) (A056381 (n + 2))).toNat

end

end A274884.P12284393955569057597

/-! ## A274884.P9490599670632101781

`A008683(A006082(n+1)+A006047(n+9))`
-/

namespace A274884.P9490599670632101781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006082 (n + 1) + A006047 (n + 9)).toNat

end

end A274884.P9490599670632101781

/-! ## A274884.P4432025335472217367

`A008683(or(A281716(n+1), A322002(n+1)))`
-/

namespace A274884.P4432025335472217367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A281716 (n + 1)) (A322002 (n + 1))).toNat

end

end A274884.P4432025335472217367

/-!
# A274887: Triangle read by rows: coefficients of the q-factorial.

The programs for A274887, there is no canonical definition to state claims against.
-/

/-! ## A274887.P13510341579259131450

`A008302(floor(acot(n)+n))`
-/

namespace A274887.P13510341579259131450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A274887.P13510341579259131450

/-! ## A274887.P1446434680776090425

`A008302(or(n, floor(acot(n))))`
-/

namespace A274887.P1446434680776090425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A274887.P1446434680776090425

/-! ## A274887.P4892621643107456358

`A008302(abs(1-n)+1)`
-/

namespace A274887.P4892621643107456358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (|1 - (n : ℤ)| + 1).toNat

end

end A274887.P4892621643107456358

/-! ## A274887.P9154480605154562384

`or(char[1], A008302(A028310(n)))`
-/

namespace A274887.P9154480605154562384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008302 (A028310 n).toNat)

end

end A274887.P9154480605154562384

/-! ## A274887.P5134119598092351804

`a(A071625(n))*A008302(n)` with `a(0)=1`
-/

namespace A274887.P5134119598092351804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A071625 n).toNat * A008302 n

end

end A274887.P5134119598092351804

/-! ## A274887.P17144172496436635760

`gcd(A008302(A000007(n)+n), A130779(n))`
-/

namespace A274887.P17144172496436635760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008302 (A000007 n + (n : ℤ)).toNat) (A130779 n)

end

end A274887.P17144172496436635760

/-! ## A274887.P6306309575488854292

`gcd(A000038(n), A008302(A233583(n+1)))`
-/

namespace A274887.P6306309575488854292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008302 (A233583 (n + 1)).toNat)

end

end A274887.P6306309575488854292

/-! ## A274887.P6823532128365975295

`A008302(A233583(n+1))%A027971(n+5)`
-/

namespace A274887.P6823532128365975295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008302 (A233583 (n + 1)).toNat) (A027971 (n + 5))

end

end A274887.P6823532128365975295

/-! ## A274887.P9817318059795004990

`A009001(2*n)²*A008302(A233583(n+1))`
-/

namespace A274887.P9817318059795004990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A008302 (A233583 (n + 1)).toNat

end

end A274887.P9817318059795004990

/-! ## A274887.P15792808642277500583

`A008302(A028310(n))%A052548(n)`
-/

namespace A274887.P15792808642277500583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008302 (A028310 n).toNat) (A052548 n)

end

end A274887.P15792808642277500583

/-! ## A274887.P16284945075634498710

`A008302(A000007(n)+n)%A198277(n)`
-/

namespace A274887.P16284945075634498710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008302 (A000007 n + (n : ℤ)).toNat) (A198277 n)

end

end A274887.P16284945075634498710

/-!
# A274889: Number of n X n 0..2 arrays with no element equal to any value at offset (0,-1), (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274889, there is no canonical definition to state claims against.
-/

/-! ## A274889.P3141778419216104391

`A274895(∑[4*n]+1)`
-/

namespace A274889.P3141778419216104391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274889.P3141778419216104391

/-! ## A274889.P14906748568737911370

`A007318(∑[n])*A274895(A001844(n))`
-/

namespace A274889.P14906748568737911370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A274895 (A001844 n).toNat

end

end A274889.P14906748568737911370

/-! ## A274889.P6375183075622988549

`A274895(A001844(n))+A230915(n+1)`
-/

namespace A274889.P6375183075622988549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A001844 n).toNat + A230915 (n + 1)

end

end A274889.P6375183075622988549

/-! ## A274889.P11249603022474479873

`A240228(n+1)*A274895(A001844(n))`
-/

namespace A274889.P11249603022474479873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (n + 1) * A274895 (A001844 n).toNat

end

end A274889.P11249603022474479873

/-! ## A274889.P9210377839277560883

`A274895(A001844(n))%A269271(n+1)`
-/

namespace A274889.P9210377839277560883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274895 (A001844 n).toNat) (A269271 (n + 1))

end

end A274889.P9210377839277560883

/-!
# A274890: Number of n X 3 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274890, there is no canonical definition to state claims against.
-/

/-! ## A274890.P11053009727641368452

`sqrt(A275563(n+1)/6)`
-/

namespace A274890.P11053009727641368452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A275563 (n + 1) : ℚ) / 6 : ℝ)

end

end A274890.P11053009727641368452

/-! ## A274890.P6309964631119743306

`A274895(∑[n+3]+1)`
-/

namespace A274890.P6309964631119743306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274890.P6309964631119743306

/-! ## A274890.P12281797372928894458

`lcm((-1)^n, A274895(A034856(n+2)))`
-/

namespace A274890.P12281797372928894458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A274895 (A034856 (n + 2)).toNat)

end

end A274890.P12281797372928894458

/-! ## A274890.P2293014069663710916

`gcd(A000038(n), A274895(A034856(n+2)))`
-/

namespace A274890.P2293014069663710916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274895 (A034856 (n + 2)).toNat)

end

end A274890.P2293014069663710916

/-! ## A274890.P7116033877537634059

`A274895(A055998(n+1)+1)%A198763(n)`
-/

namespace A274890.P7116033877537634059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274895 (A055998 (n + 1) + 1).toNat) (A198763 n)

end

end A274890.P7116033877537634059

/-!
# A274891: Number of nX4 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274891, there is no canonical definition to state claims against.
-/

/-! ## A274891.P6653575298766068747

`A274895(A141214(n+1))`
-/

namespace A274891.P6653575298766068747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A141214 (n + 1)).toNat

end

end A274891.P6653575298766068747

/-! ## A274891.P5750544401358569208

`A274895(A027379(n+2))`
-/

namespace A274891.P5750544401358569208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A027379 (n + 2)).toNat

end

end A274891.P5750544401358569208

/-! ## A274891.P1876234230567153237

`A274895(A055998(n+2))`
-/

namespace A274891.P1876234230567153237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A055998 (n + 2)).toNat

end

end A274891.P1876234230567153237

/-! ## A274891.P4290732237491593741

`A274895(A155212(n)+5)`
-/

namespace A274891.P4290732237491593741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A155212 n + 5).toNat

end

end A274891.P4290732237491593741

/-! ## A274891.P13584174208640893064

`A274895(A056000(n)+7)`
-/

namespace A274891.P13584174208640893064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A056000 n + 7).toNat

end

end A274891.P13584174208640893064

/-!
# A274892: Number of n X 5 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274892, there is no canonical definition to state claims against.
-/

/-! ## A274892.P3432120670394689239

`A274895(Δ[A264443(n)])`
-/

namespace A274892.P3432120670394689239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n).toNat

end

end A274892.P3432120670394689239

/-! ## A274892.P14126995019317335428

`A274895(Δ[A023545(n+1)])`
-/

namespace A274892.P14126995019317335428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n).toNat

end

end A274892.P14126995019317335428

/-! ## A274892.P1235344331475617587

`A274895(A000217(n+5)-4)`
-/

namespace A274892.P1235344331475617587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000217 (n + 5) - 4).toNat

end

end A274892.P1235344331475617587

/-! ## A274892.P8545530431192801014

`A274895(A000124(n+5)-5)`
-/

namespace A274892.P8545530431192801014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000124 (n + 5) - 5).toNat

end

end A274892.P8545530431192801014

/-! ## A274892.P15449053418131439097

`A274895(A000096(n+3)+n+2)`
-/

namespace A274892.P15449053418131439097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A274892.P15449053418131439097

/-!
# A274893: Number of nX6 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274893, there is no canonical definition to state claims against.
-/

/-! ## A274893.P11101924058338141923

`A274895(A052905(n+3))`
-/

namespace A274893.P11101924058338141923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A052905 (n + 3)).toNat

end

end A274893.P11101924058338141923

/-! ## A274893.P2482908382477216342

`A274895(A055998(n+4)-2)`
-/

namespace A274893.P2482908382477216342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A055998 (n + 4) - 2).toNat

end

end A274893.P2482908382477216342

/-! ## A274893.P10792270766268432168

`A274895(A000096(n+5)-4)`
-/

namespace A274893.P10792270766268432168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000096 (n + 5) - 4).toNat

end

end A274893.P10792270766268432168

/-! ## A274893.P17112659628683455742

`A274895(Δ[Δ[A006504(n+1)]])`
-/

namespace A274893.P17112659628683455742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n).toNat

end

end A274893.P17112659628683455742

/-! ## A274893.P9021637671441866529

`A274895(Δ[A264443(n+1)]-1)`
-/

namespace A274893.P9021637671441866529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n - 1).toNat

end

end A274893.P9021637671441866529

/-!
# A274894: Number of nX7 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274894, there is no canonical definition to state claims against.
-/

/-! ## A274894.P5163830265672319985

`A274895(A055999(n+4))`
-/

namespace A274894.P5163830265672319985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A055999 (n + 4)).toNat

end

end A274894.P5163830265672319985

/-! ## A274894.P16104579969850768637

`A274895(Δ[A026054(n+4)])`
-/

namespace A274894.P16104579969850768637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n).toNat

end

end A274894.P16104579969850768637

/-! ## A274894.P5378406613548861277

`A274895(A000124(n+7)-7)`
-/

namespace A274894.P5378406613548861277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000124 (n + 7) - 7).toNat

end

end A274894.P5378406613548861277

/-! ## A274894.P15293475359560202740

`A274895(A000096(n+5)+n+2)`
-/

namespace A274894.P15293475359560202740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A274894.P15293475359560202740

/-! ## A274894.P5744896462803955920

`A274895(Δ[n²]+A133263(n+5)+4)`
-/

namespace A274894.P5744896462803955920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A133263 (n + 5) + 4)).toNat

end

end A274894.P5744896462803955920

/-!
# A274896: Number of 4 X n 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274896, the canonical program `A274896.P10486311072134210358` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274896 has offset 1).

The definition of A274896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274896.P10486311072134210358

`5*a(n-1)-9*a(n-2)+10*a(n-3)-6*a(n-4)+a(n-5)` with `a(0)=6, a(1)=14, a(2)=38, a(3)=104, a(4)=290, a(5)=815`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274896

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-6*a(n-4)+a(n-5)` -/
def P10486311072134210358.Spec : Prop :=
  ∀ n, P10486311072134210358.a n = A274896 (n + 1)

theorem P10486311072134210358.correct : P10486311072134210358.Spec := by
  intro n
  simp only [A274896, Nat.add_sub_cancel]

end A274896

/-! ## A274896.P87771622181559713

`A274895(A141214(n)+7)`
-/

namespace A274896.P87771622181559713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A141214 n + 7).toNat

end

end A274896.P87771622181559713

namespace A274896

/-- `A274895(A141214(n)+7)` -/
def P87771622181559713.Spec : Prop :=
  ∀ n, P87771622181559713.a n = A274896 (n + 1)

end A274896

/-! ## A274896.P879378842482798852

`A274895(A052905(n)+9)`
-/

namespace A274896.P879378842482798852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A052905 n + 9).toNat

end

end A274896.P879378842482798852

namespace A274896

/-- `A274895(A052905(n)+9)` -/
def P879378842482798852.Spec : Prop :=
  ∀ n, P879378842482798852.a n = A274896 (n + 1)

end A274896

/-! ## A274896.P4948100169163742158

`A274895(A055999(n)+10)`
-/

namespace A274896.P4948100169163742158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A055999 n + 10).toNat

end

end A274896.P4948100169163742158

namespace A274896

/-- `A274895(A055999(n)+10)` -/
def P4948100169163742158.Spec : Prop :=
  ∀ n, P4948100169163742158.a n = A274896 (n + 1)

end A274896

/-! ## A274896.P10858354762559665292

`A274895(A167614(n+2)+1)`
-/

namespace A274896.P10858354762559665292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A167614 (n + 2) + 1).toNat

end

end A274896.P10858354762559665292

namespace A274896

/-- `A274895(A167614(n+2)+1)` -/
def P10858354762559665292.Spec : Prop :=
  ∀ n, P10858354762559665292.a n = A274896 (n + 1)

end A274896

/-!
# A274897: Number of 5 X n 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274897, there is no canonical definition to state claims against.
-/

/-! ## A274897.P6640594382023357342

`A274895(∑[n+4]+11)`
-/

namespace A274897.P6640594382023357342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A274897.P6640594382023357342

/-! ## A274897.P11074338387527846529

`record[A274895(A167499(n+1))]`
-/

namespace A274897.P11074338387527846529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A167499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274897.P11074338387527846529

/-! ## A274897.P7002486695403697959

`A274895(A167499(n+3))%A207075(3*n+2)`
-/

namespace A274897.P7002486695403697959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274895 (A167499 (n + 3)).toNat) (A207075 (3 * n + 2))

end

end A274897.P7002486695403697959

/-! ## A274897.P13503752412231248576

`A274895(A167499(n+3))%A022513(n+1)`
-/

namespace A274897.P13503752412231248576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274895 (A167499 (n + 3)).toNat) (A022513 (n + 1))

end

end A274897.P13503752412231248576

/-!
# A274898: Number of 6Xn 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274898, there is no canonical definition to state claims against.
-/

/-! ## A274898.P2078452731278024579

`A274895(A166136(n+4))`
-/

namespace A274898.P2078452731278024579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A166136 (n + 4)).toNat

end

end A274898.P2078452731278024579

/-! ## A274898.P9694994234591091575

`A274895(Δ[A264443(n)]+10)`
-/

namespace A274898.P9694994234591091575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (f1 (n + 1) - f1 n + 10).toNat

end

end A274898.P9694994234591091575

/-! ## A274898.P16355340194023831899

`A274895(A167499(n+4)+1)`
-/

namespace A274898.P16355340194023831899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A167499 (n + 4) + 1).toNat

end

end A274898.P16355340194023831899

/-! ## A274898.P16524358612599205232

`A274895(A167614(n+4)+3)`
-/

namespace A274898.P16524358612599205232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A167614 (n + 4) + 3).toNat

end

end A274898.P16524358612599205232

/-! ## A274898.P16383834006782915145

`A274895(A000217(n+5)+6)`
-/

namespace A274898.P16383834006782915145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000217 (n + 5) + 6).toNat

end

end A274898.P16383834006782915145

/-!
# A274899: Number of 7 X n 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-1) or (-2,0) and new values introduced in order 0..2.

The programs for A274899, there is no canonical definition to state claims against.
-/

/-! ## A274899.P8561404390476974367

`A274895(A056119(n)+28)`
-/

namespace A274899.P8561404390476974367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A056119 n + 28).toNat

end

end A274899.P8561404390476974367

/-! ## A274899.P16647695480661347466

`A274895(A167499(n+5)+2)`
-/

namespace A274899.P16647695480661347466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A167499 (n + 5) + 2).toNat

end

end A274899.P16647695480661347466

/-! ## A274899.P8374664277342521878

`A274895(A133263(n+6)+5)`
-/

namespace A274899.P8374664277342521878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A133263 (n + 6) + 5).toNat

end

end A274899.P8374664277342521878

/-! ## A274899.P1083114822970588242

`A274895(A000217(n+6)+7)`
-/

namespace A274899.P1083114822970588242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A000217 (n + 6) + 7).toNat

end

end A274899.P1083114822970588242

/-! ## A274899.P13589166582218288310

`A274895(A046691(n+6)-A020725(2*n+3))`
-/

namespace A274899.P13589166582218288310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (A046691 (n + 6) - A020725 (2 * n + 3)).toNat

end

end A274899.P13589166582218288310

